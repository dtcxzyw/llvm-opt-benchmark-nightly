inline.NumInlined: 960
inline.NumDeleted: 579
begin_hunk_0_@_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv:bb.a
  ret void

bb.o:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #22

; Function Attrs: nounwind
declare void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18OperationCancelledD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly18OperationCancelled4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %0, align 8, !tbaa !34, !alias.scope !2256
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_18OperationCancelledEEEvPv(ptr noundef %0) #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #3

declare void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseENS_13NetworkSocketEjPKNS_13SocketAddressENS_8OptionalINSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE(ptr noundef nonnull align 8 dereferenceable(1169), ptr noundef, i32, i32 noundef, ptr noundef, ptr noundef dead_on_return) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !1960
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !1962
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !1963, !inline_history !2239
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !1970, !inline_history !2239
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !1971

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2240
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2075 ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !2084
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #25, !call_target !2085, !inline_history !2241
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro12ServerSocket6acceptEv.resume(ptr noundef nonnull align 16 dereferenceable(352) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.folly::coro::co_error", align 8 ; 5 uses
  %3 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %4 = alloca %class.anon.130, align 8            ; 4 uses
  %5 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %6 = alloca %class.anon.130, align 8            ; 4 uses
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr229 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.reload.addr234 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %.reload.addr235 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr241 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 7 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge31
    i3 2, label %.critedge35
    i3 3, label %CoroEnd
    i3 -4, label %CoroEnd
  ], !prof !2259

.critedge:                                        ; preds = %resume.entry
  %i.a = load ptr, ptr @_ZZN5folly4coro12ServerSocket6acceptEvE8vlocal__, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.critedge
  %i.c = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro12ServerSocket6acceptEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str, i32 noundef 5)
          to label %bb.c unwind label %.from.210

bb.b:                                             ; preds = %.critedge
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.d, label %.critedge29

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %.critedge29

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 100)
          to label %bb.e unwind label %.from.181

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.f unwind label %.from.183

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.11, i64 noundef 15)
          to label %.critedge28 unwind label %.from.183 ; 0 uses

.critedge28:                                      ; preds = %bb.f
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.critedge29

.critedge29:                                      ; preds = %.critedge28, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !2034 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.critedge31.from._ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i: ; preds = %.critedge29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i64, ptr %i.j acquire, align 8
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.g, label %.critedge31.from._ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread

bb.g:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !2260
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %3, align 8, !tbaa !34, !noalias !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2260
  store ptr %3, ptr %4, align 8, !noalias !2263
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2260
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !2260
  %i.n = load i32, ptr %i.m, align 16, !tbaa !2048
  store i32 2, ptr %i.m, align 16, !tbaa !2048
  switch i32 %i.n, label %_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ], !prof !2049

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2050 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(25) %i.p) #25, !call_target !2052, !inline_history !2266
  br label %_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2043
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #25
  br label %_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit

.critedge31.from._ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread: ; preds = %.critedge29, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.critedge31

_ZN5folly4coro17variant_awaitableIJNS0_6detail15TaskPromiseBase12FinalAwaiterENS0_15ready_awaitableIvEEEE13await_suspendINS2_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteISB_EEEEEEDaNSt7__n486116coroutine_handleIT_EE.exit: ; preds = %bb.j, %bb.i, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.w = load i64, ptr %2, align 8, !noalias !2267
  store i64 %i.w, ptr %i.v, align 8, !alias.scope !2267
  store i32 1, ptr %i.m, align 16, !tbaa !2000
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i16 0, ptr %.reload.addr228, align 16
  store i3 1, ptr %index.addr, align 8
  %i.x = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEENSD_IT_EE(ptr noundef nonnull align 1 dereferenceable(2) %.reload.addr228, ptr nonnull %0) #25 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  musttail call void %i.y(ptr nonnull %i.x)
  ret void

.from.210:                                        ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ba

.from.181:                                        ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.209

.from.183:                                        ; preds = %bb.e, %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #25
  br label %.from.209

.from.209:                                        ; preds = %.from.181, %.from.183
  %.pn = phi { ptr, i32 } [ %i.ab, %.from.183 ], [ %i.aa, %.from.181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.ba

.critedge31:                                      ; preds = %resume.entry, %.critedge31.from._ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread
  %.reload.addr226 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload227 = load ptr, ptr %.reload.addr226, align 16, !tbaa !2270 ; 3 uses
  store ptr null, ptr %.reload.addr232, align 16, !tbaa !2272
  %i.ac = load ptr, ptr %.reload227, align 8, !tbaa !11 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.reload227, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i40 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i40, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from., label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.186

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.186: ; preds = %bb.k
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !7
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.: ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pre127 = load ptr, ptr %.reload227, align 8, !tbaa !11
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge31, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from., %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.186
  %i.ak = phi ptr [ %.pre127, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from. ], [ %i.ac, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.186 ], [ %i.ac, %.critedge31 ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr229, align 16, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 -1, ptr %i.al, align 8, !tbaa !2099
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.am, align 16, !tbaa !2043
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr232, ptr %i.an, align 8, !tbaa !2274
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.ac, ptr %i.ao, align 16, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(352) %i.ak, ptr noundef nonnull %.reload.addr229, ptr noundef null, i32 noundef 5)
          to label %bb.l unwind label %.from.204, !call_target !2275

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.reload225 = load ptr, ptr %.reload.addr226, align 16, !tbaa !2270
  %i.at = load ptr, ptr %.reload225, align 8, !tbaa !11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(352) %i.at)
          to label %.critedge33 unwind label %.from.204, !call_target !2283

.from.204:                                        ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.206

.critedge33:                                      ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.reload.addr233, align 8, !tbaa !2286
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !2034 ; 5 uses
  %.not.i = icmp eq ptr %i.az, null               ; 2 uses
  br i1 %.not.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %.critedge33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 8 monotonic, align 8, !noalias !2288 ; 0 uses
  store ptr %i.az, ptr %.reload.addr233, align 8, !tbaa !2034
  br label %_ZN5folly17CancellationTokenC2ERKS0_.exit

_ZN5folly17CancellationTokenC2ERKS0_.exit:        ; preds = %bb.m, %.critedge33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr228, i8 0, i64 24, i1 false)
  store ptr %.reload.addr232, ptr %i.bd, align 16, !tbaa !2274
  store ptr @"_ZN5folly6detail8function5call_IZNS_4coro12ServerSocket6acceptEvE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.be, align 16, !tbaa !2113
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.bf, align 8, !tbaa !2032
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.bg, align 16, !tbaa !2291
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.bh, align 8, !tbaa !2292
  br i1 %.not.i, label %.from..i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit
  %i.bi = call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr228, i1 noundef zeroext true) #25
  br i1 %i.bi, label %bb.o, label %.from..i.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.az, ptr %i.bc, align 16, !tbaa !2023
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.o, %bb.n, %_ZN5folly17CancellationTokenC2ERKS0_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !2063, !noalias !2293
  %i.bl = icmp eq i8 %i.bk, 2
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !2063, !noalias !2293
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !2075, !noalias !2296
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  %i.bp = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.189 unwind label %.body72.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !2299 ; 8 uses

