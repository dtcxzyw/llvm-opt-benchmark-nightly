inline.NumInlined: 1842
inline.NumDeleted: 726
begin_hunk_0_@_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD0Ev:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !2263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !2265
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2266, !inline_history !2403
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2273, !inline_history !2403
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !2274

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !2404
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1965 ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !2028
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #31, !call_target !2029, !inline_history !2405
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h, %bb.i
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 72)
          to label %_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.124") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.124", align 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  %i.a = getelementptr inbounds i8, ptr %1, i64 -56 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2081, !noalias !2412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2412
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !2412
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.124") align 8 %3, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !2412, !inline_history !2415
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !2071, !range !2003, !noalias !2412, !noundef !166
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2412
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %3, align 16, !noalias !2416
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2412
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

bb.d:                                             ; preds = %.thread.i.i.i, %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !37, !noalias !2412
  %i.i = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %.sroa.0.0.copyload.i.i.i.i, i64 0
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi <2 x ptr> [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !37, !noalias !2416
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !2071, !alias.scope !2416
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !call_target !2266, !inline_history !2417
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !call_target !2273, !inline_history !2417
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !2418
  tail call void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.folly::RequestContextScopeGuard", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x ptr>, ptr %1, align 16, !tbaa !37
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = call noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #31
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !2070 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31
  br label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.g)
          to label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit unwind label %bb.g, !inline_history !2420

_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit: ; preds = %bb.f, %bb.e
  call void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #29
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2262 ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !2263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !2265
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2266, !inline_history !2275
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2273, !inline_history !2275
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !2274

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2262 ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !2263
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !2265
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !call_target !2266, !inline_history !2275
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !call_target !2273, !inline_history !2275
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !2274

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #29
  unreachable
}

declare void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @folly_coro_async_free(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2207   ; 2 uses
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !2262 ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !37
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !2263
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !2265
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !call_target !2266, !inline_history !2272
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !call_target !2273, !inline_history !2272
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE:bb.a
  br label %.critedge8

.critedge8:                                       ; preds = %bb.c, %bb.d, %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.l, align 8, !tbaa !3366
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge8
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13runtime_erroraSERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2) #31 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8
  br label %_ZNSt8optionalIN5folly20AsyncSocketExceptionEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

bb.i:                                             ; preds = %.critedge8
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %i.m, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !3362
  br label %_ZNSt8optionalIN5folly20AsyncSocketExceptionEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit

_ZNSt8optionalIN5folly20AsyncSocketExceptionEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.s, %bb.h ], [ %i.u, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5folly4coro5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #31
  ret void

bb.j:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f, %bb.e, %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #29
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallbackD1Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !3362
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31, !inline_history !3365
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit

_ZN5folly4coro13WriteCallbackD2Ev.exit:           ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i, %bb.c
  %i.h = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #31, !inline_history !3365
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallbackD0Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !3362
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #31, !inline_history !3373
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2051
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro13WriteCallbackD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31, !inline_history !3374
  br label %_ZN5folly4coro13WriteCallbackD0Ev.exit

_ZN5folly4coro13WriteCallbackD0Ev.exit:           ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i.i, %bb.c
  %i.h = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #31, !inline_history !3374
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 80) #30, !inline_history !3375
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly11AsyncWriter13WriteCallback13writeStartingEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallback12writeSuccessEv(ptr noundef %0) unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly4coro13WriteCallback12writeSuccessEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZThn32_N5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly4coro13WriteCallback8writeErrEmRKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5folly11AsyncWriter13WriteCallback23getReleaseIOBufCallbackEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13runtime_erroraSERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1982   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !37
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2209
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !2210
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2080 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !2080
  store ptr %i.g, ptr %i.d, align 8, !tbaa !2070
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !2080
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !37
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_20AsyncSocketExceptionEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3376)
  %i.a = load ptr, ptr %1, align 8, !tbaa !3379, !noalias !3376, !nonnull !166, !align !2094 ; 2 uses
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !11, !alias.scope !3376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !3376
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

declare void @_ZNK5folly5IOBuf6getIovEv(ptr dead_on_unwind writable sret(%"class.folly::fbvector") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #27

declare void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(22)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2262 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !2263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !2265
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2266, !inline_history !2403
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !2273, !inline_history !2403
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !2274

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !2404
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1965 ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !2028
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #31, !call_target !2029, !inline_history !2405
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
define internal fastcc void @_ZN5folly4coro21TransportCallbackBase4waitEv.resume(ptr noundef nonnull align 16 dereferenceable(304) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %3 = alloca %class.anon.162, align 8            ; 4 uses
  %4 = alloca %"struct.folly::OperationCancelled", align 8 ; 5 uses
  %5 = alloca %class.anon.162, align 8            ; 4 uses
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.reload.addr154 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %index = load i3, ptr %index.addr, align 16
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge27
    i3 1, label %CoroEnd
    i3 2, label %.critedge29
    i3 3, label %CoroEnd
  ]

.critedge27:                                      ; preds = %resume.entry
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.reload.addr155, align 16, !tbaa !3381
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1971 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit: ; preds = %.critedge27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 8 monotonic, align 8, !noalias !3382 ; 0 uses
  store ptr %i.b, ptr %.reload.addr155, align 16, !tbaa !1971
  %i.e = load atomic i64, ptr %i.c acquire, align 8
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.a, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.pre = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971
  br label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread

bb.a:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit
  %.reload.addr151 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload152 = load ptr, ptr %.reload.addr151, align 8, !tbaa !3385 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load ptr, ptr %.reload152, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %.reload152) #31, !call_target !3387
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !5342
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %2, align 8, !tbaa !11, !noalias !5342
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !5342
  store ptr %2, ptr %3, align 8, !noalias !5345
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr156, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !5342
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !5342
  %i.k = load i32, ptr %i.g, align 16, !tbaa !2229
  store i32 2, ptr %i.g, align 16, !tbaa !2229
  %cond.i.i.i = icmp eq i32 %i.k, 1
  br i1 %cond.i.i.i, label %bb.b, label %bb.d, !prof !2230

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2051
  %.not.i.i.i.i.i39 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5348)
  %i.o = load i64, ptr %.reload.addr156, align 8, !noalias !5348
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !5348
  store i64 0, ptr %.reload.addr156, align 8, !noalias !5348
  store i32 1, ptr %i.g, align 16, !tbaa !44
  store i3 1, ptr %index.addr, align 16
  %i.p = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr154, ptr nonnull %0) #31 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  musttail call fastcc void %i.q(ptr nonnull %i.p)
  ret void

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread: ; preds = %.critedge27, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge
  %i.r = phi ptr [ %.pre, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread.from._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit._ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread_crit_edge ], [ null, %.critedge27 ] ; 3 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !3385
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.reload, ptr %i.t, align 16, !tbaa !5351
  store ptr @_ZN5folly6detail8function5call_IZNS_4coro21TransportCallbackBase4waitEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.u, align 16, !tbaa !2278
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.v, align 8, !tbaa !2224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.w, align 16, !tbaa !5352
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.x, align 8, !tbaa !5353
  %.not.i.i43 = icmp eq ptr %i.r, null
  br i1 %.not.i.i43, label %.from..i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %i.y = tail call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153, i1 noundef zeroext true) #31
  br i1 %i.y, label %bb.f, label %.from..i.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %i.s, align 16, !tbaa !2215
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.f, %bb.e, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit.thread
  %.reload148 = load ptr, ptr %.reload.addr, align 8, !tbaa !3385
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1962, !noalias !5354
  %i.ab = icmp eq i8 %i.aa, 2
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !1962, !noalias !5354
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1965, !noalias !5357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5363)
  %i.af = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.130 unwind label %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !5360 ; 8 uses

.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.from.130:                                        ; preds = %.from..i.i.i.i
  %i.ah = or i64 %i.ae, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.reload148, i64 8 ; 3 uses
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.af, align 8, !noalias !5366
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !5366
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i8 0, i64 56, i1 false), !noalias !5366
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.al, align 8, !tbaa !32, !noalias !5366
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !11, !noalias !5366
  store ptr %i.af, ptr %.reload.addr154, align 16, !tbaa !37, !alias.scope !5367
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !5366
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !1965, !noalias !5366
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !5370, !alias.scope !5371
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.an, align 16, !tbaa !5376, !alias.scope !5371
  %i.ao = load atomic ptr, ptr %i.ai acquire, align 8
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %.critedge29, label %AfterCoroSave114

AfterCoroSave114:                                 ; preds = %.from.130
  store i3 2, ptr %index.addr, align 16
  %i.aq = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseINS_4UnitEEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr154, ptr nonnull %0) #31
  br i1 %i.aq, label %CoroEnd, label %.critedge29

.critedge29:                                      ; preds = %resume.entry, %AfterCoroSave114, %.from.130
  %i.ar = load ptr, ptr %.reload.addr154, align 16, !tbaa !2207 ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i45, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49, label %bb.g

bb.g:                                             ; preds = %.critedge29
  store i64 0, ptr %.reload.addr154, align 16, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  invoke fastcc void %i.at(ptr nonnull %i.ar)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.h, !inline_history !5377

bb.h:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %.reload.addr154, align 16, !tbaa !2207 ; 3 uses
  %.not.i.i46 = icmp eq ptr %.pr, null
  br i1 %.not.i.i46, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke fastcc void %i.ax(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49 unwind label %bb.j, !inline_history !5377

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49: ; preds = %bb.i, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %.critedge29
  %i.ba = load ptr, ptr @_ZZN5folly4coro21TransportCallbackBase4waitEvE8vlocal__, align 8, !tbaa !2252 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49
  %i.bc = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro21TransportCallbackBase4waitEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.14, i32 noundef 5)
          to label %bb.m unwind label %.from.138

bb.l:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit49
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.be = icmp sgt i32 %i.bd, 4
  br i1 %i.be, label %bb.n, label %.critedge32

bb.m:                                             ; preds = %bb.k
  br i1 %i.bc, label %bb.n, label %.critedge32

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.14, i32 noundef 57)
          to label %bb.o unwind label %.from.132

bb.o:                                             ; preds = %bb.n
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.p unwind label %.from.134

bb.p:                                             ; preds = %bb.o
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.15, i64 noundef 17)
          to label %.critedge31 unwind label %.from.134 ; 0 uses

.critedge31:                                      ; preds = %bb.p
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge31, %bb.m, %bb.l
  %i.bh = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i55, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56.thread, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56: ; preds = %.critedge32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %bb.q, label %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56.thread

bb.q:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56
  %.reload.addr149 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.reload150 = load ptr, ptr %.reload.addr149, align 8, !tbaa !3385 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bm = load ptr, ptr %.reload150, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.reload150) #31, !call_target !3387
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !5378
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18OperationCancelledE, i64 16), ptr %4, align 8, !tbaa !11, !noalias !5378
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !5378
  store ptr %4, ptr %5, align 8, !noalias !5381
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr157, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18OperationCancelledEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !5378
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !5378
  %i.bp = load i32, ptr %i.bl, align 16, !tbaa !2229
  store i32 2, ptr %i.bl, align 16, !tbaa !2229
  %cond.i.i.i57 = icmp eq i32 %i.bp, 1
  br i1 %cond.i.i.i57, label %bb.r, label %bb.t, !prof !2230

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2051
  %.not.i.i.i.i.i58 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5384)
  %i.bt = load i64, ptr %.reload.addr157, align 16, !noalias !5384
  store i64 %i.bt, ptr %i.bs, align 8, !alias.scope !5384
  store i64 0, ptr %.reload.addr157, align 16, !noalias !5384
  store i32 1, ptr %i.bl, align 16, !tbaa !44
  store i3 3, ptr %index.addr, align 16
  %i.bu = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr160, ptr nonnull %0) #31 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  musttail call fastcc void %i.bv(ptr nonnull %i.bu)
  ret void

.from.138:                                        ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ad

.from.132:                                        ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.137

.from.134:                                        ; preds = %bb.o, %bb.p
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  br label %.from.137

.from.137:                                        ; preds = %.from.132, %.from.134
  %.pn20 = phi { ptr, i32 } [ %i.by, %.from.134 ], [ %i.bx, %.from.132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.ad

_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56.thread: ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56, %.critedge32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !2229
  store i32 2, ptr %i.bz, align 16, !tbaa !2229
  %cond.i.i.i65 = icmp eq i32 %i.ca, 1
  br i1 %cond.i.i.i65, label %bb.u, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit, !prof !2230

bb.u:                                             ; preds = %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2051
  %.not.i.i.i.i.i66 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i66, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #31
  br label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit: ; preds = %bb.v, %bb.u, %_ZNK5folly17CancellationToken23isCancellationRequestedEv.exit56.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.bz, align 16, !tbaa !44
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !2215 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ce, null
  br i1 %.not.i67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit
  call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2224 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i68, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ci = call noundef i64 %i.cg(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ch, ptr noundef null) #31, !inline_history !5387 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.y, %bb.x
  %i.cj = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i69 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i69, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = atomicrmw sub ptr %i.ck, i64 8 acq_rel, align 8 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 16
  br i1 %i.cm, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.cn = and i64 %i.cl, 4
  %.not.i.i.i.i70 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i70, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.cj) #31
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.cj) #31, !call_target !2009, !inline_history !5388
  br label %bb.ae

bb.ad:                                            ; preds = %.from.137, %.from.138, %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %.pn21.pn = phi { ptr, i32 } [ %i.ag, %.from._ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i ], [ %.pn20, %.from.137 ], [ %i.bw, %.from.138 ]
  call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr153) #31
  %.5 = extractvalue { ptr, i32 } %.pn21.pn, 0
  call void @_ZN5folly17CancellationTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr155) #31
  %i.cr = call ptr @__cxa_begin_catch(ptr %.5) #31 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162) #31
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit80

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %_ZN5folly20CancellationCallbackD2Ev.exit
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 290
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 16
  %i.cs = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr161, ptr nonnull %0) #31 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  musttail call fastcc void %i.ct(ptr nonnull %i.cs)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave114, %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit80: ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 16
  resume { ptr, i32 } %i.cu

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy(ptr noundef nonnull align 16 dereferenceable(304) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %index = load i3, ptr %index.addr, align 16
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge36
    i3 2, label %AfterCoroSuspend116
    i3 3, label %AfterCoroSuspend120
    i3 -4, label %AfterCoroSuspend
  ]

