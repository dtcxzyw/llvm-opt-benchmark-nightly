Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SimpleAsyncIO?download=true
inline.NumInlined: 1009
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEE:bb.a
_ZN5folly8FunctionIFviEED2Ev.exit:                ; preds = %bb.c, %bb.d
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #16, !inline_history !31 ; 0 uses
  br label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit

_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !292  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i.i8, label %_ZN5folly8FunctionIFviEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9

_ZN5folly8FunctionIFviEED2Ev.exit9:               ; preds = %bb.f, %bb.g
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i10, label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9
  %i.r = call noundef i64 %i.q(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #16, !inline_history !31 ; 0 uses
  br label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11

_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9, %bb.h
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE"(ptr noundef %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #11 {
bb.a:
  %i.a = load i32, ptr %1, align 16, !tbaa !595
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !596
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !597
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !598
  %i.h = load ptr, ptr %0, align 16, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 16 dereferenceable(104) %0, i32 noundef %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %i.g), !call_target !601, !inline_history !593
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEE(ptr noundef nonnull align 8 dereferenceable(296) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef align 16 %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.folly::Function.137", align 16 ; 9 uses
  %7 = alloca %"class.folly::Function.144", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 %1, ptr %6, align 16, !tbaa !117
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !293
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !124
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %4, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !124
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE", ptr %i.a, align 16, !tbaa !156
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.b, align 8, !tbaa !157
  store ptr null, ptr %7, align 16, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !292  ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.d, align 16, !tbaa !293
  store <2 x ptr> %i.h, ptr %i.c, align 16, !tbaa !293
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFviEE10uninitCallEiRNS1_4DataE, ptr %i.d, align 16, !tbaa !288
  store ptr null, ptr %i.f, align 8, !tbaa !292
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef i64 %i.g(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %7) #16, !inline_history !22 ; 0 uses
  br label %_ZN5folly8FunctionIFviEEC2EOS2_.exit

_ZN5folly8FunctionIFviEEC2EOS2_.exit:             ; preds = %bb.a, %bb.b
  invoke void @_ZN5folly13SimpleAsyncIO8submitOpENS_8FunctionIFvPNS_11AsyncBaseOpEEEENS1_IFviEEE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 16 %6, ptr noundef nonnull align 16 %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !292  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i.i6, label %_ZN5folly8FunctionIFviEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef i64 %i.j(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit

_ZN5folly8FunctionIFviEED2Ev.exit:                ; preds = %bb.c, %bb.d
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i7, label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #16, !inline_history !31 ; 0 uses
  br label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit

_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !292  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.o, null
  br i1 %.not.i.i8, label %_ZN5folly8FunctionIFviEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9

_ZN5folly8FunctionIFviEED2Ev.exit9:               ; preds = %bb.f, %bb.g
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i10, label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9
  %i.r = call noundef i64 %i.q(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef null) #16, !inline_history !31 ; 0 uses
  br label %_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11

_ZN5folly8FunctionIFvPNS_11AsyncBaseOpEEED2Ev.exit11: ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9, %bb.h
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE"(ptr noundef %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #11 {
bb.a:
  %i.a = load i32, ptr %1, align 16, !tbaa !604
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !605
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !606
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !607
  %i.h = load ptr, ptr %0, align 16, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 16 dereferenceable(104) %0, i32 noundef %i.a, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %i.g), !call_target !612, !inline_history !602
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
.from.58:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 368) ; 13 uses
  store ptr @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.destroy, ptr %destroy.addr, align 8
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 %5, ptr %.spill.addr81, align 8
  %.spill.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 %4, ptr %.spill.addr78, align 8
  %.spill.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %3, ptr %.spill.addr75, align 8
  %.spill.addr72 = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 %2, ptr %.spill.addr72, align 4
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIiEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !389
  store ptr %i.a, ptr %0, align 8, !tbaa !293, !alias.scope !615
  %index.addr93 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i8 0, ptr %index.addr93, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !293
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !393
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !397  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.d, ptr %i.h, align 8, !tbaa !398
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.i, ptr %i.j, align 8, !tbaa !616
  store atomic ptr null, ptr %i.f monotonic, align 8
  store ptr null, ptr %i.e, align 8, !tbaa !397
  %i.k = load ptr, ptr %0, align 8, !tbaa !391
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !293
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !619, !nonnull !150, !align !620
  %i.p = tail call noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #16 ; 2 uses
  br i1 %i.p, label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !397
  store atomic ptr %i.d, ptr %i.f release, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !391
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #16
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.p
}

