Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ServerSocket?download=true
inline.NumInlined: 946
inline.NumDeleted: 587
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !986

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !54
  store i8 %i.u, ptr %i.s, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !54
  store i8 %i.y, ptr %i.x, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !67    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !54
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !67
  store i64 %.0, ptr %i.h, align 8, !tbaa !54
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !call_target !984, !inline_history !2084
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !call_target !985, !inline_history !2084
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro12ServerSocket6acceptEv(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.125:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 352) ; 9 uses
  store ptr @_ZN5folly4coro12ServerSocket6acceptEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro12ServerSocket6acceptEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !990
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESD_SF_, ptr %i.c, align 8, !tbaa !992
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !995
  store ptr %i.a, ptr %0, align 8, !tbaa !996, !alias.scope !2087
  %index.addr213 = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i3 0, ptr %index.addr213, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS9_EEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %0, align 8, !tbaa !998    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !996
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !1000
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1004 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !998    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.d, ptr %i.h, align 8, !tbaa !1005
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2088
  store atomic ptr null, ptr %i.f monotonic, align 8
  store ptr null, ptr %i.e, align 8, !tbaa !1004
  %i.k = load ptr, ptr %0, align 8, !tbaa !998
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !996
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !996
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !2091, !nonnull !58, !align !1008
  %i.p = tail call noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #25 ; 2 uses
  br i1 %i.p, label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseISt10unique_ptrINS2_9TransportESt14default_deleteISB_EEEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !1004
  store atomic ptr %i.d, ptr %i.f release, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !998
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #25
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseISt10unique_ptrINS2_9TransportESt14default_deleteISB_EEEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseISt10unique_ptrINS2_9TransportESt14default_deleteISB_EEEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.p
}

declare noundef i32 @_ZN5folly17AsyncServerSocket13stopAcceptingEi(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1017 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %0) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1018 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef null) #25, !inline_history !2092 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17CancellationTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1019   ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw sub ptr %i.b, i64 8 acq_rel, align 8 ; 2 uses
  %i.d = icmp ult i64 %i.c, 16
  br i1 %i.d, label %bb.c, label %_ZNSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.c, 4
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.a) #25
  br label %_ZNSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25, !call_target !1024, !inline_history !2093
  br label %_ZNSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEED2Ev.exit

_ZNSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !978
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !979
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !984, !inline_history !2094
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !985, !inline_history !2094
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !986

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1026
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZN5folly17exception_wrapperD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #25
  br label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  tail call void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #25
  %i.b = load i64, ptr %1, align 8, !noalias !2100 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !2100
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1027
  store i32 2, ptr %i.a, align 8, !tbaa !1027
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  switch i32 %i.c, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ], !prof !1028

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
end_hunk_0
begin_hunk_1_@_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv:bb.a
  br i1 %i.ak, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !986

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
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

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_S5_EEvPvSA_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %0, align 8, !tbaa !70, !alias.scope !2266
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_18OperationCancelledEEEvPv(ptr noundef %0) #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18OperationCancelledD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly18OperationCancelled4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.27
}

declare void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseENS_13NetworkSocketEjPKNS_13SocketAddressENS_8OptionalINSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE(ptr noundef nonnull align 8 dereferenceable(1193), ptr noundef, i32, i32 noundef, ptr noundef, ptr noundef align 8 dead_on_return) unnamed_addr #2

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
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((16, 24)) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !978
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !979
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !984, !inline_history !30
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !call_target !985, !inline_history !30
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !986

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1061
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1043 ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !1046
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #25, !call_target !1051, !inline_history !31
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
  %1 = alloca %"class.folly::Optional", align 8   ; 5 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %4 = alloca %class.anon.142, align 1            ; 3 uses
  %5 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %6 = alloca %class.anon.142, align 1            ; 3 uses
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr202 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %.reload.addr203 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr204 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %.reload.addr206 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 7 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread
    i3 2, label %AfterCoroSuspend108
    i3 3, label %CoroEnd
    i3 -4, label %CoroEnd
  ], !prof !2312

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.a = load ptr, ptr @_ZZN5folly4coro12ServerSocket6acceptEvE8vlocal__, align 8, !tbaa !64 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %.split

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.c = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro12ServerSocket6acceptEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str, i32 noundef 5)
          to label %bb.b unwind label %.from.182