.critedge36:                                      ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr156, align 8, !tbaa !2051
  %.not.i.i.i40 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i40, label %_ZN5folly4coro8co_errorD2Ev.exit41, label %bb.a

bb.a:                                             ; preds = %.critedge36
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr156) #31
  br label %_ZN5folly4coro8co_errorD2Ev.exit41

_ZN5folly4coro8co_errorD2Ev.exit41:               ; preds = %bb.a, %.critedge36
  %i.b = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i42 = icmp eq ptr %i.b, null
  br i1 %.not.i.i42, label %AfterCoroSuspend, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro8co_errorD2Ev.exit41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 8 acq_rel, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 16
  br i1 %i.e, label %bb.c, label %AfterCoroSuspend

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, 4
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.b) #31
  br label %AfterCoroSuspend

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #31, !call_target !2009, !inline_history !5388
  br label %AfterCoroSuspend

AfterCoroSuspend116:                              ; preds = %resume.entry
  %.reload.addr154 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %.reload.addr154, align 16, !tbaa !2207 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.j, null
  br i1 %.not.i.i50, label %.critedge38, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend116
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke fastcc void %i.l(ptr nonnull %i.j)
          to label %.critedge38 unwind label %bb.g, !inline_history !5377

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

AfterCoroSuspend120:                              ; preds = %resume.entry
  %i.o = load ptr, ptr %.reload.addr157, align 16, !tbaa !2051
  %.not.i.i.i63 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i63, label %.critedge38, label %bb.h

bb.h:                                             ; preds = %AfterCoroSuspend120
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr157) #31
  br label %.critedge38

.critedge38:                                      ; preds = %AfterCoroSuspend120, %bb.h, %AfterCoroSuspend116, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !2215 ; 2 uses
  %.not.i73 = icmp eq ptr %i.q, null
  br i1 %.not.i73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge38
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2224 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i74, label %_ZN5folly20CancellationCallbackD2Ev.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = tail call noundef i64 %i.s(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef null) #31, !inline_history !5387 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit75

_ZN5folly20CancellationCallbackD2Ev.exit75:       ; preds = %bb.k, %bb.j
  %i.v = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i76 = icmp eq ptr %i.v, null
  br i1 %.not.i.i76, label %AfterCoroSuspend, label %bb.l

bb.l:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit75
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.m, label %AfterCoroSuspend

bb.m:                                             ; preds = %bb.l
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i77 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #31
  br label %AfterCoroSuspend

bb.o:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #31, !call_target !2009, !inline_history !5388
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit75, %bb.l, %bb.n, %bb.o, %resume.entry, %_ZN5folly4coro8co_errorD2Ev.exit41, %bb.b, %bb.d, %bb.e, %resume.entry
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !44
  %cond.i.i = icmp eq i32 %i.ae, 1
  br i1 %cond.i.i, label %bb.p, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2230

bb.p:                                             ; preds = %AfterCoroSuspend
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2051
  %.not.i.i.i.i79 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i79, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.q, %bb.p, %AfterCoroSuspend
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i64 8 acq_rel, align 8 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  br i1 %i.al, label %bb.s, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.am = and i64 %i.ak, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ai) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ai) #31, !call_target !2009, !inline_history !5389
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.u, %bb.t, %bb.r, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1965 ; 2 uses
  %i.as = and i64 %i.ar, -4                       ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.aq, align 8, !tbaa !2028
  %i.au = and i64 %i.ar, 3
  %.not3.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not3.i.i.i.i, label %bb.w, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #31, !call_target !2029, !inline_history !5390
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.v, %bb.w
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 304)
          to label %CoroEnd unwind label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro21TransportCallbackBase4waitEv.cleanup(ptr noundef nonnull align 16 dereferenceable(304) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr153 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %index = load i3, ptr %index.addr, align 16
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge36
    i3 2, label %AfterCoroSuspend116
    i3 3, label %AfterCoroSuspend120
    i3 -4, label %AfterCoroSuspend
  ]

.critedge36:                                      ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr156, align 8, !tbaa !2051
  %.not.i.i.i40 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i40, label %_ZN5folly4coro8co_errorD2Ev.exit41, label %bb.a

bb.a:                                             ; preds = %.critedge36
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr156) #31
  br label %_ZN5folly4coro8co_errorD2Ev.exit41

_ZN5folly4coro8co_errorD2Ev.exit41:               ; preds = %bb.a, %.critedge36
  %i.b = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i42 = icmp eq ptr %i.b, null
  br i1 %.not.i.i42, label %AfterCoroSuspend, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro8co_errorD2Ev.exit41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 8 acq_rel, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 16
  br i1 %i.e, label %bb.c, label %AfterCoroSuspend

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, 4
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.b) #31
  br label %AfterCoroSuspend

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #31, !call_target !2009, !inline_history !5388
  br label %AfterCoroSuspend

AfterCoroSuspend116:                              ; preds = %resume.entry
  %.reload.addr154 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %.reload.addr154, align 16, !tbaa !2207 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.j, null
  br i1 %.not.i.i50, label %.critedge38, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend116
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  invoke fastcc void %i.l(ptr nonnull %i.j)
          to label %.critedge38 unwind label %bb.g, !inline_history !5377

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #29
  unreachable

AfterCoroSuspend120:                              ; preds = %resume.entry
  %i.o = load ptr, ptr %.reload.addr157, align 16, !tbaa !2051
  %.not.i.i.i63 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i63, label %.critedge38, label %bb.h

bb.h:                                             ; preds = %AfterCoroSuspend120
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr157) #31
  br label %.critedge38

.critedge38:                                      ; preds = %AfterCoroSuspend120, %bb.h, %AfterCoroSuspend116, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !2215 ; 2 uses
  %.not.i73 = icmp eq ptr %i.q, null
  br i1 %.not.i73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge38
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr153) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2224 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i74, label %_ZN5folly20CancellationCallbackD2Ev.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = tail call noundef i64 %i.s(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef null) #31, !inline_history !5387 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit75

_ZN5folly20CancellationCallbackD2Ev.exit75:       ; preds = %bb.k, %bb.j
  %i.v = load ptr, ptr %.reload.addr155, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i76 = icmp eq ptr %i.v, null
  br i1 %.not.i.i76, label %AfterCoroSuspend, label %bb.l

bb.l:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit75
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.m, label %AfterCoroSuspend

bb.m:                                             ; preds = %bb.l
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i77 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #31
  br label %AfterCoroSuspend

bb.o:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #31, !call_target !2009, !inline_history !5388
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit75, %bb.l, %bb.n, %bb.o, %resume.entry, %_ZN5folly4coro8co_errorD2Ev.exit41, %bb.b, %bb.d, %bb.e, %resume.entry
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !44
  %cond.i.i = icmp eq i32 %i.ae, 1
  br i1 %cond.i.i, label %bb.p, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2230

bb.p:                                             ; preds = %AfterCoroSuspend
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2051
  %.not.i.i.i.i79 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i79, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.q, %bb.p, %AfterCoroSuspend
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i64 8 acq_rel, align 8 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  br i1 %i.al, label %bb.s, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.am = and i64 %i.ak, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ai) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ai) #31, !call_target !2009, !inline_history !5389
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.u, %bb.t, %bb.r, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1965 ; 2 uses
  %i.as = and i64 %i.ar, -4                       ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i1.i.i, label %CoroEnd, label %bb.v

bb.v:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.aq, align 8, !tbaa !2028
  %i.au = and i64 %i.ar, 3
  %.not3.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not3.i.i.i.i, label %bb.w, label %CoroEnd

bb.w:                                             ; preds = %bb.v
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #31, !call_target !2029, !inline_history !5390
  br label %CoroEnd

CoroEnd:                                          ; preds = %bb.w, %bb.v, %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume(ptr noundef nonnull align 16 dereferenceable(624) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.305, align 8            ; 4 uses
  %.reload.addr173 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr174 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %.reload.addr175 = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %.reload.addr176 = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %.reload.addr177 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 5 uses
  %.reload.addr180 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %.reload.addr186 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 6 uses
  %index = load i3, ptr %index.addr, align 4
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge28
    i3 2, label %CoroEnd
    i3 3, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.reload160 = load i64, ptr %.reload.addr159, align 16, !tbaa !5391
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.reload = load ptr, ptr %.reload.addr, align 16, !tbaa !5391
  %i.a = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = trunc i64 %.reload160 to i32
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.c)
          to label %bb.a unwind label %.from.147, !call_target !5393

bb.a:                                             ; preds = %.critedge
  %.reload.addr156 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.reload157 = load ptr, ptr %.reload.addr156, align 8, !tbaa !5391 ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr null, ptr %i.h, align 8, !tbaa !5396
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.g, ptr %i.i, align 16, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr null, ptr %i.j, align 8, !tbaa !2051
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.k, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %i.l, align 8, !tbaa !3366
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i8 0, ptr %i.m, align 8, !tbaa !3362
  %i.n = getelementptr inbounds nuw i8, ptr %.reload157, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5397 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.reload157, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3313
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3326 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.reload157, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !5398 ; 2 uses
  br i1 %.not.i.i, label %_ZNK5folly10IOBufQueue5frontEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5399 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !5402
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %i.t, align 8, !tbaa !5402
  %i.z = getelementptr inbounds nuw i8, ptr %.reload157, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !5403
  %i.ab = add i64 %i.aa, %i.w
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !5403
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 %i.w
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !5397
  br label %_ZNK5folly10IOBufQueue5frontEv.exit

_ZNK5folly10IOBufQueue5frontEv.exit:              ; preds = %bb.b, %bb.a
  invoke void @_ZNK5folly5IOBuf6getIovEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::fbvector") align 8 %.reload.addr175, ptr noundef nonnull align 8 dereferenceable(56) %.pre.i)
          to label %bb.c unwind label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.146

bb.c:                                             ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.reload163 = load i32, ptr %.reload.addr162, align 16, !tbaa !5391
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.af = load ptr, ptr %.reload.addr175, align 16, !tbaa !5404 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !5407
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.k, ptr noundef %i.af, i64 noundef %i.al, i32 noundef %.reload163)
          to label %bb.d unwind label %.from.142, !call_target !5408

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %.reload.addr173, align 16
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.cleanup, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %.reload.addr174, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.ap, align 16, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.aq, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 2, ptr %i.ar, align 16, !tbaa !44
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i3 0, ptr %index.addr163.i, align 16
  store ptr %.reload.addr173, ptr %.reload.addr179, align 8, !alias.scope !5443
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr178, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr186, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr179)
          to label %bb.e unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  store ptr %.reload.addr178, ptr %.reload.addr177, align 8
  store i3 1, ptr %index.addr, align 4
  %i.as = tail call ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr178, ptr nonnull %0) #31 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  musttail call fastcc void %i.at(ptr nonnull %i.as)
  ret void

.from.147:                                        ; preds = %.critedge
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.af

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.146: ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70

.from.142:                                        ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68

.critedge28:                                      ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5446)
  %i.ax = load ptr, ptr %.reload.addr177, align 8, !tbaa !5449, !noalias !5446, !nonnull !166, !align !2094 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5452)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1982, !noalias !5455 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !44, !noalias !5455 ; 2 uses
  store i32 %i.ba, ptr %.reload.addr176, align 8, !tbaa !44, !alias.scope !5455
  %cond.i.i.i.i = icmp eq i32 %i.ba, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %.critedge28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5456)
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !5459
  store i64 %i.bd, ptr %i.bb, align 16, !alias.scope !5459
  store i64 0, ptr %i.bc, align 8, !noalias !5459
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.ax, align 8, !tbaa !37, !noalias !5455
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %.critedge28, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.ay, %.critedge28 ] ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !37, !noalias !5455
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke fastcc void %i.bf(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.f, !noalias !5455, !inline_history !5460

bb.f:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #29, !noalias !5455
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.bi = load ptr, ptr %.reload.addr178, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i34, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit35, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke fastcc void %i.bk(ptr nonnull %i.bi)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit35 unwind label %bb.h, !inline_history !5460

bb.h:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit35: ; preds = %bb.g, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.bn = load ptr, ptr %.reload.addr179, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i36, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke fastcc void %i.bp(ptr nonnull %i.bn)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.j, !inline_history !5460

bb.j:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %bb.i, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit35
  %i.bs = load i32, ptr %.reload.addr176, align 8, !tbaa !44
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %.reload.addr171 = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.reload172 = load ptr, ptr %.reload.addr171, align 8, !tbaa !5391 ; 2 uses
  %.not21 = icmp eq ptr %.reload172, null
  br i1 %.not21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !3366
  store i64 %i.bv, ptr %.reload172, align 8, !tbaa !5461
  br label %bb.o

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %bb.d
  %i.bw = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bx = load ptr, ptr %.reload.addr179, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i43, label %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68, label %bb.m

bb.m:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  invoke fastcc void %i.bz(ptr nonnull %i.bx)
          to label %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68 unwind label %bb.n, !inline_history !5460

bb.n:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #29
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5463)
  %i.ce = load i64, ptr %i.cd, align 16, !noalias !5463 ; 3 uses
  store i64 %i.ce, ptr %.reload.addr180, align 16, !alias.scope !5463
  store i64 0, ptr %i.cd, align 16, !noalias !5463
  %i.cf = load i32, ptr %i.cc, align 16, !tbaa !2229
  store i32 2, ptr %i.cc, align 16, !tbaa !2229
  %cond.i.i.i = icmp eq i32 %i.cf, 1
  br i1 %cond.i.i.i, label %bb.p, label %bb.q, !prof !2230

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2051
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %.from.135

.from.135:                                        ; preds = %bb.p
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #31
  %.pre88 = load i64, ptr %.reload.addr180, align 16, !noalias !5466
  br label %bb.q