.body72.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body72

.from.189:                                        ; preds = %.from..i.i.i.i
  %i.br = or i64 %i.bo, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.bp, align 8, !noalias !2305
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !2305
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i8 0, i64 56, i1 false), !noalias !2305
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bu, align 8, !tbaa !1998, !noalias !2305
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !34, !noalias !2305
  store ptr %i.bp, ptr %.reload.addr230, align 16, !tbaa !2003, !alias.scope !2306
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !2305
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !2075, !noalias !2305
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.reload.addr232, ptr %i.bv, align 8, !tbaa !2274, !alias.scope !2309
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.bw, align 16, !tbaa !2314, !alias.scope !2309
  %i.bx = load atomic ptr, ptr %.reload.addr232 acquire, align 16
  %i.by = icmp eq ptr %i.bx, %.reload.addr232
  br i1 %i.by, label %.critedge35, label %AfterCoroSave162

AfterCoroSave162:                                 ; preds = %.from.189
  store i3 2, ptr %index.addr, align 8
  %i.bz = call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS9_EEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr230, ptr nonnull %0) #25
  br i1 %i.bz, label %CoroEnd, label %.critedge35

.critedge35:                                      ; preds = %resume.entry, %AfterCoroSave162, %.from.189
  %i.ca = load ptr, ptr %.reload.addr230, align 16, !tbaa !2007 ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i47, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51, label %bb.p

bb.p:                                             ; preds = %.critedge35
  store i64 0, ptr %.reload.addr230, align 16, !tbaa !2003
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr nonnull %i.ca)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.q, !inline_history !2315

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #29
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.p
  %.pr = load ptr, ptr %.reload.addr230, align 16, !tbaa !2007 ; 3 uses
  %.not.i.i48 = icmp eq ptr %.pr, null
  br i1 %.not.i.i48, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51 unwind label %bb.s, !inline_history !2315

bb.s:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51: ; preds = %bb.r, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %.critedge35
  %i.cj = load ptr, ptr %.reload.addr233, align 8, !tbaa !2034 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i52, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit: ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8
  %i.cm = trunc i64 %i.cl to i1
  br i1 %i.cm, label %bb.t, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread

bb.t:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.reload.addr222 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.reload223 = load ptr, ptr %.reload.addr222, align 16, !tbaa !2270
  %i.cn = load ptr, ptr %.reload223, align 8, !tbaa !11
  %i.co = invoke noundef i32 @_ZN5folly17AsyncServerSocket13stopAcceptingEi(ptr noundef nonnull align 8 dereferenceable(352) %i.cn, i32 noundef -1)
          to label %bb.u unwind label %.body72.from.201 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !2316
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %5, align 8, !tbaa !34, !noalias !2316
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2316
  store ptr %5, ptr %6, align 8, !noalias !2319
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr234, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2316
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2316
  %i.cq = load i32, ptr %i.cp, align 16, !tbaa !2048
  store i32 2, ptr %i.cp, align 16, !tbaa !2048
  switch i32 %i.cq, label %bb.y [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ], !prof !2049

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2050 ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i59, label %bb.y, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i: ; preds = %bb.v
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(25) %i.cs) #25, !call_target !2052, !inline_history !2069
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2043
  %.not.i.i.i.i.i58 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.v, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i, %bb.w, %bb.x
  %.reload.addr238 = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %i.cz = load i64, ptr %.reload.addr234, align 16, !noalias !2322
  store i64 %i.cz, ptr %i.cy, align 8, !alias.scope !2322
  store i64 0, ptr %.reload.addr234, align 16, !noalias !2322
  store i32 1, ptr %i.cp, align 16, !tbaa !2000
  store i3 3, ptr %index.addr, align 8
  %i.da = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEENSD_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr238, ptr nonnull %0) #25 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  musttail call void %i.db(ptr nonnull %i.da)
  ret void

.body72.from.201:                                 ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body72

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit51
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 16           ; 2 uses
  %.not126 = icmp eq ptr %i.de, null
  br i1 %.not126, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  store i64 %i.dg, ptr %.reload.addr235, align 8, !alias.scope !2325
  store i64 0, ptr %i.dd, align 16, !noalias !2325
  %i.dh = load i32, ptr %i.df, align 16, !tbaa !2048
  store i32 2, ptr %i.df, align 16, !tbaa !2048
  switch i32 %i.dh, label %bb.ad [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ], !prof !2049

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2050 ; 3 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i64, label %bb.ad, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i65

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i65: ; preds = %bb.aa
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(25) %i.dj) #25, !call_target !2052, !inline_history !2069
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2043
  %.not.i.i.i.i.i63 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i63, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.aa, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i65, %bb.ab, %bb.ac
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 346
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  %i.dq = load i64, ptr %.reload.addr235, align 8, !noalias !2328
  store i64 %i.dq, ptr %i.dp, align 8, !alias.scope !2328
  store i64 0, ptr %.reload.addr235, align 8, !noalias !2328
  store i32 1, ptr %i.df, align 16, !tbaa !2000
  store i3 -4, ptr %index.addr, align 8
  %i.dr = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEENSD_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr239, ptr nonnull %0) #25 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  musttail call void %i.ds(ptr nonnull %i.dr)
  ret void

bb.ae:                                            ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %.reload.addr220 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload221 = load ptr, ptr %.reload.addr220, align 16, !tbaa !2270
  %i.dt = load ptr, ptr %.reload221, align 8, !tbaa !11 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(352) %i.dt)
          to label %bb.af unwind label %.body72.from., !call_target !2331

bb.af:                                            ; preds = %bb.ae
  %.reload219 = load ptr, ptr %.reload.addr220, align 16, !tbaa !2270
  %i.dy = load ptr, ptr %.reload219, align 8, !tbaa !11 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !34
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef ptr %i.eb(ptr noundef nonnull align 8 dereferenceable(352) %i.dy)
          to label %bb.ag unwind label %.body72.from.195, !call_target !2331

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !2099
  %i.ef = invoke noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #31
          to label %.noexc unwind label %.body72.from.195 ; 5 uses

.noexc:                                           ; preds = %bb.ag
  store i8 0, ptr %.reload.addr230, align 16, !tbaa !18, !noalias !2336
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.eg, align 8, !tbaa !2339, !noalias !2336
  invoke void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseENS_13NetworkSocketEjPKNS_13SocketAddressENS_8OptionalINSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE(ptr noundef nonnull align 8 dereferenceable(1169) %i.ef, ptr noundef %i.ec, i32 %i.ee, i32 noundef 0, ptr noundef null, ptr noundef nonnull dead_on_return %.reload.addr230)
          to label %bb.ah unwind label %.body72.from.197, !noalias !2336