.split:                                           ; preds = %AfterCoroSuspend
  %i.d = load i32, ptr %i.a, align 4, !tbaa !55
  %i.e = icmp sgt i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %.critedge25

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %.critedge25

bb.c:                                             ; preds = %bb.b, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 100)
          to label %bb.d unwind label %.from.128

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.e unwind label %.from.131

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.11, i64 noundef 15)
          to label %.critedge unwind label %.from.131 ; 0 uses

.critedge:                                        ; preds = %bb.e
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %bb.b, %.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !1019 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i: ; preds = %.critedge25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i64, ptr %i.j acquire, align 8
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread

bb.f:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !2313
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2314
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg, ptr noundef nonnull %4) #25, !noalias !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2314
  %i.n = load i64, ptr %3, align 8, !noalias !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !2313
  %i.o = load i32, ptr %i.m, align 16, !tbaa !1027
  store i32 2, ptr %i.m, align 16, !tbaa !1027
  switch i32 %i.o, label %_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ], !prof !1028

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(25) %i.q) #25, !call_target !1034, !inline_history !2273
  br label %_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1026
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #25
  br label %_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit

_ZN5folly4coro12ServerSocket6acceptEv.__await_suspend_wrapper__await.exit: ; preds = %bb.i, %bb.h, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i.i.i, %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.n, ptr %i.w, align 8, !alias.scope !2316
  store i32 1, ptr %i.m, align 16, !tbaa !995
  store i16 0, ptr %.reload.addr200, align 16
  store i3 1, ptr %index.addr, align 8
  %i.x = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(2) %.reload.addr200, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212) #25 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  musttail call void %i.y(ptr nonnull %i.x)
  ret void

.from.182:                                        ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.be

.from.128:                                        ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.180

.from.131:                                        ; preds = %bb.d, %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #25
  br label %.from.180

.from.180:                                        ; preds = %.from.128, %.from.131
  %.pn = phi { ptr, i32 } [ %i.ab, %.from.131 ], [ %i.aa, %.from.128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.be

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread: ; preds = %resume.entry, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.i.i, %.critedge25
  %.reload.addr198 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload199 = load ptr, ptr %.reload.addr198, align 16, !tbaa !2318 ; 3 uses
  store ptr null, ptr %.reload.addr203, align 16, !tbaa !2320
  %i.ac = load ptr, ptr %.reload199, align 8, !tbaa !52 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.reload199, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i26 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i26, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from., label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.137

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.137: ; preds = %bb.j
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !55
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !55
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.: ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pre76 = load ptr, ptr %.reload199, align 8, !tbaa !52
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from., %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.137
  %i.ak = phi ptr [ %.pre76, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from. ], [ %i.ac, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.from.137 ], [ %i.ac, %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E15await_transformENS0_15co_safe_point_tE.exit.thread ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr201, align 16, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 -1, ptr %i.al, align 8, !tbaa !1057
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.am, align 16, !tbaa !1026
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr203, ptr %i.an, align 8, !tbaa !2321
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.ac, ptr %i.ao, align 16, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.ae, ptr %i.ap, align 8, !tbaa !53
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(408) %i.ak, ptr noundef nonnull %.reload.addr201, ptr noundef null, i32 noundef 5)
          to label %bb.k unwind label %.from.172, !call_target !2326

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.reload197 = load ptr, ptr %.reload.addr198, align 16, !tbaa !2318
  %i.at = load ptr, ptr %.reload197, align 8, !tbaa !52 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(408) %i.at)
          to label %bb.l unwind label %.from.172, !call_target !2330

.from.172:                                        ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.175

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.reload.addr204, align 8, !tbaa !2332
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !1019 ; 4 uses
  %.not.i = icmp eq ptr %i.az, null               ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 8 monotonic, align 8, !noalias !2333 ; 0 uses
  store ptr %i.az, ptr %.reload.addr204, align 8, !tbaa !1019
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr200, i8 0, i64 24, i1 false)
  store ptr %.reload.addr203, ptr %i.bd, align 16, !tbaa !2321
  store ptr @"_ZN5folly6detail8function5call_IZNS_4coro12ServerSocket6acceptEvE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.be, align 16, !tbaa !1060
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.bf, align 8, !tbaa !1018
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.bg, align 16, !tbaa !2334
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.bh, align 8, !tbaa !2335
  br i1 %.not.i, label %.from..i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr200, i1 noundef zeroext true) #25
  br i1 %i.bi, label %bb.p, label %.from..i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %.reload.addr204, align 8, !tbaa !1019
  store ptr %i.bj, ptr %i.bc, align 16, !tbaa !1017
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.p, %bb.o, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !1039, !noalias !2336
  %i.bm = icmp eq i8 %i.bl, 2
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !1039, !noalias !2336
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1043, !noalias !2337
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  %i.bq = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.141 unwind label %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !2338 ; 8 uses