bb.q:                                             ; preds = %.from.135, %bb.o, %bb.p
  %i.ci = phi i64 [ %.pre88, %.from.135 ], [ %i.ce, %bb.o ], [ %i.ce, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5466)
  store i64 %i.ci, ptr %i.cj, align 8, !alias.scope !5466
  store i64 0, ptr %.reload.addr180, align 16, !noalias !5466
  store i32 1, ptr %i.cc, align 16, !tbaa !44
  store i3 2, ptr %index.addr, align 4
  %i.ck = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr177, ptr nonnull %0) #31 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  musttail call fastcc void %i.cl(ptr nonnull %i.ck)
  ret void

bb.r:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.co = load i8, ptr %i.cm, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %.reload.addr169 = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.reload170 = load ptr, ptr %.reload.addr169, align 8, !tbaa !5391 ; 2 uses
  %.not = icmp eq ptr %.reload170, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !3366
  store i64 %i.cr, ptr %.reload170, align 8, !tbaa !5461
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.cn, ptr %1, align 8, !noalias !5469
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr181, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ct = load i32, ptr %i.cs, align 16, !tbaa !2229
  store i32 2, ptr %i.cs, align 16, !tbaa !2229
  %cond.i.i.i50 = icmp eq i32 %i.ct, 1
  br i1 %cond.i.i.i50, label %bb.v, label %bb.x, !prof !2230

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2051
  %.not.i.i.i.i.i51 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5472)
  %i.cx = load i64, ptr %.reload.addr181, align 8, !noalias !5472
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !5472
  store i64 0, ptr %.reload.addr181, align 8, !noalias !5472
  store i32 1, ptr %i.cs, align 16, !tbaa !44
  store i3 3, ptr %index.addr, align 4
  %i.cy = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr178, ptr nonnull %0) #31 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  musttail call fastcc void %i.cz(ptr nonnull %i.cy)
  ret void

bb.y:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.db = load i32, ptr %i.da, align 16, !tbaa !2229
  store i32 2, ptr %i.da, align 16, !tbaa !2229
  %cond.i.i.i58 = icmp eq i32 %i.db, 1
  br i1 %cond.i.i.i58, label %bb.z, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread, !prof !2230

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2051
  %.not.i.i.i.i.i59 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i59, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread: ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.da, align 16, !tbaa !44
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit: ; preds = %bb.z
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #31
  %.pre = load i32, ptr %.reload.addr176, align 8, !tbaa !44
  %i.de = icmp eq i32 %.pre, 1
  store i32 0, ptr %i.da, align 16, !tbaa !44
  br i1 %i.de, label %bb.aa, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !5475

bb.aa:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !2051
  %.not.i.i.i60 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i60, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.ab, %bb.aa, %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit, %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread
  %i.dh = load ptr, ptr %.reload.addr175, align 16, !tbaa !5476 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i61, label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit62, label %bb.ac

bb.ac:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.dh) #31
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit62

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit62:     ; preds = %bb.ac, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.di, align 16, !tbaa !11
  %i.dj = load i8, ptr %i.cm, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.dk = trunc nuw i8 %i.dj to i1
  store i8 0, ptr %i.cm, align 8, !tbaa !3362
  br i1 %i.dk, label %bb.ad, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i63

bb.ad:                                            ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit62
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.cn) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i63

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i63: ; preds = %bb.ad, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit62
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2051
  %.not.i.i.i.i64 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i64, label %_ZN5folly4coro13WriteCallbackD2Ev.exit65, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i63
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl) #31, !inline_history !3365
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit65

_ZN5folly4coro13WriteCallbackD2Ev.exit65:         ; preds = %bb.ae, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i63
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #31, !inline_history !3365
  br label %bb.ag

.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68: ; preds = %bb.m, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %.from.142
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %.from.142 ], [ %i.bw, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %i.bw, %bb.m ] ; 2 uses
  %i.do = load ptr, ptr %.reload.addr175, align 16, !tbaa !5476 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i69, label %.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70, label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.: ; preds = %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68
  tail call void @free(ptr noundef nonnull %i.do) #31
  br label %.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70

.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70: ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.146, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from., %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from.146 ], [ %.pn22.pn.pn.pn, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70.from. ], [ %.pn22.pn.pn.pn, %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit68 ]
  tail call void @_ZN5folly4coro13WriteCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr174) #31
  br label %bb.af

bb.af:                                            ; preds = %.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70, %.from.147
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn, %.from._ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit70 ], [ %i.au, %.from.147 ]
  %.8 = extractvalue { ptr, i32 } %.pn22.pn.pn.pn.pn.pn, 0
  %i.dp = tail call ptr @__cxa_begin_catch(ptr %.8) #31 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr186) #31
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit81

bb.ag:                                            ; preds = %_ZN5folly4coro13WriteCallbackD2Ev.exit65, %bb.af
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 4
  %i.dq = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr179, ptr nonnull %0) #31 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  musttail call fastcc void %i.dr(ptr nonnull %i.dq)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit81: ; preds = %bb.af
  %i.ds = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 4
  resume { ptr, i32 } %i.ds

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro9Transport5writeERNS_10IOBufQueueENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy(ptr noundef nonnull align 16 dereferenceable(624) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr174 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %.reload.addr175 = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.reload.addr176 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 612
  %index = load i3, ptr %index.addr, align 4
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge30
    i3 2, label %AfterCoroSuspend114
    i3 3, label %AfterCoroSuspend118
    i3 -4, label %AfterCoroSuspend
  ]

.critedge30:                                      ; preds = %resume.entry
  %.reload.addr178 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.a = load ptr, ptr %.reload.addr178, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.a, null
  br i1 %.not.i.i37, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38, label %bb.a

bb.a:                                             ; preds = %.critedge30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke fastcc void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38 unwind label %bb.b, !inline_history !5460

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38: ; preds = %bb.a, %.critedge30
  %i.f = load ptr, ptr %.reload.addr179, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.f, null
  br i1 %.not.i.i39, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit42, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit42 unwind label %bb.d, !inline_history !5460

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit42:        ; preds = %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit38
  %i.k = load ptr, ptr %.reload.addr175, align 16, !tbaa !5476 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit42
  tail call void @free(ptr noundef nonnull %i.k) #31
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit:       ; preds = %bb.e, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.m, align 16, !tbaa !11
  %i.n = load i8, ptr %i.l, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.l, align 8, !tbaa !3362
  br i1 %i.o, label %bb.f, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend114:                              ; preds = %resume.entry
  %.reload.addr180 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %.reload.addr180, align 16, !tbaa !2051
  %.not.i.i.i48 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i48, label %.critedge32, label %.critedge32.sink.split

AfterCoroSuspend118:                              ; preds = %resume.entry
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.t = load ptr, ptr %.reload.addr181, align 8, !tbaa !2051
  %.not.i.i.i56 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i56, label %.critedge32, label %.critedge32.sink.split

.critedge32.sink.split:                           ; preds = %AfterCoroSuspend118, %AfterCoroSuspend114
  %.reload.addr181.sink = phi ptr [ %.reload.addr180, %AfterCoroSuspend114 ], [ %.reload.addr181, %AfterCoroSuspend118 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr181.sink) #31
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.sink.split, %AfterCoroSuspend118, %AfterCoroSuspend114
  %i.u = load i32, ptr %.reload.addr176, align 8, !tbaa !44
  %cond.i72 = icmp eq i32 %i.u, 1
  br i1 %cond.i72, label %bb.g, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74, !prof !2230

bb.g:                                             ; preds = %.critedge32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !2051
  %.not.i.i.i73 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i73, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74:   ; preds = %bb.h, %bb.g, %.critedge32
  %i.x = load ptr, ptr %.reload.addr175, align 16, !tbaa !5476 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i75, label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit76, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74
  tail call void @free(ptr noundef nonnull %i.x) #31
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit76

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit76:     ; preds = %bb.i, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit74
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.z, align 16, !tbaa !11
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.y, align 8, !tbaa !3362
  br i1 %i.ab, label %bb.j, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77

bb.j:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit76
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77: ; preds = %bb.j, %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit76
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr174, align 16, !tbaa !11
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2051
  %.not.i.i.i.i78 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i78, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend.sink.split.sink.split:           ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %.sink = phi ptr [ %i.q, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i ], [ %i.ad, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #31
  br label %AfterCoroSuspend.sink.split

AfterCoroSuspend.sink.split:                      ; preds = %AfterCoroSuspend.sink.split.sink.split, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i77, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #31
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %AfterCoroSuspend.sink.split, %resume.entry, %resume.entry
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !44
  %cond.i.i = icmp eq i32 %i.ah, 1
  br i1 %cond.i.i, label %bb.k, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2230

bb.k:                                             ; preds = %AfterCoroSuspend
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2051
  %.not.i.i.i.i80 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i80, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.l, %bb.k, %AfterCoroSuspend
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw sub ptr %i.am, i64 8 acq_rel, align 8 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 16
  br i1 %i.ao, label %bb.n, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.ap = and i64 %i.an, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.al) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.al) #31, !call_target !2009, !inline_history !5389
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.p, %bb.o, %bb.m, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1965 ; 2 uses
  %i.av = and i64 %i.au, -4                       ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.at, align 8, !tbaa !2028
  %i.ax = and i64 %i.au, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not3.i.i.i.i, label %bb.r, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #31, !call_target !2029, !inline_history !5390
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.q, %bb.r
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 624)
          to label %CoroEnd unwind label %bb.s

bb.s:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.resume(ptr noundef nonnull align 16 dereferenceable(608) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.305, align 8            ; 4 uses
  %.reload.addr159 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %.reload.addr162 = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  %.reload.addr164 = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %.reload.addr165 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %.reload.addr166 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %.reload.addr171 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 6 uses
  %index = load i3, ptr %index.addr, align 4
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge27
    i3 2, label %CoroEnd
    i3 3, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr145 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.reload146 = load i64, ptr %.reload.addr145, align 16, !tbaa !5477
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5477
  %i.a = getelementptr inbounds nuw i8, ptr %.reload, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = trunc i64 %.reload146 to i32
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.c)
          to label %bb.a unwind label %.from.132, !call_target !5393

bb.a:                                             ; preds = %.critedge
  %.reload.addr148 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.reload149 = load i32, ptr %.reload.addr148, align 16, !tbaa !5477
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.reload143 = load ptr, ptr %.reload.addr142, align 8, !tbaa !5477
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.reload140 = load ptr, ptr %.reload.addr139, align 16, !tbaa !5477 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr null, ptr %i.h, align 8, !tbaa !5396
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.g, ptr %i.i, align 16, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr null, ptr %i.j, align 8, !tbaa !2051
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.k, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %i.l, align 8, !tbaa !3366
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i8 0, ptr %i.m, align 8, !tbaa !3362
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.o = ptrtoint ptr %.reload143 to i64
  %i.p = ptrtoint ptr %.reload140 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.k, ptr noundef %.reload140, i64 noundef %i.q, i32 noundef %.reload149)
          to label %bb.b unwind label %.from.129, !call_target !5479

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %.reload.addr159, align 16
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.cleanup, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %.reload.addr160, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.t, align 16, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 2, ptr %i.v, align 16, !tbaa !44
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i3 0, ptr %index.addr163.i, align 16
  store ptr %.reload.addr159, ptr %.reload.addr164, align 16, !alias.scope !5482
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr163, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr171, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr164)
          to label %bb.c unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store ptr %.reload.addr163, ptr %.reload.addr162, align 16
  store i3 1, ptr %index.addr, align 4
  %i.w = tail call ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIS2_EEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr163, ptr nonnull %0) #31 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  musttail call fastcc void %i.x(ptr nonnull %i.w)
  ret void

.from.132:                                        ; preds = %.critedge
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ac

.from.129:                                        ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.131

.critedge27:                                      ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5485)
  %i.aa = load ptr, ptr %.reload.addr162, align 16, !tbaa !5449, !noalias !5485, !nonnull !166, !align !2094 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5488)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1982, !noalias !5491 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44, !noalias !5491 ; 2 uses
  store i32 %i.ad, ptr %.reload.addr161, align 16, !tbaa !44, !alias.scope !5491
  %cond.i.i.i.i = icmp eq i32 %i.ad, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %.critedge27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5492)
  %i.ag = load i64, ptr %i.af, align 8, !noalias !5495
  store i64 %i.ag, ptr %i.ae, align 8, !alias.scope !5495
  store i64 0, ptr %i.af, align 8, !noalias !5495
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !37, !noalias !5491
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %.critedge27, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.ab, %.critedge27 ] ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !37, !noalias !5491
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke fastcc void %i.ai(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.d, !noalias !5491, !inline_history !5460

bb.d:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #29, !noalias !5491
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.al = load ptr, ptr %.reload.addr163, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.al, null
  br i1 %.not.i.i32, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke fastcc void %i.an(ptr nonnull %i.al)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33 unwind label %bb.f, !inline_history !5460

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33: ; preds = %bb.e, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.aq = load ptr, ptr %.reload.addr164, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i34, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke fastcc void %i.as(ptr nonnull %i.aq)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.h, !inline_history !5460

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %bb.g, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33
  %i.av = load i32, ptr %.reload.addr161, align 16, !tbaa !44
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %.reload.addr157 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.reload158 = load ptr, ptr %.reload.addr157, align 8, !tbaa !5477 ; 2 uses
  %.not20 = icmp eq ptr %.reload158, null
  br i1 %.not20, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !3366
  store i64 %i.ay, ptr %.reload158, align 8, !tbaa !5461
  br label %bb.m

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ba = load ptr, ptr %.reload.addr164, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i41, label %.from.131, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke fastcc void %i.bc(ptr nonnull %i.ba)
          to label %.from.131 unwind label %bb.l, !inline_history !5460

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #29
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5496)
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !5496 ; 3 uses
  store i64 %i.bh, ptr %.reload.addr165, align 8, !alias.scope !5496
  store i64 0, ptr %i.bg, align 8, !noalias !5496
  %i.bi = load i32, ptr %i.bf, align 16, !tbaa !2229
  store i32 2, ptr %i.bf, align 16, !tbaa !2229
  %cond.i.i.i = icmp eq i32 %i.bi, 1
  br i1 %cond.i.i.i, label %bb.n, label %bb.o, !prof !2230

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2051
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.from.122

