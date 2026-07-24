inline.NumInlined: 1112
inline.NumDeleted: 534
begin_hunk_0_@_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_:bb.a
_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge, %bb.h, %_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit, label %.split10.i

.split10.i:                                       ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !154
  br label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit

_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit: ; preds = %bb.i, %.split10.i
  store atomic ptr %i.ac, ptr %i.ae release, align 8
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !146
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !230, !noalias !499 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !499
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !67, !noalias !499
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc23 unwind label %bb.o, !inline_history !234

.noexc23:                                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !222, !range !28, !noalias !499, !noundef !29
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !499
  br label %bb.m

bb.l:                                             ; preds = %.noexc23
  %.sroa.0.0.copyload25 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !499
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.m:                                             ; preds = %.thread.i, %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !32, !noalias !499
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.n:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %.sroa.0.0.copyload.i24 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit ], [ %.sroa.0.0.copyload.i24, %bb.n ], [ %.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.0.0.copyload25, %bb.l ]
  ret ptr %.sroa.016.0

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !283
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !285
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !286, !inline_history !433
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !293, !inline_history !433
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
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
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !294

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !434
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !131
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #22, !call_target !132, !inline_history !435
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume(ptr noundef nonnull align 16 dereferenceable(272) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr61 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend40

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 16, !tbaa !502
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61, i8 0, i64 24, i1 false)
  %i.e = ptrtoint ptr %.reload to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 ptrtoint (ptr @_ZN5folly4coro17SerialQueueRunner6cancelEv to i64), ptr %i.d, align 16, !tbaa !272
  %.repack5.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %.repack5.i.i.i, align 8, !tbaa !272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.e, ptr %i.h, align 16, !tbaa !268
  store ptr @_ZN5folly6detail8function5call_ISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS5_EELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.f, align 16, !tbaa !298
  store ptr @_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS6_EEEEmNS1_2OpEPNS1_4DataESE_, ptr %i.g, align 8, !tbaa !266
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.i, align 16, !tbaa !504
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.j, align 8, !tbaa !505
  %i.k = load ptr, ptr %i.b, align 16, !tbaa !83  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.l = tail call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61, i1 noundef zeroext true) #22
  br i1 %i.l, label %bb.b, label %.from..i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !83
  store ptr %i.m, ptr %i.c, align 16, !tbaa !260
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload60 = load ptr, ptr %.reload.addr, align 16, !tbaa !502
  %i.n = getelementptr inbounds nuw i8, ptr %.reload60, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !74, !noalias !506
  %i.r = icmp eq i8 %i.q, 2
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.p, align 1, !tbaa !74, !noalias !506
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77, !noalias !509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.v = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.50 unwind label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !512 ; 8 uses

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr61) #22
  %.1 = extractvalue { ptr, i32 } %i.w, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr65) #22
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit23

.from.50:                                         ; preds = %.from..i.i.i.i
  %i.y = or i64 %i.u, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.v, align 8, !noalias !518
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !518
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false), !noalias !518
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ab, align 8, !tbaa !67, !noalias !518
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !114, !noalias !518
  store ptr %i.v, ptr %.reload.addr62, align 16, !tbaa !32, !alias.scope !519
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !518
  store i64 %i.y, ptr %i.z, align 8, !tbaa !77, !noalias !518
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !522, !alias.scope !523
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ad, align 16, !tbaa !528, !alias.scope !523
  %i.ae = load atomic ptr, ptr %i.o acquire, align 8
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %AfterCoroSuspend40, label %AfterCoroSave38

AfterCoroSave38:                                  ; preds = %.from.50
  store i2 1, ptr %index.addr, align 8
  %i.ag = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr62, ptr nonnull %0) #22
  br i1 %i.ag, label %CoroEnd, label %AfterCoroSuspend40

AfterCoroSuspend40:                               ; preds = %resume.entry, %AfterCoroSave38, %.from.50
  %i.ah = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i16, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.c

bb.c:                                             ; preds = %AfterCoroSuspend40
  store i64 0, ptr %.reload.addr62, align 16, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr nonnull %i.ah)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.d, !inline_history !529

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20 unwind label %bb.f, !inline_history !529

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20: ; preds = %bb.e, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %AfterCoroSuspend40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i21, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = tail call noundef i64 %i.at(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef null) #22, !inline_history !530 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.h, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 16, !tbaa !69, !range !28, !noundef !29
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.aw, align 16, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %_ZN5folly20CancellationCallbackD2Ev.exit, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  %i.bb = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr61, ptr nonnull %0) #22 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  musttail call void %i.bc(ptr nonnull %i.bb)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave38
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit23: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy(ptr noundef nonnull align 16 dereferenceable(272) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, label %AfterCoroSuspend

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pr = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20 unwind label %bb.b, !inline_history !529

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i21, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef null) #22, !inline_history !530 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !69, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %.not.i.i.i.i22 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i22, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.g, %bb.f, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !83  ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 8 acq_rel, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = and i64 %i.t, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.r) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #22, !call_target !116, !inline_history !531
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j, %bb.h, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !131
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.m, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #22, !call_target !132, !inline_history !532
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.l, %bb.m
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 272)
          to label %CoroEnd unwind label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.resume(ptr noundef nonnull align 8 dereferenceable(176) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %.critedge, label %AfterCoroSuspend66

.critedge:                                        ; preds = %resume.entry
  %.reload.addr105 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload106 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload106) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.a

bb.a:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %.from.87

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %.critedge
  %.reload114 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.reload114, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !11, !range !28, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge16, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.reload114, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !535
  %i.h = getelementptr inbounds nuw i8, ptr %.reload114, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !535
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.from.47.i, label %.critedge16

.from.47.i:                                       ; preds = %bb.b
  store ptr null, ptr %.reload.addr115, align 8, !tbaa !536
  %i.k = getelementptr inbounds nuw i8, ptr %.reload114, i64 40
  store ptr %.reload.addr115, ptr %i.k, align 8, !tbaa !33
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload114) #22 ; 0 uses
  %i.m = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 272)
          to label %.from.75 unwind label %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84, !inline_history !538 ; 9 uses

.from.75:                                         ; preds = %.from.47.i
  %.reload104 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume, ptr %i.m, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr65.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store ptr %.reload104, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr65.i, i8 0, i64 58, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr null, ptr %i.n, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i8 1, ptr %i.p, align 8, !tbaa !69
  store ptr %i.m, ptr %.reload.addr117, align 8, !tbaa !32, !alias.scope !539
  %index.addr66.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store i2 0, ptr %index.addr66.i, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<>::Awaiter") align 8 %.reload.addr116, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr120, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr117)
          to label %bb.c unwind label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82

bb.c:                                             ; preds = %.from.75
  store i2 1, ptr %index.addr, align 8
  %i.q = tail call ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseISt4pairIbSt6vectorIS2_SaIS2_EEEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr116, ptr nonnull %0) #22 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  musttail call void %i.r(ptr nonnull %i.q)
  ret void

.from.87:                                         ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.: ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvED2Ev.exit28.from.84:        ; preds = %.from.47.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82:  ; preds = %.from.75
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.h
  %i.w = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i19 = icmp eq ptr %i.w, null
  br i1 %.not.i19, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.w)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit unwind label %bb.e, !inline_history !207

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

AfterCoroSuspend66:                               ; preds = %resume.entry
  %i.ab = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !69, !range !28, !noundef !29
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK5folly3TryIvE5valueEv.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #23
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNK5folly3TryIvE5valueEv.exit.i:                 ; preds = %AfterCoroSuspend66
  store i64 0, ptr %.reload.addr116, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr nonnull %i.ab)
          to label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit unwind label %bb.g, !inline_history !207

