inline.NumInlined: 1040
inline.NumDeleted: 593
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv:bb.a
  br i1 %i.ak, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !144

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #16
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #23

; Function Attrs: nounwind
declare void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
.from.65:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 368) ; 13 uses
  store ptr @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy, ptr %destroy.addr, align 8
  %.reload.addr96 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr85 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 %5, ptr %.spill.addr85, align 8
  %.spill.addr82 = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 %4, ptr %.spill.addr82, align 8
  %.spill.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %3, ptr %.spill.addr79, align 8
  %.spill.addr76 = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 %2, ptr %.spill.addr76, align 4
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr96, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !548
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIiEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !550
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !552
  store ptr %i.a, ptr %0, align 8, !tbaa !415, !alias.scope !651
  %index.addr97 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i2 0, ptr %index.addr97, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO8co_preadEiPvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE"(i32 noundef %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 {
bb.a:
  %.val = load ptr, ptr %1, align 16, !tbaa !654
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !656
  store i32 %0, ptr %.val2, align 4, !tbaa !7
  tail call void @_ZN5folly4coro5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %.val) #16
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #11 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !618
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !620
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !621, !inline_history !633
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !628, !inline_history !633
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !144

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !634
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !98
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #16, !call_target !99, !inline_history !635
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.resume(ptr noundef nonnull align 16 dereferenceable(368) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload.addr90 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr93 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload.addr96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend58, !prof !657

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload81 = load ptr, ptr %.reload.addr80, align 16, !tbaa !658
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload78 = load i32, ptr %.reload.addr77, align 4, !tbaa !658
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !658
  store ptr null, ptr %.reload.addr92, align 16, !tbaa !660
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr92, ptr %.reload.addr90, align 16, !tbaa !662
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr93, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !663
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload78, ptr %.reload.addr88, align 16, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload81, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !415
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr83, align 8, !tbaa !658
  store <2 x i64> %i.f, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !98
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE", ptr %i.d, align 16, !tbaa !167
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.e, align 8, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO9co_pwriteEiPKvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE", ptr %i.g, align 16, !tbaa !407
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.h, align 8, !tbaa !414
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFviEE10uninitCallEiRNS1_4DataE, ptr %i.b, align 16, !tbaa !407
  store ptr null, ptr %i.c, align 8, !tbaa !414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, i64 16, i1 false)
  invoke void @_ZN5folly13SimpleAsyncIO8submitOpENS_8FunctionIFvPNS_11AsyncBaseOpEEEENS1_IFviEEE(ptr noundef nonnull align 8 dereferenceable(312) %.reload, ptr noundef nonnull %.reload.addr88, ptr noundef nonnull %.reload.addr89)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i6.i, label %_ZN5folly8FunctionIFviEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !664 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !665 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !664 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !665 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.c, %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, ptr noundef null) #16, !inline_history !519 ; 0 uses
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !584, !noalias !666
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !584, !noalias !666
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66, !noalias !669
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.68 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !672 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

.from.68:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !678
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !678
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !678
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !550, !noalias !678
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !16, !noalias !678
  store ptr %i.z, ptr %.reload.addr88, align 16, !tbaa !415, !alias.scope !679
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !678
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !66, !noalias !678
  store ptr %.reload.addr92, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !662, !alias.scope !682
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !687, !alias.scope !682
  %i.af = load atomic ptr, ptr %.reload.addr92 acquire, align 16
  %i.ag = icmp eq ptr %i.af, %.reload.addr92
  br i1 %i.ag, label %AfterCoroSuspend58, label %AfterCoroSave56

AfterCoroSave56:                                  ; preds = %.from.68
  store i2 1, ptr %index.addr, align 16
  %i.ah = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr88, ptr nonnull %0) #16
  br i1 %i.ah, label %CoroEnd, label %AfterCoroSuspend58

.body:                                            ; preds = %bb.f, %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !414 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i25, label %_ZN5folly8FunctionIFviEED2Ev.exit26, label %_ZN5folly8FunctionIFviEED2Ev.exit26.from.

_ZN5folly8FunctionIFviEED2Ev.exit26.from.:        ; preds = %.body
  %i.aj = tail call noundef i64 %i.ai(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, ptr noundef null) #16, !inline_history !519 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