.from.122:                                        ; preds = %bb.n
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #31
  %.pre81 = load i64, ptr %.reload.addr165, align 8, !noalias !5499
  br label %bb.o

bb.o:                                             ; preds = %.from.122, %bb.m, %bb.n
  %i.bl = phi i64 [ %.pre81, %.from.122 ], [ %i.bh, %bb.m ], [ %i.bh, %bb.n ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5499)
  store i64 %i.bl, ptr %i.bm, align 8, !alias.scope !5499
  store i64 0, ptr %.reload.addr165, align 8, !noalias !5499
  store i32 1, ptr %i.bf, align 16, !tbaa !44
  store i3 2, ptr %index.addr, align 4
  %i.bn = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr162, ptr nonnull %0) #31 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  musttail call fastcc void %i.bo(ptr nonnull %i.bn)
  ret void

bb.p:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.br = load i8, ptr %i.bp, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.reload156 = load ptr, ptr %.reload.addr155, align 8, !tbaa !5477 ; 2 uses
  %.not = icmp eq ptr %.reload156, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !3366
  store i64 %i.bu, ptr %.reload156, align 8, !tbaa !5461
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.bq, ptr %1, align 8, !noalias !5502
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr166, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_20AsyncSocketExceptionEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bw = load i32, ptr %i.bv, align 16, !tbaa !2229
  store i32 2, ptr %i.bv, align 16, !tbaa !2229
  %cond.i.i.i47 = icmp eq i32 %i.bw, 1
  br i1 %cond.i.i.i47, label %bb.t, label %bb.v, !prof !2230

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2051
  %.not.i.i.i.i.i48 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !5505)
  %i.ca = load i64, ptr %.reload.addr166, align 16, !noalias !5505
  store i64 %i.ca, ptr %i.bz, align 8, !alias.scope !5505
  store i64 0, ptr %.reload.addr166, align 16, !noalias !5505
  store i32 1, ptr %i.bv, align 16, !tbaa !44
  store i3 3, ptr %index.addr, align 4
  %i.cb = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr163, ptr nonnull %0) #31 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  musttail call fastcc void %i.cc(ptr nonnull %i.cb)
  ret void

bb.w:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 16, !tbaa !2229
  store i32 2, ptr %i.cd, align 16, !tbaa !2229
  %cond.i.i.i55 = icmp eq i32 %i.ce, 1
  br i1 %cond.i.i.i55, label %bb.x, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread, !prof !2230

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2051
  %.not.i.i.i.i.i56 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i56, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread, label %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread: ; preds = %bb.x, %bb.w
  store i32 0, ptr %i.cd, align 16, !tbaa !44
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit: ; preds = %bb.x
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #31
  %.pre = load i32, ptr %.reload.addr161, align 16, !tbaa !44
  %i.ch = icmp eq i32 %.pre, 1
  store i32 0, ptr %i.cd, align 16, !tbaa !44
  br i1 %i.ch, label %bb.y, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !5475

bb.y:                                             ; preds = %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2051
  %.not.i.i.i57 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i57, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.z, %bb.y, %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit, %_ZN5folly4coro6detail11TaskPromiseINS_4UnitEE12return_valueIRKS3_EEvOT_.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.ck, align 16, !tbaa !11
  %i.cl = load i8, ptr %i.bp, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.cm = trunc nuw i8 %i.cl to i1
  store i8 0, ptr %i.bp, align 8, !tbaa !3362
  br i1 %i.cm, label %bb.aa, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i58

bb.aa:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bq) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i58

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i58: ; preds = %bb.aa, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2051
  %.not.i.i.i.i59 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i59, label %_ZN5folly4coro13WriteCallbackD2Ev.exit60, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i58
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #31, !inline_history !3365
  br label %_ZN5folly4coro13WriteCallbackD2Ev.exit60

_ZN5folly4coro13WriteCallbackD2Ev.exit60:         ; preds = %bb.ab, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i58
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #31, !inline_history !3365
  br label %bb.ad

.from.131:                                        ; preds = %.from.129, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.k
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %i.z, %.from.129 ], [ %i.az, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %i.az, %bb.k ]
  tail call void @_ZN5folly4coro13WriteCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %.reload.addr160) #31
  br label %bb.ac

bb.ac:                                            ; preds = %.from.131, %.from.132
  %.pn21.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %.from.131 ], [ %i.y, %.from.132 ]
  %.7 = extractvalue { ptr, i32 } %.pn21.pn.pn.pn.pn, 0
  %i.cq = tail call ptr @__cxa_begin_catch(ptr %.7) #31 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr171) #31
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit72

bb.ad:                                            ; preds = %_ZN5folly4coro13WriteCallbackD2Ev.exit60, %bb.ac
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 4
  %i.cr = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS_4UnitEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr164, ptr nonnull %0) #31 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  musttail call fastcc void %i.cs(ptr nonnull %i.cr)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit72: ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 4
  resume { ptr, i32 } %i.ct

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro9Transport5writeENS_5RangeIPKhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS_10WriteFlagsEPNS0_11TransportIf9WriteInfoE.destroy(ptr noundef nonnull align 16 dereferenceable(608) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.reload.addr164 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 596
  %index = load i3, ptr %index.addr, align 4
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge29
    i3 2, label %AfterCoroSuspend101
    i3 3, label %AfterCoroSuspend105
    i3 -4, label %AfterCoroSuspend
  ]

.critedge29:                                      ; preds = %resume.entry
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.a = load ptr, ptr %.reload.addr163, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.a, null
  br i1 %.not.i.i35, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit36, label %bb.a

bb.a:                                             ; preds = %.critedge29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke fastcc void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit36 unwind label %bb.b, !inline_history !5460

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit36: ; preds = %bb.a, %.critedge29
  %i.f = load ptr, ptr %.reload.addr164, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.f, null
  br i1 %.not.i.i37, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit40, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit40 unwind label %bb.d, !inline_history !5460

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit40:        ; preds = %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.l, align 16, !tbaa !11
  %i.m = load i8, ptr %i.k, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.k, align 8, !tbaa !3362
  br i1 %i.n, label %bb.e, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.o) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend101:                              ; preds = %resume.entry
  %.reload.addr165 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.r = load ptr, ptr %.reload.addr165, align 8, !tbaa !2051
  %.not.i.i.i45 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i45, label %.critedge31, label %.critedge31.sink.split

AfterCoroSuspend105:                              ; preds = %resume.entry
  %.reload.addr166 = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.s = load ptr, ptr %.reload.addr166, align 16, !tbaa !2051
  %.not.i.i.i53 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i53, label %.critedge31, label %.critedge31.sink.split

.critedge31.sink.split:                           ; preds = %AfterCoroSuspend105, %AfterCoroSuspend101
  %.reload.addr166.sink = phi ptr [ %.reload.addr165, %AfterCoroSuspend101 ], [ %.reload.addr166, %AfterCoroSuspend105 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr166.sink) #31
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge31.sink.split, %AfterCoroSuspend105, %AfterCoroSuspend101
  %i.t = load i32, ptr %.reload.addr161, align 16, !tbaa !44
  %cond.i65 = icmp eq i32 %i.t, 1
  br i1 %cond.i65, label %bb.f, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67, !prof !2230

bb.f:                                             ; preds = %.critedge31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2051
  %.not.i.i.i66 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i66, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67:   ; preds = %bb.g, %bb.f, %.critedge31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5folly4coro13WriteCallbackE, i64 72), ptr %i.x, align 16, !tbaa !11
  %i.y = load i8, ptr %i.w, align 8, !tbaa !3362, !range !2003, !noundef !166
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.w, align 8, !tbaa !3362
  br i1 %i.z, label %bb.h, label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68

bb.h:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #31, !inline_history !3364
  br label %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68

_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68: ; preds = %bb.h, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit67
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr160, align 16, !tbaa !11
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2051
  %.not.i.i.i.i69 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i69, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend.sink.split.sink.split:           ; preds = %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %.sink = phi ptr [ %i.p, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i ], [ %i.ab, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #31
  br label %AfterCoroSuspend.sink.split

AfterCoroSuspend.sink.split:                      ; preds = %AfterCoroSuspend.sink.split.sink.split, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i68, %_ZNSt14_Optional_baseIN5folly20AsyncSocketExceptionELb0ELb0EED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #31
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %AfterCoroSuspend.sink.split, %resume.entry, %resume.entry
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i32, ptr %i.ae, align 16, !tbaa !44
  %cond.i.i = icmp eq i32 %i.af, 1
  br i1 %cond.i.i, label %bb.i, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, !prof !2230

bb.i:                                             ; preds = %AfterCoroSuspend
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2051
  %.not.i.i.i.i71 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i71, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i:   ; preds = %bb.j, %bb.i, %AfterCoroSuspend
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i64 8 acq_rel, align 8 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  br i1 %i.am, label %bb.l, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.an = and i64 %i.al, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.aj) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aj) #31, !call_target !2009, !inline_history !5389
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.n, %bb.m, %bb.k, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1965 ; 2 uses
  %i.at = and i64 %i.as, -4                       ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ar, align 8, !tbaa !2028
  %i.av = and i64 %i.as, 3
  %.not3.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not3.i.i.i.i, label %bb.p, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #31, !call_target !2029, !inline_history !5390
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.o, %bb.p
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 608)
          to label %CoroEnd unwind label %bb.q

bb.q:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS_4UnitEEES4_ED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume(ptr noundef nonnull align 8 dereferenceable(416) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %.reload.addr244 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr245 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %.reload.addr246 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.reload.addr248 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr250 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr255 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge44
    i3 2, label %CoroEnd
    i3 3, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr209 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.reload210 = load ptr, ptr %.reload.addr209, align 8, !tbaa !5508
  %i.a = getelementptr inbounds nuw i8, ptr %.reload210, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !5510, !range !2003, !noundef !166
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.a, label %bb.d

bb.a:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !5510
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2424
  store i32 2, ptr %i.d, align 8, !tbaa !2424
  %cond.i.i.i = icmp eq i32 %i.e, 1
  br i1 %cond.i.i.i, label %bb.b, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, !prof !2230

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2051
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !2028
  store i32 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ax

bb.d:                                             ; preds = %.critedge
  %i.i = load ptr, ptr @_ZZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, align 8, !tbaa !2252 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.18, i32 noundef 5)
          to label %bb.g unwind label %.body.from.197

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.i, align 4, !tbaa !7
  %i.m = icmp sgt i32 %i.l, 4
  br i1 %i.m, label %bb.h, label %.critedge42

bb.g:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.h, label %.critedge42

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.18, i32 noundef 88)
          to label %bb.i unwind label %.from.156

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %.from.158  ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.44, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.from.158 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload226 = load i64, ptr %.reload.addr225, align 8, !tbaa !5508
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.reload226)
          to label %.critedge41 unwind label %.from.158 ; 0 uses

.critedge41:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.critedge42

.critedge42:                                      ; preds = %.critedge41, %bb.g, %bb.f
  %.reload.addr220 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.reload221 = load ptr, ptr %.reload.addr220, align 8, !tbaa !5508 ; 4 uses
  %i.q = load i8, ptr %.reload221, align 8, !tbaa !5511, !range !2003, !noundef !166
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.m, label %bb.k, !prof !5512

bb.k:                                             ; preds = %.critedge42
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.45)
          to label %bb.l unwind label %.body.from.194

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %bb.l
  unreachable

.body.from.194:                                   ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.s) #31
  br label %.body

bb.m:                                             ; preds = %.critedge42
  %.reload208 = load ptr, ptr %.reload.addr209, align 8, !tbaa !5508
  %i.u = getelementptr inbounds nuw i8, ptr %.reload221, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !5403
  %.spill.addr235 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.v, ptr %.spill.addr235, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.reload221, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3313
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3326
  %.spill.addr238 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.y, ptr %.spill.addr238, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.reload221, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !5397
  %.spill.addr241 = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.aa, ptr %.spill.addr241, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.reload208, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5513 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.n, label %_ZN5folly9EventBase5timerEv.exit

bb.n:                                             ; preds = %bb.m
  %i.af = invoke noalias noundef nonnull dereferenceable(16712) ptr @_Znwm(i64 noundef 16712) #34
          to label %.noexc50 unwind label %.body51.from.191 ; 4 uses

.noexc50:                                         ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !tbaa !2028, !noalias !5514
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.af, ptr noundef nonnull align 16 dereferenceable(632) %i.ac, i64 %.sroa.0.0.copyload.i.i, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i unwind label %.body51.from., !noalias !5514

.body51.from.:                                    ; preds = %.noexc50
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16712) #30, !noalias !5514
  br label %.body

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i: ; preds = %.noexc50
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !5513 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !5513
  %.not.i.i.i.i.i49 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i49, label %_ZN5folly9EventBase5timerEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(13) %i.aj)
          to label %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i unwind label %bb.p, !inline_history !16

_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i: ; preds = %bb.o
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !5513
  br label %_ZN5folly9EventBase5timerEv.exit

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29
  unreachable

_ZN5folly9EventBase5timerEv.exit:                 ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i, %bb.m, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i
  %i.ap = phi ptr [ %.pre.i, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i ], [ %i.ae, %bb.m ], [ %i.af, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i ]
  %.reload206 = load ptr, ptr %.reload.addr209, align 8, !tbaa !5508
  %i.aq = getelementptr inbounds nuw i8, ptr %.reload206, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr244, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.as, align 8, !tbaa !5396
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.au, align 8, !tbaa !2051
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly11AsyncReader12ReadCallbackE, i64 16), ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.aw, align 8, !tbaa !5517
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %bb.q unwind label %.from.151

