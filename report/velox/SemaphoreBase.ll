inline.NumInlined: 791
inline.NumDeleted: 470
begin_hunk_0_@_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD0Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !31

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !inline_history !304
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !116
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #5, !call_target !119, !inline_history !305
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h, %bb.i
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 72)
          to label %_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional", align 16    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.a = getelementptr inbounds i8, ptr %1, i64 -56 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127, !noalias !312 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5, !noalias !312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !noalias !312
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !312, !inline_history !315
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !105, !range !90, !noalias !312, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !312
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %3, align 16, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !312
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

bb.d:                                             ; preds = %.thread.i.i.i, %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !54, !noalias !312
  %i.i = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %.sroa.0.0.copyload.i.i.i.i, i64 0
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi <2 x ptr> [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !54, !noalias !316
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !105, !alias.scope !316
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #5, !call_target !154, !inline_history !317
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #5, !call_target !162, !inline_history !317
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #12 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !318
  tail call void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #25
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.folly::RequestContextScopeGuard", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x ptr>, ptr %1, align 16, !tbaa !54
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = call noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #5
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #5
  br label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.g)
          to label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit unwind label %bb.g, !inline_history !320

_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit: ; preds = %bb.f, %bb.e
  call void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !154, !inline_history !164
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !162, !inline_history !164
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !150  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !153
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #5, !call_target !154, !inline_history !164
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #5, !call_target !162, !inline_history !164
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !31

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #5
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable
}

declare void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @folly_coro_async_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6fibers6detail20BatonAwaitableWaiter4postEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call fastcc void %i.c(ptr nonnull %i.b), !inline_history !322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6fibers5Baton6WaiterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6fibers6detail20BatonAwaitableWaiterD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !150  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !153
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #5, !call_target !154, !inline_history !161
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #5, !call_target !162, !inline_history !161
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, !prof !31

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #5
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !150  ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !153
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #5, !call_target !154, !inline_history !164
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #5, !call_target !162, !inline_history !164
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !31

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #5
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #20

; Function Attrs: nounwind
declare void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN5folly6fibers5Baton9setWaiterERNS1_6WaiterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly18OperationCancelledD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly18OperationCancelled4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @.str.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_18OperationCancelledEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %0, align 8, !tbaa !117, !alias.scope !323
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_18OperationCancelledEEEvPv(ptr noundef %0) #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers13SemaphoreBase18future_wait_commonEl(ptr dead_on_unwind noalias writable sret(%"class.folly::SemiFuture") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.31", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_:bb.a
; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_23PromiseAlreadySatisfiedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 2 uses
  tail call void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly23PromiseAlreadySatisfiedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly23PromiseAlreadySatisfiedE, i64 16), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly23PromiseAlreadySatisfiedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly23PromiseAlreadySatisfied4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @.str.14
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyRetrievedEJEEEvDpT0_() local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureAlreadyRetrieved", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.10)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyRetrievedE, i64 16), ptr %0, align 8, !tbaa !117
  invoke void @_ZN5folly15throw_exceptionINS_22FutureAlreadyRetrievedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #5
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_22FutureAlreadyRetrievedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 2 uses
  tail call void @_ZN5folly22FutureAlreadyRetrievedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly22FutureAlreadyRetrievedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyRetrievedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #5
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyRetrievedE, i64 16), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyRetrievedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly22FutureAlreadyRetrieved4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @.str.15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i8, ptr %i.a acquire, align 1
  %i.c = and i8 %i.b, 108
  %.not6 = icmp eq i8 %i.c, 0
  br i1 %.not6, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %1, ptr noundef nonnull align 16 dereferenceable(136) %0)
  %i.d = load ptr, ptr %1, align 8, !tbaa !441
  %.not4 = icmp ne ptr %i.d, null
  %i.e = zext i1 %.not4 to i32
  call void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef %i.e) #5
  %i.f = load ptr, ptr %1, align 8, !tbaa !441    ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !441    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit
  ret void
}

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.48") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #6

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !441    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable
}