bb.g:                                             ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load ptr, ptr %.reload.addr116, align 8, !tbaa !32 ; 2 uses
  store i64 0, ptr %.reload.addr116, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr %.sroa.0.0.copyload.i.i.i.i.i2.i)
          to label %.body unwind label %bb.i, !inline_history !207

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ap = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i20, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr nonnull %i.ap)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21 unwind label %bb.k, !inline_history !207

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21:        ; preds = %bb.j, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.au = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i22, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr nonnull %i.au)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.m, !inline_history !207

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, %bb.l
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload100 = load ptr, ptr %.reload.addr99, align 8, !tbaa !533
  %i.az = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload100) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %.critedge16.from..thread, label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #23
          to label %.noexc26 unwind label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.

.noexc26:                                         ; preds = %bb.n
  unreachable

.critedge16.from..thread:                         ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload = load ptr, ptr %.reload.addr99, align 8, !tbaa !533 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.reload, i64 72
  store ptr null, ptr %i.ba, align 8, !tbaa !33
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  %.pre = load i8, ptr %i.bb, align 8, !tbaa !542, !range !28
  %.reload108.pre = load ptr, ptr %.reload.addr99, align 8, !tbaa !533
  br label %.critedge16

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit:          ; preds = %bb.d, %.body, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82
  %.pn = phi { ptr, i32 } [ %i.v, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82 ], [ %i.ak, %.body ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i27, label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit unwind label %bb.p, !inline_history !207

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from., %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.t, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from. ], [ %i.u, %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84 ], [ %.pn, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit ], [ %.pn, %bb.o ]
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  br label %bb.w

.critedge16:                                      ; preds = %bb.b, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, %.critedge16.from..thread
  %.reload108 = phi ptr [ %.reload108.pre, %.critedge16.from..thread ], [ %.reload114, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ %.reload114, %bb.b ] ; 2 uses
  %i.bh = phi i8 [ %.pre, %.critedge16.from..thread ], [ 1, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ 0, %bb.b ]
  %.reload.addr107 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.reload108, i64 48 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !535
  %i.bl = getelementptr inbounds nuw i8, ptr %.reload108, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !483
  store i32 2, ptr %i.bi, align 8, !tbaa !483
  switch i32 %i.bn, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit [
    i32 0, label %bb.q
    i32 1, label %bb.u
  ], !prof !484

bb.q:                                             ; preds = %.critedge16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr nonnull %i.bs)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.s, !inline_history !207

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !543

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.q, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i
  %i.by = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #25
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

bb.u:                                             ; preds = %.critedge16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !212
  %.not.i.i.i.i35 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i35, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #22
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit: ; preds = %bb.v, %bb.u, %bb.t, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.critedge16
  %.reload102 = load ptr, ptr %.reload.addr107, align 8, !tbaa !533
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bh, ptr %i.cg, align 8, !tbaa !544
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.bk, ptr %i.ch, align 8, !tbaa !535
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bm, ptr %i.ci, align 8, !tbaa !31
  store i32 0, ptr %i.bi, align 8, !tbaa !146
  %i.cj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload102) #22 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, %.from.87
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit ], [ %i.s, %.from.87 ]
  %.3 = extractvalue { ptr, i32 } %.pn11.pn, 0
  %i.ck = tail call ptr @__cxa_begin_catch(ptr %.3) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit34

bb.x:                                             ; preds = %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, %bb.w
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.cl = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEENSF_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr115, ptr nonnull %0) #22 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  musttail call void %i.cm(ptr nonnull %i.cl)
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit34: ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.cn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.destroy(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i20 = icmp eq ptr %i.b, null
  br i1 %.not.i20, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21 unwind label %bb.b, !inline_history !207

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21:        ; preds = %bb.a, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.g = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i22 = icmp eq ptr %i.g, null
  br i1 %.not.i22, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.d, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, %bb.c
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  br label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33: ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 176)
          to label %CoroEnd unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

CoroEnd:                                          ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %CoroEnd

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i20 = icmp eq ptr %i.b, null
  br i1 %.not.i20, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21 unwind label %bb.b, !inline_history !207

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21:        ; preds = %bb.a, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.g = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i22 = icmp eq ptr %i.g, null
  br i1 %.not.i22, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.d, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, %bb.c
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  br label %CoroEnd

CoroEnd:                                          ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.resume(ptr noundef nonnull align 8 dereferenceable(416) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.anon.15, align 8             ; 4 uses
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %.reload.addr241 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 12 uses
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr245 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 9 uses
  %.reload.addr248 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 14 uses
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %.reload.addr251 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %.reload.addr256 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 7 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %CoroEnd
    i3 2, label %AfterCoroSuspend145
    i3 3, label %AfterCoroSuspend149
    i3 -4, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr218 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload219 = load ptr, ptr %.reload.addr218, align 8, !tbaa !546
  %i.b = getelementptr inbounds nuw i8, ptr %.reload219, i64 73
  %i.c = atomicrmw xchg ptr %i.b, i8 1 monotonic, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.a, label %.preheader

bb.a:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !548
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !243, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !553
  store ptr %i.a, ptr %1, align 8, !noalias !554
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr240, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeISt13runtime_errorJPKcEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_E3arg, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !548
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.f = load i64, ptr %.reload.addr240, align 8, !noalias !557 ; 3 uses
  store i64 %i.f, ptr %.reload.addr242, align 8, !alias.scope !557
  store i64 0, ptr %.reload.addr240, align 8, !noalias !557
  %i.g = load i8, ptr %i.e, align 8, !tbaa !69, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.c, label %.from.169

.from.169:                                        ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22
  %.pre89 = load i64, ptr %.reload.addr242, align 8, !noalias !560
  br label %bb.c

bb.c:                                             ; preds = %.from.169, %bb.a, %bb.b
  %i.k = phi i64 [ %.pre89, %.from.169 ], [ %i.f, %bb.a ], [ %i.f, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  store i64 %i.k, ptr %i.l, align 8, !alias.scope !560
  store i64 0, ptr %.reload.addr242, align 8, !noalias !560
  store i8 0, ptr %i.e, align 8, !tbaa !69
  store i3 1, ptr %index.addr, align 8
  %i.m = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr241, ptr nonnull %0) #22 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  musttail call void %i.n(ptr nonnull %i.m)
  ret void

.preheader:                                       ; preds = %.critedge, %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr214 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload215 = load ptr, ptr %.reload.addr214, align 8, !tbaa !546
  %index.addr121.i205 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.spill.addr.i204 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload.addr120.i203 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %destroy.addr.i202 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.resume, ptr %.reload.addr239, align 8
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup, ptr %destroy.addr.i202, align 8
  store ptr %.reload215, ptr %.spill.addr.i204, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120.i203, i8 0, i64 58, i1 false)
  store ptr null, ptr %i.q, align 8, !tbaa !65
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_, ptr %i.p, align 8, !tbaa !67
  store i32 2, ptr %i.o, align 8, !tbaa !146
  store ptr %.reload.addr239, ptr %.reload.addr245, align 8, !tbaa !32, !alias.scope !563
  store i2 0, ptr %index.addr121.i205, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSF_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<std::pair<bool, std::vector<folly::coro::Task<>>>>::Awaiter") align 8 %.reload.addr241, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr256, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr245)
          to label %bb.d unwind label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.173

