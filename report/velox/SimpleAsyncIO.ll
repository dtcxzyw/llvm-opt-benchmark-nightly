inline.NumInlined: 1040
inline.NumDeleted: 593
begin_hunk_0_@_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD0Ev:bb.a
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

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !144

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !634
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !98
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #16, !call_target !99, !inline_history !635
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h, %bb.i
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 72)
          to label %_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.170") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.170", align 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.a = getelementptr inbounds i8, ptr %1, i64 -56 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !603, !noalias !642 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !642
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !550, !noalias !642
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.170") align 8 %3, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !642, !inline_history !645
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !593, !range !139, !noalias !642, !noundef !140
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !642
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %3, align 16, !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !642
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

bb.d:                                             ; preds = %.thread.i.i.i, %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !415, !noalias !642
  %i.i = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %.sroa.0.0.copyload.i.i.i.i, i64 0
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi <2 x ptr> [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !415, !noalias !646
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !593, !alias.scope !646
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !621, !inline_history !647
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !628, !inline_history !647
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.188") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !648
  tail call void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.188", align 16 ; 4 uses
  %2 = alloca %"class.folly::RequestContextScopeGuard", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.188") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x ptr>, ptr %1, align 16, !tbaa !415
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !415
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = call noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #16
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !566  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415  ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #16
  br label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.g)
          to label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit unwind label %bb.g, !inline_history !650

_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit: ; preds = %bb.f, %bb.e
  call void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.188", align 8 ; 2 uses
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.188") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !618
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !620
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !621, !inline_history !629
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !628, !inline_history !629
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !144

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !617  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !618
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !620
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16, !call_target !621, !inline_history !629
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16, !call_target !628, !inline_history !629
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !144

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