; Function Attrs: nounwind
declare void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #16
  %i.b = load i64, ptr %1, align 8, !noalias !625 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !625
  %i.c = load i32, ptr %i.a, align 8, !tbaa !401
  store i32 2, ptr %i.a, align 8, !tbaa !401
  %cond.i.i = icmp eq i32 %i.c, 1
  br i1 %cond.i.i, label %bb.b, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, !prof !402

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !404
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit.thread:     ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.f, align 8, !alias.scope !626
  store i32 1, ptr %i.a, align 8, !tbaa !389
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !404
  %i.g = icmp eq ptr %.pre, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.h, align 8, !alias.scope !626
  store i32 1, ptr %i.a, align 8, !tbaa !389
  br i1 %i.g, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN5folly17exception_wrapperD2Ev.exit.thread, %_ZN5folly17exception_wrapperD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

declare ptr @folly_coro_async_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIiEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.167") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #4 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds i8, ptr %1, i64 -72
  tail call void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIiEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind writable sret(%"class.std::optional.167") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIiEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.167") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::coro::detail::TaskPromiseBase::FinalAwaiter", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.b = load i8, ptr %i.a, align 1, !tbaa !407
  switch i8 %i.b, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread11 [
    i8 1, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !404
  %.not6.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not6.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %2) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #16 ; 0 uses
  %i.f = icmp eq ptr %i.d, @_ZTIN5folly18OperationCancelledE
  br i1 %i.f, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #16
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread11, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread: ; preds = %bb.d, %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.h = load i64, ptr %2, align 8, !noalias !631
  store i64 0, ptr %2, align 8, !noalias !631
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !401
  store i32 2, ptr %i.i, align 8, !tbaa !401
  %cond.i.i.i = icmp eq i32 %i.j, 1
  br i1 %cond.i.i.i, label %bb.e, label %_ZN5folly4coro8co_errorD2Ev.exit, !prof !402

bb.e:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !404
  %.not.i.i.i.i.i7 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i7, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #16
  br label %_ZN5folly4coro8co_errorD2Ev.exit

_ZN5folly4coro8co_errorD2Ev.exit:                 ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.h, ptr %i.m, align 8, !alias.scope !632
  store i32 1, ptr %i.i, align 8, !tbaa !389
  %i.n = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %1) #16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398
  store ptr %i.n, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !409
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.g

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread11: ; preds = %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !409
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread11, %_ZN5folly4coro8co_errorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional.167", align 8 ; 6 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.folly::exception_wrapper", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !293
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102, !noalias !639
  %i.h = or i64 %i.g, 2
end_hunk_0
begin_hunk_1_@_ZN5folly29RequestContextSaverScopeGuardD2Ev:bb.a
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !153

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #27
  unreachable
}

declare void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.185") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @folly_coro_async_free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.185", align 16 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !391    ; 2 uses
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.185") align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !415  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !293
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !417
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !418
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !call_target !423, !inline_history !33
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !call_target !424, !inline_history !33
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !291
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, !prof !153

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !415  ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !417
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !418
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #16, !call_target !423, !inline_history !34
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #16, !call_target !424, !inline_history !34
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !291
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !153

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
define void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
.from.58:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 368) ; 13 uses
  store ptr @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy, ptr %destroy.addr, align 8
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr81 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 %5, ptr %.spill.addr81, align 8
  %.spill.addr78 = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 %4, ptr %.spill.addr78, align 8
  %.spill.addr75 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %3, ptr %.spill.addr75, align 8
  %.spill.addr72 = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 %2, ptr %.spill.addr72, align 4
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIiEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !389
  store ptr %i.a, ptr %0, align 8, !tbaa !293, !alias.scope !669
  %index.addr93 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i8 0, ptr %index.addr93, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO8co_preadEiPvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE"(i32 noundef %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 {