.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.170

.from.141:                                        ; preds = %.from..i.i.i.i
  %i.bs = or i64 %i.bp, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.bq, align 8, !noalias !2340
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !2340
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, i8 0, i64 56, i1 false), !noalias !2340
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bv, align 8, !tbaa !992, !noalias !2340
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !70, !noalias !2340
  store ptr %i.bq, ptr %.reload.addr202, align 16, !tbaa !996, !alias.scope !2341
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !2340
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !1043, !noalias !2340
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.reload.addr203, ptr %i.bw, align 8, !tbaa !2321, !alias.scope !2342
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.bx, align 16, !tbaa !2343, !alias.scope !2342
  %i.by = load atomic ptr, ptr %.reload.addr203 acquire, align 16
  %i.bz = icmp eq ptr %i.by, %.reload.addr203
  br i1 %i.bz, label %AfterCoroSuspend108, label %AfterCoroSave106

AfterCoroSave106:                                 ; preds = %.from.141
  store i3 2, ptr %index.addr, align 8
  %i.ca = call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS9_EEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr202, ptr nonnull %0) #25
  br i1 %i.ca, label %CoroEnd, label %AfterCoroSuspend108

AfterCoroSuspend108:                              ; preds = %resume.entry, %AfterCoroSave106, %.from.141
  %i.cb = load ptr, ptr %.reload.addr202, align 16, !tbaa !998 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i31, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread, label %bb.q

bb.q:                                             ; preds = %AfterCoroSuspend108
  store i64 0, ptr %.reload.addr202, align 16, !tbaa !996
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr nonnull %i.cb)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.r, !inline_history !32

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.q
  %.pr = load ptr, ptr %.reload.addr202, align 16, !tbaa !998 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread, label %bb.s

bb.s:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread unwind label %bb.t, !inline_history !32

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #29
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.s, %AfterCoroSuspend108
  %i.ck = load ptr, ptr %.reload.addr204, align 8, !tbaa !1019 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i36, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit: ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %bb.u, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread

bb.u:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.reload.addr194 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.reload195 = load ptr, ptr %.reload.addr194, align 16, !tbaa !2318
  %i.co = load ptr, ptr %.reload195, align 8, !tbaa !52
  %i.cp = invoke noundef i32 @_ZN5folly17AsyncServerSocket13stopAcceptingEi(ptr noundef nonnull align 8 dereferenceable(408) %i.co, i32 noundef -1)
          to label %bb.v unwind label %.from.162  ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !2344
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2345
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES8_E3arg, ptr noundef nonnull %6) #25, !noalias !2344
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2345
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %i.cq = load i64, ptr %5, align 8, !noalias !2347
  store i64 %i.cq, ptr %.reload.addr205, align 16, !alias.scope !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !2344
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !1027
  store i32 2, ptr %i.cr, align 16, !tbaa !1027
  switch i32 %i.cs, label %bb.z [
    i32 0, label %bb.w
    i32 1, label %bb.x
  ], !prof !1028

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i2, label %bb.z, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i: ; preds = %bb.w
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(25) %i.cu) #25, !call_target !1034, !inline_history !25
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1026
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i, %bb.w, %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  %i.db = load i64, ptr %.reload.addr205, align 16, !noalias !2348
  store i64 %i.db, ptr %i.da, align 8, !alias.scope !2348
  store i64 0, ptr %.reload.addr205, align 16, !noalias !2348
  store i32 1, ptr %i.cr, align 16, !tbaa !995
  store i3 3, ptr %index.addr, align 8
  %i.dc = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr202, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212) #25 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  musttail call void %i.dd(ptr nonnull %i.dc)
  ret void