bb.d:                                             ; preds = %.preheader
  store i3 2, ptr %index.addr, align 8
  %i.r = tail call ptr @_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr241, ptr nonnull %0) #22 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  musttail call void %i.s(ptr nonnull %i.r)
  ret void

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.173: ; preds = %.preheader
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.k
  %i.u = load ptr, ptr %.reload.addr241, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr nonnull %i.u)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit unwind label %bb.f, !inline_history !566

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

AfterCoroSuspend145:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.z = load ptr, ptr %.reload.addr241, align 8, !tbaa !88, !noalias !567 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !146, !noalias !567
  switch i32 %i.ab, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %AfterCoroSuspend145
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #23
          to label %.noexc.i unwind label %bb.k, !noalias !567

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %AfterCoroSuspend145
  invoke void @_ZN5folly6detail16throw_exception_INS_21UsingUninitializedTryEJEEEvDpT0_() #4
          to label %.noexc2.i unwind label %bb.k, !noalias !567

.noexc2.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %AfterCoroSuspend145
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !544, !range !28, !noalias !567, !noundef !29 ; 2 uses
  %.spill.addr220 = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 %i.ah, ptr %.spill.addr220, align 1
  store i8 %i.ah, ptr %.reload.addr240, align 8, !tbaa !544, !alias.scope !567
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !535, !noalias !567
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !535, !alias.scope !567
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31, !noalias !567
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !31, !alias.scope !567
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !567
  store i64 0, ptr %.reload.addr241, align 8, !tbaa !32, !noalias !567
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %i.z)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0 unwind label %bb.j, !noalias !567, !inline_history !566

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26, !noalias !567
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %.reload.addr241, align 8, !tbaa !32, !noalias !567 ; 2 uses
  store i64 0, ptr %.reload.addr241, align 8, !tbaa !32, !noalias !567
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr %.sroa.0.0.copyload.i.i.i.i.i3.i)
          to label %.body unwind label %bb.l, !noalias !567, !inline_history !566

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #26, !noalias !567
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0: ; preds = %bb.i
  %i.av = load ptr, ptr %.reload.addr241, align 8, !tbaa !88 ; 3 uses
  %.not.i31.jt0 = icmp eq ptr %i.av, null
  br i1 %.not.i31.jt0, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0, label %bb.m

bb.m:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr nonnull %i.av)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0 unwind label %bb.n, !inline_history !566

bb.n:                                             ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %lpad.loopexit, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0: ; preds = %bb.m, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0
  %i.az = load ptr, ptr %.reload.addr245, align 8, !tbaa !88 ; 3 uses
  %.not.i33.jt0 = icmp eq ptr %i.az, null
  br i1 %.not.i33.jt0, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr nonnull %i.az)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0 unwind label %bb.p, !inline_history !566

bb.p:                                             ; preds = %bb.o
  %lpad.loopexit118 = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %lpad.loopexit118, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0: ; preds = %bb.o, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !535 ; 4 uses
  %.spill.addr223 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.bd, ptr %.spill.addr223, align 8
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !535 ; 2 uses
  %.spill.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.be, ptr %.spill.addr232, align 8
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %..si.unfold.false.thread, label %.lr.ph

..si.unfold.false.thread:                         ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0
  %.reload.addr22125 = getelementptr inbounds nuw i8, ptr %0, i64 409
  %.reload22226 = load i8, ptr %.reload.addr22125, align 1, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit: ; preds = %bb.e, %.body, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.173
  %.pn = phi { ptr, i32 } [ %i.t, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.173 ], [ %i.aq, %.body ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bg = load ptr, ptr %.reload.addr245, align 8, !tbaa !88 ; 3 uses
  %.not.i34 = icmp eq ptr %i.bg, null
  br i1 %.not.i34, label %.from.196, label %bb.q

bb.q:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr nonnull %i.bg)
          to label %.from.196 unwind label %bb.r, !inline_history !566

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #26
  unreachable

.lr.ph:                                           ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0
  %.sroa.064.082 = phi ptr [ %i.bd, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0 ], [ %i.dh, %_ZN5folly3TryIvED2Ev.exit50.thread ] ; 3 uses
  %.sroa.064.082.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.064.082, ptr %.sroa.064.082.spill.addr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %.sroa.0.0.copyload.i.i.i.i.i.i36 = load ptr, ptr %.sroa.064.082, align 8, !tbaa !32, !noalias !570
  store i64 0, ptr %.sroa.064.082, align 8, !tbaa !32, !noalias !570
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i36, ptr %.reload.addr249, align 8, !alias.scope !570
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr248, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr256, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr249)
          to label %bb.s unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph
  store ptr %.reload.addr248, ptr %.reload.addr245, align 8
  store i3 3, ptr %index.addr, align 8
  %i.bl = tail call ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248, ptr nonnull %0) #22 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  musttail call void %i.bm(ptr nonnull %i.bl)
  ret void

AfterCoroSuspend149:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.bn = load ptr, ptr %.reload.addr245, align 8, !tbaa !576, !noalias !573, !nonnull !29, !align !242 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !168, !noalias !582 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !69, !range !28, !noalias !582, !noundef !29 ; 2 uses
  store i8 %i.bq, ptr %.reload.addr241, align 8, !tbaa !69, !alias.scope !582
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %AfterCoroSuspend149
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !212, !noalias !582 ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !212, !alias.scope !582
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.

_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.:          ; preds = %bb.t
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #22
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bn, align 8, !tbaa !32, !noalias !579
  br label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i

_ZN5folly3TryIvEC2ERKS1_.exit.i.i:                ; preds = %bb.t, %AfterCoroSuspend149, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from. ], [ %i.bo, %AfterCoroSuspend149 ], [ %i.bo, %bb.t ] ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !32, !noalias !579
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit unwind label %bb.u, !inline_history !207

bb.u:                                             ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.bz = load ptr, ptr %.reload.addr248, align 8, !tbaa !168 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.v

bb.v:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr nonnull %i.bz)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.w, !inline_history !207

bb.w:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.v, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.ce = load ptr, ptr %.reload.addr249, align 8, !tbaa !168 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i40, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr nonnull %i.ce)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit unwind label %bb.y, !inline_history !207

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit: ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.x
  %i.cj = load i8, ptr %.reload.addr241, align 8, !tbaa !69, !range !28, !noundef !29
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !546
  %i.cl = getelementptr inbounds nuw i8, ptr %.reload, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !583 ; 3 uses
  store i64 0, ptr %i.cm, align 8, !noalias !583
  store i64 %i.cn, ptr %.reload.addr248, align 8
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !212
  %.not.i41 = icmp eq ptr %i.co, null
  %i.cp = inttoptr i64 %i.cn to ptr
  br i1 %.not.i41, label %bb.aa, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

.thread:                                          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  store i64 0, ptr %.reload.addr248, align 8
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

bb.aa:                                            ; preds = %bb.z
  %.not75 = icmp eq i64 %i.cn, 0
  br i1 %.not75, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248) #22 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i42, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248, ptr noundef null) #22 ; 0 uses
  %i.cs = icmp eq ptr %i.cq, @_ZTIN5folly18OperationCancelledE
  br i1 %i.cs, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit: ; preds = %bb.ac, %bb.ab
  %i.ct = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #22
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.ad, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

