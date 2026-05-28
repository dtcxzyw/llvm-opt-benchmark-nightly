inline.NumInlined: 1666
inline.NumDeleted: 907
begin_hunk_0_@_ZN2v88internal18JSAtomicsCondition18HandleAsyncTimeoutEPNS0_6detail20AsyncWaiterQueueNodeIS1_EE:bb.a
  br i1 %i.aw, label %_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.024.i = phi i32 [ %i.an, %bb.e ], [ %i.at, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ax = load i64, ptr %.0.i.i, align 8
  %i.ay = add i64 %i.ax, 23
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.bd = load ptr, ptr %i.ah, align 8
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZNKSt8functionIFjPPN2v88internal6detail15WaiterQueueNodeEEEclES5_.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFjPPN2v88internal6detail15WaiterQueueNodeEEEclES5_.exit.i: ; preds = %bb.f
  %i.be = load ptr, ptr %i.ai, align 8
  %i.bf = call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %.0.i.i, align 8
  %i.bh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = and i32 %.024.i, -4
  %i.bk = zext i1 %i.bi to i32
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = add i64 %i.bg, 23
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = ptrtoint ptr %i.bh to i64
  store atomic volatile i64 %i.bo, ptr %i.bn monotonic, align 8
  %i.bp = icmp eq i32 %i.bf, 0
  br label %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit

_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit: ; preds = %_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i, %_ZNKSt8functionIFjPPN2v88internal6detail15WaiterQueueNodeEEEclES5_.exit.i
  %.sroa.4.0.i = phi i32 [ %i.bl, %_ZNKSt8functionIFjPPN2v88internal6detail15WaiterQueueNodeEEEclES5_.exit.i ], [ 0, %_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i ]
  %.0.i5 = phi i1 [ %i.bp, %_ZNKSt8functionIFjPPN2v88internal6detail15WaiterQueueNodeEEEclES5_.exit.i ], [ true, %_ZN2v88internal6detail20WaiterQueueLockGuardC2EPSt6atomicIjERj.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store atomic i32 %.sroa.4.0.i, ptr %i.af release, align 4
  %.pre = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread

_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread: ; preds = %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit
  %i.bq = call noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #20, !inline_history !5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.pre1825 = load ptr, ptr %i.c, align 8         ; 2 uses
  br i1 %.0.i5, label %bb.h, label %bb.i

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.pre18 = load ptr, ptr %i.c, align 8           ; 2 uses
  br i1 %.0.i5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread.thread, %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread, %_ZNSt14_Function_baseD2Ev.exit
  %.pre1826 = phi ptr [ %.pre1825, %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread ], [ %.pre18, %_ZNSt14_Function_baseD2Ev.exit ], [ %.pre182528, %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread.thread ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 63904
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre1826, i64 56
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = call noundef i32 @_ZN2v88internal21CancelableTaskManager8TryAbortEm(ptr noundef nonnull align 8 dereferenceable(81) %i.bs, i64 noundef %i.bu) #20 ; 0 uses
  %.pre17 = load ptr, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread, %_ZNSt14_Function_baseD2Ev.exit, %bb.h
  %i.bw = phi ptr [ %.pre18, %_ZNSt14_Function_baseD2Ev.exit ], [ %.pre17, %bb.h ], [ %.pre1825, %_ZN2v88internal18JSAtomicsCondition15DequeueExplicitEPNS0_7IsolateENS0_12DirectHandleIS1_EEPSt6atomicIjERKSt8functionIFjPPNS0_6detail15WaiterQueueNodeEEE.exit.thread ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i64 0, ptr %i.bx, align 8
  call void @_ZN2v88internal18JSAtomicsCondition17HandleAsyncNotifyEPNS0_6detail20AsyncWaiterQueueNodeIS1_EE(ptr noundef %i.bw)
  store ptr %i.j, ptr %i.i, align 8
  %i.by = load i32, ptr %i.m, align 8
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.m, align 8
  %i.ca = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.ca, %i.l
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  store ptr %i.l, ptr %i.k, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.e) #20
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal7Isolate24async_waiter_queue_nodesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.d, align 8
  store ptr %1, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE9remove_ifIZNS4_20AsyncWaiterQueueNodeINS3_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPSE_EUlRS8_E_EEmT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.i, %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i ] ; 4 uses
  %i.i = load ptr, ptr %.sroa.05.010.i, align 8   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = icmp eq ptr %i.m, %.sroa.05.010.i
  %i.o = icmp eq ptr %i.m, %i.i
  %or.cond.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %.sroa.05.010.i, ptr noundef %i.i) #20
  %i.p = load i64, ptr %i.e, align 8
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.e, align 8
  %i.r = load i64, ptr %i.h, align 8
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.h, align 8
  br label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i

_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = icmp eq ptr %i.i, %i.c
  br i1 %i.t, label %._crit_edge.i, label %bb.b, !llvm.loop !65

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE6spliceESt20_List_const_iteratorIS8_ERSA_SC_.exit.i
  %.pre.i = load ptr, ptr %1, align 8             ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.pre.i, %1
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE9remove_ifIZNS4_20AsyncWaiterQueueNodeINS3_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPSE_EUlRS8_E_EEmT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.u, %_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %i.u = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6detail15WaiterQueueNodeEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6detail15WaiterQueueNodeEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.w) #20, !inline_history !66
  br label %_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6detail15WaiterQueueNodeEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #22
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE9remove_ifIZNS4_20AsyncWaiterQueueNodeINS3_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPSE_EUlRS8_E_EEmT_.exit, label %.lr.ph.i.i.i, !llvm.loop !51