.body72.from.197:                                 ; preds = %.noexc
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 1176) #26, !noalias !2336
  br label %.from..body72

bb.ah:                                            ; preds = %.noexc
  %i.ei = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.ai unwind label %bb.ay     ; 5 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.ei, align 8, !tbaa !34, !noalias !2341
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.dx, ptr %i.ek, align 8, !tbaa !2344, !noalias !2341
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = ptrtoint ptr %i.ef to i64
  store i64 %i.em, ptr %i.el, align 8, !tbaa !2354, !noalias !2341
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i8 0, ptr %i.en, align 8, !tbaa !2355, !noalias !2341
  %i.eo = load i32, ptr %i.ej, align 16, !tbaa !2048
  store i32 2, ptr %i.ej, align 16, !tbaa !2048
  switch i32 %i.eo, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
  ], !prof !2049

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2050 ; 3 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i76, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i77

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i77: ; preds = %bb.aj
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(25) %i.eq) #25, !call_target !2052, !inline_history !2356
  br label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !2043
  %.not.i.i.i.i.i75 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i75, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu) #25
  br label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit

_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit: ; preds = %bb.al, %bb.ak, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i77, %bb.aj, %bb.ai
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ey = ptrtoint ptr %i.ei to i64
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !2050
  store i32 0, ptr %i.ej, align 16, !tbaa !2000
  %i.ez = load ptr, ptr %i.ew, align 16, !tbaa !2023 ; 2 uses
  %.not.i80 = icmp eq ptr %i.ez, null
  br i1 %.not.i80, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr228) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2032 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i81, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fd = call noundef i64 %i.fb(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.fc, ptr noundef null) #25, !inline_history !2357 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.ao, %bb.an
  %i.fe = load ptr, ptr %.reload.addr233, align 8, !tbaa !2034 ; 5 uses
  %.not.i.i82 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i82, label %_ZN5folly17CancellationTokenD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = atomicrmw sub ptr %i.ff, i64 8 acq_rel, align 8 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 16
  br i1 %i.fh, label %bb.aq, label %_ZN5folly17CancellationTokenD2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fi = and i64 %i.fg, 4
  %.not.i.i.i.i83 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i83, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.fe) #25
  br label %_ZN5folly17CancellationTokenD2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.fe) #25, !call_target !2035, !inline_history !2358
  br label %_ZN5folly17CancellationTokenD2Ev.exit

_ZN5folly17CancellationTokenD2Ev.exit:            ; preds = %bb.as, %bb.ar, %bb.ap, %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr229, align 16, !tbaa !34
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !17 ; 8 uses
  %.not.i.i.i84 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i84, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88, label %bb.at

bb.at:                                            ; preds = %_ZN5folly17CancellationTokenD2Ev.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 4 uses
  %i.fp = load atomic i64, ptr %i.fo acquire, align 8 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 4294967297
  %i.fr = trunc i64 %i.fp to i32                  ; 2 uses
  br i1 %i.fq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fo, align 8, !tbaa !1960
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store i32 0, ptr %i.fs, align 4, !tbaa !1962
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #25, !call_target !1963, !inline_history !2097
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !34
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #25, !call_target !1970, !inline_history !2097
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88

bb.av:                                            ; preds = %bb.at
  %i.fz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i85 = icmp eq i8 %i.fz, 0
  br i1 %.not.i.i.i.i85, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from.191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from.191: ; preds = %bb.av
  %i.ga = add nsw i32 %i.fr, -1
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from.: ; preds = %bb.av
  %i.gb = atomicrmw volatile add ptr %i.fo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from.191
  %.0.i.i.i.i.i87 = phi i32 [ %i.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from.191 ], [ %i.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86.from. ]
  %i.gc = icmp eq i32 %.0.i.i.i.i.i87, 1
  br i1 %i.gc, label %bb.aw, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88, !prof !1971

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #25, !inline_history !2098
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i86, %bb.au, %_ZN5folly17CancellationTokenD2Ev.exit
  %i.gd = load ptr, ptr %i.dd, align 16, !tbaa !2043
  %.not.i.i1.i89 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i89, label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit90, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #25, !inline_history !2098
  br label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit90

_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit90:     ; preds = %bb.ax, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i88
  call void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %.reload.addr229) #25, !inline_history !2098
  call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr232) #25
  br label %bb.bb

.body72.from.:                                    ; preds = %bb.ae
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body72

.body72.from.195:                                 ; preds = %bb.af, %bb.ag
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body72

bb.ay:                                            ; preds = %bb.ah
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = load ptr, ptr %i.ef, align 8, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  invoke void %i.gj(ptr noundef nonnull align 8 dereferenceable(13) %i.ef)
          to label %.from..body72 unwind label %bb.az, !inline_history !2359

bb.az:                                            ; preds = %bb.ay
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #29
  unreachable

.from..body72:                                    ; preds = %.body72.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %.body72.from.201, %.body72.from.197, %.body72.from., %.body72.from.195, %bb.ay
  %.pn23.pn = phi { ptr, i32 } [ %i.eh, %.body72.from.197 ], [ %i.dc, %.body72.from.201 ], [ %i.gf, %.body72.from.195 ], [ %i.bq, %.body72.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.ge, %.body72.from. ], [ %i.gg, %bb.ay ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr228) #25
  call void @_ZN5folly17CancellationTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr233) #25
  br label %.from.206

.from.206:                                        ; preds = %.from.204, %.from..body72
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %.from..body72 ], [ %i.ax, %.from.204 ]
  call void @_ZN12_GLOBAL__N_114AcceptCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr229) #25
  call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr232) #25
  br label %bb.ba

bb.ba:                                            ; preds = %.from.206, %.from.209, %.from.210
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %.from.206 ], [ %i.z, %.from.210 ], [ %.pn, %.from.209 ]
  %.7 = extractvalue { ptr, i32 } %.pn23.pn.pn.pn, 0
  %i.gm = call ptr @__cxa_begin_catch(ptr %.7) #25 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr241) #25
  invoke void @__cxa_end_catch()
          to label %bb.bb unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit110

bb.bb:                                            ; preds = %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit90, %bb.ba
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 347
  store ptr null, ptr %0, align 16
  store i3 -3, ptr %index.addr, align 8
  %i.gn = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEENSD_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr240, ptr nonnull %0) #25 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8
  musttail call void %i.go(ptr nonnull %i.gn)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave162, %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit110: ; preds = %bb.ba
  %i.gp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.gp

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro12ServerSocket6acceptEv.destroy(ptr noundef nonnull align 16 dereferenceable(352) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr229 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %AfterCoroSuspend
    i3 2, label %AfterCoroSuspend164
    i3 3, label %AfterCoroSuspend168
    i3 -4, label %AfterCoroSuspend172
    i3 -3, label %AfterCoroSuspend
  ], !prof !2360