.from.162:                                        ; preds = %bb.u
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.170

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.dg = load ptr, ptr %i.df, align 16           ; 2 uses
  %.not75 = icmp eq ptr %i.dg, null
  br i1 %.not75, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %i.dh = ptrtoint ptr %i.dg to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  store i64 %i.dh, ptr %.reload.addr206, align 8, !alias.scope !2349
  store i64 0, ptr %i.df, align 16, !noalias !2349
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 16, !tbaa !1027
  store i32 2, ptr %i.di, align 16, !tbaa !1027
  switch i32 %i.dj, label %bb.ae [
    i32 0, label %bb.ab
    i32 1, label %bb.ac
  ], !prof !1028

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i4, label %bb.ae, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i5

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i5: ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(25) %i.dl) #25, !call_target !1034, !inline_history !25
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1026
  %.not.i.i.i.i.i3 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i5, %bb.ab, %bb.aa
  %.reload.addr210 = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  %i.ds = load i64, ptr %.reload.addr206, align 8, !noalias !2350
  store i64 %i.ds, ptr %i.dr, align 8, !alias.scope !2350
  store i64 0, ptr %.reload.addr206, align 8, !noalias !2350
  store i32 1, ptr %i.di, align 16, !tbaa !995
  store i3 -4, ptr %index.addr, align 8
  %i.dt = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr210, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212) #25 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  musttail call void %i.du(ptr nonnull %i.dt)
  ret void

bb.af:                                            ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %.reload.addr192 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload193 = load ptr, ptr %.reload.addr192, align 16, !tbaa !2318
  %i.dv = load ptr, ptr %.reload193, align 8, !tbaa !52 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(408) %i.dv)
          to label %bb.ag unwind label %.from.152, !call_target !2355

bb.ag:                                            ; preds = %bb.af
  %.reload191 = load ptr, ptr %.reload.addr192, align 16, !tbaa !2318
  %i.ea = load ptr, ptr %.reload191, align 8, !tbaa !52 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(408) %i.ea)
          to label %bb.ah unwind label %bb.ao, !call_target !2355

bb.ah:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.eh = invoke noalias noundef nonnull dereferenceable(1200) ptr @_Znwm(i64 noundef 1200) #31
          to label %.noexc unwind label %bb.ao    ; 5 uses

.noexc:                                           ; preds = %bb.ah
  store i8 0, ptr %1, align 8, !tbaa !54, !noalias !2356
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.ei, align 8, !tbaa !2358, !noalias !2356
  invoke void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseENS_13NetworkSocketEjPKNS_13SocketAddressENS_8OptionalINSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEEE(ptr noundef nonnull align 8 dereferenceable(1193) %i.eh, ptr noundef %i.ee, i32 %i.eg, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dead_on_return %1)
          to label %bb.aj unwind label %bb.ai, !noalias !2356

bb.ai:                                            ; preds = %.noexc
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 1200) #26, !noalias !2356
  br label %.from.170

bb.aj:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ek = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %bb.ak unwind label %bb.ap     ; 5 uses

bb.ak:                                            ; preds = %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.ek, align 8, !tbaa !70, !noalias !2359
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.dz, ptr %i.el, align 8, !tbaa !2369, !noalias !2359
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.en = ptrtoint ptr %i.eh to i64
  store i64 %i.en, ptr %i.em, align 8, !tbaa !2370, !noalias !2359
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i8 0, ptr %i.eo, align 8, !tbaa !2371, !noalias !2359
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 16, !tbaa !1027
  store i32 2, ptr %i.ep, align 16, !tbaa !1027
  switch i32 %i.eq, label %bb.ar [
    i32 0, label %bb.al
    i32 1, label %bb.am
  ], !prof !1028

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i8, label %bb.ar, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i9

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i9: ; preds = %bb.al
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(25) %i.es) #25, !call_target !1034, !inline_history !2310
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1026
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i7, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) #25
  br label %bb.ar

.from.152:                                        ; preds = %bb.af
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.170

bb.ao:                                            ; preds = %bb.ah, %bb.ag
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.170

bb.ap:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = load ptr, ptr %i.eh, align 8, !tbaa !70
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(13) %i.eh)
          to label %.from.170 unwind label %bb.aq, !inline_history !2311

bb.aq:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #29
  unreachable