bb.q:                                             ; preds = %_ZN5folly9EventBase5timerEv.exit
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload234 = load i64, ptr %.reload.addr233, align 8, !tbaa !5508 ; 3 uses
  %.reload.addr223 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload217 = load ptr, ptr %.reload.addr220, align 8, !tbaa !5508
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 16), ptr %.reload.addr244, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 112), ptr %i.av, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 232), ptr %i.ax, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.ay, align 8, !tbaa !3330
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.az, align 8, !tbaa !3331
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.reload217, ptr %i.bb, align 8, !tbaa !3304
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bd = load <2 x i64>, ptr %.reload.addr223, align 8, !tbaa !5508
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !2028
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.reload234, ptr %i.be, align 8, !tbaa !2028
  %i.bf = icmp sgt i64 %.reload234, 0
  br i1 %i.bf, label %bb.r, label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.ap, ptr noundef nonnull %i.ax, i64 %.reload234)
          to label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit unwind label %.from.149

.from.151:                                        ; preds = %_ZN5folly9EventBase5timerEv.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body51.from.190

.from.149:                                        ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ax) #31
  br label %.body51.from.190

.body51.from.190:                                 ; preds = %.from.151, %.from.149
  %.pn.i = phi { ptr, i32 } [ %i.bh, %.from.149 ], [ %i.bg, %.from.151 ]
  call void @_ZN5folly4coro21TransportCallbackBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(176) %.reload.addr244) #31
  br label %.body

_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit: ; preds = %bb.r, %bb.q
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.av)
          to label %.from.127.i unwind label %.from.188, !call_target !2441

.from.127.i:                                      ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit
  %i.bm = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from.153 unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit71.from.170, !inline_history !5518 ; 9 uses

.from.153:                                        ; preds = %.from.127.i
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.bm, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 280
  store ptr %.reload.addr244, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  store ptr null, ptr %i.bn, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i32 2, ptr %i.bp, align 8, !tbaa !44
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 288
  store i3 0, ptr %index.addr163.i, align 8
  store ptr %i.bm, ptr %.reload.addr248, align 8, !alias.scope !5519
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr255, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr248)
          to label %bb.s unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.s:                                             ; preds = %.from.153
  store ptr %.reload.addr247, ptr %.reload.addr246, align 8
  store i3 1, ptr %index.addr, align 8
  %i.bq = call ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseImEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr247, ptr nonnull %0) #31 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  musttail call fastcc void %i.br(ptr nonnull %i.bq)
  ret void

.body.from.197:                                   ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.from.156:                                        ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.196

.from.158:                                        ; preds = %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  br label %.body.from.196

.body.from.196:                                   ; preds = %.from.156, %.from.158
  %.pn = phi { ptr, i32 } [ %i.bu, %.from.158 ], [ %i.bt, %.from.156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.body

.body.from.:                                      ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body51.from.191:                                 ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.from.188:                                        ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportEPNS_10IOBufQueueEmmS7_.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  br label %.body51.from.193

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit71.from.170: ; preds = %.from.127.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  br label %.body51.from.193

.critedge44:                                      ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  %i.bz = load ptr, ptr %.reload.addr246, align 8, !tbaa !5449, !noalias !5522, !nonnull !166, !align !2094 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1982, !noalias !5528 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !44, !noalias !5528 ; 2 uses
  store i32 %i.cc, ptr %.reload.addr245, align 8, !tbaa !44, !alias.scope !5528
  %cond.i.i.i.i = icmp eq i32 %i.cc, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %.critedge44
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !5532
  store i64 %i.cf, ptr %i.cd, align 8, !alias.scope !5532
  store i64 0, ptr %i.ce, align 8, !noalias !5532
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bz, align 8, !tbaa !37, !noalias !5528
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %.critedge44, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.ca, %.critedge44 ] ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !37, !noalias !5528
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke fastcc void %i.ch(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.t, !noalias !5528, !inline_history !5460

bb.t:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #29, !noalias !5528
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ck = load ptr, ptr %.reload.addr247, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i56 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i56, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit57, label %bb.u

bb.u:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke fastcc void %i.cm(ptr nonnull %i.ck)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit57 unwind label %bb.v, !inline_history !5460

bb.v:                                             ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  tail call void @__clang_call_terminate(ptr %i.co) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit57: ; preds = %bb.u, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cp = load ptr, ptr %.reload.addr248, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i58, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke fastcc void %i.cr(ptr nonnull %i.cp)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.x, !inline_history !5460

bb.x:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %bb.w, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit57
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not111 = icmp eq ptr %i.cv, null
  %i.cw = ptrtoint ptr %i.cv to i64               ; 3 uses
  br i1 %.not111, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  store i64 %i.cw, ptr %.reload.addr249, align 8, !alias.scope !5533
  store i64 0, ptr %i.cu, align 8, !noalias !5533
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !2424
  store i32 2, ptr %i.cx, align 8, !tbaa !2424
  %cond.i.i.i66 = icmp eq i32 %i.cy, 1
  br i1 %cond.i.i.i66, label %bb.z, label %bb.aa, !prof !2230

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2051
  %.not.i.i.i.i.i67 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i67, label %bb.aa, label %.from.160

.from.160:                                        ; preds = %bb.z
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #31
  %.pre = load i64, ptr %.reload.addr249, align 8, !noalias !5536
  br label %bb.aa

bb.aa:                                            ; preds = %.from.160, %bb.y, %bb.z
  %i.db = phi i64 [ %.pre, %.from.160 ], [ %i.cw, %bb.y ], [ %i.cw, %bb.z ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5536)
  store i64 %i.db, ptr %i.dc, align 8, !alias.scope !5536
  store i64 0, ptr %.reload.addr249, align 8, !noalias !5536
  store i32 1, ptr %i.cx, align 8, !tbaa !34
  store i3 2, ptr %index.addr, align 8
  %i.dd = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr246, ptr nonnull %0) #31 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  musttail call fastcc void %i.de(ptr nonnull %i.dd)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from.153
  %i.df = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.dg = load ptr, ptr %.reload.addr248, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i68, label %.body51.from.193, label %bb.ab

bb.ab:                                            ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  invoke fastcc void %i.di(ptr nonnull %i.dg)
          to label %.body51.from.193 unwind label %bb.ac, !inline_history !5460

bb.ac:                                            ; preds = %bb.ab
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #29
  unreachable

bb.ad:                                            ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.dl = load i32, ptr %.reload.addr245, align 8, !tbaa !44
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2051
  %.not6.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not6.i.i.i.i.i, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #31 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i74, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef null) #31 ; 0 uses
  %i.dr = icmp eq ptr %i.dp, @_ZTIN5folly18OperationCancelledE
  br i1 %i.dr, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit

_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ds = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #31
  %.not33 = icmp eq ptr %i.ds, null
  br i1 %.not33, label %bb.ah, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread

_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread: ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dv = load i8, ptr %i.dt, align 8, !tbaa !3331, !range !2003, !noundef !166
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load i64, ptr %i.du, align 8
  %i.dy = icmp ne i64 %i.dx, 0
  %or.cond.not = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond.not, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit
  %i.dz = load i32, ptr %.reload.addr245, align 8, !tbaa !44
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5folly6detail16throw_exception_INS_12TryExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.6) #15
          to label %.noexc75 unwind label %.body85.from._ZN5folly4coro8co_errorD2Ev.exit80

.noexc75:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5539)
  %i.ec = load i64, ptr %i.dn, align 8, !noalias !5539 ; 3 uses
  store i64 %i.ec, ptr %.reload.addr250, align 8, !alias.scope !5539
  store i64 0, ptr %i.dn, align 8, !noalias !5539
  %i.ed = load i32, ptr %i.eb, align 8, !tbaa !2424
  store i32 2, ptr %i.eb, align 8, !tbaa !2424
  %cond.i.i.i76 = icmp eq i32 %i.ed, 1
  br i1 %cond.i.i.i76, label %bb.ak, label %bb.al, !prof !2230

bb.ak:                                            ; preds = %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2051
  %.not.i.i.i.i.i77 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i77, label %bb.al, label %.from.171

.from.171:                                        ; preds = %bb.ak
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #31
  %.pre113 = load i64, ptr %.reload.addr250, align 8, !noalias !5542
  br label %bb.al

bb.al:                                            ; preds = %.from.171, %bb.aj, %bb.ak
  %i.eg = phi i64 [ %.pre113, %.from.171 ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ak ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5542)
  store i64 %i.eg, ptr %i.eh, align 8, !alias.scope !5542
  store i64 0, ptr %.reload.addr250, align 8, !noalias !5542
  store i32 1, ptr %i.eb, align 8, !tbaa !34
  store i3 3, ptr %index.addr, align 8
  %i.ei = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr247, ptr nonnull %0) #31 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  musttail call fastcc void %i.ej(ptr nonnull %i.ei)
  ret void

.body85.from._ZN5folly4coro8co_errorD2Ev.exit80:  ; preds = %bb.ai
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  br label %.body85

bb.am:                                            ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, %bb.ad
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5508
  %i.el = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !11
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef null)
          to label %bb.an unwind label %.body85.from.182, !call_target !2441

bb.an:                                            ; preds = %bb.am
  %.reload.addr214 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload215 = load ptr, ptr %.reload.addr214, align 8, !tbaa !5508 ; 4 uses
  %i.eq = load i8, ptr %.reload215, align 8, !tbaa !5511, !range !2003, !noundef !166
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.aq, label %bb.ao, !prof !5512

bb.ao:                                            ; preds = %bb.an
  %i.es = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull @.str.45)
          to label %bb.ap unwind label %.body85.from.180

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
          to label %.noexc84 unwind label %.body85.from.

.noexc84:                                         ; preds = %bb.ap
  unreachable

.body85.from.180:                                 ; preds = %bb.ao
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.es) #31
  br label %.body85

bb.aq:                                            ; preds = %bb.an
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.reload243 = load ptr, ptr %.reload.addr242, align 8, !tbaa !5508
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload240 = load ptr, ptr %.reload.addr239, align 8, !tbaa !5508
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.reload237 = load i64, ptr %.reload.addr236, align 8, !tbaa !5508
  %.reload204 = load ptr, ptr %.reload.addr, align 8, !tbaa !5508
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ev = ptrtoint ptr %.reload240 to i64
  %i.ew = ptrtoint ptr %.reload243 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = add i64 %i.ex, %.reload237              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.reload215, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %.reload215, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %.reload215, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.reload204, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.fe = load i64, ptr %i.fb, align 8, !tbaa !5403
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !3313
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !3326
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !5397
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = add i64 %i.fe, %i.fi
  %i.fl = sub i64 %i.fk, %i.fj                    ; 2 uses
  %i.fm = sub i64 %i.fl, %i.ey
  %i.fn = load i8, ptr %i.eu, align 8, !tbaa !3331, !range !2003, !noundef !166
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = icmp ne i64 %i.fl, %i.ey
  %i.fq = and i1 %i.fp, %i.fo
  %i.fr = zext i1 %i.fq to i8
  store i8 %i.fr, ptr %i.fc, align 8, !tbaa !5510
  %i.fs = load i32, ptr %i.fd, align 8, !tbaa !2424
  store i32 2, ptr %i.fd, align 8, !tbaa !2424
  %cond.i.i.i88 = icmp eq i32 %i.fs, 1
  br i1 %cond.i.i.i88, label %bb.ar, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit, !prof !2230

bb.ar:                                            ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !2051
  %.not.i.i.i.i.i89 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i89, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ft) #31
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.fm, ptr %i.fv, align 8, !tbaa !2028
  store i32 0, ptr %i.fd, align 8, !tbaa !34
  %i.fw = load i32, ptr %.reload.addr245, align 8, !tbaa !44
  %cond.i = icmp eq i32 %i.fw, 1
  br i1 %cond.i, label %bb.at, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2230

bb.at:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !2051
  %.not.i.i.i90 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i90, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.au, %bb.at, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueImEEvOT_.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.fz) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr244, align 8, !tbaa !11
  %i.ga = load ptr, ptr %i.cu, align 8, !tbaa !2051
  %.not.i.i.i.i91 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i91, label %_ZN5folly4coro12ReadCallbackD2Ev.exit92, label %bb.av

bb.av:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #31, !inline_history !2053
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit92

_ZN5folly4coro12ReadCallbackD2Ev.exit92:          ; preds = %bb.av, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gb) #31, !inline_history !2053
  br label %bb.ax

.body85.from.182:                                 ; preds = %bb.am
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  br label %.body85

.body85.from.:                                    ; preds = %bb.ap
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body85

.body85:                                          ; preds = %.body85.from., %.body85.from.182, %.body85.from.180, %.body85.from._ZN5folly4coro8co_errorD2Ev.exit80
  %.pn36 = phi { ptr, i32 } [ %i.et, %.body85.from.180 ], [ %i.ek, %.body85.from._ZN5folly4coro8co_errorD2Ev.exit80 ], [ %i.gc, %.body85.from.182 ], [ %i.gd, %.body85.from. ] ; 3 uses
  %i.ge = load i32, ptr %.reload.addr245, align 8, !tbaa !44
  %cond.i93 = icmp eq i32 %i.ge, 1
  br i1 %cond.i93, label %bb.aw, label %.body51.from.193, !prof !2230

bb.aw:                                            ; preds = %.body85
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !2051
  %.not.i.i.i94 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i94, label %.body51.from.193, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit95.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit95.from.: ; preds = %bb.aw
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) #31
  br label %.body51.from.193

.body51.from.193:                                 ; preds = %.from.188, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit95.from., %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit71.from.170, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.ab, %.body85, %bb.aw
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bx, %.from.188 ], [ %.pn36, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit95.from. ], [ %i.df, %bb.ab ], [ %.pn36, %.body85 ], [ %i.by, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit71.from.170 ], [ %i.df, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %.pn36, %bb.aw ]
  call void @_ZN5folly4coro12ReadCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %.reload.addr244) #31
  br label %.body

.body:                                            ; preds = %.body51.from.193, %.body51.from.191, %.body51.from.190, %.body51.from., %.body.from., %.body.from.196, %.body.from.197, %.body.from.194
  %.pn36.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %.body.from.197 ], [ %.pn, %.body.from.196 ], [ %i.t, %.body.from.194 ], [ %i.bv, %.body.from. ], [ %.pn36.pn.pn, %.body51.from.193 ], [ %i.ah, %.body51.from. ], [ %i.bw, %.body51.from.191 ], [ %.pn.i, %.body51.from.190 ]
  %.9 = extractvalue { ptr, i32 } %.pn36.pn.pn.pn.pn.pn, 0
  %i.gh = call ptr @__cxa_begin_catch(ptr %.9) #31 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr255) #31
  invoke void @__cxa_end_catch()
          to label %bb.ax unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit103