AfterCoroSuspend58:                               ; preds = %resume.entry, %AfterCoroSave56, %.from.68
  %i.ak = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i28, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32, label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend58
  store i64 0, ptr %.reload.addr88, align 16, !tbaa !415
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !688

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i.i29, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32 unwind label %bb.l, !inline_history !688

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32: ; preds = %bb.k, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %AfterCoroSuspend58
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.au = load i32, ptr %i.at, align 16, !tbaa !577
  store i32 2, ptr %i.at, align 16, !tbaa !577
  %cond.i.i.i = icmp eq i32 %i.au, 1
  br i1 %cond.i.i.i, label %bb.m, label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, !prof !578

bb.m:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !579
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #16
  br label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit: ; preds = %bb.n, %bb.m, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %.reload.addr93, align 8, !tbaa !7
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !7
  store i32 0, ptr %i.at, align 16, !tbaa !552
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  br label %bb.o

_ZN5folly8FunctionIFviEED2Ev.exit26:              ; preds = %.body, %_ZN5folly8FunctionIFviEED2Ev.exit26.from., %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.m, %_ZN5folly8FunctionIFviEED2Ev.exit26.from. ], [ %i.m, %.body ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr96) #16
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit38

bb.o:                                             ; preds = %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, %_ZN5folly8FunctionIFviEED2Ev.exit26
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  %i.ba = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr92, ptr nonnull %0) #16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  musttail call void %i.bb(ptr nonnull %i.ba)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave56
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit38: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit26
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %.critedge21.critedge, label %AfterCoroSuspend, !prof !689

.critedge21.critedge:                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.b, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37, label %bb.a

bb.a:                                             ; preds = %.critedge21.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37 unwind label %bb.b, !inline_history !688

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37: ; preds = %bb.a, %.critedge21.critedge
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 16, !tbaa !552
  %cond.i.i = icmp eq i32 %i.h, 1
  br i1 %cond.i.i, label %bb.c, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, !prof !578

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !579
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16
  br label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i

_ZN5folly6detail7TryBaseIiED2Ev.exit.i:           ; preds = %bb.d, %bb.c, %AfterCoroSuspend
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !690 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw sub ptr %i.m, i64 8 acq_rel, align 8 ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.f, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.n, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.l) #16
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #16, !call_target !692, !inline_history !698
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.h, %bb.g, %bb.e, %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !66   ; 2 uses
  %i.v = and i64 %i.u, -4                         ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.t, align 8, !tbaa !98
  %i.x = and i64 %i.u, 3
  %.not3.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i.i.i, label %bb.j, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16, !call_target !99, !inline_history !699
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.i, %bb.j
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 368)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.resume(ptr noundef nonnull align 16 dereferenceable(368) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload.addr90 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr93 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload.addr96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend58, !prof !657

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload81 = load ptr, ptr %.reload.addr80, align 16, !tbaa !700
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload78 = load i32, ptr %.reload.addr77, align 4, !tbaa !700
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !700
  store ptr null, ptr %.reload.addr92, align 16, !tbaa !660
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr92, ptr %.reload.addr90, align 16, !tbaa !662
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr93, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !663
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload78, ptr %.reload.addr88, align 16, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload81, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !415
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr83, align 8, !tbaa !700
  store <2 x i64> %i.f, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !98
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE", ptr %i.d, align 16, !tbaa !167
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.e, align 8, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO8co_preadEiPvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE", ptr %i.g, align 16, !tbaa !407
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.h, align 8, !tbaa !414
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFviEE10uninitCallEiRNS1_4DataE, ptr %i.b, align 16, !tbaa !407
  store ptr null, ptr %i.c, align 8, !tbaa !414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, i64 16, i1 false)
  invoke void @_ZN5folly13SimpleAsyncIO8submitOpENS_8FunctionIFvPNS_11AsyncBaseOpEEEENS1_IFviEEE(ptr noundef nonnull align 8 dereferenceable(312) %.reload, ptr noundef nonnull %.reload.addr88, ptr noundef nonnull %.reload.addr89)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i6.i, label %_ZN5folly8FunctionIFviEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !702 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !703 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !702 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !703 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.c, %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, ptr noundef null) #16, !inline_history !519 ; 0 uses
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !584, !noalias !704
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !584, !noalias !704
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66, !noalias !707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.68 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !710 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

.from.68:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !716
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !716
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !716
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !550, !noalias !716
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !16, !noalias !716
  store ptr %i.z, ptr %.reload.addr88, align 16, !tbaa !415, !alias.scope !717
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !716
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !66, !noalias !716
  store ptr %.reload.addr92, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !662, !alias.scope !720
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !687, !alias.scope !720
  %i.af = load atomic ptr, ptr %.reload.addr92 acquire, align 16
  %i.ag = icmp eq ptr %i.af, %.reload.addr92
  br i1 %i.ag, label %AfterCoroSuspend58, label %AfterCoroSave56