_ZNSt7__cxx114listISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS5_EESaIS8_EE9remove_ifIZNS4_20AsyncWaiterQueueNodeINS3_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPSE_EUlRS8_E_EEmT_.exit: ; preds = %_ZSt10destroy_atISt10unique_ptrIN2v88internal6detail15WaiterQueueNodeESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18JSAtomicsCondition17HandleAsyncNotifyEPNS0_6detail20AsyncWaiterQueueNodeIS1_EE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_(ptr noundef nonnull %0)
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %1, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 63904
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 @_ZN2v88internal21CancelableTaskManager8TryAbortEm(ptr noundef nonnull align 8 dereferenceable(81) %i.p, i64 noundef %i.n) #20 ; 0 uses
  br label %1

1:                                                ; preds = %bb.d, %bb.c
  %2 = load ptr, ptr %i.a, align 8                ; 2 uses
  %3 = load ptr, ptr %i.c, align 8                ; 2 uses
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit, label %bb.e

bb.e:                                             ; preds = %1
  %i.r = load i64, ptr %3, align 8
  %i.s = ptrtoint ptr %2 to i64
  %i.t = add i64 %i.s, 560
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %2) #20
  br label %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %5 = ptrtoint ptr %.0.i.i.i to i64
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %i.u, align 8
  store i64 %i.r, ptr %.0.i.i.i, align 8
  br label %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit

_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit: ; preds = %1, %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i
  %.sroa.03.0.i = phi ptr [ %.0.i.i.i, %_ZN2v89LocalBaseINS_7ContextEE3NewEPNS_7IsolateEm.exit.i ], [ null, %1 ] ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #20
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = add i64 %i.af, 560
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.am = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.aa) #20
  br label %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i

_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i17 = phi ptr [ %i.am, %bb.h ], [ %i.ai, %bb.g ] ; 3 uses
  %i.an = ptrtoint ptr %.0.i.i.i17 to i64
  %i.ao = add i64 %i.an, 8
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.ah, align 8
  store i64 %i.ae, ptr %.0.i.i.i17, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i, %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit
  %.sroa.04.0.i = phi ptr [ %.0.i.i.i17, %_ZN2v89LocalBaseINS_7PromiseEE3NewEPNS_7IsolateEm.exit.i ], [ null, %_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE16GetNativeContextEv.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.ar = tail call ptr @_ZN2v88internal9JSPromise7ResolveENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr %.sroa.04.0.i, ptr nonnull %i.aq) #20 ; 0 uses
  tail call void @_ZN2v88internal6detail20AsyncWaiterQueueNodeINS0_18JSAtomicsConditionEE30RemoveFromAsyncWaiterQueueListEPS4_(ptr noundef nonnull %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_130RemovePromiseFromNativeContextEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEE(ptr noundef nonnull %i.b, ptr %.sroa.04.0.i)
  tail call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.03.0.i) #20
  store ptr %i.g, ptr %i.f, align 8
  %i.as = load i32, ptr %i.j, align 8
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.j, align 8
  %i.au = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.au, %i.i
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  store ptr %i.i, ptr %i.h, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.b) #20
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.i, %bb.j, %bb.b
  ret void
}

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal8ThreadId18GetCurrentThreadIdEv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZN2v88internal6detail15WaiterQueueNodeC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20
  tail call void @_ZN2v88internal6detail15WaiterQueueNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(56) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode6NotifyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20
  tail call void @_ZN2v88internal6detail15WaiterQueueNode27SetNotInListForVerificationEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6detail19SyncWaiterQueueNode28IsSameIsolateForAsyncCleanupEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode27CleanupMatchingAsyncWaitersERKSt8functionIFbPNS1_15WaiterQueueNodeEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6detail19SyncWaiterQueueNode23SetReadyForAsyncCleanupEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8) #21
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN2v88internal4Heap5stackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #2

declare void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.g = cmpxchg weak ptr %i.f, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.a) #20
  br label %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit

_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 32 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #20
  %i.j = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #20
  %i.k = tail call noundef i64 @_ZN2v84base4bits20SignedSaturatedAdd64Ell(i64 noundef %.sroa.2.0.copyload, i64 noundef %i.j) #20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !15
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.lr.ph.i, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.p = call i64 @_ZN2v84base9TimeTicks3NowEv() #20 ; 2 uses
  %.not.i = icmp slt i64 %i.p, %i.k
  br i1 %.not.i, label %bb.d, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = sub nsw i64 %i.k, %i.p
  store i64 %i.q, ptr %1, align 8
  %i.r = call noundef zeroext i1 @_ZN2v84base17ConditionVariable7WaitForEPNS0_5MutexERKNS0_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.s = load i8, ptr %i.l, align 8, !range !14, !noundef !15
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit, !llvm.loop !67

_ZZN2v88internal6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEENKUlvE_clEv.exit: ; preds = %bb.c, %bb.d, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit
  %.sink.i = phi i8 [ 1, %_ZN2v88internal11ParkedScopeC2EPNS0_9LocalHeapE.exit ], [ 0, %bb.c ], [ 1, %bb.d ]
end_hunk_0