bb.ax:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, %_ZN5folly4coro12ReadCallbackD2Ev.exit92, %.body
  store ptr null, ptr %0, align 8
  store i3 -4, ptr %index.addr, align 8
  %i.gi = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr248, ptr nonnull %0) #31 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  musttail call fastcc void %i.gj(ptr nonnull %i.gi)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit103: ; preds = %.body
  %i.gk = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i3 -4, ptr %index.addr, align 8
  resume { ptr, i32 } %i.gk

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro9Transport4readERNS_10IOBufQueueEmmNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy(ptr noundef nonnull align 8 dereferenceable(416) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr244 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr245 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload.addr248 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge46
    i3 2, label %AfterCoroSuspend135
    i3 3, label %AfterCoroSuspend139
    i3 -4, label %AfterCoroSuspend
  ]

.critedge46:                                      ; preds = %resume.entry
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.a = load ptr, ptr %.reload.addr247, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.a, null
  br i1 %.not.i.i60, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit61, label %bb.a

bb.a:                                             ; preds = %.critedge46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke fastcc void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit61 unwind label %bb.b, !inline_history !5460

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit61: ; preds = %bb.a, %.critedge46
  %i.f = load ptr, ptr %.reload.addr248, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.f, null
  br i1 %.not.i.i62, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65 unwind label %bb.d, !inline_history !5460

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65:        ; preds = %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.k) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr244, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend135:                              ; preds = %resume.entry
  %.reload.addr249 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.n = load ptr, ptr %.reload.addr249, align 8, !tbaa !2051
  %.not.i.i.i72 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i72, label %.critedge48, label %.critedge48.sink.split

AfterCoroSuspend139:                              ; preds = %resume.entry
  %.reload.addr250 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.o = load ptr, ptr %.reload.addr250, align 8, !tbaa !2051
  %.not.i.i.i82 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i82, label %.critedge48, label %.critedge48.sink.split

.critedge48.sink.split:                           ; preds = %AfterCoroSuspend139, %AfterCoroSuspend135
  %.reload.addr250.sink = phi ptr [ %.reload.addr249, %AfterCoroSuspend135 ], [ %.reload.addr250, %AfterCoroSuspend139 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr250.sink) #31
  br label %.critedge48

.critedge48:                                      ; preds = %.critedge48.sink.split, %AfterCoroSuspend139, %AfterCoroSuspend135
  %i.p = load i32, ptr %.reload.addr245, align 8, !tbaa !44
  %cond.i97 = icmp eq i32 %i.p, 1
  br i1 %cond.i97, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99, !prof !2230

bb.e:                                             ; preds = %.critedge48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2051
  %.not.i.i.i98 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i98, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99:   ; preds = %bb.f, %bb.e, %.critedge48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr244, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2051
  %.not.i.i.i.i100 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i100, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend.sink.split.sink.split:           ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65
  %.sink = phi ptr [ %i.l, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65 ], [ %i.t, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #31
  br label %AfterCoroSuspend.sink.split

AfterCoroSuspend.sink.split:                      ; preds = %AfterCoroSuspend.sink.split.sink.split, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit99, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #31
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %AfterCoroSuspend.sink.split, %resume.entry, %resume.entry
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %cond.i.i = icmp eq i32 %i.x, 1
  br i1 %cond.i.i, label %bb.g, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, !prof !2230

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2051
  %.not.i.i.i.i102 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i102, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #31
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit.i

_ZN5folly6detail7TryBaseImED2Ev.exit.i:           ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 8 acq_rel, align 8 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  br i1 %i.ae, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.ad, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ab) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ab) #31, !call_target !2009, !inline_history !5545
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1965 ; 2 uses
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !2028
  %i.an = and i64 %i.ak, 3
  %.not3.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #31, !call_target !2029, !inline_history !5546
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 416)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume(ptr noundef nonnull align 8 dereferenceable(384) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %.reload.addr213 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %.reload.addr214 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %.reload.addr215 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.reload.addr216 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %.reload.addr217 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %.reload.addr218 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr223 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge37
    i3 2, label %CoroEnd
    i3 3, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr195 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.reload196 = load ptr, ptr %.reload.addr195, align 8, !tbaa !5547
  %i.a = getelementptr inbounds nuw i8, ptr %.reload196, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !5510, !range !2003, !noundef !166
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.a, label %bb.d

bb.a:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !5510
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2424
  store i32 2, ptr %i.d, align 8, !tbaa !2424
  %cond.i.i.i = icmp eq i32 %i.e, 1
  br i1 %cond.i.i.i, label %bb.b, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, !prof !2230

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2051
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #31
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !2028
  store i32 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.ar

bb.d:                                             ; preds = %.critedge
  %i.i = load ptr, ptr @_ZZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, align 8, !tbaa !2252 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.18, i32 noundef 5)
          to label %bb.g unwind label %.from.183

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.i, align 4, !tbaa !7
  %i.m = icmp sgt i32 %i.l, 4
  br i1 %i.m, label %bb.h, label %.critedge35

bb.g:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.h, label %.critedge35

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.18, i32 noundef 60)
          to label %bb.i unwind label %.from.142

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %.from.144  ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.from.144 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload206 = load ptr, ptr %.reload.addr205, align 8, !tbaa !5547
  %.reload.addr200 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload201 = load ptr, ptr %.reload.addr200, align 8, !tbaa !5547
  %i.p = ptrtoint ptr %.reload206 to i64
  %i.q = ptrtoint ptr %.reload201 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.r)
          to label %.critedge34 unwind label %.from.144 ; 0 uses

.critedge34:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.critedge35

.critedge35:                                      ; preds = %.critedge34, %bb.g, %bb.f
  %.reload194 = load ptr, ptr %.reload.addr195, align 8, !tbaa !5547
  %i.t = getelementptr inbounds nuw i8, ptr %.reload194, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !5513 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.k, label %_ZN5folly9EventBase5timerEv.exit

bb.k:                                             ; preds = %.critedge35
  %i.x = invoke noalias noundef nonnull dereferenceable(16712) ptr @_Znwm(i64 noundef 16712) #34
          to label %.noexc unwind label %.body.from.179 ; 4 uses

.noexc:                                           ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !2028, !noalias !5549
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.x, ptr noundef nonnull align 16 dereferenceable(632) %i.u, i64 %.sroa.0.0.copyload.i.i, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i unwind label %.body.from., !noalias !5549

.body.from.:                                      ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 16712) #30, !noalias !5549
  br label %.from..body

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i: ; preds = %.noexc
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !5513 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !5513
  %.not.i.i.i.i.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i42, label %_ZN5folly9EventBase5timerEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 200 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(13) %i.ab)
          to label %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i unwind label %bb.m, !inline_history !16

_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i: ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !5513
  br label %_ZN5folly9EventBase5timerEv.exit

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN5folly9EventBase5timerEv.exit:                 ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i, %.critedge35, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i
  %i.ah = phi ptr [ %.pre.i, %_ZN5folly9EventBase5timerEv.exit.from.._ZNSt10unique_ptrIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS0_18DelayedDestruction10DestructorEED2Ev.exit_crit_edge.i ], [ %i.w, %.critedge35 ], [ %i.x, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i ]
  %.reload192 = load ptr, ptr %.reload.addr195, align 8, !tbaa !5547
  %i.ai = getelementptr inbounds nuw i8, ptr %.reload192, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr212, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.ak, align 8, !tbaa !5396
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.am, align 8, !tbaa !2051
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly11AsyncReader12ReadCallbackE, i64 16), ptr %i.an, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ao, align 8, !tbaa !5517
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %bb.n unwind label %.from.137

bb.n:                                             ; preds = %_ZN5folly9EventBase5timerEv.exit
  %.reload.addr210 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.reload211 = load i64, ptr %.reload.addr210, align 8, !tbaa !5547 ; 3 uses
  %.reload.addr198 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 16), ptr %.reload.addr212, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 112), ptr %i.an, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly4coro12ReadCallbackE, i64 232), ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.aq, align 8, !tbaa !3330
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.ar, align 8, !tbaa !3331
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load <2 x ptr>, ptr %.reload.addr198, align 8, !tbaa !5547
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !3339
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store i64 %.reload211, ptr %i.av, align 8, !tbaa !2028
  %i.aw = icmp sgt i64 %.reload211, 0
  br i1 %i.aw, label %bb.o, label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE15scheduleTimeoutEPNS6_8CallbackES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.ah, ptr noundef nonnull %i.ap, i64 %.reload211)
          to label %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit unwind label %.from.135

.from.137:                                        ; preds = %_ZN5folly9EventBase5timerEv.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.178

.from.135:                                        ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #31
  br label %.body.from.178

.body.from.178:                                   ; preds = %.from.137, %.from.135
  %.pn.i = phi { ptr, i32 } [ %i.ay, %.from.135 ], [ %i.ax, %.from.137 ]
  call void @_ZN5folly4coro21TransportCallbackBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(176) %.reload.addr212) #31
  br label %.from..body

_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit: ; preds = %bb.o, %bb.n
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.an)
          to label %.from.127.i unwind label %.from.176, !call_target !2441

.from.127.i:                                      ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit
  %i.bd = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 304)
          to label %.from.139 unwind label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit61.from.156, !inline_history !5518 ; 9 uses

.from.139:                                        ; preds = %.from.127.i
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %i.bd, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  store ptr %.reload.addr212, ptr %.spill.addr.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.bf, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store i32 2, ptr %i.bg, align 8, !tbaa !44
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 288
  store i3 0, ptr %index.addr163.i, align 8
  store ptr %i.bd, ptr %.reload.addr216, align 8, !alias.scope !5552
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr215, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr223, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr216)
          to label %bb.p unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.p:                                             ; preds = %.from.139
  store ptr %.reload.addr215, ptr %.reload.addr214, align 8
  store i3 1, ptr %index.addr, align 8
  %i.bh = call ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseImEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr215, ptr nonnull %0) #31 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  musttail call fastcc void %i.bi(ptr nonnull %i.bh)
  ret void

.from.183:                                        ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.142:                                        ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.182

.from.144:                                        ; preds = %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  br label %.from.182

.from.182:                                        ; preds = %.from.142, %.from.144
  %.pn = phi { ptr, i32 } [ %i.bl, %.from.144 ], [ %i.bk, %.from.142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.from..body

.body.from.179:                                   ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.176:                                        ; preds = %_ZN5folly4coro12ReadCallbackC2ERNS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERNS_14AsyncTransportENS_5RangeIPhEES7_.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.181

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit61.from.156: ; preds = %.from.127.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.181

.critedge37:                                      ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5555)
  %i.bp = load ptr, ptr %.reload.addr214, align 8, !tbaa !5449, !noalias !5555, !nonnull !166, !align !2094 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5558)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1982, !noalias !5561 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !44, !noalias !5561 ; 2 uses
  store i32 %i.bs, ptr %.reload.addr213, align 8, !tbaa !44, !alias.scope !5561
  %cond.i.i.i.i = icmp eq i32 %i.bs, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %.critedge37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5565
  store i64 %i.bv, ptr %i.bt, align 8, !alias.scope !5565
  store i64 0, ptr %i.bu, align 8, !noalias !5565
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !37, !noalias !5561
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %.critedge37, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.bq, %.critedge37 ] ; 2 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !37, !noalias !5561
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke fastcc void %i.bx(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.q, !noalias !5561, !inline_history !5460

bb.q:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #29, !noalias !5561
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ca = load ptr, ptr %.reload.addr215, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i46, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47, label %bb.r

bb.r:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke fastcc void %i.cc(ptr nonnull %i.ca)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47 unwind label %bb.s, !inline_history !5460

bb.s:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47: ; preds = %bb.r, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.cf = load ptr, ptr %.reload.addr216, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i48, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke fastcc void %i.ch(ptr nonnull %i.cf)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.u, !inline_history !5460

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %bb.t, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit47
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not97 = icmp eq ptr %i.cl, null
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  br i1 %.not97, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5566)
  store i64 %i.cm, ptr %.reload.addr217, align 8, !alias.scope !5566
  store i64 0, ptr %i.ck, align 8, !noalias !5566
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !2424
  store i32 2, ptr %i.cn, align 8, !tbaa !2424
  %cond.i.i.i56 = icmp eq i32 %i.co, 1
  br i1 %cond.i.i.i56, label %bb.w, label %bb.x, !prof !2230

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !2051
  %.not.i.i.i.i.i57 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i57, label %bb.x, label %.from.146

.from.146:                                        ; preds = %bb.w
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #31
  %.pre = load i64, ptr %.reload.addr217, align 8, !noalias !5569
  br label %bb.x

bb.x:                                             ; preds = %.from.146, %bb.v, %bb.w
  %i.cr = phi i64 [ %.pre, %.from.146 ], [ %i.cm, %bb.v ], [ %i.cm, %bb.w ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !5569
  store i64 0, ptr %.reload.addr217, align 8, !noalias !5569
  store i32 1, ptr %i.cn, align 8, !tbaa !34
  store i3 2, ptr %index.addr, align 8
  %i.ct = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr214, ptr nonnull %0) #31 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  musttail call fastcc void %i.cu(ptr nonnull %i.ct)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %.from.139
  %i.cv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cw = load ptr, ptr %.reload.addr216, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i58, label %.body.from.181, label %bb.y

bb.y:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke fastcc void %i.cy(ptr nonnull %i.cw)
          to label %.body.from.181 unwind label %bb.z, !inline_history !5460

bb.z:                                             ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #29
  unreachable

bb.aa:                                            ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.db = load i32, ptr %.reload.addr213, align 8, !tbaa !44
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2051
  %.not6.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not6.i.i.i.i.i, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #31 ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i64, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef null) #31 ; 0 uses
  %i.dh = icmp eq ptr %i.df, @_ZTIN5folly18OperationCancelledE
  br i1 %i.dh, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit

_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.di = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #31
  %.not26 = icmp eq ptr %i.di, null
  br i1 %.not26, label %bb.ae, label %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread

_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread: ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit, %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dl = load i8, ptr %i.dj, align 8, !tbaa !3331, !range !2003, !noundef !166
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = load i64, ptr %i.dk, align 8
  %i.do = icmp ne i64 %i.dn, 0
  %or.cond.not = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.not, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit
  %i.dp = load i32, ptr %.reload.addr213, align 8, !tbaa !44
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5folly6detail16throw_exception_INS_12TryExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.6) #15
          to label %.noexc65 unwind label %.from._ZN5folly4coro8co_errorD2Ev.exit70

.noexc65:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5572)
  %i.ds = load i64, ptr %i.dd, align 8, !noalias !5572 ; 3 uses
  store i64 %i.ds, ptr %.reload.addr218, align 8, !alias.scope !5572
  store i64 0, ptr %i.dd, align 8, !noalias !5572
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !2424
  store i32 2, ptr %i.dr, align 8, !tbaa !2424
  %cond.i.i.i66 = icmp eq i32 %i.dt, 1
  br i1 %cond.i.i.i66, label %bb.ah, label %bb.ai, !prof !2230

bb.ah:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2051
  %.not.i.i.i.i.i67 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i67, label %bb.ai, label %.from.157

.from.157:                                        ; preds = %bb.ah
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du) #31
  %.pre99 = load i64, ptr %.reload.addr218, align 8, !noalias !5575
  br label %bb.ai

bb.ai:                                            ; preds = %.from.157, %bb.ag, %bb.ah
  %i.dw = phi i64 [ %.pre99, %.from.157 ], [ %i.ds, %bb.ag ], [ %i.ds, %bb.ah ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5575)
  store i64 %i.dw, ptr %i.dx, align 8, !alias.scope !5575
  store i64 0, ptr %.reload.addr218, align 8, !noalias !5575
  store i32 1, ptr %i.dr, align 8, !tbaa !34
  store i3 3, ptr %index.addr, align 8
  %i.dy = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr215, ptr nonnull %0) #31 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  musttail call fastcc void %i.dz(ptr nonnull %i.dy)
  ret void

.from._ZN5folly4coro8co_errorD2Ev.exit70:         ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNK5folly3TryINS_4UnitEE21tryGetExceptionObjectINS_18OperationCancelledEEEPKT_v.exit.thread, %bb.aa
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !5547
  %i.eb = getelementptr inbounds nuw i8, ptr %.reload, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef null)
          to label %bb.ak unwind label %.from.169, !call_target !2441

bb.ak:                                            ; preds = %bb.aj
  %.reload190 = load ptr, ptr %.reload.addr, align 8, !tbaa !5547
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.reload190, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ek = load i8, ptr %i.eg, align 8, !tbaa !3331, !range !2003, !noundef !166
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = select i1 %i.el, i1 %i.en, i1 false
  %i.ep = zext i1 %i.eo to i8
  store i8 %i.ep, ptr %i.ei, align 8, !tbaa !5510
  %i.eq = load i32, ptr %i.ej, align 8, !tbaa !2424
  store i32 2, ptr %i.ej, align 8, !tbaa !2424
  %cond.i.i.i74 = icmp eq i32 %i.eq, 1
  br i1 %cond.i.i.i74, label %bb.al, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit, !prof !2230

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2051
  %.not.i.i.i.i.i75 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i75, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit, label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit.from.168

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit.from.168: ; preds = %bb.al
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er) #31
  %.pre98 = load i64, ptr %i.eh, align 8, !tbaa !2028
  br label %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit

_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit: ; preds = %bb.al, %bb.ak, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit.from.168
  %i.et = phi i64 [ %.pre98, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit.from.168 ], [ %i.em, %bb.ak ], [ %i.em, %bb.al ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !2028
  store i32 0, ptr %i.ej, align 8, !tbaa !34
  %i.ev = load i32, ptr %.reload.addr213, align 8, !tbaa !44
  %cond.i = icmp eq i32 %i.ev, 1
  br i1 %cond.i, label %bb.am, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2230

bb.am:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2051
  %.not.i.i.i76 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i76, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.an, %bb.am, %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIRmEEvOT_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ey) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr212, align 8, !tbaa !11
  %i.ez = load ptr, ptr %i.ck, align 8, !tbaa !2051
  %.not.i.i.i.i77 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i77, label %_ZN5folly4coro12ReadCallbackD2Ev.exit78, label %bb.ao

bb.ao:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #31, !inline_history !2053
  br label %_ZN5folly4coro12ReadCallbackD2Ev.exit78

_ZN5folly4coro12ReadCallbackD2Ev.exit78:          ; preds = %bb.ao, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fa) #31, !inline_history !2053
  br label %bb.ar

.from.169:                                        ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.ap:                                            ; preds = %.from.169, %.from._ZN5folly4coro8co_errorD2Ev.exit70
  %.pn29 = phi { ptr, i32 } [ %i.fb, %.from.169 ], [ %i.ea, %.from._ZN5folly4coro8co_errorD2Ev.exit70 ] ; 3 uses
  %i.fc = load i32, ptr %.reload.addr213, align 8, !tbaa !44
  %cond.i79 = icmp eq i32 %i.fc, 1
  br i1 %cond.i79, label %bb.aq, label %.body.from.181, !prof !2230

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !2051
  %.not.i.i.i80 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i80, label %.body.from.181, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit81.from.

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit81.from.: ; preds = %bb.aq
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd) #31
  br label %.body.from.181

.body.from.181:                                   ; preds = %.from.176, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit81.from., %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit61.from.156, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.y, %bb.ap, %bb.aq
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.bn, %.from.176 ], [ %.pn29, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit81.from. ], [ %i.cv, %bb.y ], [ %.pn29, %bb.ap ], [ %i.bo, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit61.from.156 ], [ %i.cv, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit ], [ %.pn29, %bb.aq ]
  call void @_ZN5folly4coro12ReadCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %.reload.addr212) #31
  br label %.from..body

.from..body:                                      ; preds = %.body.from.181, %.body.from.179, %.body.from.178, %.body.from., %.from.182, %.from.183
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %.from.183 ], [ %.pn, %.from.182 ], [ %.pn29.pn.pn, %.body.from.181 ], [ %i.z, %.body.from. ], [ %i.bm, %.body.from.179 ], [ %.pn.i, %.body.from.178 ]
  %.8 = extractvalue { ptr, i32 } %.pn29.pn.pn.pn.pn, 0
  %i.ff = call ptr @__cxa_begin_catch(ptr %.8) #31 ; 0 uses
  call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr223) #31
  invoke void @__cxa_end_catch()
          to label %bb.ar unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit89

bb.ar:                                            ; preds = %_ZN5folly4coro6detail11TaskPromiseImE12return_valueIiEEvOT_.exit, %_ZN5folly4coro12ReadCallbackD2Ev.exit78, %.from..body
  store ptr null, ptr %0, align 8
  store i3 -4, ptr %index.addr, align 8
  %i.fg = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseImEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr216, ptr nonnull %0) #31 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8
  musttail call fastcc void %i.fh(ptr nonnull %i.fg)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit89: ; preds = %.from..body
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i3 -4, ptr %index.addr, align 8
  resume { ptr, i32 } %i.fi

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro9Transport4readENS_5RangeIPhEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy(ptr noundef nonnull align 8 dereferenceable(384) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr213 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.reload.addr216 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %.critedge39
    i3 2, label %AfterCoroSuspend121
    i3 3, label %AfterCoroSuspend125
    i3 -4, label %AfterCoroSuspend
  ]

.critedge39:                                      ; preds = %resume.entry
  %.reload.addr215 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.a = load ptr, ptr %.reload.addr215, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.a, null
  br i1 %.not.i.i50, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit51, label %bb.a

bb.a:                                             ; preds = %.critedge39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke fastcc void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit51 unwind label %bb.b, !inline_history !5460

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit51: ; preds = %bb.a, %.critedge39
  %i.f = load ptr, ptr %.reload.addr216, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.f, null
  br i1 %.not.i.i52, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55 unwind label %bb.d, !inline_history !5460

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55:        ; preds = %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.k) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr212, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend121:                              ; preds = %resume.entry
  %.reload.addr217 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.n = load ptr, ptr %.reload.addr217, align 8, !tbaa !2051
  %.not.i.i.i62 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i62, label %.critedge41, label %.critedge41.sink.split

AfterCoroSuspend125:                              ; preds = %resume.entry
  %.reload.addr218 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.o = load ptr, ptr %.reload.addr218, align 8, !tbaa !2051
  %.not.i.i.i72 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i72, label %.critedge41, label %.critedge41.sink.split

.critedge41.sink.split:                           ; preds = %AfterCoroSuspend125, %AfterCoroSuspend121
  %.reload.addr218.sink = phi ptr [ %.reload.addr217, %AfterCoroSuspend121 ], [ %.reload.addr218, %AfterCoroSuspend125 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr218.sink) #31
  br label %.critedge41

.critedge41:                                      ; preds = %.critedge41.sink.split, %AfterCoroSuspend125, %AfterCoroSuspend121
  %i.p = load i32, ptr %.reload.addr213, align 8, !tbaa !44
  %cond.i83 = icmp eq i32 %i.p, 1
  br i1 %cond.i83, label %bb.e, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85, !prof !2230

bb.e:                                             ; preds = %.critedge41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2051
  %.not.i.i.i84 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i84, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85:   ; preds = %bb.f, %bb.e, %.critedge41
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.s) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr212, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2051
  %.not.i.i.i.i86 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i86, label %AfterCoroSuspend.sink.split, label %AfterCoroSuspend.sink.split.sink.split

AfterCoroSuspend.sink.split.sink.split:           ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55
  %.sink = phi ptr [ %i.l, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55 ], [ %i.t, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #31
  br label %AfterCoroSuspend.sink.split

AfterCoroSuspend.sink.split:                      ; preds = %AfterCoroSuspend.sink.split.sink.split, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit85, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #31
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %AfterCoroSuspend.sink.split, %resume.entry, %resume.entry
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34
  %cond.i.i = icmp eq i32 %i.x, 1
  br i1 %cond.i.i, label %bb.g, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, !prof !2230

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2051
  %.not.i.i.i.i88 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i88, label %_ZN5folly6detail7TryBaseImED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #31
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit.i

_ZN5folly6detail7TryBaseImED2Ev.exit.i:           ; preds = %bb.h, %bb.g, %AfterCoroSuspend
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1971 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i64 8 acq_rel, align 8 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  br i1 %i.ae, label %bb.j, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.ad, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ab) #31
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ab) #31, !call_target !2009, !inline_history !5545
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.l, %bb.k, %bb.i, %_ZN5folly6detail7TryBaseImED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1965 ; 2 uses
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !2028
  %i.an = and i64 %i.ak, 3
  %.not3.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i, label %bb.n, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #31, !call_target !2029, !inline_history !5546
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.m, %bb.n
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 384)
          to label %CoroEnd unwind label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.resume(ptr noundef nonnull align 16 dereferenceable(608) %0) #2 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr169 = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.reload.addr170 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.reload.addr171 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %.reload.addr172 = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %.reload.addr173 = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %.reload.addr174 = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  %.reload.addr175 = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %.reload.addr176 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 6 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %.critedge24
    i3 2, label %CoroEnd
    i3 3, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %i.a = invoke noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #34
          to label %.noexc unwind label %.body.from.136 ; 9 uses

.noexc:                                           ; preds = %.critedge
  %.spill.addr160 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  store ptr %i.a, ptr %.spill.addr160, align 16
  %.reload.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.reload144 = load ptr, ptr %.reload.addr143, align 16, !tbaa !5578
  invoke void @_ZN5folly11AsyncSocketC1EPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef %.reload144)
          to label %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit unwind label %.body.from.137, !noalias !5580

.body.from.137:                                   ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1176) #30, !noalias !5580
  br label %.body

_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit: ; preds = %.noexc
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef null)
          to label %bb.a unwind label %.from.134, !call_target !5583

bb.a:                                             ; preds = %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit
  %.reload.addr158 = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.reload159 = load ptr, ptr %.reload.addr158, align 8, !tbaa !5578
  %.reload.addr155 = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.reload156 = load ptr, ptr %.reload.addr155, align 16, !tbaa !5578
  %.reload.addr152 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.reload153 = load ptr, ptr %.reload.addr152, align 8, !tbaa !5578
  %.reload.addr149 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.reload150 = load i64, ptr %.reload.addr149, align 16, !tbaa !5578
  %.reload.addr146 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.reload147 = load ptr, ptr %.reload.addr146, align 8, !tbaa !5578
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.f, align 16, !tbaa !5396
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.a, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.h, align 16, !tbaa !2051
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro15ConnectCallbackE, i64 16), ptr %.reload.addr170, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly4coro15ConnectCallbackE, i64 72), ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.a, ptr %i.j, align 16, !tbaa !5586
  %i.k = trunc i64 %.reload150 to i32
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(40) %.reload147, i32 noundef %i.k, ptr noundef nonnull align 1 %.reload153, ptr noundef nonnull align 8 dereferenceable(40) %.reload156, ptr noundef nonnull align 8 dereferenceable(32) %.reload159) #31, !call_target !5587
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.resume, ptr %.reload.addr169, align 16
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @_ZN5folly4coro21TransportCallbackBase4waitEv.cleanup, ptr %destroy.addr.i, align 8
  %.reload.addr162.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %.reload.addr170, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.reload.addr162.i, i8 0, i64 58, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.o, align 16, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseINS_4UnitEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 2, ptr %i.q, align 16, !tbaa !44
  %index.addr163.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i3 0, ptr %index.addr163.i, align 16
  store ptr %.reload.addr169, ptr %.reload.addr174, align 8, !alias.scope !5613
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIS3_EEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr173, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr181, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr174)
          to label %bb.b unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store ptr %.reload.addr173, ptr %.reload.addr172, align 8
  store i3 1, ptr %index.addr, align 8
  %i.r = tail call ptr @_ZN5folly4coro4TaskINS_4UnitEE7Awaiter13await_suspendINS0_6detail11TaskPromiseINS0_9TransportEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr173, ptr nonnull %0) #31 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  musttail call fastcc void %i.s(ptr nonnull %i.r)
  ret void