AfterCoroSave56:                                  ; preds = %.from.68
  store i2 1, ptr %index.addr, align 16
  %i.ah = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr88, ptr nonnull %0) #16
  br i1 %i.ah, label %CoroEnd, label %AfterCoroSuspend58

.body:                                            ; preds = %bb.f, %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !414 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i25, label %_ZN5folly8FunctionIFviEED2Ev.exit26, label %_ZN5folly8FunctionIFviEED2Ev.exit26.from.

_ZN5folly8FunctionIFviEED2Ev.exit26.from.:        ; preds = %.body
  %i.aj = tail call noundef i64 %i.ai(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr90, ptr noundef null) #16, !inline_history !519 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

AfterCoroSuspend58:                               ; preds = %resume.entry, %AfterCoroSave56, %.from.68
  %i.ak = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i28, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32, label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend58
  store i64 0, ptr %.reload.addr88, align 16, !tbaa !415
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !688

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i.i29, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32 unwind label %bb.l, !inline_history !688

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32: ; preds = %bb.k, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %AfterCoroSuspend58
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.au = load i32, ptr %i.at, align 16, !tbaa !577
  store i32 2, ptr %i.at, align 16, !tbaa !577
  %cond.i.i.i = icmp eq i32 %i.au, 1
  br i1 %cond.i.i.i, label %bb.m, label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, !prof !578

bb.m:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !579
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #16
  br label %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit: ; preds = %bb.n, %bb.m, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %.reload.addr93, align 8, !tbaa !7
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !7
  store i32 0, ptr %i.at, align 16, !tbaa !552
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  br label %bb.o

_ZN5folly8FunctionIFviEED2Ev.exit26:              ; preds = %.body, %_ZN5folly8FunctionIFviEED2Ev.exit26.from., %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.m, %_ZN5folly8FunctionIFviEED2Ev.exit26.from. ], [ %i.m, %.body ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr96) #16
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit38

bb.o:                                             ; preds = %_ZN5folly4coro6detail11TaskPromiseIiE12return_valueIiEEvOT_.exit, %_ZN5folly8FunctionIFviEED2Ev.exit26
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  %i.ba = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr92, ptr nonnull %0) #16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  musttail call void %i.bb(ptr nonnull %i.ba)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave56
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit38: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit26
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 16
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %.critedge21.critedge, label %AfterCoroSuspend, !prof !689

.critedge21.critedge:                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.b, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37, label %bb.a

bb.a:                                             ; preds = %.critedge21.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37 unwind label %bb.b, !inline_history !688

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37: ; preds = %bb.a, %.critedge21.critedge
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr92) #16
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 16, !tbaa !552
  %cond.i.i = icmp eq i32 %i.h, 1
  br i1 %cond.i.i, label %bb.c, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, !prof !578

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !579
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16
  br label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i