bb.a:
  %.val = load ptr, ptr %1, align 16, !tbaa !671
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !672
  store i32 %0, ptr %.val2, align 4, !tbaa !117
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
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((16, 24)) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !417
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !418
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !423, !inline_history !35
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !424, !inline_history !35
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !291
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !117
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !153

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !426
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !124
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #16, !call_target !127, !inline_history !36
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
  %.reload.addr84 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %.reload.addr85 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload.addr86 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %index = load i8, ptr %index.addr, align 16
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend51, !prof !427

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload77 = load ptr, ptr %.reload.addr76, align 16, !tbaa !690
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload74 = load i32, ptr %.reload.addr73, align 4, !tbaa !690
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !690
  store ptr null, ptr %.reload.addr88, align 16, !tbaa !429
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr88, ptr %.reload.addr86, align 16, !tbaa !430
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr89, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload74, ptr %.reload.addr84, align 16, !tbaa !117
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload77, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !293
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr79, align 8, !tbaa !690
  store <2 x i64> %i.f, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !124
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO6pwriteEiPKvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE", ptr %i.d, align 16, !tbaa !156
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.e, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO9co_pwriteEiPKvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE", ptr %i.g, align 16, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.h, align 8, !tbaa !292
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFviEE10uninitCallEiRNS1_4DataE, ptr %i.b, align 16, !tbaa !288
  store ptr null, ptr %i.c, align 8, !tbaa !292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, i64 16, i1 false)
  invoke void @_ZN5folly13SimpleAsyncIO8submitOpENS_8FunctionIFvPNS_11AsyncBaseOpEEEENS1_IFviEEE(ptr noundef nonnull align 8 dereferenceable(296) %.reload, ptr noundef nonnull align 16 %.reload.addr84, ptr noundef nonnull align 16 %.reload.addr85)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !292  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i6.i, label %_ZN5folly8FunctionIFviEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef null) #16, !inline_history !673 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr84, ptr noundef null) #16, !inline_history !674 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !292  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef null) #16, !inline_history !673 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr84, ptr noundef null) #16, !inline_history !674 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.c, %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !292  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !407, !noalias !691
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !407, !noalias !691
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !102, !noalias !692
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.61 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !693 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit22

.from.61:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !695
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !695
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !695
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !386, !noalias !695
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !58, !noalias !695
  store ptr %i.z, ptr %.reload.addr84, align 16, !tbaa !293, !alias.scope !696
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i8 0, ptr %index.addr15.i.i.i.i, align 8, !noalias !695
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !102, !noalias !695
  store ptr %.reload.addr88, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !430, !alias.scope !697
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !432, !alias.scope !697
  %i.af = load atomic ptr, ptr %.reload.addr88 acquire, align 16
  %i.ag = icmp eq ptr %i.af, %.reload.addr88
  br i1 %i.ag, label %AfterCoroSuspend51, label %AfterCoroSave49

AfterCoroSave49:                                  ; preds = %.from.61
  store i8 1, ptr %index.addr, align 16
  %i.ah = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr84, ptr nonnull %0) #16
  br i1 %i.ah, label %CoroEnd, label %AfterCoroSuspend51

.body:                                            ; preds = %bb.f, %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !292 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i21, label %_ZN5folly8FunctionIFviEED2Ev.exit22, label %_ZN5folly8FunctionIFviEED2Ev.exit22.from.