declare void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.188") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @folly_coro_async_free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.188", align 16 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !558    ; 2 uses
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.188") align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !617  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !415
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !618
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !620
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !call_target !621, !inline_history !627
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !call_target !628, !inline_history !627
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
  br i1 %i.u, label %bb.h, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, !prof !144

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !617  ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !618
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !620
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #16, !call_target !621, !inline_history !629
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #16, !call_target !628, !inline_history !629
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !413
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
define void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml(ptr dead_on_unwind writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
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
define internal void @"_ZN5folly6detail8function5call_IZNS_13SimpleAsyncIO8co_preadEiPvmlE3$_0Lb1ELb0EvJiEEET2_DpT3_RNS1_4DataE"(i32 noundef %0, ptr noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 {
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
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
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
define internal fastcc void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.resume(ptr noundef nonnull align 16 dereferenceable(368) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend58

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload81 = load ptr, ptr %.reload.addr80, align 16, !tbaa !657
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload78 = load i32, ptr %.reload.addr77, align 4, !tbaa !657
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !657
  store ptr null, ptr %.reload.addr92, align 16, !tbaa !659
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr92, ptr %.reload.addr90, align 16, !tbaa !661
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr93, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !662
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload78, ptr %.reload.addr88, align 16, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload81, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !415
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr83, align 8, !tbaa !657
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
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !663 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !664 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !663 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !664 ; 0 uses
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
  %i.u = load i8, ptr %i.t, align 1, !tbaa !584, !noalias !665
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !584, !noalias !665
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66, !noalias !668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.68 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !671 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

.from.68:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !677
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !677
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !677
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !550, !noalias !677
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !16, !noalias !677
  store ptr %i.z, ptr %.reload.addr88, align 16, !tbaa !415, !alias.scope !678
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !677
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !66, !noalias !677
  store ptr %.reload.addr92, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !661, !alias.scope !681
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !686, !alias.scope !681
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
  invoke fastcc void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !687

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
  invoke fastcc void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32 unwind label %bb.l, !inline_history !687

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
  musttail call fastcc void %i.bb(ptr nonnull %i.ba)
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
define internal fastcc void @_ZN5folly13SimpleAsyncIO9co_pwriteEiPKvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %.critedge21.critedge, label %AfterCoroSuspend

.critedge21.critedge:                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.b, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37, label %bb.a

bb.a:                                             ; preds = %.critedge21.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke fastcc void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37 unwind label %bb.b, !inline_history !687

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
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !688 ; 5 uses
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
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #16, !call_target !690, !inline_history !696
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
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16, !call_target !99, !inline_history !697
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
define internal fastcc void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.resume(ptr noundef nonnull align 16 dereferenceable(368) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.a, label %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i, label %AfterCoroSuspend58

_ZN5folly8FunctionIFviEEC2EOS2_.exit.i:           ; preds = %resume.entry
  %.reload.addr83 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload81 = load ptr, ptr %.reload.addr80, align 16, !tbaa !698
  %.reload.addr77 = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.reload78 = load i32, ptr %.reload.addr77, align 4, !tbaa !698
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !698
  store ptr null, ptr %.reload.addr92, align 16, !tbaa !659
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr %.reload.addr92, ptr %.reload.addr90, align 16, !tbaa !661
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %.reload.addr93, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !662
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %.reload78, ptr %.reload.addr88, align 16, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %.reload81, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !415
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load <2 x i64>, ptr %.reload.addr83, align 8, !tbaa !698
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
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !700 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit.i

_ZN5folly8FunctionIFviEED2Ev.exit.i:              ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit.i
  %i.l = tail call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !701 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %_ZN5folly8FunctionIFviEEC2EOS2_.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !414  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZN5folly8FunctionIFviEED2Ev.exit9.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 %i.n(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr89, ptr noundef null) #16, !inline_history !700 ; 0 uses
  br label %_ZN5folly8FunctionIFviEED2Ev.exit9.i

_ZN5folly8FunctionIFviEED2Ev.exit9.i:             ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i10.i, label %.body, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFviEED2Ev.exit9.i
  %i.q = tail call noundef i64 %i.p(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %.reload.addr88, ptr noundef null) #16, !inline_history !701 ; 0 uses
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
  %i.u = load i8, ptr %i.t, align 1, !tbaa !584, !noalias !702
  %i.v = icmp eq i8 %i.u, 2
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr %i.t, align 1, !tbaa !584, !noalias !702
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66, !noalias !705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.z = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.68 unwind label %_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !708 ; 8 uses

_ZN5folly8FunctionIFviEED2Ev.exit26.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly8FunctionIFviEED2Ev.exit26

.from.68:                                         ; preds = %.from..i.i.i.i
  %i.ab = or i64 %i.y, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.z, align 8, !noalias !714
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !714
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false), !noalias !714
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ae, align 8, !tbaa !550, !noalias !714
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !16, !noalias !714
  store ptr %i.z, ptr %.reload.addr88, align 16, !tbaa !415, !alias.scope !715
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !714
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !66, !noalias !714
  store ptr %.reload.addr92, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !661, !alias.scope !718
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !686, !alias.scope !718
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
  invoke fastcc void %i.am(ptr nonnull %i.ak)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.j, !inline_history !687

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
  invoke fastcc void %i.aq(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit32 unwind label %bb.l, !inline_history !687

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
  musttail call fastcc void %i.bb(ptr nonnull %i.ba)
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
define internal fastcc void @_ZN5folly13SimpleAsyncIO8co_preadEiPvml.destroy(ptr noundef nonnull align 16 dereferenceable(368) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %index = load i2, ptr %index.addr, align 16
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %.critedge21.critedge, label %AfterCoroSuspend

.critedge21.critedge:                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %.reload.addr88, align 16, !tbaa !558 ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.b, null
  br i1 %.not.i.i33, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37, label %bb.a

bb.a:                                             ; preds = %.critedge21.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke fastcc void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit37 unwind label %bb.b, !inline_history !687

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
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !688 ; 5 uses
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
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #16, !call_target !690, !inline_history !696
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
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #16, !call_target !99, !inline_history !697
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
end_hunk_0