AfterCoroSuspend164:                              ; preds = %resume.entry
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.a = load ptr, ptr %.reload.addr230, align 16, !tbaa !2007 ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.a, null
  br i1 %.not.i.i53, label %.critedge39, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend164
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %.critedge39 unwind label %bb.b, !inline_history !2315

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

AfterCoroSuspend168:                              ; preds = %resume.entry
  %.reload.addr234 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.f = load ptr, ptr %.reload.addr234, align 16, !tbaa !2043
  %.not.i.i.i61 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i61, label %.critedge39, label %.critedge39.sink.split

AfterCoroSuspend172:                              ; preds = %resume.entry
  %.reload.addr235 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load ptr, ptr %.reload.addr235, align 8, !tbaa !2043
  %.not.i.i.i70 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i70, label %.critedge39, label %.critedge39.sink.split

.critedge39.sink.split:                           ; preds = %AfterCoroSuspend172, %AfterCoroSuspend168
  %.reload.addr235.sink = phi ptr [ %.reload.addr234, %AfterCoroSuspend168 ], [ %.reload.addr235, %AfterCoroSuspend172 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr235.sink) #25
  br label %.critedge39

.critedge39:                                      ; preds = %.critedge39.sink.split, %AfterCoroSuspend172, %AfterCoroSuspend168, %AfterCoroSuspend164, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !2023 ; 2 uses
  %.not.i94 = icmp eq ptr %i.i, null
  br i1 %.not.i94, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge39
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr228) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2032 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i95, label %_ZN5folly20CancellationCallbackD2Ev.exit96, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef null) #25, !inline_history !2357 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit96

_ZN5folly20CancellationCallbackD2Ev.exit96:       ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %.reload.addr233, align 8, !tbaa !2034 ; 5 uses
  %.not.i.i97 = icmp eq ptr %i.n, null
  br i1 %.not.i.i97, label %_ZN5folly17CancellationTokenD2Ev.exit99, label %bb.f

bb.f:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 8 acq_rel, align 8 ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %bb.g, label %_ZN5folly17CancellationTokenD2Ev.exit99

bb.g:                                             ; preds = %bb.f
  %i.r = and i64 %i.p, 4
  %.not.i.i.i.i98 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i98, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.n) #25
  br label %_ZN5folly17CancellationTokenD2Ev.exit99

bb.i:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.n) #25, !call_target !2035, !inline_history !2358
  br label %_ZN5folly17CancellationTokenD2Ev.exit99

_ZN5folly17CancellationTokenD2Ev.exit99:          ; preds = %bb.i, %bb.h, %bb.f, %_ZN5folly20CancellationCallbackD2Ev.exit96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr229, align 16, !tbaa !34
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i100 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i100, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104, label %bb.j

bb.j:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit99
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.x, align 8, !tbaa !1960
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !1962
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25, !call_target !1963, !inline_history !2097
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25, !call_target !1970, !inline_history !2097
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104

bb.l:                                             ; preds = %bb.j
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i101 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i101, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from.212

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from.212: ; preds = %bb.l
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from.: ; preds = %bb.l
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from.212
  %.0.i.i.i.i.i103 = phi i32 [ %i.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from.212 ], [ %i.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102.from. ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i103, 1
  br i1 %i.al, label %bb.m, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104, !prof !1971

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #25, !inline_history !2098
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102, %bb.k, %_ZN5folly17CancellationTokenD2Ev.exit99
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !2043
  %.not.i.i1.i105 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i105, label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit106, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #25, !inline_history !2098
  br label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit106

_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit106:    ; preds = %bb.n, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i104
  tail call void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %.reload.addr229) #25, !inline_history !2098
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr232) #25
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %resume.entry, %resume.entry, %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit106
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !2000
  switch i32 %i.ap, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ], !prof !2049

bb.o:                                             ; preds = %AfterCoroSuspend
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2050 ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i109, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i: ; preds = %bb.o
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(25) %i.ar) #25, !call_target !2052, !inline_history !2361
  br label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i

bb.p:                                             ; preds = %AfterCoroSuspend
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2043
  %.not.i.i.i.i107 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i107, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #25
  br label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i

_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i: ; preds = %bb.q, %bb.p, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i, %bb.o, %AfterCoroSuspend
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !2034 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw sub ptr %i.az, i64 8 acq_rel, align 8 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 16
  br i1 %i.bb, label %bb.s, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bc = and i64 %i.ba, 4
  %.not.i.i.i.i.i.i108 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ay) #25
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ay) #25, !call_target !2035, !inline_history !2362
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.u, %bb.t, %bb.r, %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2075 ; 2 uses
  %i.bi = and i64 %i.bh, -4                       ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.bg, align 8, !tbaa !2084
  %i.bk = and i64 %i.bh, 3
  %.not3.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not3.i.i.i.i, label %bb.w, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #25, !call_target !2085, !inline_history !2363
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.v, %bb.w
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 352)
          to label %CoroEnd unwind label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !15, i64 8}