_ZN5folly8FunctionIFviEED2Ev.exit22.from.:        ; preds = %.body
  %i.aj = tail call noundef i64 %i.ai(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit22

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49, %.from.61
  %i.ak = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i24, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread, label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend51
  store i64 0, ptr %.reload.addr84, align 16, !tbaa !293
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !37

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i25, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread unwind label %bb.l, !inline_history !37

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.k, %AfterCoroSuspend51
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.au = load i32, ptr %i.at, align 16, !tbaa !401
  store i32 2, ptr %i.at, align 16, !tbaa !401
  %cond.i.i.i = icmp eq i32 %i.au, 1
  br i1 %cond.i.i.i, label %bb.m, label %.thread36, !prof !402

bb.m:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !404
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %.thread36, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #16
  br label %.thread36

.thread36:                                        ; preds = %bb.n, %bb.m, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %.reload.addr89, align 8, !tbaa !117
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !117
  store i32 0, ptr %i.at, align 16, !tbaa !389
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  br label %bb.o

_ZN5folly8FunctionIFviEED2Ev.exit22:              ; preds = %.body, %_ZN5folly8FunctionIFviEED2Ev.exit22.from., %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.m, %_ZN5folly8FunctionIFviEED2Ev.exit22.from. ], [ %i.m, %.body ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92) #16
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.thread36, %_ZN5folly8FunctionIFviEED2Ev.exit22
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 16
  %i.ba = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr88, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92) #16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  musttail call void %i.bb(ptr nonnull %i.ba)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave49
  ret void

bb.p:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit22
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 16
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i8, ptr %index.addr, align 16
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !433

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pr = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i25, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28 unwind label %bb.b, !inline_history !37

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.a
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 16, !tbaa !389
  %cond.i.i = icmp eq i32 %i.g, 1
  br i1 %cond.i.i, label %bb.c, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, !prof !402

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !404
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #16
  br label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i

_ZN5folly6detail7TryBaseIiED2Ev.exit.i:           ; preds = %bb.d, %bb.c, %AfterCoroSuspend
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !435 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 8 acq_rel, align 8 ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.f, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.m, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.k) #16
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #16, !call_target !440, !inline_history !39
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.h, %bb.g, %bb.e, %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102  ; 2 uses
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.s, align 8, !tbaa !124
  %i.w = and i64 %i.t, 3
  %.not3.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i.i.i, label %bb.j, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #16, !call_target !127, !inline_history !40
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.i, %bb.j
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 368)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.resume(ptr noundef nonnull align 16 dereferenceable(368) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr84 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %.reload.addr85 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload.addr86 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 8 uses
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %index = load i8, ptr %index.addr, align 16
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend51, !prof !427

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr79 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr76 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload77 = load ptr, ptr %.reload.addr76, align 16, !tbaa !715
  %.reload.addr73 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload74 = load i32, ptr %.reload.addr73, align 4, !tbaa !715
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !715
  store ptr null, ptr %.reload.addr88, align 16, !tbaa !429
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr88, ptr %.reload.addr86, align 16, !tbaa !430
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr89, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload74, ptr %.reload.addr84, align 16, !tbaa !117
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload77, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !293
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr79, align 8, !tbaa !715
  store <2 x i64> %i.f, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !124
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO5preadEiPvmlNS_8FunctionIFviEEEE3$_0Lb1ELb0EvJPNS_11AsyncBaseOpEEEET2_DpT3_RNS1_4DataE", ptr %i.d, align 16, !tbaa !156
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.e, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO8co_preadEiPvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE", ptr %i.g, align 16, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.h, align 8, !tbaa !292
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFviEE10uninitCallEiRNS1_4DataE, ptr %i.b, align 16, !tbaa !288
  store ptr null, ptr %i.c, align 8, !tbaa !292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, i64 16, i1 false)
  invoke void @_ZN5folly13SimpleAsyncIO8submitOpENS_8FunctionIFvPNS_11AsyncBaseOpEEEENS1_IFviEEE(ptr noundef nonnull align 8 dereferenceable(296) %.reload, ptr noundef nonnull align 16 %.reload.addr84, ptr noundef nonnull align 16 %.reload.addr85)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !292  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i6.i, label %_ZN5folly8FunctionIFviEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef null) #16, !inline_history !698 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr84, ptr noundef null) #16, !inline_history !699 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !292  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr85, ptr noundef null) #16, !inline_history !698 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr84, ptr noundef null) #16, !inline_history !699 ; 0 uses
  br label %.body