declare void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK5folly6fibers13SemaphoreBase11getCapacityEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !443
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZNK5folly6fibers13SemaphoreBase18getAvailableTokensEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !154, !inline_history !303
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !call_target !162, !inline_history !303
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !163
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
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !31

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5, !inline_history !304
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !116
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #5, !call_target !119, !inline_history !305
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.resume(ptr noundef nonnull align 16 dereferenceable(320) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %2 = alloca %class.anon.30, align 8             ; 4 uses
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %.reload.addr132 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %.reload.addr133 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %.reload.addr134 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 313 ; 3 uses
  %.reload.addr141 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %index = load i2, ptr %index.addr, align 8
  switch i2 %index, label %unreachable [
    i2 0, label %.from..critedge
    i2 1, label %AfterCoroSuspend83
    i2 -2, label %CoroEnd
  ]

.from..critedge:                                  ; preds = %resume.entry
  %.reload.addr118 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.reload119 = load ptr, ptr %.reload.addr118, align 8, !tbaa !456 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.reload119, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %.reload119, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.reload119, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.reload119, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.reload.addr127 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  br label %bb.a

bb.a:                                             ; preds = %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %.from..critedge
  %.054 = phi i64 [ %i.c, %.from..critedge ], [ %i.ct, %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ] ; 2 uses
  %.reload128 = load i64, ptr %.reload.addr127, align 16, !tbaa !456 ; 2 uses
  %i.j = icmp slt i64 %.054, %.reload128
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.ac
  %.reload124 = load i64, ptr %.reload.addr127, align 16, !tbaa !456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.reload.addr132, i8 0, i64 24, i1 false)
  store i64 %.reload124, ptr %i.d, align 8, !tbaa !20
  %i.k = load atomic i32, ptr %i.e acquire, align 8, !noalias !458 ; 4 uses
  store i32 %i.k, ptr %.reload.addr131, align 16, !tbaa !7, !noalias !458
  %i.l = and i32 %i.k, -1312
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge.i.i.i.i.i.i.i, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.n = or disjoint i32 %i.k, 128
  %i.o = cmpxchg ptr %i.e, i32 %i.k, i32 %i.n seq_cst seq_cst, align 4, !noalias !458 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.noexc, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !15

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.q = extractvalue { i32, i1 } %i.o, 0
  store i32 %i.q, ptr %.reload.addr131, align 16, !noalias !458
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.r = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr131, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr133)
          to label %.noexc unwind label %.from.111 ; 0 uses

.noexc:                                           ; preds = %.critedge.i.i.i.i.i.i.i, %bb.b
  %.reload126 = load i64, ptr %.reload.addr127, align 16, !tbaa !456
  %i.s = load atomic i64, ptr %i.b acquire, align 8
  %.not.not.i = icmp slt i64 %i.s, %.reload126    ; 2 uses
  br i1 %.not.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  store ptr %i.t, ptr %i.i, align 16, !tbaa !26
  store ptr %i.f, ptr %i.g, align 8, !tbaa !16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  store ptr %i.g, ptr %i.t, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.u = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !7
  %i.w = and i32 %i.u, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not.not.i, label %bb.h, label %bb.ac

.from.111:                                        ; preds = %.critedge.i.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

bb.h:                                             ; preds = %bb.g
  %.reload = load ptr, ptr %.reload.addr118, align 8, !tbaa !456
  store i8 0, ptr %.reload.addr138, align 1, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload, ptr %i.ac, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.reload.addr132, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.reload.addr138, ptr %.sroa.5.0..sroa_idx, align 16
  store ptr @"_ZN5folly6detail8function5call_IZNS_6fibers13SemaphoreBase14co_wait_commonElE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.ad, align 16, !tbaa !167
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm32EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ae, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.af, align 16, !tbaa !461
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.ag, align 8, !tbaa !462
  %i.ah = load ptr, ptr %i.aa, align 16, !tbaa !463 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131, i1 noundef zeroext true) #5
  br i1 %i.ai, label %bb.j, label %.from..i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.aa, align 16, !tbaa !463
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !75
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.j, %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !96, !noalias !464
  %i.am = icmp eq i8 %i.al, 2
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !96, !noalias !464
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !107, !noalias !467
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.aq = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.100 unwind label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !470 ; 8 uses

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.110