!13 = !{!"p1 _ZTSN5folly17AsyncServerSocketE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!16 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !21, i64 40}
!20 = !{!"_ZTSSt22_Optional_payload_baseIN5folly13SocketAddressEE", !9, i64 0, !21, i64 40}
!21 = !{!"bool", !9, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSN6google8SiteFlagE", !26, i64 0, !27, i64 8, !28, i64 16, !29, i64 24}
!26 = !{!"p1 int", !14, i64 0}
!27 = !{!"p1 omnipotent char", !14, i64 0}
!28 = !{!"long", !9, i64 0}
!29 = !{!"p1 _ZTSN6google8SiteFlagE", !14, i64 0}
!30 = !{!31, !27, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !28, i64 8, !9, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!33 = !{!31, !28, i64 8}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !10, i64 0}
!36 = !DISubprogram(name: "bind", linkageName: "_ZN5folly17AsyncServerSocket4bindERKNS_13SocketAddressE", scope: !38, file: !37, line: 390, type: !40, scopeLine: 390, containingType: !38, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!37 = !DIFile(filename: "_deps/folly-src/folly/io/async/AsyncServerSocket.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "8268bef880db4e9031d70e96db85d117")
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncServerSocket", scope: !39, file: !37, line: 78, size: 2816, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly17AsyncServerSocketE")
!39 = !DINamespace(name: "folly", scope: null)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!43 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SocketAddress", scope: !39, file: !46, line: 46, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !47, identifier: "_ZTSN5folly13SocketAddressE")
!46 = !DIFile(filename: "_deps/folly-src/folly/SocketAddress.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "d3f0b1bd45f33bc6e6899a40bd9a242f")
!47 = !{!48, !486, !490, !501, !1410, !1417, !1420, !1424, !1428, !1431, !1432, !1436, !1437, !1438, !1439, !1442, !1445, !1446, !1447, !1448, !1451, !1454, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1478, !1481, !1701, !1704, !1707, !1710, !1713, !1738, !1739, !1742, !1749, !1771, !1798, !1811, !1823, !1826, !1829, !1832, !1833, !1836, !1839, !1840, !1841, !1844, !1845, !1846, !1847, !1850, !1851, !1852, !1853, !1854, !1857, !1858, !1861, !1862, !1865, !1866, !1867, !1868, !1874, !1877, !1882, !1883, !1891, !1894, !1897}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "storage_", scope: !45, file: !46, line: 832, baseType: !49, size: 320)
!49 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "variant<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !51, file: !50, line: 1361, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !52, templateParams: !277, identifier: "_ZTSSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE")
!50 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/variant", directory: "")
!51 = !DINamespace(name: "std", scope: null)
!52 = !{!53, !403, !439, !446, !448, !449, !454, !449, !455, !459, !464, !468, !472, !475, !476, !480, !483}
!53 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !49, baseType: !54, extraData: i32 0)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Variant_base<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 762, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !57, templateParams: !277, identifier: "_ZTSNSt8__detail9__variant13_Variant_baseIJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!55 = !DINamespace(name: "__variant", scope: !56)
!56 = !DINamespace(name: "__detail", scope: !51)
!57 = !{!58, !383, !387, !392, !396, !400}
!58 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !54, baseType: !59, extraData: i32 0)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Move_assign_alias<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 758, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Move_assign_base<false, folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 708, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !61, templateParams: !330, identifier: "_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!61 = !{!62, !366, !372, !377, !380}
!62 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !60, baseType: !63, extraData: i32 0)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Copy_assign_alias<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 704, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Copy_assign_base<false, folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 656, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !65, templateParams: !330, identifier: "_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!65 = !{!66, !349, !356, !359, !363}
!66 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !64, baseType: !67, extraData: i32 0)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Move_ctor_alias<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 652, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Move_ctor_base<false, folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 618, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !69, templateParams: !330, identifier: "_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!69 = !{!70, !332, !337, !342, !346}
!70 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !68, baseType: !71, extraData: i32 0)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Copy_ctor_alias<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 614, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Copy_ctor_base<false, folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 581, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !73, templateParams: !330, identifier: "_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!73 = !{!74, !313, !319, !323, !327}
!74 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !72, baseType: !75, extraData: i32 0)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Variant_storage_alias<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 574, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Variant_storage<false, folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 476, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !77, templateParams: !311, identifier: "_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!77 = !{!78, !281, !300, !304, !305, !306}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_M_u", scope: !76, file: !50, line: 516, baseType: !79, size: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Variadic_union<folly::SocketAddress::IPAddr, folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 404, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !80, templateParams: !277, identifier: "_ZTSNSt8__detail9__variant15_Variadic_unionIJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE")
!80 = !{!81, !110, !255, !259, !264, !268, !272, !275, !276}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_M_first", scope: !79, file: !50, line: 434, baseType: !82, size: 224)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Uninitialized<folly::SocketAddress::IPAddr, true>", scope: !55, file: !50, line: 219, size: 224, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !83, templateParams: !106, identifier: "_ZTSNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress6IPAddrELb1EEE")
!83 = !{!84, !86, !93, !98, !102}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !82, file: !50, line: 239, baseType: !85, size: 224)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IPAddr", scope: !45, file: !46, line: 779, size: 224, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly13SocketAddress6IPAddrE")
!86 = !DISubprogram(name: "_M_get", linkageName: "_ZNKRSt8__detail9__variant14_UninitializedIN5folly13SocketAddress6IPAddrELb1EE6_M_getEv", scope: !82, file: !50, line: 227, type: !87, scopeLine: 227, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(flags: DIFlagLValueReference, types: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!93 = !DISubprogram(name: "_M_get", linkageName: "_ZNRSt8__detail9__variant14_UninitializedIN5folly13SocketAddress6IPAddrELb1EE6_M_getEv", scope: !82, file: !50, line: 230, type: !94, scopeLine: 230, flags: DIFlagPrototyped | DIFlagLValueReference, spFlags: DISPFlagOptimized)
!94 = !DISubroutineType(flags: DIFlagLValueReference, types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !85, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!98 = !DISubprogram(name: "_M_get", linkageName: "_ZNKOSt8__detail9__variant14_UninitializedIN5folly13SocketAddress6IPAddrELb1EE6_M_getEv", scope: !82, file: !50, line: 233, type: !99, scopeLine: 233, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(flags: DIFlagRValueReference, types: !100)
!100 = !{!101, !91}
!101 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !90, size: 64)
!102 = !DISubprogram(name: "_M_get", linkageName: "_ZNOSt8__detail9__variant14_UninitializedIN5folly13SocketAddress6IPAddrELb1EE6_M_getEv", scope: !82, file: !50, line: 236, type: !103, scopeLine: 236, flags: DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(flags: DIFlagRValueReference, types: !104)
!104 = !{!105, !97}
!105 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !85, size: 64)
!106 = !{!107, !108}
!107 = !DITemplateTypeParameter(name: "_Type", type: !85)
!108 = !DITemplateValueParameter(type: !109, defaulted: true, value: i1 true)
!109 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_M_rest", scope: !79, file: !50, line: 435, baseType: !111, size: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Variadic_union<folly::SocketAddress::ExternalUnixAddr, folly::SocketAddress::VsockAddr>", scope: !55, file: !50, line: 404, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !112, templateParams: !251, identifier: "_ZTSNSt8__detail9__variant15_Variadic_unionIJN5folly13SocketAddress16ExternalUnixAddrENS3_9VsockAddrEEEE")
!112 = !{!113, !164, !229, !233, !238, !242, !246, !249, !250}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_M_first", scope: !111, file: !50, line: 434, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Uninitialized<folly::SocketAddress::ExternalUnixAddr, false>", scope: !55, file: !50, line: 243, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !115, templateParams: !161, identifier: "_ZTSNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEE")
!115 = !{!116, !123, !127, !132, !136, !140, !143, !149, !153, !157}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !50, line: 273, baseType: !117, size: 128)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !50, line: 273, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByReference | DIFlagNonTrivial, elements: !118, identifier: "_ZTSNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEUt_E")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_M_empty", scope: !117, file: !50, line: 274, baseType: !120, size: 8)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Empty_byte", scope: !114, file: !50, line: 271, size: 8, flags: DIFlagTypePassByValue, elements: !23, identifier: "_ZTSNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EE11_Empty_byteE")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_M_storage", scope: !117, file: !50, line: 275, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExternalUnixAddr", scope: !45, file: !46, line: 746, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly13SocketAddress16ExternalUnixAddrE")
!123 = !DISubprogram(name: "~_Uninitialized", linkageName: "_ZNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EED4Ev", scope: !114, file: !50, line: 252, type: !124, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = !DISubprogram(name: "_Uninitialized", linkageName: "_ZNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEC4ERKS5_", scope: !114, file: !50, line: 254, type: !128, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !126, !130}
!130 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!132 = !DISubprogram(name: "_Uninitialized", linkageName: "_ZNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEC4EOS5_", scope: !114, file: !50, line: 255, type: !133, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !126, !135}
!135 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !114, size: 64)
!136 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEaSERKS5_", scope: !114, file: !50, line: 256, type: !137, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !126, !130}
!139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !114, size: 64)
!140 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8__detail9__variant14_UninitializedIN5folly13SocketAddress16ExternalUnixAddrELb0EEaSEOS5_", scope: !114, file: !50, line: 257, type: !141, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!141 = !DISubroutineType(types: !142)
!142 = !{!139, !126, !135}
end_hunk_0
begin_hunk_1_@_ZN5folly4coro12ServerSocket6acceptEv.destroy:resume.entry
!2059 = distinct !{null, null, null, null}
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2062 = distinct !{!2062, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2063 = !{!2064, !2065, i64 0}
!2064 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowingE", !2065, i64 0}
!2065 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowing10BypassModeE", !9, i64 0}
!2066 = !{!2067}
!2067 = distinct !{!2067, !2068, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2068 = distinct !{!2068, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2069 = distinct !{null, null, null, null, null}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2072 = distinct !{!2072, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2073 = !{!2074, !21, i64 24}
!2074 = !{!"_ZTSSt22_Optional_payload_baseISt4pairIN5folly4coro23ExtendedCoroutineHandleEPNS1_15AsyncStackFrameEEE", !9, i64 0, !21, i64 24}
!2075 = !{!2076, !28, i64 0}
!2076 = !{!"_ZTSN5folly17ExecutorKeepAliveINS_8ExecutorEEE", !28, i64 0}
!2077 = !{!2078}
!2078 = distinct !{!2078, !2079, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!2079 = distinct !{!2079, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!2080 = !{!2081, !2013, i64 16}
!2081 = !{!"_ZTSN5folly4coro6detail24ScopeExitTaskPromiseBaseE", !2082, i64 0, !2013, i64 16, !2076, i64 24, !2083, i64 32, !1997, i64 40}
!2082 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandleE", !2020, i64 0, !2010, i64 8}
!2083 = !{!"_ZTSN5folly17exception_wrapperE", !2044, i64 0}
!2084 = !{!28, !28, i64 0}
!2085 = !DISubprogram(name: "keepAliveRelease", linkageName: "_ZN5folly8Executor16keepAliveReleaseEv", scope: !2087, file: !2086, line: 261, type: !2088, scopeLine: 261, containingType: !2087, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2086 = !DIFile(filename: "_deps/folly-src/folly/Executor.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e2252a484f750b6d785f8426d640a0b4")
!2087 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !39, file: !2086, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2091 = distinct !{null, null, null}
!2092 = !{!2082, !2010, i64 8}
!2093 = !{!2094}
!2094 = distinct !{!2094, !2095, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!2095 = distinct !{!2095, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!2096 = distinct !{null}
!2097 = distinct !{ptr @_ZN12_GLOBAL__N_114AcceptCallbackD2Ev, ptr @_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2098 = !{ptr @_ZN12_GLOBAL__N_114AcceptCallbackD2Ev}
!2099 = !{!2100, !8, i64 8}
!2100 = !{!"_ZTSN12_GLOBAL__N_114AcceptCallbackE", !2101, i64 0, !8, i64 8, !2083, i64 16, !2019, i64 24, !2102, i64 32}
!2101 = !{!"_ZTSN5folly17AsyncServerSocket14AcceptCallbackE"}
!2102 = !{!"_ZTSSt10shared_ptrIN5folly17AsyncServerSocketEE", !12, i64 0}
!2103 = !{!2100, !2019, i64 24}
!2104 = !{!2105, !2019, i64 0}
!2105 = !{!"_ZTSZN5folly4coro12ServerSocket6acceptEvE3$_0", !2019, i64 0}
!2106 = !{!2107, !2108, i64 0}
!2107 = !{!"_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE", !2108, i64 0, !15, i64 8}
!2108 = !{!"p1 _ZTSN5folly14RequestContextE", !14, i64 0}
!2109 = distinct !{null, null, null, null, null, null}
!2110 = distinct !{null, null, null}
!2111 = !{!2112, !2112, i64 0}
!2112 = !{!"p1 _ZTSN5folly4coro6detail23ViaCoroutinePromiseBaseE", !14, i64 0}
!2113 = !{!2028, !14, i64 48}
!2114 = !DISubprogram(name: "add", linkageName: "_ZN5folly8Executor3addENS_8FunctionIFvvEEE", scope: !2087, file: !2086, line: 191, type: !2115, scopeLine: 191, containingType: !2087, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2090, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "Func", scope: !39, file: !2086, line: 31, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !39, file: !2119, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2120, templateParams: !2160, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!2119 = !DIFile(filename: "_deps/folly-src/folly/Function.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "ecc8eed2ec6c9f311b8b6519d7429514")
!2120 = !{!2121, !2164, !2166, !2168, !2180, !2185, !2193, !2196, !2200, !2204, !2207, !2208, !2212, !2215, !2218, !2221, !2224, !2227, !2232}
!2121 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2118, baseType: !2122, extraData: i32 0)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !2123, file: !2119, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !2124, templateParams: !2160, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!2123 = !DINamespace(name: "function", scope: !1566)
!2124 = !{!2125, !2125, !2125, !2125, !2125, !2125, !2125, !2125, !2125, !2125, !2155, !2156}
!2125 = !DIDerivedType(tag: DW_TAG_variable, name: "call", scope: !2122, file: !2119, line: 361, baseType: !2126, flags: DIFlagStaticMember)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !2122, file: !2119, line: 352, baseType: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !2123, file: !2119, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !2133, identifier: "_ZTSN5folly6detail8function4DataE")
!2133 = !{!2134, !2136, !2142}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !2132, file: !2119, line: 243, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bigt", scope: !2132, file: !2119, line: 244, baseType: !2137, size: 192)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !2132, file: !2119, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !2138, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!2138 = !{!2139, !2140, !2141}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !2137, file: !2119, line: 238, baseType: !2135, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2137, file: !2119, line: 239, baseType: !451, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2137, file: !2119, line: 240, baseType: !451, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "tiny", scope: !2132, file: !2119, line: 245, baseType: !2143, size: 384)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "type", scope: !2144, file: !285, line: 2101, size: 384, flags: DIFlagTypePassByValue, elements: !2148, identifier: "_ZTSNSt15aligned_storageILm48ELm16EE4typeE")
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !51, file: !285, line: 2099, size: 8, flags: DIFlagTypePassByValue, elements: !23, templateParams: !2145, identifier: "_ZTSSt15aligned_storageILm48ELm16EE")
!2145 = !{!2146, !2147}
!2146 = !DITemplateValueParameter(name: "_Len", type: !453, value: i64 48)
!2147 = !DITemplateValueParameter(name: "_Align", type: !453, defaulted: true, value: i64 16)
!2148 = !{!2149, !2153}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !2143, file: !285, line: 2103, baseType: !2150, size: 384)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 384, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 48)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2143, file: !285, line: 2104, baseType: !2154, size: 128, align: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !285, line: 2104, size: 128, align: 128, flags: DIFlagTypePassByValue, elements: !23, identifier: "_ZTSNSt15aligned_storageILm48ELm16EE4typeUt_E")
!2155 = !DISubprogram(name: "uninitCall", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE", scope: !2122, file: !2119, line: 364, type: !2129, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!2156 = !DISubprogram(name: "operator()", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv", scope: !2122, file: !2119, line: 368, type: !2157, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2160 = !{!2161}
!2161 = !DITemplateTypeParameter(name: "FunctionType", type: !2162)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !2118, file: !2119, line: 646, baseType: !2165, size: 384)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "Data", scope: !2118, file: !2119, line: 634, baseType: !2132)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "call_", scope: !2118, file: !2119, line: 647, baseType: !2167, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !2118, file: !2119, line: 639, baseType: !2127)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_", scope: !2118, file: !2119, line: 648, baseType: !2169, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Exec", scope: !2118, file: !2119, line: 640, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!451, !2173, !2179, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "Op", scope: !2118, file: !2119, line: 635, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !2123, file: !2119, line: 234, baseType: !775, size: 32, flags: DIFlagEnumClass, elements: !2175, identifier: "_ZTSN5folly6detail8function2OpE")
!2175 = !{!2176, !2177, !2178}
!2176 = !DIEnumerator(name: "MOVE", value: 0)
!2177 = !DIEnumerator(name: "NUKE", value: 1)
!2178 = !DIEnumerator(name: "HEAP", value: 2)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2180 = !DISubprogram(name: "exec", linkageName: "_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_", scope: !2118, file: !2119, line: 650, type: !2181, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!451, !2183, !2173, !2179, !2179}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2185 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EONS0_IKFvvEEENS_6detail8function9CoerceTagE", scope: !2118, file: !2119, line: 672, type: !2186, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !2188, !2189, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2189 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !39, file: !2119, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "CoerceTag", scope: !2118, file: !2119, line: 636, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !2123, file: !2119, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !23, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!2193 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4Ev", scope: !2118, file: !2119, line: 683, type: !2194, scopeLine: 683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2188}
!2196 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4ERKS2_", scope: !2118, file: !2119, line: 686, type: !2197, scopeLine: 686, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2188, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2184, size: 64)
!2200 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EOS2_", scope: !2118, file: !2119, line: 699, type: !2201, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2188, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2118, size: 64)
!2204 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EDn", scope: !2118, file: !2119, line: 709, type: !2205, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2188, !1517}
!2207 = !DISubprogram(name: "~Function", linkageName: "_ZN5folly8FunctionIFvvEED4Ev", scope: !2118, file: !2119, line: 798, type: !2194, scopeLine: 798, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2208 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSERKS2_", scope: !2118, file: !2119, line: 800, type: !2209, scopeLine: 800, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2211, !2188, !2199}
!2211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2118, size: 64)
!2212 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEOS2_", scope: !2118, file: !2119, line: 820, type: !2213, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!2211, !2188, !2203}
!2215 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEDn", scope: !2118, file: !2119, line: 873, type: !2216, scopeLine: 873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2211, !2188, !1517}
!2218 = !DISubprogram(name: "swap", linkageName: "_ZN5folly8FunctionIFvvEE4swapERS2_", scope: !2118, file: !2119, line: 897, type: !2219, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2188, !2211}
!2221 = !DISubprogram(name: "operator bool", linkageName: "_ZNK5folly8FunctionIFvvEEcvbEv", scope: !2118, file: !2119, line: 903, type: !2222, scopeLine: 903, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!109, !2183}
!2224 = !DISubprogram(name: "heapAllocatedMemory", linkageName: "_ZNK5folly8FunctionIFvvEE19heapAllocatedMemoryEv", scope: !2118, file: !2119, line: 910, type: !2225, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!451, !2183}
!2227 = !DISubprogram(name: "asSharedProxy", linkageName: "_ZNO5folly8FunctionIFvvEE13asSharedProxyEv", scope: !2118, file: !2119, line: 920, type: !2228, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!2228 = !DISubroutineType(flags: DIFlagRValueReference, types: !2229)
!2229 = !{!2230, !2188}
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "SharedProxy", scope: !2122, file: !2119, line: 373, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !2123, file: !2119, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!2232 = !DISubprogram(name: "asStdFunction", linkageName: "_ZNO5folly8FunctionIFvvEE13asStdFunctionEv", scope: !2118, file: !2119, line: 927, type: !2233, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!2233 = !DISubroutineType(flags: DIFlagRValueReference, types: !2234)
!2234 = !{!2235, !2188}
!2235 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !51, file: !2236, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!2236 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_function.h", directory: "")
!2237 = distinct !{null, null, null}
!2238 = distinct !{null, null}
!2239 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!2240 = !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev}
!2241 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!2242 = !{!2243}
!2243 = distinct !{!2243, !2244, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_: argument 0"}
!2244 = distinct !{!2244, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_"}
!2245 = !{!2246}
!2246 = distinct !{!2246, !2247, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE: argument 0"}
!2247 = distinct !{!2247, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE"}
!2248 = !{!2249, !2246, !2243}
!2249 = distinct !{!2249, !2250, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!2250 = distinct !{!2250, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!2251 = distinct !{null, null, null}
!2252 = !{!2246, !2243}
!2253 = !{!2254, !2112, i64 0}
!2254 = !{!"_ZTSZN5folly4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_", !2112, i64 0}
!2255 = distinct !{null}
!2256 = !{!2257}
!2257 = distinct !{!2257, !2258, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS2_EEEDaDpOT0_ENKUlvE_clEv: argument 0"}
!2258 = distinct !{!2258, !"_ZZNK5folly26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS2_EEEDaDpOT0_ENKUlvE_clEv"}
!2259 = !{!"branch_weights", i32 0, i32 -2147483648, i32 223695599, i32 177092074, i32 140197489, i32 192771731}
!2260 = !{!2261}
!2261 = distinct !{!2261, !2262, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv: argument 0"}
!2262 = distinct !{!2262, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv"}
!2263 = !{!2264, !2261}
!2264 = distinct !{!2264, !2265, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_: argument 0"}
!2265 = distinct !{!2265, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_"}
!2266 = distinct !{null, null, null, null, null, null, null}
!2267 = !{!2268}
!2268 = distinct !{!2268, !2269, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2269 = distinct !{!2269, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2270 = !{!2271, !2271, i64 0}
!2271 = !{!"_ZN5folly4coro12ServerSocket6acceptEv.Frame Slot", !10, i64 0}
!2272 = !{!2273, !14, i64 0}
!2273 = !{!"_ZTSSt13__atomic_baseIPvE", !14, i64 0}
!2274 = !{!2019, !2019, i64 0}
!2275 = !DISubprogram(name: "addAcceptCallback", linkageName: "_ZN5folly17AsyncServerSocket17addAcceptCallbackEPNS0_14AcceptCallbackEPNS_9EventBaseEj", scope: !38, file: !37, line: 509, type: !2276, scopeLine: 509, containingType: !38, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !42, !2278, !2280, !1765}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AcceptCallback", scope: !38, file: !37, line: 151, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly17AsyncServerSocket14AcceptCallbackE")
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "EventBase", scope: !39, file: !2282, line: 135, size: 5120, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly9EventBaseE")
!2282 = !DIFile(filename: "_deps/folly-src/folly/io/async/EventBase.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "ae166e4a5ffdcb76f16ff01f69d8b9d6")
!2283 = !DISubprogram(name: "startAccepting", linkageName: "_ZN5folly17AsyncServerSocket14startAcceptingEv", scope: !38, file: !37, line: 560, type: !2284, scopeLine: 560, containingType: !38, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !42}
!2286 = !{!2287, !2027, i64 0}
!2287 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6detail17CancellationStateELb0EE", !2027, i64 0}
!2288 = !{!2289}
!2289 = distinct !{!2289, !2290, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv: argument 0"}
!2290 = distinct !{!2290, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv"}
!2291 = !{!2024, !2029, i64 96}
!2292 = !{!2031, !21, i64 0}
!2293 = !{!2294}
!2294 = distinct !{!2294, !2295, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_: argument 0"}
!2295 = distinct !{!2295, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_"}
!2296 = !{!2297, !2294}
!2297 = distinct !{!2297, !2298, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!2298 = distinct !{!2298, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!2299 = !{!2300}
!2300 = distinct !{!2300, !2301, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv: argument 0"}
!2301 = distinct !{!2301, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv"}
!2302 = !{!2303}
!2303 = distinct !{!2303, !2304, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE: argument 0"}
!2304 = distinct !{!2304, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE"}
!2305 = !{!2303, !2300}
!2306 = !{!2307, !2303, !2300}
!2307 = distinct !{!2307, !2308, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv: argument 0"}
!2308 = distinct !{!2308, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv"}
!2309 = !{!2310, !2312, !2300}
!2310 = distinct !{!2310, !2311, !"_ZNK5folly4coro5BatonawEv: argument 0"}
!2311 = distinct !{!2311, !"_ZNK5folly4coro5BatonawEv"}
!2312 = distinct !{!2312, !2313, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_: argument 0"}
!2313 = distinct !{!2313, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_"}
!2314 = !{!2020, !14, i64 0}
!2315 = distinct !{null}
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv: argument 0"}
!2318 = distinct !{!2318, !"_ZNK5folly4coro14co_cancelled_tcvNS0_8co_errorEEv"}
!2319 = !{!2320, !2317}
!2320 = distinct !{!2320, !2321, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_: argument 0"}
!2321 = distinct !{!2321, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_"}
!2322 = !{!2323}
!2323 = distinct !{!2323, !2324, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2324 = distinct !{!2324, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2325 = !{!2326}
!2326 = distinct !{!2326, !2327, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2327 = distinct !{!2327, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!2330 = distinct !{!2330, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!2331 = !DISubprogram(name: "getEventBase", linkageName: "_ZNK5folly17AsyncServerSocket12getEventBaseEv", scope: !38, file: !37, line: 312, type: !2332, scopeLine: 312, containingType: !38, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2280, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2336 = !{!2337}
!2337 = distinct !{!2337, !2338, !"_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseENS_13NetworkSocketEPKNS_13SocketAddressE: argument 0"}
!2338 = distinct !{!2338, !"_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseENS_13NetworkSocketEPKNS_13SocketAddressE"}
!2339 = !{!2340, !21, i64 8}
!2340 = !{!"_ZTSN5folly8OptionalINSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEEE28StorageTriviallyDestructibleE", !9, i64 0, !21, i64 8}
!2341 = !{!2342}
!2342 = distinct !{!2342, !2343, !"_ZSt11make_uniqueIN5folly4coro9TransportEJPNS0_9EventBaseESt10unique_ptrINS0_11AsyncSocketENS0_18DelayedDestruction10DestructorEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!2343 = distinct !{!2343, !"_ZSt11make_uniqueIN5folly4coro9TransportEJPNS0_9EventBaseESt10unique_ptrINS0_11AsyncSocketENS0_18DelayedDestruction10DestructorEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!2344 = !{!2345, !1911, i64 8}
!2345 = !{!"_ZTSN5folly4coro9TransportE", !2346, i64 0, !1911, i64 8, !2347, i64 16, !21, i64 24}
!2346 = !{!"_ZTSN5folly4coro11TransportIfE"}
!2347 = !{!"_ZTSSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEE", !2348, i64 0}
!2348 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorELb1ELb1EE", !2349, i64 0}
!2349 = !{!"_ZTSSt15__uniq_ptr_implIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEE", !2350, i64 0}
!2350 = !{!"_ZTSSt5tupleIJPN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEEE", !2351, i64 0}
!2351 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEEE", !2352, i64 0}
!2352 = !{!"_ZTSSt10_Head_baseILm0EPN5folly14AsyncTransportELb0EE", !2353, i64 0}
!2353 = !{!"p1 _ZTSN5folly14AsyncTransportE", !14, i64 0}
!2354 = !{!2353, !2353, i64 0}
!2355 = !{!2345, !21, i64 24}
!2356 = distinct !{null, null, null, null, null}
!2357 = distinct !{ptr @_ZN5folly20CancellationCallbackD2Ev, null, null}
!2358 = distinct !{ptr @_ZN5folly17CancellationTokenD2Ev, null, null, null}
!2359 = distinct !{null}
!2360 = !{!"branch_weights", i32 0, i32 -2147483648, i32 223695599, i32 177092074, i32 140197489, i32 192771731, i32 115666334}
!2361 = distinct !{null, null, null, null}
!2362 = distinct !{null, null, ptr @_ZN5folly17CancellationTokenD2Ev, null, null, null}
!2363 = distinct !{null, null, null, null}
end_hunk_1