bb.g:                                             ; preds = %bb.c, %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !292  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !407, !noalias !716
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !407, !noalias !716
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !102, !noalias !717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.61 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !718 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit22

.from.61:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !720
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !720
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !720
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !386, !noalias !720
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !58, !noalias !720
  store ptr %i.z, ptr %.reload.addr84, align 16, !tbaa !293, !alias.scope !721
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i8 0, ptr %index.addr15.i.i.i.i, align 8, !noalias !720
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !102, !noalias !720
  store ptr %.reload.addr88, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !430, !alias.scope !722
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !432, !alias.scope !722
  %i.af = load atomic ptr, ptr %.reload.addr88 acquire, align 16
  %i.ag = icmp eq ptr %i.af, %.reload.addr88
  br i1 %i.ag, label %AfterCoroSuspend51, label %AfterCoroSave49

AfterCoroSave49:                                  ; preds = %.from.61
  store i8 1, ptr %index.addr, align 16
  %i.ah = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIiEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr84, ptr nonnull %0) #16
  br i1 %i.ah, label %CoroEnd, label %AfterCoroSuspend51

.body:                                            ; preds = %bb.f, %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !292 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i21, label %_ZN5folly8FunctionIFviEED2Ev.exit22, label %_ZN5folly8FunctionIFviEED2Ev.exit22.from.

_ZN5folly8FunctionIFviEED2Ev.exit22.from.:        ; preds = %.body
  %i.aj = tail call noundef i64 %i.ai(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr86, ptr noundef null) #16, !inline_history !30 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit22

AfterCoroSuspend51:                               ; preds = %resume.entry, %AfterCoroSave49, %.from.61
  %i.ak = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i24, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread, label %bb.i

bb.i:                                             ; preds = %AfterCoroSuspend51
  store i64 0, ptr %.reload.addr84, align 16, !tbaa !293
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !37

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i25, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread unwind label %bb.l, !inline_history !37

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.k, %AfterCoroSuspend51
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.au = load i32, ptr %i.at, align 16, !tbaa !401
  store i32 2, ptr %i.at, align 16, !tbaa !401
  %cond.i.i.i = icmp eq i32 %i.au, 1
  br i1 %cond.i.i.i, label %bb.m, label %.thread36, !prof !402

bb.m:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !404
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %.thread36, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #16
  br label %.thread36

.thread36:                                        ; preds = %bb.n, %bb.m, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i32, ptr %.reload.addr89, align 8, !tbaa !117
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !117
  store i32 0, ptr %i.at, align 16, !tbaa !389
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  br label %bb.o

_ZN5folly8FunctionIFviEED2Ev.exit22:              ; preds = %.body, %_ZN5folly8FunctionIFviEED2Ev.exit22.from., %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZN5folly8FunctionIFviEED2Ev.exit22.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.m, %_ZN5folly8FunctionIFviEED2Ev.exit22.from. ], [ %i.m, %.body ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.1) #16 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92) #16
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.thread36, %_ZN5folly8FunctionIFviEED2Ev.exit22
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 16
  %i.ba = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIiEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr88, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr92) #16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  musttail call void %i.bb(ptr nonnull %i.ba)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave49
  ret void

bb.p:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit22
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i8 2, ptr %index.addr, align 16
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i8, ptr %index.addr, align 16
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !433

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr84 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pr = load ptr, ptr %.reload.addr84, align 16, !tbaa !391 ; 3 uses
  %.not.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i25, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28 unwind label %bb.b, !inline_history !37

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28: ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %bb.a
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr88) #16
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 16, !tbaa !389
  %cond.i.i = icmp eq i32 %i.g, 1
  br i1 %cond.i.i, label %bb.c, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, !prof !402