.from.100:                                        ; preds = %.from..i.i.i.i
  %i.as = or i64 %i.ap, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.aq, align 8, !noalias !476
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !476
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.au, i8 0, i64 56, i1 false), !noalias !476
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.av, align 8, !tbaa !49, !noalias !476
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !117, !noalias !476
  store ptr %i.aq, ptr %.reload.addr133, align 16, !tbaa !54, !alias.scope !477
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !476
  store i64 %i.as, ptr %i.at, align 8, !tbaa !107, !noalias !476
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly6fibers6detail20BatonAwaitableWaiterE, i64 16), ptr %i.aw, align 8, !tbaa !117, !alias.scope !480
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ax, align 16, !tbaa !321, !alias.scope !480
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.reload.addr132, ptr %i.ay, align 8, !tbaa !485, !alias.scope !480
  %i.az = load atomic i64, ptr %.reload.addr132 seq_cst, align 16
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %AfterCoroSuspend83, label %AfterCoroSave81

AfterCoroSave81:                                  ; preds = %.from.100
  store i2 1, ptr %index.addr, align 8
  invoke void @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEvNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr133, ptr nonnull %0)
          to label %CoroEnd unwind label %bb.k

bb.k:                                             ; preds = %AfterCoroSave81
  %i.bb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i31, label %.from.110, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke fastcc void %i.be(ptr nonnull %i.bc)
          to label %.from.110 unwind label %bb.m, !inline_history !486

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable

AfterCoroSuspend83:                               ; preds = %resume.entry, %.from.100
  %i.bh = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i32, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %AfterCoroSuspend83
  store i64 0, ptr %.reload.addr133, align 16, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke fastcc void %i.bj(ptr nonnull %i.bh)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit unwind label %bb.o, !inline_history !486

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %bb.n
  %.pr = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke fastcc void %i.bn(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.q, !inline_history !486

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.p, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit, %AfterCoroSuspend83
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !75 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = call noundef i64 %i.bt(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.bu, ptr noundef null) #5, !inline_history !487 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bw = load i8, ptr %.reload.addr138, align 1, !tbaa !141, !range !90, !noundef !73
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %i.bx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5, !noalias !488
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %1, align 8, !tbaa !117, !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !488
  store ptr %1, ptr %2, align 8, !noalias !491
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr134, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !488
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5, !noalias !488
  %i.bz = load i8, ptr %i.by, align 16, !tbaa !51, !range !90, !noundef !73
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.ce = load i64, ptr %.reload.addr134, align 16, !noalias !494
  store i64 %i.ce, ptr %i.cd, align 8, !alias.scope !494
  store i64 0, ptr %.reload.addr134, align 16, !noalias !494
  store i8 0, ptr %i.by, align 16, !tbaa !51
  store i2 -2, ptr %index.addr, align 8
  %i.cf = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr139, ptr nonnull %0) #5 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  musttail call fastcc void %i.cg(ptr nonnull %i.cf)
  ret void

bb.z:                                             ; preds = %bb.u
  %i.ch = load i8, ptr %i.by, align 16, !tbaa !51, !range !90, !noundef !73
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.thread64, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !91
  %.not.i.i.i.i42 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i42, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.ab, %bb.aa
  store i8 1, ptr %i.by, align 16, !tbaa !51
  br label %.thread64

.from.110:                                        ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %bb.k, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ar, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit38.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %i.bb, %bb.l ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr131) #5
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  %.reload122 = load i64, ptr %.reload.addr127, align 16, !tbaa !456
  %i.cl = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %.reload122
  br i1 %i.cm, label %.lr.ph, label %._crit_edge.from., !llvm.loop !497

._crit_edge.from.:                                ; preds = %bb.ac
  %.reload130.pre = load i64, ptr %.reload.addr127, align 16, !tbaa !456
  br label %._crit_edge, !llvm.loop !497

bb.ad:                                            ; preds = %.from.110, %.from.111
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.from.110 ], [ %i.z, %.from.111 ]
  %.4 = extractvalue { ptr, i32 } %.pn27.pn.pn, 0
  %i.cn = call ptr @__cxa_begin_catch(ptr %.4) #5 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr141) #5
  invoke void @__cxa_end_catch()
          to label %.thread64 unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit49