bb.ad:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit
  %.reload207 = load ptr, ptr %.reload.addr, align 8, !tbaa !546
  %i.cu = getelementptr inbounds nuw i8, ptr %.reload207, i64 80 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  store i64 %i.cv, ptr %.reload.addr245, align 8
  %i.cw = load i64, ptr %.reload.addr248, align 8
  store i64 %i.cw, ptr %i.cu, align 8
  store i64 0, ptr %.reload.addr248, align 8
  %.not.i.i43 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i43, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr245) #22
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit: ; preds = %.lr.ph
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = load ptr, ptr %.reload.addr249, align 8, !tbaa !168 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i44, label %.from.187, label %bb.af

bb.af:                                            ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr nonnull %i.cy)
          to label %.from.187 unwind label %bb.ag, !inline_history !207

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  tail call void @__clang_call_terminate(ptr %i.dc) #26
  unreachable

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split: ; preds = %bb.ac, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, %bb.ae, %bb.ad
  %.pr.pr = load ptr, ptr %.reload.addr248, align 8, !tbaa !212
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread: ; preds = %bb.z, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split
  %.pr = phi ptr [ %.pr.pr, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split ], [ %i.cp, %bb.z ]
  %.not.i.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i.i47, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

_ZN5folly17exception_wrapperD2Ev.exit48:          ; preds = %.thread, %bb.ah, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread, %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.de = load i8, ptr %.reload.addr241, align 8, !tbaa !69, !range !28, !noundef !29
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load ptr, ptr %i.dd, align 8
  %.not.i.i.i49 = icmp eq ptr %i.dg, null
  %or.cond = select i1 %i.df, i1 true, i1 %.not.i.i.i49
  br i1 %or.cond, label %_ZN5folly3TryIvED2Ev.exit50.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN5folly17exception_wrapperD2Ev.exit48
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #22
  br label %_ZN5folly3TryIvED2Ev.exit50.thread

_ZN5folly3TryIvED2Ev.exit50.thread:               ; preds = %bb.ai, %_ZN5folly17exception_wrapperD2Ev.exit48
  %.sroa.064.082.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.064.082.reload = load ptr, ptr %.sroa.064.082.reload.addr, align 8, !tbaa !546
  %.reload.addr237 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload238 = load ptr, ptr %.reload.addr237, align 8, !tbaa !546 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.064.082.reload, i64 8 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %.reload238
  br i1 %i.di, label %..si.unfold.false, label %.lr.ph

.from.187:                                        ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit, %bb.af
  tail call void @_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr240) #22
  br label %.from.196

..si.unfold.false:                                ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread
  %.reload.addr224.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.reload225.pre = load ptr, ptr %.reload.addr224.phi.trans.insert, align 8, !tbaa !546 ; 3 uses
  %.reload.addr221 = getelementptr inbounds nuw i8, ptr %0, i64 409
  %.reload222 = load i8, ptr %.reload.addr221, align 1, !tbaa !546 ; 2 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dj = icmp eq ptr %.reload225.pre, %.reload238
  br i1 %i.dj, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %..si.unfold.false, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload23610 = phi ptr [ %.reload236, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload238, %..si.unfold.false ]
  %.05.i.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload225.pre, %..si.unfold.false ] ; 2 uses
  %i.dk = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr nonnull %i.dk)
          to label %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge unwind label %bb.ak, !inline_history !207

._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge: ; preds = %bb.aj
  %.reload236.pre = load ptr, ptr %.reload.addr233, align 8, !tbaa !546
  br label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  tail call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge, %.lr.ph.i.i.i.i
  %.reload236 = phi ptr [ %.reload236.pre, %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge ], [ %.reload23610, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.dp, %.reload236
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !586

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload231.pr = load ptr, ptr %.reload.addr224, align 8, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %..si.unfold.false.thread, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, %..si.unfold.false
  %.in = phi i8 [ %.reload222, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload222, %..si.unfold.false ], [ %.reload22226, %..si.unfold.false.thread ]
  %.reload231 = phi ptr [ %.reload231.pr, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload225.pre, %..si.unfold.false ], [ %i.bd, %..si.unfold.false.thread ] ; 3 uses
  %i.dq = trunc i8 %.in to i1
  %.not.i.i1.i.i = icmp eq ptr %.reload231, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.reload231 to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %.reload231, i64 noundef %i.dv) #25
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit: ; preds = %bb.al, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  br i1 %i.dq, label %.loopexit121, label %.preheader

.loopexit121:                                     ; preds = %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr210 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload211 = load ptr, ptr %.reload.addr210, align 8, !tbaa !546
  %i.dw = getelementptr inbounds nuw i8, ptr %.reload211, i64 80 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not76 = icmp eq ptr %i.dx, null
  %i.dy = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %.not76, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.loopexit121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  store i64 %i.dy, ptr %.reload.addr251, align 8, !alias.scope !587
  store i64 0, ptr %i.dw, align 8, !noalias !587
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !69, !range !28, !noundef !29
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !212
  %.not.i.i.i.i52 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i52, label %bb.ao, label %.from.194

.from.194:                                        ; preds = %bb.an
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) #22
  %.pre = load i64, ptr %.reload.addr251, align 8, !noalias !590
  br label %bb.ao

bb.ao:                                            ; preds = %.from.194, %bb.am, %bb.an
  %i.ee = phi i64 [ %.pre, %.from.194 ], [ %i.dy, %bb.am ], [ %i.dy, %bb.an ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  store i64 %i.ee, ptr %i.ef, align 8, !alias.scope !590
  store i64 0, ptr %.reload.addr251, align 8, !noalias !590
  store i8 0, ptr %i.dz, align 8, !tbaa !69
  store i3 -4, ptr %index.addr, align 8
  %i.eg = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr245, ptr nonnull %0) #22 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  musttail call void %i.eh(ptr nonnull %i.eg)
  ret void

.from.196:                                        ; preds = %bb.q, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, %.from.187
  %.pn21.pn = phi { ptr, i32 } [ %i.cx, %.from.187 ], [ %.pn, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit ], [ %.pn, %bb.q ]
  %.6 = extractvalue { ptr, i32 } %.pn21.pn, 0
  %i.ei = tail call ptr @__cxa_begin_catch(ptr %.6) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr256) #22
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit63

bb.ap:                                            ; preds = %.from.196, %bb.aq, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  %i.ej = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr248, ptr nonnull %0) #22 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  musttail call void %i.ek(ptr nonnull %i.ej)
  ret void

bb.aq:                                            ; preds = %.loopexit121
  %i.el = load i8, ptr %i.dz, align 8, !tbaa !69, !range !28, !noundef !29
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ap, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !212
  %.not.i.i.i.i59 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i59, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.as, %bb.ar
  store i8 1, ptr %i.dz, align 8, !tbaa !69
  br label %bb.ap

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit63: ; preds = %.from.196
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.ep

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.destroy(ptr noundef nonnull align 8 dereferenceable(416) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload.addr245 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload.addr251 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.loopexit
    i3 1, label %AfterCoroSuspend141
    i3 2, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
    i3 3, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
    i3 -4, label %AfterCoroSuspend153
    i3 -3, label %.loopexit
  ]

AfterCoroSuspend141:                              ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr242, align 8, !tbaa !212
  %.not.i.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i27, label %_ZN5folly4coro8co_errorD2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend141
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr242) #22
  br label %_ZN5folly4coro8co_errorD2Ev.exit28