bb.ar:                                            ; preds = %bb.ak, %bb.al, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i.i9, %bb.am, %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fh = ptrtoint ptr %i.ek to i64
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !1030
  store i32 0, ptr %i.ep, align 16, !tbaa !995
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fj = load ptr, ptr %i.fi, align 16, !tbaa !1017 ; 2 uses
  %.not.i49 = icmp eq ptr %i.fj, null
  br i1 %.not.i49, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr200) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1018 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i50, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fn = call noundef i64 %i.fl(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.fm, ptr noundef null) #25, !inline_history !33 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.au, %bb.at
  %i.fo = load ptr, ptr %.reload.addr204, align 8, !tbaa !1019 ; 5 uses
  %.not.i.i51 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i51, label %_ZN5folly17CancellationTokenD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = atomicrmw sub ptr %i.fp, i64 8 acq_rel, align 8 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 16
  br i1 %i.fr, label %bb.aw, label %_ZN5folly17CancellationTokenD2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.fs = and i64 %i.fq, 4
  %.not.i.i.i.i52 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i.i.i52, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.fo) #25
  br label %_ZN5folly17CancellationTokenD2Ev.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !70
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %i.fo) #25, !call_target !1024, !inline_history !34
  br label %_ZN5folly17CancellationTokenD2Ev.exit

.from.170:                                        ; preds = %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %.from.162, %.from.152, %bb.ao, %bb.ai, %bb.ap
  %.pn21.pn = phi { ptr, i32 } [ %i.fa, %bb.ap ], [ %i.de, %.from.162 ], [ %i.ej, %bb.ai ], [ %i.br, %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.ey, %.from.152 ], [ %i.ez, %bb.ao ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr200) #25
  call void @_ZN5folly17CancellationTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr204) #25
  br label %.from.175

_ZN5folly17CancellationTokenD2Ev.exit:            ; preds = %bb.ay, %bb.ax, %bb.av, %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr201, align 16, !tbaa !70
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i53 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i53, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN5folly17CancellationTokenD2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 4 uses
  %i.fz = load atomic i64, ptr %i.fy acquire, align 8 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 4294967297
  %i.gb = trunc i64 %i.fz to i32                  ; 2 uses
  br i1 %i.ga, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fy, align 8, !tbaa !978
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 0, ptr %i.gc, align 4, !tbaa !979
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !70
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #25, !call_target !984, !inline_history !27
  %i.gg = load ptr, ptr %i.fx, align 8, !tbaa !70
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #25, !call_target !985, !inline_history !27
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i54 = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i.i.i54, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167: ; preds = %bb.bb
  %i.gk = add nsw i32 %i.gb, -1
  store i32 %i.gk, ptr %i.fy, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.bb
  %i.gl = atomicrmw volatile add ptr %i.fy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167
  %.0.i.i.i.i.i = phi i32 [ %i.gb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167 ], [ %i.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.gm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gm, label %bb.bc, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !986

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #25, !inline_history !1053
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ba, %_ZN5folly17CancellationTokenD2Ev.exit
  %i.gn = load ptr, ptr %i.df, align 16, !tbaa !1026
  %.not.i.i1.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i1.i, label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #25, !inline_history !1053
  br label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit

_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit:       ; preds = %bb.bd, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %.reload.addr201) #25, !inline_history !1053
  call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr203) #25
  br label %bb.bf

.from.175:                                        ; preds = %.from.172, %.from.170
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %.from.170 ], [ %i.ax, %.from.172 ]
  call void @_ZN12_GLOBAL__N_114AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.reload.addr201) #25
  call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr203) #25
  br label %bb.be

bb.be:                                            ; preds = %.from.175, %.from.180, %.from.182
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %.from.175 ], [ %i.z, %.from.182 ], [ %.pn, %.from.180 ]
  %.7 = extractvalue { ptr, i32 } %.pn21.pn.pn.pn, 0
  %i.go = call ptr @__cxa_begin_catch(ptr %.7) #25 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS5_EEEES8_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212) #25
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be, %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit
  %.reload.addr211 = getelementptr inbounds nuw i8, ptr %0, i64 346
  store ptr null, ptr %0, align 16
  store i3 -3, ptr %index.addr, align 8
  %i.gp = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt10unique_ptrINS0_9TransportESt14default_deleteIS7_EEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr211, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr212) #25 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  musttail call void %i.gq(ptr nonnull %i.gp)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave106, %resume.entry, %resume.entry
  ret void