_ZN5folly6detail7TryBaseIiED2Ev.exit.i:           ; preds = %bb.d, %bb.c, %AfterCoroSuspend
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !690 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw sub ptr %i.m, i64 8 acq_rel, align 8 ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.f, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.n, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.l) #16
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #16, !call_target !692, !inline_history !698
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.h, %bb.g, %bb.e, %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !66   ; 2 uses
  %i.v = and i64 %i.u, -4                         ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.t, align 8, !tbaa !98
  %i.x = and i64 %i.u, 3
  %.not3.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i.i.i.i, label %bb.j, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16, !call_target !99, !inline_history !699
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.i, %bb.j
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 368)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn }
attributes #30 = { cold }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN5folly9AsyncBaseE", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !10, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN5folly13SimpleAsyncIO6ConfigE", !20, i64 0, !21, i64 8, !22, i64 16, !23, i64 24}
!20 = !{!"long", !9, i64 0}
!21 = !{!"_ZTSN5folly17ExecutorKeepAliveINS_8ExecutorEEE", !20, i64 0}
!22 = !{!"_ZTSN5folly13SimpleAsyncIO4ModeE", !9, i64 0}
!23 = !{!"p1 _ZTSN5folly9EventBaseE", !13, i64 0}
!24 = !{!25, !20, i64 184}
!25 = !{!"_ZTSN5folly13SimpleAsyncIOE", !26, i64 0, !20, i64 184, !21, i64 192, !39, i64 200, !45, i64 208, !57, i64 296, !64, i64 304, !65, i64 308}
!26 = !{!"_ZTSN5folly12EventHandlerE", !27, i64 8, !23, i64 176}
!27 = !{!"_ZTSN5folly14EventBaseEventE", !28, i64 0, !23, i64 128, !13, i64 136, !13, i64 144, !37, i64 152}
!28 = !{!"_ZTS5event", !29, i64 0, !9, i64 40, !8, i64 56, !35, i64 64, !9, i64 72, !34, i64 104, !34, i64 106, !36, i64 112}
!29 = !{!"_ZTS14event_callback", !30, i64 0, !34, i64 16, !9, i64 18, !9, i64 19, !9, i64 24, !13, i64 32}
!30 = !{!"_ZTSN14event_callbackUt_E", !31, i64 0, !32, i64 8}
!31 = !{!"p1 _ZTS14event_callback", !13, i64 0}
!32 = !{!"p2 _ZTS14event_callback", !33, i64 0}
!33 = !{!"any p2 pointer", !13, i64 0}
!34 = !{!"short", !9, i64 0}
!35 = !{!"p1 _ZTS10event_base", !13, i64 0}
!36 = !{!"_ZTS7timeval", !20, i64 0, !20, i64 8}
!37 = !{!"_ZTSN5folly13EventCallbackE", !38, i64 0, !9, i64 8}
!38 = !{!"_ZTSN5folly13EventCallback4TypeE", !9, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIN5folly9AsyncBaseESt14default_deleteIS1_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly9AsyncBaseESt14default_deleteIS1_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN5folly9AsyncBaseESt14default_deleteIS1_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN5folly9AsyncBaseESt14default_deleteIS1_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly9AsyncBaseESt14default_deleteIS1_EEE", !44, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN5folly9AsyncBaseELb0EE", !12, i64 0}
!45 = !{!"_ZTSN5folly12SynchronizedISt5queueISt10unique_ptrINS_11AsyncBaseOpESt14default_deleteIS3_EESt5dequeIS6_SaIS6_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !46, i64 0, !54, i64 80}
!46 = !{!"_ZTSSt5queueISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESt5dequeIS5_SaIS5_EEE", !47, i64 0}
!47 = !{!"_ZTSSt5dequeISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE", !48, i64 0}
!48 = !{!"_ZTSSt11_Deque_baseISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE", !49, i64 0}
!49 = !{!"_ZTSNSt11_Deque_baseISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE11_Deque_implE", !50, i64 0}
!50 = !{!"_ZTSNSt11_Deque_baseISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE16_Deque_impl_dataE", !51, i64 0, !20, i64 8, !52, i64 16, !52, i64 48}
!51 = !{!"p2 _ZTSSt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS1_EE", !33, i64 0}
!52 = !{!"_ZTSSt15_Deque_iteratorISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EERS5_PS5_E", !53, i64 0, !53, i64 8, !53, i64 16, !51, i64 24}
!53 = !{!"p1 _ZTSSt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS1_EE", !13, i64 0}
!54 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !55, i64 0}
!55 = !{!"_ZTSSt6atomicIjE", !56, i64 0}
!56 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN5folly21ScopedEventBaseThreadESt14default_deleteIS1_EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly21ScopedEventBaseThreadESt14default_deleteIS1_ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implIN5folly21ScopedEventBaseThreadESt14default_deleteIS1_EE", !60, i64 0}
!60 = !{!"_ZTSSt5tupleIJPN5folly21ScopedEventBaseThreadESt14default_deleteIS1_EEE", !61, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly21ScopedEventBaseThreadESt14default_deleteIS1_EEE", !62, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN5folly21ScopedEventBaseThreadELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN5folly21ScopedEventBaseThreadE", !13, i64 0}
!64 = !{!"bool", !9, i64 0}
!65 = !{!"_ZTSN5folly5BatonILb1ESt6atomicEE", !55, i64 0}
!66 = !{!21, !20, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_: argument 0"}
!69 = distinct !{!69, !"_ZN5folly8Executor17getKeepAliveTokenIS0_EENS_17ExecutorKeepAliveIT_EEPS3_"}
!70 = !DISubprogram(name: "keepAliveAcquire", linkageName: "_ZN5folly8Executor16keepAliveAcquireEv", scope: !72, file: !71, line: 258, type: !74, scopeLine: 258, containingType: !72, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!71 = !DIFile(filename: "_deps/folly-src/folly/Executor.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e2252a484f750b6d785f8426d640a0b4")
!72 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !73, file: !71, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!73 = !DINamespace(name: "folly", scope: null)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !77}
!76 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!78 = distinct !{null, null}
!79 = !{!56, !8, i64 0}
!80 = !{!62, !63, i64 0}
!81 = !{!25, !64, i64 304}
!82 = !{!63, !63, i64 0}
!83 = !DISubprogram(name: "~ScopedEventBaseThread", linkageName: "_ZN5folly21ScopedEventBaseThreadD4Ev", scope: !85, file: !84, line: 74, type: !86, scopeLine: 74, containingType: !85, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!84 = !DIFile(filename: "_deps/folly-src/folly/io/async/ScopedEventBaseThread.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "e5a6a3f3750697d25af1132912279679")
!85 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ScopedEventBaseThread", scope: !73, file: !84, line: 46, size: 5504, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly21ScopedEventBaseThreadE")
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = distinct !{null, null}
!90 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!91 = !DISubprogram(name: "~AsyncBase", linkageName: "_ZN5folly9AsyncBaseD4Ev", scope: !93, file: !92, line: 186, type: !94, scopeLine: 186, containingType: !93, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!92 = !DIFile(filename: "_deps/folly-src/folly/io/async/AsyncBase.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "002146697fc62b458fff3ae202679973")
!93 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncBase", scope: !73, file: !92, line: 157, size: 1088, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly9AsyncBaseE")
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!97 = distinct !{null, null}
!98 = !{!20, !20, i64 0}
!99 = !DISubprogram(name: "keepAliveRelease", linkageName: "_ZN5folly8Executor16keepAliveReleaseEv", scope: !72, file: !71, line: 261, type: !100, scopeLine: 261, containingType: !72, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !77}
!102 = distinct !{null, null}
!103 = !{!50, !20, i64 8}
!104 = !{!50, !51, i64 0}
!105 = !{!53, !53, i64 0}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = !{!52, !51, i64 24}
!109 = !{!52, !53, i64 8}
!110 = !{!52, !53, i64 16}
!111 = !{!50, !53, i64 16}
!112 = !{!50, !53, i64 48}
!113 = !{!52, !53, i64 0}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNSt5dequeISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZNSt5dequeISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE5beginEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNSt5dequeISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE3endEv: argument 0"}
!119 = distinct !{!119, !"_ZNSt5dequeISt10unique_ptrIN5folly11AsyncBaseOpESt14default_deleteIS2_EESaIS5_EE3endEv"}
!120 = !{!121, !121, i64 0}
!121 = !{!"p1 _ZTSN5folly11AsyncBaseOpE", !13, i64 0}
!122 = !DISubprogram(name: "~AsyncBaseOp", linkageName: "_ZN5folly11AsyncBaseOpD4Ev", scope: !123, file: !92, line: 53, type: !124, scopeLine: 53, containingType: !123, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!123 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncBaseOp", scope: !73, file: !92, line: 44, size: 896, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly11AsyncBaseOpE")
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = distinct !{null, null, null, null, null, null, null, null}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = !{!50, !51, i64 40}
!131 = !{!50, !51, i64 72}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt5queueISt10unique_ptrINS_11AsyncBaseOpESt14default_deleteIS4_EESt5dequeIS7_SaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!134 = distinct !{!134, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedISt5queueISt10unique_ptrINS_11AsyncBaseOpESt14default_deleteIS4_EESt5dequeIS7_SaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!135 = !{!"branch_weights", i32 2146410443, i32 1073205}
!136 = !{!137, !64, i64 8}
!137 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !138, i64 0, !64, i64 8}
!138 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !13, i64 0}
!139 = !{i8 0, i8 2}
!140 = !{}
!141 = !{!137, !138, i64 0}
!142 = !{i64 12154935}
!143 = distinct !{!143, !15}
!144 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
end_hunk_0
begin_hunk_1_@_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy:resume.entry
!457 = !DIDerivedType(tag: DW_TAG_member, name: "call_", scope: !436, file: !175, line: 647, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !436, file: !175, line: 639, baseType: !443)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "exec_", scope: !436, file: !175, line: 648, baseType: !265, size: 64, offset: 448)
!460 = !DISubprogram(name: "exec", linkageName: "_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_", scope: !436, file: !175, line: 650, type: !461, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!206, !463, !269, !275, !275}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!465 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EONS0_IKFvvEEENS_6detail8function9CoerceTagE", scope: !436, file: !175, line: 672, type: !466, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468, !469, !287}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !73, file: !175, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!471 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4Ev", scope: !436, file: !175, line: 683, type: !472, scopeLine: 683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !468}
!474 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4ERKS2_", scope: !436, file: !175, line: 686, type: !475, scopeLine: 686, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !468, !477}
!477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !464, size: 64)
!478 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EOS2_", scope: !436, file: !175, line: 699, type: !479, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !468, !481}
!481 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !436, size: 64)
!482 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EDn", scope: !436, file: !175, line: 709, type: !483, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !468, !303}
!485 = !DISubprogram(name: "~Function", linkageName: "_ZN5folly8FunctionIFvvEED4Ev", scope: !436, file: !175, line: 798, type: !472, scopeLine: 798, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSERKS2_", scope: !436, file: !175, line: 800, type: !487, scopeLine: 800, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !468, !477}
!489 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !436, size: 64)
!490 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEOS2_", scope: !436, file: !175, line: 820, type: !491, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DISubroutineType(types: !492)
!492 = !{!489, !468, !481}
!493 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEDn", scope: !436, file: !175, line: 873, type: !494, scopeLine: 873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!489, !468, !303}
!496 = !DISubprogram(name: "swap", linkageName: "_ZN5folly8FunctionIFvvEE4swapERS2_", scope: !436, file: !175, line: 897, type: !497, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !468, !489}
!499 = !DISubprogram(name: "operator bool", linkageName: "_ZNK5folly8FunctionIFvvEEcvbEv", scope: !436, file: !175, line: 903, type: !500, scopeLine: 903, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!76, !463}
!502 = !DISubprogram(name: "heapAllocatedMemory", linkageName: "_ZNK5folly8FunctionIFvvEE19heapAllocatedMemoryEv", scope: !436, file: !175, line: 910, type: !503, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!206, !463}
!505 = !DISubprogram(name: "asSharedProxy", linkageName: "_ZNO5folly8FunctionIFvvEE13asSharedProxyEv", scope: !436, file: !175, line: 920, type: !506, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(flags: DIFlagRValueReference, types: !507)
!507 = !{!508, !468}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "SharedProxy", scope: !439, file: !175, line: 373, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !179, file: !175, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!510 = !DISubprogram(name: "asStdFunction", linkageName: "_ZNO5folly8FunctionIFvvEE13asStdFunctionEv", scope: !436, file: !175, line: 927, type: !511, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!511 = !DISubroutineType(flags: DIFlagRValueReference, types: !512)
!512 = !{!513, !468}
!513 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !208, file: !334, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!514 = distinct !{null, null, null}
!515 = distinct !{null, null, null, null}
!516 = distinct !{null, null, null}
!517 = distinct !{null, null}
!518 = distinct !{null, null, null}
!519 = distinct !{null, null}
!520 = distinct !{null, null}
!521 = !{!522, !8, i64 0}
!522 = !{!"_ZTSZN5folly13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEEE3$_0", !8, i64 0, !13, i64 8, !20, i64 16, !20, i64 24}
!523 = !{!522, !13, i64 8}
!524 = !{!522, !20, i64 16}
!525 = !{!522, !20, i64 24}
!526 = !DISubprogram(name: "pread", linkageName: "_ZN5folly11AsyncBaseOp5preadEiPvml", scope: !123, file: !92, line: 66, type: !527, scopeLine: 66, containingType: !123, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !126, !251, !200, !529, !531}
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !530, line: 18, baseType: !209)
!530 = !DIFile(filename: "/usr/lib/llvm-23/lib/clang/23/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !532, line: 85, baseType: !533)
!532 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "7fb02a803b0c9b11cb5276b77d21e9d8")
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !534, line: 152, baseType: !535)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!535 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!536 = distinct !{null}
!537 = !{!538, !8, i64 0}
!538 = !{!"_ZTSZN5folly13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEEE3$_0", !8, i64 0, !13, i64 8, !20, i64 16, !20, i64 24}
!539 = !{!538, !13, i64 8}
!540 = !{!538, !20, i64 16}
!541 = !{!538, !20, i64 24}
!542 = !DISubprogram(name: "pwrite", linkageName: "_ZN5folly11AsyncBaseOp6pwriteEiPKvml", scope: !123, file: !92, line: 79, type: !543, scopeLine: 79, containingType: !123, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !126, !251, !545, !529, !531}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!547 = distinct !{null}
!548 = !{!549, !13, i64 0}
!549 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail24ScopeExitTaskPromiseBaseEEE", !13, i64 0}
!550 = !{!551, !13, i64 0}
!551 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !13, i64 0}
!552 = !{!553, !554, i64 0}
!553 = !{!"_ZTSN5folly6detail7TryBaseIiEE", !554, i64 0, !9, i64 8}
!554 = !{!"_ZTSN5folly6detail7TryBaseIiE8ContainsE", !9, i64 0}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE17get_return_objectEv: argument 0"}
!557 = distinct !{!557, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE17get_return_objectEv"}
!558 = !{!559, !13, i64 0}
!559 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeEEE", !13, i64 0}
!560 = !{!561, !561, i64 0}
!561 = !{!"p1 _ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !13, i64 0}
!562 = !{!563, !565, i64 16}
!563 = !{!"_ZTSN5folly15AsyncStackFrameE", !564, i64 0, !13, i64 8, !565, i64 16}
!564 = !{!"p1 _ZTSN5folly15AsyncStackFrameE", !13, i64 0}
!565 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !13, i64 0}
!566 = !{!563, !564, i64 0}
!567 = !{!563, !13, i64 8}
!568 = !{!569, !570, i64 0}
!569 = !{!"_ZTSN5folly4coro5Baton13WaitOperationE", !570, i64 0, !571, i64 8, !572, i64 16}
!570 = !{!"p1 _ZTSN5folly4coro5BatonE", !13, i64 0}
!571 = !{!"_ZTSNSt7__n486116coroutine_handleIvEE", !13, i64 0}
!572 = !{!"p1 _ZTSN5folly4coro5Baton13WaitOperationE", !13, i64 0}
!573 = !{i64 8}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!576 = distinct !{!576, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!577 = !{!554, !554, i64 0}
!578 = !{!"branch_weights", i32 1, i32 4004000}
!579 = !{!580, !13, i64 0}
!580 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!583 = distinct !{!583, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!584 = !{!585, !586, i64 0}
!585 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowingE", !586, i64 0}
!586 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowing10BypassModeE", !9, i64 0}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!589 = distinct !{!589, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!590 = !{!591}
!591 = distinct !{!591, !592, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!592 = distinct !{!592, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!593 = !{!594, !64, i64 24}
!594 = !{!"_ZTSSt22_Optional_payload_baseISt4pairIN5folly4coro23ExtendedCoroutineHandleEPNS1_15AsyncStackFrameEEE", !9, i64 0, !64, i64 24}
!595 = !{!596}
!596 = distinct !{!596, !597, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!597 = distinct !{!597, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!598 = !{!599, !564, i64 16}
!599 = !{!"_ZTSN5folly4coro6detail24ScopeExitTaskPromiseBaseE", !600, i64 0, !564, i64 16, !21, i64 24, !601, i64 32, !549, i64 40}
!600 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandleE", !571, i64 0, !561, i64 8}
!601 = !{!"_ZTSN5folly17exception_wrapperE", !580, i64 0}
!602 = distinct !{null, null, null}
!603 = !{!600, !561, i64 8}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!606 = distinct !{!606, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!607 = distinct !{null}
!608 = !{!609, !570, i64 0}
!609 = !{!"_ZTSZN5folly13SimpleAsyncIO9co_pwriteEiPKvmlE3$_0", !570, i64 0, !610, i64 8}
!610 = !{!"p1 int", !13, i64 0}
!611 = !{!609, !610, i64 8}
!612 = !{!613, !614, i64 0}
!613 = !{!"_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE", !614, i64 0, !615, i64 8}
!614 = !{!"p1 _ZTSN5folly14RequestContextE", !13, i64 0}
!615 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !616, i64 0}
!616 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!617 = !{!615, !616, i64 0}
!618 = !{!619, !8, i64 8}
!619 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!620 = !{!619, !8, i64 12}
!621 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !623, file: !622, line: 139, type: !624, scopeLine: 139, containingType: !623, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!622 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!623 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !208, file: !622, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!627 = distinct !{null, null, null, null, null, null}
!628 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !623, file: !622, line: 143, type: !624, scopeLine: 143, containingType: !623, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!629 = distinct !{null, null, null}
!630 = !{!631, !631, i64 0}
!631 = !{!"p1 _ZTSN5folly4coro6detail23ViaCoroutinePromiseBaseE", !13, i64 0}
!632 = distinct !{null, null, null}
!633 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!634 = !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev}
!635 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_: argument 0"}
!638 = distinct !{!638, !"_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_"}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE: argument 0"}
!641 = distinct !{!641, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type18getErrorHandleImplERS4_RNS_17exception_wrapperE"}
!642 = !{!643, !640, !637}
!643 = distinct !{!643, !644, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE: argument 0"}
!644 = distinct !{!644, !"_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE"}
!645 = distinct !{null, null, null}
!646 = !{!640, !637}
!647 = distinct !{null}
!648 = !{!649, !631, i64 0}
!649 = !{!"_ZTSZN5folly4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_", !631, i64 0}
!650 = distinct !{null}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE17get_return_objectEv: argument 0"}
!653 = distinct !{!653, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE17get_return_objectEv"}
!654 = !{!655, !570, i64 0}
!655 = !{!"_ZTSZN5folly13SimpleAsyncIO8co_preadEiPvmlE3$_0", !570, i64 0, !610, i64 8}
!656 = !{!655, !610, i64 8}
!657 = !{!"branch_weights", i32 -2147483648, i32 223695893}
!658 = !{!659, !659, i64 0}
!659 = !{!"_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.Frame Slot", !10, i64 0}
!660 = !{!661, !13, i64 0}
!661 = !{!"_ZTSSt13__atomic_baseIPvE", !13, i64 0}
!662 = !{!570, !570, i64 0}
!663 = !{!610, !610, i64 0}
!664 = distinct !{ptr @_ZN5folly13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEE, null, null}
!665 = distinct !{ptr @_ZN5folly13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEE, null, null}
!666 = !{!667}
!667 = distinct !{!667, !668, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_: argument 0"}
!668 = distinct !{!668, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_"}
!669 = !{!670, !667}
!670 = distinct !{!670, !671, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!671 = distinct !{!671, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!672 = !{!673}
!673 = distinct !{!673, !674, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv: argument 0"}
!674 = distinct !{!674, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE: argument 0"}
!677 = distinct !{!677, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE"}
!678 = !{!676, !673}
!679 = !{!680, !676, !673}
!680 = distinct !{!680, !681, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv: argument 0"}
!681 = distinct !{!681, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv"}
!682 = !{!683, !685, !673}
!683 = distinct !{!683, !684, !"_ZNK5folly4coro5BatonawEv: argument 0"}
!684 = distinct !{!684, !"_ZNK5folly4coro5BatonawEv"}
!685 = distinct !{!685, !686, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_: argument 0"}
!686 = distinct !{!686, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_"}
!687 = !{!571, !13, i64 0}
!688 = distinct !{null}
!689 = !{!"branch_weights", i32 223695893, i32 -1580787451}
!690 = !{!691, !691, i64 0}
!691 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !13, i64 0}
!692 = !DISubprogram(name: "~CancellationState", linkageName: "_ZN5folly6detail17CancellationStateD4Ev", scope: !694, file: !693, line: 43, type: !695, scopeLine: 43, containingType: !694, virtualIndex: 0, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!693 = !DIFile(filename: "_deps/folly-src/folly/CancellationToken-inl.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "0fe5390f30e4d65ce495e93960df2e48")
!694 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CancellationState", scope: !180, file: !693, line: 33, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail17CancellationStateE")
!695 = !DISubroutineType(types: !696)
!696 = !{null, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!698 = distinct !{null, null, null, null, null, null}
!699 = distinct !{null, null, null, null}
!700 = !{!701, !701, i64 0}
!701 = !{!"_ZN5folly13SimpleAsyncIO8co_preadEiPvml.Frame Slot", !10, i64 0}
!702 = distinct !{ptr @_ZN5folly13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEE, null, null}
!703 = distinct !{ptr @_ZN5folly13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEE, null, null}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_: argument 0"}
!706 = distinct !{!706, !"_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformIRNS0_5BatonETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_"}
!707 = !{!708, !705}
!708 = distinct !{!708, !709, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!709 = distinct !{!709, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv: argument 0"}
!712 = distinct !{!712, !"_ZNO5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEEawEv"}
!713 = !{!714}
!714 = distinct !{!714, !715, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE: argument 0"}
!715 = distinct !{!715, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE6createENS_17ExecutorKeepAliveINS_8ExecutorEEE"}
!716 = !{!714, !711}
!717 = !{!718, !714, !711}
!718 = distinct !{!718, !719, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv: argument 0"}
!719 = distinct !{!719, !"_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type17get_return_objectEv"}
!720 = !{!721, !723, !711}
!721 = distinct !{!721, !722, !"_ZNK5folly4coro5BatonawEv: argument 0"}
!722 = distinct !{!722, !"_ZNK5folly4coro5BatonawEv"}
!723 = distinct !{!723, !724, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_: argument 0"}
!724 = distinct !{!724, !"_ZNK5folly4coro14get_awaiter_fnclIRNS0_5BatonETnNSt9enable_ifIXsr6detail29_has_member_operator_co_awaitIT_EE5valueEiE4typeELi0EEEDcOS6_"}
end_hunk_1