_ZN5folly4coro8co_errorD2Ev.exit28:               ; preds = %bb.a, %AfterCoroSuspend141
  %i.b = load ptr, ptr %.reload.addr240, align 8, !tbaa !212
  %.not.i.i29 = icmp eq ptr %i.b, null
  br i1 %.not.i.i29, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro8co_errorD2Ev.exit28
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr240) #22
  br label %.loopexit

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2: ; preds = %resume.entry
  %.reload.addr241 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %.reload.addr241, align 8, !tbaa !88 ; 3 uses
  %.not.i31.jt2 = icmp eq ptr %i.c, null
  br i1 %.not.i31.jt2, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr nonnull %i.c)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2 unwind label %bb.d, !inline_history !566

bb.d:                                             ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2: ; preds = %bb.c, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
  %i.g = load ptr, ptr %.reload.addr245, align 8, !tbaa !88 ; 3 uses
  %.not.i33.jt2 = icmp eq ptr %i.g, null
  br i1 %.not.i33.jt2, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %.loopexit unwind label %bb.f, !inline_history !566

bb.f:                                             ; preds = %bb.e
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %lpad.loopexit.split-lp119, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr248 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load ptr, ptr %.reload.addr248, align 8, !tbaa !168 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.k, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr nonnull %i.k)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.h, !inline_history !207

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.g, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.p = load ptr, ptr %.reload.addr249, align 8, !tbaa !168 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.p, null
  br i1 %.not.i.i40, label %..si.unfold.false, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr nonnull %i.p)
          to label %..si.unfold.false unwind label %bb.j, !inline_history !207

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #26
  unreachable

..si.unfold.false:                                ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.i
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.reload234 = load ptr, ptr %.reload.addr233, align 8, !tbaa !546 ; 2 uses
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.reload225 = load ptr, ptr %.reload.addr224, align 8, !tbaa !546 ; 3 uses
  %i.u = icmp eq ptr %.reload225, %.reload234
  br i1 %i.u, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %..si.unfold.false, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload2366 = phi ptr [ %.reload236, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload234, %..si.unfold.false ]
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload225, %..si.unfold.false ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr nonnull %i.v)
          to label %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge unwind label %bb.l, !inline_history !207

._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge: ; preds = %bb.k
  %.reload236.pre = load ptr, ptr %.reload.addr233, align 8, !tbaa !546
  br label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge, %.lr.ph.i.i.i.i
  %.reload236 = phi ptr [ %.reload236.pre, %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge ], [ %.reload2366, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.aa, %.reload236
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !593

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload231.pr = load ptr, ptr %.reload.addr224, align 8, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, %..si.unfold.false
  %.reload231 = phi ptr [ %.reload231.pr, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload225, %..si.unfold.false ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %.reload231, null
  br i1 %.not.i.i1.i.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %.reload231 to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %.reload231, i64 noundef %i.af) #25
  br label %.loopexit

AfterCoroSuspend153:                              ; preds = %resume.entry
  %i.ag = load ptr, ptr %.reload.addr251, align 8, !tbaa !212
  %.not.i.i.i57 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i57, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %AfterCoroSuspend153
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr251) #22
  br label %.loopexit

.loopexit:                                        ; preds = %resume.entry, %AfterCoroSuspend153, %bb.n, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2, %bb.e, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.m, %_ZN5folly4coro8co_errorD2Ev.exit28, %bb.b, %resume.entry
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !69, !range !28, !noundef !29
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !212
  %.not.i.i.i.i61 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i61, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.p, %bb.o, %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = atomicrmw sub ptr %i.ao, i64 8 acq_rel, align 8 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 16
  br i1 %i.aq, label %bb.r, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.ar = and i64 %i.ap, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.an) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.an) #22, !call_target !116, !inline_history !531
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.t, %bb.s, %bb.q, %_ZN5folly3TryIvED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !77 ; 2 uses
  %i.ax = and i64 %i.aw, -4                       ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not.i.i1.i.i62 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i1.i.i62, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.av, align 8, !tbaa !131
  %i.az = and i64 %i.aw, 3
  %.not3.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i.i.i, label %bb.v, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #22, !call_target !132, !inline_history !532
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.u, %bb.v
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 416)
          to label %CoroEnd unwind label %bb.w