bb.bg:                                            ; preds = %bb.be
  %i.gr = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.gr

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro12ServerSocket6acceptEv.destroy(ptr noundef nonnull align 16 dereferenceable(352) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.reload.addr203 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.reload.addr204 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %AfterCoroSuspend
    i3 2, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
    i3 3, label %AfterCoroSuspend112
    i3 -4, label %AfterCoroSuspend116
    i3 -3, label %AfterCoroSuspend
  ], !prof !2375

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr202 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.pr = load ptr, ptr %.reload.addr202, align 16, !tbaa !998 ; 3 uses
  %.not.i.i32 = icmp eq ptr %.pr, null
  br i1 %.not.i.i32, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr nonnull %.pr)
          to label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35 unwind label %bb.b, !inline_history !32

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

AfterCoroSuspend112:                              ; preds = %resume.entry
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = load ptr, ptr %.reload.addr205, align 16, !tbaa !1026
  %.not.i.i.i38 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i38, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.sink.split

AfterCoroSuspend116:                              ; preds = %resume.entry
  %.reload.addr206 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load ptr, ptr %.reload.addr206, align 8, !tbaa !1026
  %.not.i.i.i43 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i43, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35, label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.sink.split

.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.sink.split: ; preds = %AfterCoroSuspend116, %AfterCoroSuspend112
  %.reload.addr206.sink = phi ptr [ %.reload.addr205, %AfterCoroSuspend112 ], [ %.reload.addr206, %AfterCoroSuspend116 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr206.sink) #25
  br label %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35

.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35: ; preds = %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35.sink.split, %AfterCoroSuspend116, %AfterCoroSuspend112, %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !1017 ; 2 uses
  %.not.i49 = icmp eq ptr %i.h, null
  br i1 %.not.i49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr200) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.from._ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1018 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i50, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = tail call noundef i64 %i.j(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef null) #25, !inline_history !33 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %.reload.addr204, align 8, !tbaa !1019 ; 5 uses
  %.not.i.i51 = icmp eq ptr %i.m, null
  br i1 %.not.i.i51, label %_ZN5folly17CancellationTokenD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 8 acq_rel, align 8 ; 2 uses
  %i.p = icmp ult i64 %i.o, 16
  br i1 %i.p, label %bb.g, label %_ZN5folly17CancellationTokenD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %i.o, 4
  %.not.i.i.i.i52 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.m) #25
  br label %_ZN5folly17CancellationTokenD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #25, !call_target !1024, !inline_history !34
  br label %_ZN5folly17CancellationTokenD2Ev.exit

_ZN5folly17CancellationTokenD2Ev.exit:            ; preds = %bb.i, %bb.h, %bb.f, %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_114AcceptCallbackE, i64 16), ptr %.reload.addr201, align 16, !tbaa !70
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 8 uses
  %.not.i.i.i53 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i53, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.w, align 8, !tbaa !978
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !979
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !call_target !984, !inline_history !27
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !call_target !985, !inline_history !27
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i54 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i54, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167: ; preds = %bb.l
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167
  %.0.i.i.i.i.i = phi i32 [ %i.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.167 ], [ %i.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !986

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !1053
  br label %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k, %_ZN5folly17CancellationTokenD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !1026
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #25, !inline_history !1053
  br label %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit

_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit:       ; preds = %bb.n, %_ZNSt12__shared_ptrIN5folly17AsyncServerSocketELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  tail call void @_ZN5folly17AsyncServerSocket14AcceptCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %.reload.addr201) #25, !inline_history !1053
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr203) #25
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN12_GLOBAL__N_114AcceptCallbackD2Ev.exit, %resume.entry, %resume.entry
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load i32, ptr %i.an, align 16, !tbaa !995
  switch i32 %i.ao, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ], !prof !1028

bb.o:                                             ; preds = %AfterCoroSuspend
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1030 ; 3 uses
  %.not.i.i.i58 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i58, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i: ; preds = %bb.o
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(25) %i.aq) #25, !call_target !1034, !inline_history !2372
  br label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i

bb.p:                                             ; preds = %AfterCoroSuspend
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1026
  %.not.i.i.i.i56 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i56, label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #25
  br label %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i

_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i: ; preds = %bb.q, %bb.p, %_ZNKSt14default_deleteIN5folly4coro9TransportEEclEPS2_.exit.i.i.i, %bb.o, %AfterCoroSuspend
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !1019 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5folly6detail7TryBaseISt10unique_ptrINS_4coro9TransportESt14default_deleteIS4_EEED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 8 acq_rel, align 8 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 16
  br i1 %i.ba, label %bb.s, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bb = and i64 %i.az, 4
  %.not.i.i.i.i.i.i57 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i57, label %bb.u, label %bb.t

end_hunk_1