bb.c:                                             ; preds = %AfterCoroSuspend
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !404
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #16
  br label %_ZN5folly6detail7TryBaseIiED2Ev.exit.i

_ZN5folly6detail7TryBaseIiED2Ev.exit.i:           ; preds = %bb.d, %bb.c, %AfterCoroSuspend
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !435 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 8 acq_rel, align 8 ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.f, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.m, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.k) #16
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #16, !call_target !440, !inline_history !39
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.h, %bb.g, %bb.e, %_ZN5folly6detail7TryBaseIiED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102  ; 2 uses
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.s, align 8, !tbaa !124
  %i.w = and i64 %i.t, 3
  %.not3.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i.i.i, label %bb.j, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #16, !call_target !127, !inline_history !40
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.i, %bb.j
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 368)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIiEEiED2Ev.exit
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn }
attributes #30 = { cold }

!llvm.module.flags = !{!41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!52}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Executor", scope: !109, file: !103, line: 185, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8ExecutorE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ScopedEventBaseThread", scope: !109, file: !112, line: 46, size: 5504, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly21ScopedEventBaseThreadE")
!2 = distinct !{null, null}
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncBase", scope: !109, file: !119, line: 157, size: 1088, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly9AsyncBaseE")
!4 = distinct !{null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !56}
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncBaseOp", scope: !109, file: !119, line: 44, size: 896, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly11AsyncBaseOpE")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !161, file: !158, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !150, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!9 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !161, file: !158, line: 234, baseType: !178, size: 32, flags: DIFlagEnumClass, elements: !182, identifier: "_ZTSN5folly6detail8function2OpE")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conditional_<true>", scope: !160, file: !162, line: 835, size: 8, flags: DIFlagTypePassByValue, elements: !150, templateParams: !184, identifier: "_ZTSN5folly6detail12conditional_ILb1EEE")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !160, file: !162, line: 652, size: 8, flags: DIFlagTypePassByValue, elements: !150, templateParams: !193, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EEE")
!12 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !165, file: !199, line: 69, baseType: !200, size: 8, flags: DIFlagEnumClass, elements: !150, identifier: "_ZTSSt4byte")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type", scope: !11, file: !162, line: 653, size: 384, flags: DIFlagTypePassByValue, elements: !198, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EE4typeE")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !15, file: !158, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !204, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!15 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !161, file: !158, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTSN5folly6detail8function4DataE")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void (int)>", scope: !165, file: !177, line: 111, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFviEE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (int), false, void, int>", scope: !161, file: !158, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFviELb0EvJiEEE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void (int) const>", scope: !109, file: !158, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFviEEE")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void (int)>", scope: !161, file: !158, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !276, templateParams: !280, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFviEEE")
!20 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void (int)>", scope: !109, file: !158, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !268, templateParams: !280, identifier: "_ZTSN5folly8FunctionIFviEEE")
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null, null}
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !165, file: !177, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !161, file: !158, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !109, file: !158, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !161, file: !158, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !371, templateParams: !375, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !109, file: !158, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !363, templateParams: !375, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!30 = distinct !{null, null}
!31 = distinct !{null, null}
!32 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !165, file: !419, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!33 = distinct !{null, null, null, null, null, null}
!34 = distinct !{null, null, null}
!35 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null, null}
!36 = distinct !{ptr @_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev, null, null}
!37 = distinct !{null}
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CancellationState", scope: !160, file: !436, line: 33, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail17CancellationStateE")
!39 = distinct !{null, null, null, null, null, null}
!40 = distinct !{null, null, null, null}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 7, !"openmp", i32 51}
!44 = !{i32 8, !"PIC Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!47 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"omnipotent char", !48, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"__libc_errno", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"any pointer", !49, i64 0}
!54 = !{!"p1 _ZTSN5folly9AsyncBaseE", !53, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"vtable pointer", !48, i64 0}
!58 = !{!57, !57, i64 0}
end_hunk_1