bb.w:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

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
!11 = !{!12, !23, i64 72}
!12 = !{!"_ZTSN5folly4coro17SerialQueueRunnerE", !13, i64 0, !16, i64 40, !18, i64 48, !23, i64 72, !24, i64 73, !26, i64 80}
!13 = !{!"_ZTSN5folly4coro17SerialQueueRunner5MutexE", !14, i64 0}
!14 = !{!"_ZTSSt5mutex", !15, i64 0}
!15 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!16 = !{!"p1 _ZTSN5folly4coro5BatonE", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"_ZTSSt6vectorIN5folly4coro4TaskIvEESaIS3_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSN5folly4coro4TaskIvEE", !17, i64 0}
!23 = !{!"bool", !9, i64 0}
!24 = !{!"_ZTSSt6atomicIbE", !25, i64 0}
!25 = !{!"_ZTSSt13__atomic_baseIbE", !23, i64 0}
!26 = !{!"_ZTSN5folly17exception_wrapperE", !27, i64 0}
!27 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !17, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!21, !22, i64 8}
!31 = !{!21, !22, i64 16}
!32 = !{!17, !17, i64 0}
!33 = !{!12, !16, i64 40}
!34 = !{!21, !22, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!40 = !{!39, !41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!36, !44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !46, !47, !48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 4, i32 12}
!50 = distinct !{!50, !46, !47, !48}
!51 = distinct !{!51, !46, !47}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!57 = !{!56, !58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!53, !61}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !46, !47, !48}
!63 = distinct !{!63, !46, !47, !48}
!64 = distinct !{!64, !46, !47}
!65 = !{!66, !17, i64 0}
!66 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail24ScopeExitTaskPromiseBaseEEE", !17, i64 0}
!67 = !{!68, !17, i64 0}
!68 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !17, i64 0}
!69 = !{!70, !23, i64 0}
!70 = !{!"_ZTSN5folly3TryIvEE", !23, i64 0, !9, i64 8}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv: argument 0"}
!73 = distinct !{!73, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv"}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowingE", !76, i64 0}
!76 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowing10BypassModeE", !9, i64 0}
!77 = !{!78, !79, i64 0}
!78 = !{!"_ZTSN5folly17ExecutorKeepAliveINS_8ExecutorEEE", !79, i64 0}
!79 = !{!"long", !9, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!82 = distinct !{!82, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !17, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_: argument 0"}
!87 = distinct !{!87, !"_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_"}
!88 = !{!89, !17, i64 0}
!89 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail11TaskPromiseISt4pairIbSt6vectorINS2_4TaskIvEESaIS8_EEEEEEE", !17, i64 0}
!90 = !{!91, !86}
!91 = distinct !{!91, !92, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskISt4pairIbSt6vectorINS2_IvEESaIS5_EEEEE: argument 0"}
!92 = distinct !{!92, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskISt4pairIbSt6vectorINS2_IvEESaIS5_EEEEE"}
!93 = !{!94, !23, i64 56}
!94 = !{!"_ZTSN5folly4coro6detail11BasePromiseINS_4UnitEEE", !95, i64 0, !98, i64 16, !78, i64 40, !101, i64 48, !23, i64 56, !75, i64 57, !108, i64 58}
!95 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandleE", !96, i64 0, !97, i64 8}
!96 = !{!"_ZTSNSt7__n486116coroutine_handleIvEE", !17, i64 0}
!97 = !{!"p1 _ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !17, i64 0}
!98 = !{!"_ZTSN5folly15AsyncStackFrameE", !99, i64 0, !17, i64 8, !100, i64 16}
!99 = !{!"p1 _ZTSN5folly15AsyncStackFrameE", !17, i64 0}
!100 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !17, i64 0}
!101 = !{!"_ZTSN5folly17CancellationTokenE", !102, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEE", !103, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterELb1ELb1EE", !104, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEE", !105, i64 0}
!105 = !{!"_ZTSSt5tupleIJPN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEEE", !106, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6detail17CancellationStateENS1_29CancellationStateTokenDeleterEEE", !107, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6detail17CancellationStateELb0EE", !84, i64 0}
!108 = !{!"_ZTSN5folly4UnitE"}
!109 = !{!110, !86}
!110 = distinct !{!110, !111, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv: argument 0"}
!111 = distinct !{!111, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv"}
!112 = !{!113, !86}
!113 = distinct !{!113, !92, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskISt4pairIbSt6vectorINS2_IvEESaIS5_EEEEE: argument 0:thread"}
!114 = !{!115, !115, i64 0}
!115 = !{!"vtable pointer", !10, i64 0}
!116 = !DISubprogram(name: "~CancellationState", linkageName: "_ZN5folly6detail17CancellationStateD4Ev", scope: !118, file: !117, line: 43, type: !121, scopeLine: 43, containingType: !118, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!117 = !DIFile(filename: "_deps/folly-src/folly/CancellationToken-inl.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "0fe5390f30e4d65ce495e93960df2e48")
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CancellationState", scope: !119, file: !117, line: 33, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail17CancellationStateE")
!119 = !DINamespace(name: "detail", scope: !120)
!120 = !DINamespace(name: "folly", scope: null)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = distinct !{null, null, null, null, null, null, null, null, null, null}
!125 = distinct !{null, null, null, null, null, null}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"_ZN5folly4coro13co_viaIfAsyncENS_17ExecutorKeepAliveINS_8ExecutorEEEONS0_4TaskISt4pairIbSt6vectorINS4_IvEESaIS7_EEEEE: argument 0"}
!128 = distinct !{!128, !"_ZN5folly4coro13co_viaIfAsyncENS_17ExecutorKeepAliveINS_8ExecutorEEEONS0_4TaskISt4pairIbSt6vectorINS4_IvEESaIS7_EEEEE"}
!129 = distinct !{!129, !130, !"_ZNK5folly4coro6detail3adl18ViaIfAsyncFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl13co_viaIfAsyncclL_ZSt4moveIRNS_17ExecutorKeepAliveINS_8ExecutorEEEEONSt16remove_referenceISE_E4typeEOSE_Efp_EscSE_fp0_EESK_SQ_: argument 0"}
!130 = distinct !{!130, !"_ZNK5folly4coro6detail3adl18ViaIfAsyncFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl13co_viaIfAsyncclL_ZSt4moveIRNS_17ExecutorKeepAliveINS_8ExecutorEEEEONSt16remove_referenceISE_E4typeEOSE_Efp_EscSE_fp0_EESK_SQ_"}
!131 = !{!79, !79, i64 0}
!132 = !DISubprogram(name: "keepAliveRelease", linkageName: "_ZN5folly8Executor16keepAliveReleaseEv", scope: !134, file: !133, line: 261, type: !135, scopeLine: 261, containingType: !134, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!133 = !DIFile(filename: "_deps/folly-src/folly/Executor.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e2252a484f750b6d785f8426d640a0b4")
!134 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !120, file: !133, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!138 = distinct !{null, null, null, null, null}
!139 = !{!140, !142, !144}
!140 = distinct !{!140, !141, !"_ZN5folly4coro10tag_invokeENS0_6detail22WithAsyncStackFunctionEONS0_4TaskISt4pairIbSt6vectorINS3_IvEESaIS6_EEEE7AwaiterE: argument 0"}
!141 = distinct !{!141, !"_ZN5folly4coro10tag_invokeENS0_6detail22WithAsyncStackFunctionEONS0_4TaskISt4pairIbSt6vectorINS3_IvEESaIS6_EEEE7AwaiterE"}
!142 = distinct !{!142, !143, !"_ZNK5folly20detail_tag_invoke_fn13tag_invoke_fnclINS_4coro6detail22WithAsyncStackFunctionEJNS3_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEE7AwaiterEEEEDTcl10tag_invokescT_fp_spscT0_fp0_EESF_DpOSG_: argument 0"}
!143 = distinct !{!143, !"_ZNK5folly20detail_tag_invoke_fn13tag_invoke_fnclINS_4coro6detail22WithAsyncStackFunctionEJNS3_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEE7AwaiterEEEEDTcl10tag_invokescT_fp_spscT0_fp0_EESF_DpOSG_"}
!144 = distinct !{!144, !145, !"_ZNK5folly4coro6detail22WithAsyncStackFunctionclINS0_4TaskISt4pairIbSt6vectorINS4_IvEESaIS7_EEEE7AwaiterETnNSt9enable_ifIXsr5follyE18is_tag_invocable_vIS2_T_EEiE4typeELi0EEEDTcl10tag_invokeclscPDoFOS2_vELDnEEclscPDoFOSE_vELDnEEEESK_: argument 0"}
!145 = distinct !{!145, !"_ZNK5folly4coro6detail22WithAsyncStackFunctionclINS0_4TaskISt4pairIbSt6vectorINS4_IvEESaIS7_EEEE7AwaiterETnNSt9enable_ifIXsr5follyE18is_tag_invocable_vIS2_T_EEiE4typeELi0EEEDTcl10tag_invokeclscPDoFOS2_vELDnEEclscPDoFOSE_vELDnEEEESK_"}
!146 = !{!147, !148, i64 0}
!147 = !{!"_ZTSN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEEE", !148, i64 0, !9, i64 8}
end_hunk_0
begin_hunk_1_@_ZN5folly4coro17SerialQueueRunner3runEv.destroy:resume.entry
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "Func", scope: !120, file: !133, line: 31, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !120, file: !304, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !305, templateParams: !350, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!304 = !DIFile(filename: "_deps/folly-src/folly/Function.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "ecc8eed2ec6c9f311b8b6519d7429514")
!305 = !{!306, !354, !356, !358, !371, !376, !384, !387, !391, !395, !400, !401, !405, !408, !411, !414, !418, !421, !426}
!306 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !303, baseType: !307, extraData: i32 0)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !308, file: !304, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !309, templateParams: !350, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!308 = !DINamespace(name: "function", scope: !119)
!309 = !{!310, !310, !310, !310, !310, !310, !310, !345, !346}
!310 = !DIDerivedType(tag: DW_TAG_variable, name: "call", scope: !307, file: !304, line: 361, baseType: !311, flags: DIFlagStaticMember)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !307, file: !304, line: 352, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !308, file: !304, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !318, identifier: "_ZTSN5folly6detail8function4DataE")
!318 = !{!319, !321, !330}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !317, file: !304, line: 243, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bigt", scope: !317, file: !304, line: 244, baseType: !322, size: 192)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !317, file: !304, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !323, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!323 = !{!324, !325, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !322, file: !304, line: 238, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !304, line: 239, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !248, file: !327, line: 308, baseType: !328)
!327 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!328 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !322, file: !304, line: 240, baseType: !326, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tiny", scope: !317, file: !304, line: 245, baseType: !331, size: 384)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "type", scope: !333, file: !332, line: 2101, size: 384, flags: DIFlagTypePassByValue, elements: !337, identifier: "_ZTSNSt15aligned_storageILm48ELm16EE4typeE")
!332 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !248, file: !332, line: 2099, size: 8, flags: DIFlagTypePassByValue, elements: !29, templateParams: !334, identifier: "_ZTSSt15aligned_storageILm48ELm16EE")
!334 = !{!335, !336}
!335 = !DITemplateValueParameter(name: "_Len", type: !328, value: i64 48)
!336 = !DITemplateValueParameter(name: "_Align", type: !328, defaulted: true, value: i64 16)
!337 = !{!338, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !331, file: !332, line: 2103, baseType: !339, size: 384)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !341)
!340 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !{!342}
!342 = !DISubrange(count: 48)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !331, file: !332, line: 2104, baseType: !344, size: 128, align: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !331, file: !332, line: 2104, size: 128, align: 128, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTSNSt15aligned_storageILm48ELm16EE4typeUt_E")
!345 = !DISubprogram(name: "uninitCall", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE", scope: !307, file: !304, line: 364, type: !314, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!346 = !DISubprogram(name: "operator()", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv", scope: !307, file: !304, line: 368, type: !347, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!350 = !{!351}
!351 = !DITemplateTypeParameter(name: "FunctionType", type: !352)
!352 = !DISubroutineType(types: !353)
!353 = !{null}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !303, file: !304, line: 646, baseType: !355, size: 384)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "Data", scope: !303, file: !304, line: 634, baseType: !317)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "call_", scope: !303, file: !304, line: 647, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !303, file: !304, line: 639, baseType: !312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "exec_", scope: !303, file: !304, line: 648, baseType: !359, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "Exec", scope: !303, file: !304, line: 640, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!326, !363, !370, !370}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Op", scope: !303, file: !304, line: 635, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !308, file: !304, line: 234, baseType: !365, size: 32, flags: DIFlagEnumClass, elements: !366, identifier: "_ZTSN5folly6detail8function2OpE")
!365 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!366 = !{!367, !368, !369}
!367 = !DIEnumerator(name: "MOVE", value: 0)
!368 = !DIEnumerator(name: "NUKE", value: 1)
!369 = !DIEnumerator(name: "HEAP", value: 2)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!371 = !DISubprogram(name: "exec", linkageName: "_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_", scope: !303, file: !304, line: 650, type: !372, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DISubroutineType(types: !373)
!373 = !{!326, !374, !363, !370, !370}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!376 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EONS0_IKFvvEEENS_6detail8function9CoerceTagE", scope: !303, file: !304, line: 672, type: !377, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !380, !382}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !120, file: !304, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "CoerceTag", scope: !303, file: !304, line: 636, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !308, file: !304, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !29, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!384 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4Ev", scope: !303, file: !304, line: 683, type: !385, scopeLine: 683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !379}
!387 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4ERKS2_", scope: !303, file: !304, line: 686, type: !388, scopeLine: 686, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !379, !390}
!390 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !375, size: 64)
!391 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EOS2_", scope: !303, file: !304, line: 699, type: !392, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !379, !394}
!394 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !303, size: 64)
!395 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EDn", scope: !303, file: !304, line: 709, type: !396, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !379, !398}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !248, file: !327, line: 312, baseType: !399)
!399 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!400 = !DISubprogram(name: "~Function", linkageName: "_ZN5folly8FunctionIFvvEED4Ev", scope: !303, file: !304, line: 798, type: !385, scopeLine: 798, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSERKS2_", scope: !303, file: !304, line: 800, type: !402, scopeLine: 800, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!402 = !DISubroutineType(types: !403)
!403 = !{!404, !379, !390}
!404 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !303, size: 64)
!405 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEOS2_", scope: !303, file: !304, line: 820, type: !406, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!404, !379, !394}
!408 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEDn", scope: !303, file: !304, line: 873, type: !409, scopeLine: 873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{!404, !379, !398}
!411 = !DISubprogram(name: "swap", linkageName: "_ZN5folly8FunctionIFvvEE4swapERS2_", scope: !303, file: !304, line: 897, type: !412, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !379, !404}
!414 = !DISubprogram(name: "operator bool", linkageName: "_ZNK5folly8FunctionIFvvEEcvbEv", scope: !303, file: !304, line: 903, type: !415, scopeLine: 903, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !374}
!417 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!418 = !DISubprogram(name: "heapAllocatedMemory", linkageName: "_ZNK5folly8FunctionIFvvEE19heapAllocatedMemoryEv", scope: !303, file: !304, line: 910, type: !419, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{!326, !374}
!421 = !DISubprogram(name: "asSharedProxy", linkageName: "_ZNO5folly8FunctionIFvvEE13asSharedProxyEv", scope: !303, file: !304, line: 920, type: !422, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(flags: DIFlagRValueReference, types: !423)
!423 = !{!424, !379}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "SharedProxy", scope: !307, file: !304, line: 373, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !308, file: !304, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!426 = !DISubprogram(name: "asStdFunction", linkageName: "_ZNO5folly8FunctionIFvvEE13asStdFunctionEv", scope: !303, file: !304, line: 927, type: !427, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(flags: DIFlagRValueReference, types: !428)
!428 = !{!429, !379}
!429 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !248, file: !430, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!430 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_function.h", directory: "")
!431 = distinct !{null, null, null}
!432 = distinct !{null, null}
!433 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!434 = !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev}
!435 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_: argument 0"}
!438 = distinct !{!438, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE: argument 0"}
!441 = distinct !{!441, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE"}
!442 = !{!443, !440, !437}
!443 = distinct !{!443, !444, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!444 = distinct !{!444, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!445 = distinct !{null, null, null}
!446 = !{!440, !437}
!447 = distinct !{null}
!448 = !{!449, !297, i64 0}
!449 = !{!"_ZTSZN5folly4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_", !297, i64 0}
!450 = distinct !{null}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!453 = distinct !{!453, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_: argument 0"}
!456 = distinct !{!456, !"_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_"}
!457 = !{!458, !455}
!458 = distinct !{!458, !459, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskIvEE: argument 0"}
!459 = distinct !{!459, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskIvEE"}
!460 = !{!461, !455}
!461 = distinct !{!461, !462, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv: argument 0"}
!462 = distinct !{!462, !"_ZN5folly6detail17CancellationState17addTokenReferenceEv"}
!463 = !{!464, !455}
!464 = distinct !{!464, !459, !"_ZN5folly4coro19co_withCancellationENS_17CancellationTokenEONS0_4TaskIvEE: argument 0:thread"}
!465 = distinct !{null, null, null, null, null, null, null, null, null, null}
!466 = distinct !{null, null, null, null, null, null}
!467 = !{!468, !470}
!468 = distinct !{!468, !469, !"_ZN5folly4coro13co_viaIfAsyncENS_17ExecutorKeepAliveINS_8ExecutorEEEONS0_4TaskIvEE: argument 0"}
!469 = distinct !{!469, !"_ZN5folly4coro13co_viaIfAsyncENS_17ExecutorKeepAliveINS_8ExecutorEEEONS0_4TaskIvEE"}
!470 = distinct !{!470, !471, !"_ZNK5folly4coro6detail3adl18ViaIfAsyncFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl13co_viaIfAsyncclL_ZSt4moveIRNS_17ExecutorKeepAliveINS_8ExecutorEEEEONSt16remove_referenceIS8_E4typeEOS8_Efp_EscS8_fp0_EESE_SK_: argument 0"}
!471 = distinct !{!471, !"_ZNK5folly4coro6detail3adl18ViaIfAsyncFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl13co_viaIfAsyncclL_ZSt4moveIRNS_17ExecutorKeepAliveINS_8ExecutorEEEEONSt16remove_referenceIS8_E4typeEOS8_Efp_EscS8_fp0_EESE_SK_"}
!472 = distinct !{null, null, null, null, null}
!473 = !{!474, !476, !478}
!474 = distinct !{!474, !475, !"_ZN5folly4coro10tag_invokeENS0_6detail22WithAsyncStackFunctionEONS0_4TaskIvE7AwaiterE: argument 0"}
!475 = distinct !{!475, !"_ZN5folly4coro10tag_invokeENS0_6detail22WithAsyncStackFunctionEONS0_4TaskIvE7AwaiterE"}
!476 = distinct !{!476, !477, !"_ZNK5folly20detail_tag_invoke_fn13tag_invoke_fnclINS_4coro6detail22WithAsyncStackFunctionEJNS3_4TaskIvE7AwaiterEEEEDTcl10tag_invokescT_fp_spscT0_fp0_EES9_DpOSA_: argument 0"}
!477 = distinct !{!477, !"_ZNK5folly20detail_tag_invoke_fn13tag_invoke_fnclINS_4coro6detail22WithAsyncStackFunctionEJNS3_4TaskIvE7AwaiterEEEEDTcl10tag_invokescT_fp_spscT0_fp0_EES9_DpOSA_"}
!478 = distinct !{!478, !479, !"_ZNK5folly4coro6detail22WithAsyncStackFunctionclINS0_4TaskIvE7AwaiterETnNSt9enable_ifIXsr5follyE18is_tag_invocable_vIS2_T_EEiE4typeELi0EEEDTcl10tag_invokeclscPDoFOS2_vELDnEEclscPDoFOS8_vELDnEEEESE_: argument 0"}
!479 = distinct !{!479, !"_ZNK5folly4coro6detail22WithAsyncStackFunctionclINS0_4TaskIvE7AwaiterETnNSt9enable_ifIXsr5follyE18is_tag_invocable_vIS2_T_EEiE4typeELi0EEEDTcl10tag_invokeclscPDoFOS2_vELDnEEclscPDoFOS8_vELDnEEEESE_"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!482 = distinct !{!482, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!483 = !{!148, !148, i64 0}
!484 = !{!"branch_weights", i32 2000, i32 4002000, i32 1}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!487 = distinct !{!487, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!488 = distinct !{null, null, null, null, null}
!489 = distinct !{null, null, null}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!492 = distinct !{!492, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!495 = distinct !{!495, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!498 = distinct !{!498, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!499 = !{!500}
!500 = distinct !{!500, !501, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!501 = distinct !{!501, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!502 = !{!503, !503, i64 0}
!503 = !{!"_ZN5folly4coro17SerialQueueRunner5awaitEv.Frame Slot", !10, i64 0}
!504 = !{!261, !265, i64 96}
!505 = !{!25, !23, i64 0}
!506 = !{!507}
!507 = distinct !{!507, !508, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_: argument 0"}
!508 = distinct !{!508, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_"}
!509 = !{!510, !507}
!510 = distinct !{!510, !511, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!511 = distinct !{!511, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv: argument 0"}
!514 = distinct !{!514, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE: argument 0"}
!517 = distinct !{!517, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE"}
!518 = !{!516, !513}
!519 = !{!520, !516, !513}
!520 = distinct !{!520, !521, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv: argument 0"}
!521 = distinct !{!521, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv"}
!522 = !{!16, !16, i64 0}
!523 = !{!524, !526, !513}
!524 = distinct !{!524, !525, !"_ZNK5folly4coro5BatonawEv: argument 0"}
!525 = distinct !{!525, !"_ZNK5folly4coro5BatonawEv"}
!526 = distinct !{!526, !527, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_: argument 0"}
!527 = distinct !{!527, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_"}
!528 = !{!96, !17, i64 0}
!529 = distinct !{null}
!530 = distinct !{ptr @_ZN5folly20CancellationCallbackD2Ev, null, null}
!531 = distinct !{null, null, null, null, null, null}
!532 = distinct !{null, null, null, null}
!533 = !{!534, !534, i64 0}
!534 = !{!"_ZN5folly4coro17SerialQueueRunner4pullEv.Frame Slot", !10, i64 0}
!535 = !{!22, !22, i64 0}
!536 = !{!537, !17, i64 0}
!537 = !{!"_ZTSSt13__atomic_baseIPvE", !17, i64 0}
!538 = !{ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv: argument 0"}
!541 = distinct !{!541, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv"}
!542 = !{!23, !23, i64 0}
!543 = distinct !{!543, !46}
!544 = !{!545, !23, i64 0}
!545 = !{!"_ZTSSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEE", !23, i64 0, !18, i64 8}
!546 = !{!547, !547, i64 0}
!547 = !{!"_ZN5folly4coro17SerialQueueRunner3runEv.Frame Slot", !10, i64 0}
!548 = !{!549, !551}
!549 = distinct !{!549, !550, !"_ZNK5folly26make_exception_ptr_with_fnclISt13runtime_errorJRA22_KcEEENSt15__exception_ptr13exception_ptrESt15in_place_type_tIT_EDpOT0_: argument 0"}
!550 = distinct !{!550, !"_ZNK5folly26make_exception_ptr_with_fnclISt13runtime_errorJRA22_KcEEENSt15__exception_ptr13exception_ptrESt15in_place_type_tIT_EDpOT0_"}
!551 = distinct !{!551, !552, !"_ZN5folly22make_exception_wrapperISt13runtime_errorJRA22_KcEEENS_17exception_wrapperEDpOT0_: argument 0"}
!552 = distinct !{!552, !"_ZN5folly22make_exception_wrapperISt13runtime_errorJRA22_KcEEENS_17exception_wrapperEDpOT0_"}
!553 = !{!551}
!554 = !{!555, !551}
!555 = distinct !{!555, !556, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeISt13runtime_errorJPKcEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_: argument 0"}
!556 = distinct !{!556, !"_ZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeISt13runtime_errorJPKcEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_"}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!559 = distinct !{!559, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!562 = distinct !{!562, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E17get_return_objectEv: argument 0"}
!565 = distinct !{!565, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E17get_return_objectEv"}
!566 = distinct !{null}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv: argument 0"}
!569 = distinct !{!569, !"_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"_ZN5folly4coro11co_awaitTryINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEENS0_6detail12TryAwaitableINS_12remove_cvrefIS5_E4typeEEEOS5_: argument 0"}
!572 = distinct !{!572, !"_ZN5folly4coro11co_awaitTryINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEENS0_6detail12TryAwaitableINS_12remove_cvrefIS5_E4typeEEEOS5_"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv: argument 0"}
!575 = distinct !{!575, !"_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv"}
!576 = !{!577, !578, i64 0}
!577 = !{!"_ZTSN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEEE", !578, i64 0}
!578 = !{!"p1 _ZTSN5folly4coro4TaskIvE7AwaiterE", !17, i64 0}
!579 = !{!580}
!580 = distinct !{!580, !581, !"_ZN5folly4coro4TaskIvE7Awaiter16await_resume_tryEv: argument 0"}
!581 = distinct !{!581, !"_ZN5folly4coro4TaskIvE7Awaiter16await_resume_tryEv"}
!582 = !{!580, !574}
!583 = !{!584}
!584 = distinct !{!584, !585, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!585 = distinct !{!585, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!586 = distinct !{!586, !46}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!589 = distinct !{!589, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!590 = !{!591}
!591 = distinct !{!591, !592, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!592 = distinct !{!592, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!593 = distinct !{!593, !46}
end_hunk_1