.thread64:                                        ; preds = %bb.z, %_ZN5folly17exception_wrapperD2Ev.exit.i.i, %bb.ad, %.thread63, %_ZN5folly17exception_wrapperD2Ev.exit.i.i44
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 315
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 8
  %i.co = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr140, ptr nonnull %0) #5 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  musttail call fastcc void %i.cp(ptr nonnull %i.co)
  ret void

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.from.
  %.reload130 = phi i64 [ %.reload130.pre, %._crit_edge.from. ], [ %.reload128, %bb.a ]
  %.155.lcssa = phi i64 [ %i.cl, %._crit_edge.from. ], [ %.054, %bb.a ] ; 2 uses
  %i.cq = sub nsw i64 %.155.lcssa, %.reload130
  %i.cr = cmpxchg weak ptr %i.b, i64 %.155.lcssa, i64 %i.cq release acquire, align 8 ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.cs, label %.thread63, label %.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

.from._ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %._crit_edge
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  br label %bb.a

.thread63:                                        ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 16, !tbaa !51, !range !90, !noundef !73
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.thread64, label %bb.ae

bb.ae:                                            ; preds = %.thread63
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !91
  %.not.i.i.i.i43 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i43, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #5
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i44

_ZN5folly17exception_wrapperD2Ev.exit.i.i44:      ; preds = %bb.af, %bb.ae
  store i8 1, ptr %i.cu, align 16, !tbaa !51
  br label %.thread64

CoroEnd:                                          ; preds = %AfterCoroSave81, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit49: ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -1, ptr %index.addr, align 8
  resume { ptr, i32 } %i.cz

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6fibers13SemaphoreBase14co_wait_commonEl.destroy(ptr noundef nonnull align 16 dereferenceable(320) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr131 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr134 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %index = load i2, ptr %index.addr, align 8
  switch i2 %index, label %unreachable [
    i2 0, label %AfterCoroSuspend
    i2 1, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
    i2 -2, label %AfterCoroSuspend87
    i2 -1, label %AfterCoroSuspend
  ]

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr133 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pr = load ptr, ptr %.reload.addr133, align 16, !tbaa !58 ; 3 uses
  %.not.i.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  invoke fastcc void %i.b(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit unwind label %bb.b, !inline_history !486

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS_6fibers5BatonEE12await_resumeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !75  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr131) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS_6fibers5BatonEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i35, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = tail call noundef i64 %i.h(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef null) #5, !inline_history !487 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend87:                               ; preds = %resume.entry
  %i.k = load ptr, ptr %.reload.addr134, align 16, !tbaa !91
  %.not.i.i.i40 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i40, label %AfterCoroSuspend, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend87
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr134) #5
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %bb.d, %bb.e, %resume.entry, %AfterCoroSuspend87, %bb.f, %resume.entry
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !51, !range !90, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91
  %.not.i.i.i.i47 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i47, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #5
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !463 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 8 acq_rel, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = and i64 %i.t, 4
  %.not.i.i.i.i.i.i48 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.r) #5
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #5, !call_target !498, !inline_history !504
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !116
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #5, !call_target !119, !inline_history !505
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 320)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #25
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold noreturn }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }

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
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!13 = distinct !{!13, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !18, i64 0, !18, i64 8}
!18 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!21, !25, i64 24}
!21 = !{!"_ZTSN5folly6fibers13SemaphoreBase6WaiterE", !22, i64 0, !23, i64 8, !25, i64 24}
!22 = !{!"_ZTSN5folly6fibers5BatonE", !9, i64 0}
!23 = !{!"_ZTSN5boost9intrusive16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEE", !24, i64 0}
!24 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE1ELNS0_14base_hook_typeE0EEE", !17, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!17, !18, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i64 12677058}
!30 = distinct !{!30, !28}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!39 = distinct !{!39, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv: argument 0"}
!42 = distinct !{!42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedIN5boost9intrusive4listINS_6fibers13SemaphoreBase6WaiterEJNS3_11member_hookIS7_NS3_16list_member_hookIJNS3_9link_modeILNS3_14link_mode_typeE1EEEEEEXadL_ZNS7_5hook_EEEEENS3_18constant_time_sizeILb0EEEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv"}
end_hunk_1