.body.from.136:                                   ; preds = %.critedge
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.from.134:                                        ; preds = %_ZN5folly11AsyncSocket9newSocketEPNS_9EventBaseE.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ah

.critedge24:                                      ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  %i.v = load ptr, ptr %.reload.addr172, align 8, !tbaa !5449, !noalias !5616, !nonnull !166, !align !2094 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1982, !noalias !5622 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44, !noalias !5622 ; 2 uses
  store i32 %i.y, ptr %.reload.addr171, align 8, !tbaa !44, !alias.scope !5622
  %cond.i.i.i.i = icmp eq i32 %i.y, 1
  br i1 %cond.i.i.i.i, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from., label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.:   ; preds = %.critedge24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5623)
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5626
  store i64 %i.ab, ptr %i.z, align 16, !alias.scope !5626
  store i64 0, ptr %i.aa, align 8, !noalias !5626
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !37, !noalias !5622
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i:         ; preds = %.critedge24, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.from. ], [ %i.w, %.critedge24 ] ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !37, !noalias !5622
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke fastcc void %i.ad(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit unwind label %bb.c, !noalias !5622, !inline_history !5460

bb.c:                                             ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #29, !noalias !5622
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i
  %i.ag = load ptr, ptr %.reload.addr173, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i29, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit30, label %bb.d

bb.d:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke fastcc void %i.ai(ptr nonnull %i.ag)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit30 unwind label %bb.e, !inline_history !5460

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit30: ; preds = %bb.d, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskINS_4UnitEE7AwaiterEE12await_resumeEv.exit
  %i.al = load ptr, ptr %.reload.addr174, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.al, null
  br i1 %.not.i.i31, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit30
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke fastcc void %i.an(ptr nonnull %i.al)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit unwind label %bb.g, !inline_history !5460

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit:          ; preds = %bb.f, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit30
  %i.aq = load i32, ptr %.reload.addr171, align 8, !tbaa !44
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5627)
  %i.au = load i64, ptr %i.at, align 16, !noalias !5627
  store i64 %i.au, ptr %.reload.addr175, align 16, !alias.scope !5627
  store i64 0, ptr %i.at, align 16, !noalias !5627
  %i.av = load i32, ptr %i.as, align 16, !tbaa !2057
  store i32 2, ptr %i.as, align 16, !tbaa !2057
  switch i32 %i.av, label %bb.n [
    i32 0, label %bb.i
    i32 1, label %bb.l
  ], !prof !2058

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(13) %i.ay)
          to label %bb.n unwind label %bb.k, !inline_history !17

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #29, !inline_history !18
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2051
  %.not.i.i2.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i2.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  %i.bh = load i64, ptr %.reload.addr175, align 16, !noalias !5630
  store i64 %i.bh, ptr %i.bg, align 8, !alias.scope !5630
  store i64 0, ptr %.reload.addr175, align 16, !noalias !5630
  store i32 1, ptr %i.as, align 16, !tbaa !1956
  store i3 2, ptr %index.addr, align 8
  %i.bi = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr172, ptr nonnull %0) #31 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  musttail call fastcc void %i.bj(ptr nonnull %i.bi)
  ret void

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit: ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = load ptr, ptr %.reload.addr174, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i40, label %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke fastcc void %i.bn(ptr nonnull %i.bl)
          to label %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit65 unwind label %bb.p, !inline_history !5460

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #29
  unreachable

bb.q:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 16           ; 2 uses
  %.not93 = icmp eq ptr %i.br, null
  br i1 %.not93, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5633)
  store i64 %i.bt, ptr %.reload.addr176, align 8, !alias.scope !5633
  store i64 0, ptr %i.bq, align 16, !noalias !5633
  %i.bu = load i32, ptr %i.bs, align 16, !tbaa !2057
  store i32 2, ptr %i.bs, align 16, !tbaa !2057
  switch i32 %i.bu, label %bb.x [
    i32 0, label %bb.s
    i32 1, label %bb.v
  ], !prof !2058

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i47, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(13) %i.bx)
          to label %bb.x unwind label %bb.u, !inline_history !17

bb.u:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #29, !inline_history !18
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2051
  %.not.i.i2.i.i.i46 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i2.i.i.i46, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #31
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  %i.cg = load i64, ptr %.reload.addr176, align 8, !noalias !5636
  store i64 %i.cg, ptr %i.cf, align 8, !alias.scope !5636
  store i64 0, ptr %.reload.addr176, align 8, !noalias !5636
  store i32 1, ptr %i.bs, align 16, !tbaa !1956
  store i3 3, ptr %index.addr, align 8
  %i.ch = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr173, ptr nonnull %0) #31 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  musttail call fastcc void %i.ci(ptr nonnull %i.ch)
  ret void

bb.y:                                             ; preds = %bb.q
  %.reload.addr163 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.reload164 = load ptr, ptr %.reload.addr163, align 16, !tbaa !5578
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ck = ptrtoint ptr %.reload164 to i64
  %i.cl = load i32, ptr %i.cj, align 16, !tbaa !2057
  store i32 2, ptr %i.cj, align 16, !tbaa !2057
  switch i32 %i.cl, label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit [
    i32 0, label %bb.z
    i32 1, label %bb.ac
  ], !prof !2058

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.cm, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i55, label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(13) %i.co)
          to label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit unwind label %bb.ab, !inline_history !17

bb.ab:                                            ; preds = %bb.aa
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  tail call void @__clang_call_terminate(ptr %i.ct) #29, !inline_history !18
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2051
  %.not.i.i2.i.i.i54 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i2.i.i.i54, label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #31
  br label %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit

_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit: ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.reload = load ptr, ptr %.reload.addr, align 16, !tbaa !5578
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly4coro9TransportE, i64 16), ptr %i.cw, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.reload, ptr %i.cx, align 16, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ck, ptr %i.cy, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.cz, align 16, !tbaa !5510
  store i32 0, ptr %i.cj, align 16, !tbaa !1956
  %i.da = load i32, ptr %.reload.addr171, align 8, !tbaa !44
  %cond.i = icmp eq i32 %i.da, 1
  br i1 %cond.i, label %bb.ae, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !2230

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !2051
  %.not.i.i.i58 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i58, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %bb.af, %bb.ae, %_ZNSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr170, align 8, !tbaa !11
  %i.dd = load ptr, ptr %i.bq, align 16, !tbaa !2051
  %.not.i.i.i.i59 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i59, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit62, label %bb.ag

bb.ag:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #31, !inline_history !2053
  br label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit62

_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit62: ; preds = %bb.ag, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.de) #31, !inline_history !2053
  br label %bb.aj

.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit65: ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit, %bb.o
  tail call void @_ZN5folly4coro15ConnectCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr170) #31
  br label %bb.ah

bb.ah:                                            ; preds = %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit65, %.from.134
  %.pn19.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %.from._ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit65 ], [ %i.u, %.from.134 ]
  %.reload166 = load ptr, ptr %.spill.addr160, align 16, !tbaa !5578 ; 2 uses
  %i.df = load ptr, ptr %.reload166, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(13) %.reload166)
          to label %.body unwind label %bb.ai, !inline_history !16

bb.ai:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  tail call void @__clang_call_terminate(ptr %i.dj) #29
  unreachable

.body:                                            ; preds = %bb.ah, %.body.from.136, %.body.from.137
  %.pn19.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.b, %.body.from.137 ], [ %i.t, %.body.from.136 ], [ %.pn19.pn.pn.pn.pn, %bb.ah ]
  %.7 = extractvalue { ptr, i32 } %.pn19.pn.pn.pn.pn.pn, 0
  %i.dk = tail call ptr @__cxa_begin_catch(ptr %.7) #31 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS0_9TransportEEES4_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr181) #31
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit76

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit62, %.body
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 8
  %i.dl = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseINS0_9TransportEEEEENSt7__n486116coroutine_handleIvEENS9_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr174, ptr nonnull %0) #31 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  musttail call fastcc void %i.dm(ptr nonnull %i.dl)
  ret void

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit76: ; preds = %.body
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i3 -4, ptr %index.addr, align 8
  resume { ptr, i32 } %i.dn

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly4coro9Transport18newConnectedSocketEPNS_9EventBaseERKNS_13SocketAddressENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessISD_ESaISt4pairIKSD_SE_EEES6_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.destroy(ptr noundef nonnull align 16 dereferenceable(608) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr170 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.reload.addr171 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.reload.addr174 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.reload.addr181 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 600
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
    i3 1, label %.critedge26
    i3 2, label %AfterCoroSuspend111
    i3 3, label %AfterCoroSuspend115
    i3 -4, label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  ]

.critedge26:                                      ; preds = %resume.entry
  %.reload.addr173 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.a = load ptr, ptr %.reload.addr173, align 16, !tbaa !1982 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.a, null
  br i1 %.not.i.i32, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33, label %bb.a

bb.a:                                             ; preds = %.critedge26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke fastcc void %i.c(ptr nonnull %i.a)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33 unwind label %bb.b, !inline_history !5460

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33: ; preds = %bb.a, %.critedge26
  %i.f = load ptr, ptr %.reload.addr174, align 8, !tbaa !1982 ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.f, null
  br i1 %.not.i.i34, label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit37, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke fastcc void %i.h(ptr nonnull %i.f)
          to label %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit37 unwind label %bb.d, !inline_history !5460

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit37:        ; preds = %bb.c, %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskINS_4UnitEE7AwaiterEED2Ev.exit33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr170, align 8, !tbaa !11
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !2051
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit37
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #31, !inline_history !2053
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5folly4coro4TaskINS_4UnitEED2Ev.exit37
  %.reload.addr161 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.reload162 = load ptr, ptr %.reload.addr161, align 16, !tbaa !5578 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #31, !inline_history !2053
  %i.n = load ptr, ptr %.reload162, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(13) %.reload162)
          to label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit unwind label %bb.g, !inline_history !16

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

AfterCoroSuspend111:                              ; preds = %resume.entry
  %.reload.addr175 = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.s = load ptr, ptr %.reload.addr175, align 16, !tbaa !2051
  %.not.i.i.i44 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i44, label %.critedge28, label %.critedge28.sink.split

AfterCoroSuspend115:                              ; preds = %resume.entry
  %.reload.addr176 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.t = load ptr, ptr %.reload.addr176, align 8, !tbaa !2051
  %.not.i.i.i52 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i52, label %.critedge28, label %.critedge28.sink.split

.critedge28.sink.split:                           ; preds = %AfterCoroSuspend115, %AfterCoroSuspend111
  %.reload.addr176.sink = phi ptr [ %.reload.addr175, %AfterCoroSuspend111 ], [ %.reload.addr176, %AfterCoroSuspend115 ]
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr176.sink) #31
  br label %.critedge28

.critedge28:                                      ; preds = %.critedge28.sink.split, %AfterCoroSuspend115, %AfterCoroSuspend111
  %i.u = load i32, ptr %.reload.addr171, align 8, !tbaa !44
  %cond.i69 = icmp eq i32 %i.u, 1
  br i1 %cond.i69, label %bb.h, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71, !prof !2230

bb.h:                                             ; preds = %.critedge28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !2051
  %.not.i.i.i70 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i70, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #31
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71:   ; preds = %bb.i, %bb.h, %.critedge28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4coro21TransportCallbackBaseE, i64 16), ptr %.reload.addr170, align 8, !tbaa !11
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !2051
  %.not.i.i.i.i72 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #31, !inline_history !2053
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit71
  %.reload.addr167 = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.reload168 = load ptr, ptr %.reload.addr167, align 16, !tbaa !5578 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #31, !inline_history !2053
  %i.aa = load ptr, ptr %.reload168, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(13) %.reload168)
          to label %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit unwind label %bb.l, !inline_history !16

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #29
  unreachable

_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit: ; preds = %resume.entry, %resume.entry, %bb.k, %bb.f
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseINS0_9TransportEEES4_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr181) #31
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 608)
          to label %CoroEnd unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

CoroEnd:                                          ; preds = %_ZNSt10unique_ptrIN5folly11AsyncSocketENS0_18DelayedDestruction10DestructorEED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(none) }
attributes #34 = { builtin allocsize(0) }

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
!12 = !{!"vtable pointer", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN5folly14AsyncTransportE", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = distinct !{null}
!17 = distinct !{ptr @_ZN5folly4coro9TransportD2Ev, null}
!18 = !{ptr @_ZN5folly4coro9TransportD2Ev}
!19 = !{!20, !22, i64 8}
!20 = !{!"_ZTSN5folly4coro9TransportE", !21, i64 0, !22, i64 8, !23, i64 16, !29, i64 24}
!21 = !{!"_ZTSN5folly4coro11TransportIfE"}
!22 = !{!"p1 _ZTSN5folly9EventBaseE", !15, i64 0}
!23 = !{!"_ZTSSt10unique_ptrIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEE", !24, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorELb1ELb1EE", !25, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implIN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEE", !26, i64 0}
!26 = !{!"_ZTSSt5tupleIJPN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEEE", !27, i64 0}
!27 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly14AsyncTransportENS0_18DelayedDestruction10DestructorEEE", !28, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPN5folly14AsyncTransportELb0EE", !14, i64 0}
!29 = !{!"bool", !9, i64 0}
!30 = !{!31, !15, i64 0}
!31 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail24ScopeExitTaskPromiseBaseEEE", !15, i64 0}
!32 = !{!33, !15, i64 0}
!33 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !15, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN5folly6detail7TryBaseImEE", !36, i64 0, !9, i64 8}
!36 = !{!"_ZTSN5folly6detail7TryBaseImE8ContainsE", !9, i64 0}
!37 = !{!15, !15, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE17get_return_objectEv: argument 0"}
!40 = distinct !{!40, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseImEEmE17get_return_objectEv"}
!41 = !{!42}
end_hunk_1
