Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_session?download=true
inline.NumInlined: 13210
inline.NumDeleted: 5212
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE12cancel_timerERNS9_14per_timer_dataERNS0_8op_queueINS0_19scheduler_operationEEEm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  br i1 %i.c, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.a, align 8, !tbaa !420, !range !238, !noundef !239
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428, !nonnull !239, !align !412
  invoke void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.f unwind label %.thread

.thread:                                          ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !430    ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #45
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i
  %i.r = phi ptr [ %i.n, %.lr.ph.i ], [ %i.w, %bb.j ] ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !416  ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !430
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.o, align 8, !tbaa !431
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !416
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store i32 0, ptr %4, align 8, !tbaa !262
  store ptr %i.q, ptr %i.p, align 8, !tbaa !263
  invoke void %i.v(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
          to label %bb.j unwind label %bb.k, !inline_history !17

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.w = load ptr, ptr %5, align 8, !tbaa !430    ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #43
  unreachable

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret i64 %i.f

bb.l:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br i1 %i.c, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit6: ; preds = %.thread, %bb.l, %bb.m
  %i.ac = phi { ptr, i32 } [ %i.m, %.thread ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE12cancel_timerERNS9_14per_timer_dataERNS0_8op_queueINS0_19scheduler_operationEEEm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !432
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %1, %i.d
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %.not1731 = icmp eq i64 %3, 0
  %.pr.pre = load ptr, ptr %1, align 8, !tbaa !413 ; 2 uses
  br i1 %.not1731, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.h = phi ptr [ %.pr.pre, %.lr.ph ], [ %.pr35, %bb.i ] ; 6 uses
  %.01532 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.i ] ; 2 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 125, ptr %i.m, align 8, !tbaa !242
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !255
  %i.n = load ptr, ptr %1, align 8, !tbaa !413    ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !416  ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !413
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.f, align 8, !tbaa !417
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.n, align 8, !tbaa !416
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %.pr35 = phi ptr [ %i.o, %bb.h ], [ null, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit ] ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !416
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !431  ; 2 uses
  %.not.i21 = icmp eq ptr %i.q, null
  %..i = select i1 %.not.i21, ptr %2, ptr %i.q
  store ptr %i.h, ptr %..i, align 8, !tbaa !433
  store ptr %i.h, ptr %i.g, align 8, !tbaa !431
  %i.r = add nuw i64 %.01532, 1                   ; 2 uses
  %.not17 = icmp eq i64 %i.r, %3
  br i1 %.not17, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.pr = phi ptr [ %.pr.pre, %.preheader ], [ %.pr35, %bb.i ]
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %.thread28, label %bb.j

.thread28:                                        ; preds = %bb.b, %._crit_edge
  %.01530 = phi i64 [ %3, %._crit_edge ], [ %.01532, %bb.b ]
  tail call void @_ZN4asio6detail11timer_queueINS0_18chrono_time_traitsINSt6chrono3_V212system_clockENS_11wait_traitsIS5_EEEEE12remove_timerERNS9_14per_timer_dataE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %.thread28
  %.2 = phi i64 [ %.01530, %.thread28 ], [ %3, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler25post_deferred_completionsERNS0_8op_queueINS0_19scheduler_operationEEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !430    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !443, !range !238, !noundef !239
  %2 = trunc nuw i8 %i.d to i1
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %.08.i = load ptr, ptr %i.e, align 8            ; 2 uses
  %.not9.i = icmp ne ptr %.08.i, null
  %or.cond.not = select i1 %2, i1 %.not9.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.010.i = phi ptr [ %.0.i, %bb.c ], [ %.08.i, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.010.i, align 8, !tbaa !448
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.h, align 8, !tbaa !449 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !18

_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit: ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !450  ; 3 uses
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !431  ; 2 uses
  %.not8.i = icmp eq ptr %i.m, null
  %..i = select i1 %.not8.i, ptr %i.k, ptr %i.m
  store ptr %i.a, ptr %..i, align 8, !tbaa !433
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !433
  store ptr %i.o, ptr %i.l, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

.thread:                                          ; preds = %bb.c, %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !420, !range !238, !noundef !239
  %i.r = trunc nuw i8 %i.q to i1                  ; 4 uses
  br i1 %i.r, label %bb.e, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.e:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #41 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !433
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %.thread, %bb.e
  %i.u = phi ptr [ %i.a, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i10, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !431  ; 2 uses
  %.not8.i11 = icmp eq ptr %i.x, null
  %..i12 = select i1 %.not8.i11, ptr %i.v, ptr %i.x
  store ptr %i.u, ptr %..i12, align 8, !tbaa !433
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !433
  store ptr %i.z, ptr %i.w, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.aa = load i8, ptr %i.p, align 8, !tbaa !420, !range !238, !noundef !239
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !451 ; 2 uses
  %i.af = or i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !451
  %i.ag = icmp ugt i64 %i.ae, 1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.h
  %i.aj = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.ac) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.i:                                             ; preds = %bb.g, %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !452, !range !238, !noundef !239
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.noexc, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !453 ; 3 uses
  %.not.i14 = icmp eq ptr %i.ao, null
  br i1 %.not.i14, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ak, align 8, !tbaa !452
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc unwind label %bb.n, !inline_history !19

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.i
  br i1 %i.r, label %bb.l, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.l:                                             ; preds = %.noexc
  %i.as = load i8, ptr %i.p, align 8, !tbaa !420, !range !238, !noundef !239
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit15: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %i.aw

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %.noexc, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.m, %bb.l, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !430    ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #45
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi ptr [ %i.a, %.lr.ph ], [ %i.j, %bb.e ] ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !430
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !431
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !416
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store i32 0, ptr %1, align 8, !tbaa !262
  store ptr %i.d, ptr %i.c, align 8, !tbaa !263
  invoke void %i.i(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
          to label %bb.e unwind label %bb.f, !inline_history !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.j = load ptr, ptr %0, align 8, !tbaa !430    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #43
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !104

end_hunk_0
begin_hunk_1_@_ZN4asio6detail12posix_thread12start_threadEPNS1_9func_baseE:bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @asio_detail_posix_thread_function(ptr noundef %0) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !284
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit unwind label %_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit2

_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !284
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #41, !inline_history !1760
  ret ptr null

_ZN4asio6detail12posix_thread18auto_func_base_ptrD2Ev.exit2: ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !284
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0) #41, !inline_history !1760
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread9func_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread4funcINS0_9scheduler15thread_functionEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12posix_thread4funcINS0_9scheduler15thread_functionEE3runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store i32 0, ptr %1, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #45
  store ptr %i.c, ptr %i.b, align 8, !tbaa !263
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1762
  %i.e = call noundef i64 @_ZN4asio6detail9scheduler3runERSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler3runERSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::error_code", align 8   ; 5 uses
  %3 = alloca %"struct.asio::detail::scheduler_thread_info", align 8 ; 11 uses
  %4 = alloca %"class.asio::detail::call_stack<asio::detail::thread_context, asio::detail::thread_info_base>::context", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::conditionally_enabled_mutex::scoped_lock", align 8 ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #45 ; 2 uses
  store i32 0, ptr %1, align 8, !tbaa !242
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !255
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !420, !range !238, !noundef !239
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !507
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #41 ; 0 uses
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !420, !range !238
  %i.k = trunc nuw i8 %.pre.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !507
  br i1 %i.k, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !451
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !451
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !452, !range !238, !noundef !239
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !453  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !452
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.g, !inline_history !20

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.g, label %bb.f, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #41 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #41 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !448
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !450
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !449
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !1764
  store ptr %4, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %5, align 8, !tbaa !1765
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !420, !range !238, !noundef !239
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit, %bb.m
  %.sink = phi i8 [ 1, %bb.m ], [ %.sink.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  %.0.ph = phi i64 [ %spec.select, %bb.m ], [ 0, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  store i8 %.sink, ptr %i.ap, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, %bb.l
  %.0 = phi i64 [ %spec.select, %bb.l ], [ %.0.ph, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split ] ; 2 uses
  %i.aq = invoke noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1) ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !420, !range !238, !noundef !239
  %6 = trunc nuw i8 %i.at to i1
  %.not19 = xor i1 %6, true
  %i.au = load i8, ptr %i.ap, align 8, !range !238
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond = select i1 %.not19, i1 true, i1 %i.av
  br i1 %or.cond, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.m, !llvm.loop !1763

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aw) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, !llvm.loop !1763

bb.n:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i8, ptr %i.ap, align 8, !tbaa !727, !range !238, !noundef !239
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.be = load i8, ptr %i.ap, align 8, !tbaa !727, !range !238, !noundef !239
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.q, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !1764
  store ptr %i.bj, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !430 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bl, null
  br i1 %.not5.i.i, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bo = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.bt, %bb.u ] ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !416 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !430
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.bm, align 8, !tbaa !431
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.bo, align 8, !tbaa !416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store i32 0, ptr %2, align 8, !tbaa !262
  store ptr %i.a, ptr %i.bn, align 8, !tbaa !263
  invoke void %i.bs(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
          to label %bb.u unwind label %bb.v, !inline_history !17

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !430 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i17, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #43
  unreachable

_ZN4asio6detail21scheduler_thread_infoD2Ev.exit:  ; preds = %bb.u, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZN4asio6detail9scheduler4stopEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !1764
  store ptr %i.bw, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %common.resume

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit
  %.012 = phi i64 [ %.0, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ], [ 0, %bb.f ]
  ret i64 %.012
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.asio::detail::scheduler::task_cleanup", align 8 ; 8 uses
  %7 = alloca %"struct.asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !507, !range !238, !noundef !239
  %8 = trunc nuw i8 %i.b to i1
  br i1 %8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !430  ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !416  ; 2 uses
  store ptr %i.s, ptr %i.c, align 8, !tbaa !430
  %i.t = icmp eq ptr %i.s, null                   ; 2 uses
  %.not = icmp eq ptr %i.q, %i.e                  ; 2 uses
  br i1 %i.t, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !431
  br i1 %.not, label %bb.d, label %bb.s

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread: ; preds = %bb.c
  store ptr null, ptr %i.q, align 8, !tbaa !416
  br i1 %.not, label %bb.e, label %bb.t

bb.d:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  store i8 0, ptr %i.f, align 8, !tbaa !452
  br label %bb.i

bb.e:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  store i8 1, ptr %i.f, align 8, !tbaa !452
  %i.u = load i8, ptr %i.g, align 8, !tbaa !443, !range !238, !noundef !239
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !420, !range !238, !noundef !239
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !451 ; 2 uses
  %i.ab = or i64 %i.aa, 1
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !451
  %i.ac = icmp ugt i64 %i.aa, 1
  %i.ad = load i8, ptr %i.j, align 8, !tbaa !727, !range !238, !noundef !239
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #41 ; 0 uses
  store i8 0, ptr %i.j, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, %bb.g
  br i1 %i.ac, label %bb.h, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.h:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i
  %i.ah = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.ai = load i8, ptr %i.j, align 8, !tbaa !727, !range !238, !noundef !239
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i8, ptr %i.al, align 8, !tbaa !420, !range !238, !noundef !239
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.j, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i, %bb.i, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !732
  store ptr %1, ptr %i.k, align 8, !tbaa !733
  store ptr %2, ptr %i.l, align 8, !tbaa !734
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !453 ; 2 uses
  %i.ar = sext i1 %i.t to i64
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !284
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.au = load i64, ptr %i.o, align 8, !tbaa !738 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = atomicrmw add ptr %i.p, i64 %i.au seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !734
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !733
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %.pre, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %.pre3.i = phi ptr [ %.pre.i, %bb.m ], [ %2, %bb.l ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 112
  store i64 0, ptr %i.ay, align 8, !tbaa !738
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !420, !range !238, !noundef !239
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !727, !range !238, !noundef !239
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #41 ; 0 uses
  store i8 1, ptr %i.bd, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bi = load ptr, ptr %6, align 8, !tbaa !732   ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  store i8 1, ptr %i.bj, align 8, !tbaa !452
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 96 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !433 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 232 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !431 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bo, null
  %..i.i = select i1 %.not8.i.i, ptr %i.bm, ptr %i.bo
  store ptr %i.bl, ptr %..i.i, align 8, !tbaa !433
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !433
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 3 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !416
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 232 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !431 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.bu, null
  %..i2.i = select i1 %.not.i1.i, ptr %i.br, ptr %i.bu
  store ptr %i.bs, ptr %..i2.i, align 8, !tbaa !433
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !431
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.r:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ao

bb.s:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !723
  %i.by = zext i32 %i.bx to i64
  br label %bb.ad

bb.t:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !723
  %i.cb = zext i32 %i.ca to i64                   ; 4 uses
  %i.cc = load i8, ptr %i.g, align 8, !tbaa !443, !range !238, !noundef !239
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ad, label %bb.u

end_hunk_1
begin_hunk_2_@_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code:bb.a
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !451 ; 2 uses
  %i.cj = or i64 %i.ci, 1
  store i64 %i.cj, ptr %i.i, align 8, !tbaa !451
  %i.ck = icmp ugt i64 %i.ci, 1
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = load i8, ptr %i.j, align 8, !tbaa !727, !range !238, !noundef !239
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #41 ; 0 uses
  store i8 0, ptr %i.j, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.w
  %i.cp = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #41 ; 0 uses
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cq = load i8, ptr %i.f, align 8, !tbaa !452, !range !238, !noundef !239
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !453 ; 3 uses
  %.not.i30 = icmp eq ptr %i.cs, null
  br i1 %.not.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.f, align 8, !tbaa !452
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !284
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cw = load i8, ptr %i.j, align 8, !tbaa !727, !range !238, !noundef !239
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ab, label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !420, !range !238, !noundef !239
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ac, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  store i8 0, ptr %i.j, align 8, !tbaa !727
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ad:                                            ; preds = %bb.s, %bb.t
  %i.de = phi i64 [ %i.cb, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.df = load i8, ptr %i.j, align 8, !tbaa !727, !range !238, !noundef !239
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ae, label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !420, !range !238, !noundef !239
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.af, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dl) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31: ; preds = %bb.af, %bb.ae
  store i8 0, ptr %i.j, align 8, !tbaa !727
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31, %bb.ad, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i, %bb.aa, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.dn = phi i64 [ %i.de, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i31 ], [ %i.de, %bb.ad ], [ %i.cb, %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i ], [ %i.cb, %bb.aa ], [ %i.cb, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store ptr %0, ptr %7, align 8, !tbaa !740
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.do, align 8, !tbaa !741
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.dp, align 8, !tbaa !742
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !418
  invoke void %i.dr(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.dn)
          to label %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit unwind label %bb.am, !inline_history !39

_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit: ; preds = %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !743
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit
  store i32 0, ptr %i.ds, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !744 ; 3 uses
  store ptr %i.dw, ptr %4, align 8, !tbaa !744
  store ptr null, ptr %i.dv, align 8, !tbaa !744
  store ptr %i.dw, ptr %5, align 8, !tbaa !744
  %.not.i.i33 = icmp eq ptr %i.dw, null           ; 2 uses
  br i1 %.not.i.i33, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #41
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.ah, %bb.ag
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5) #40
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.aj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %5, align 8, !tbaa !744
  %.not.i2.i = icmp eq ptr %i.dy, null
  br i1 %.not.i2.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  br i1 %.not.i.i33, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i: ; preds = %bb.al, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %.body

bb.am:                                            ; preds = %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.dz, %bb.am ], [ %i.dx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i ]
  call void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ao

bb.an:                                            ; preds = %_ZN4asio6detail19scheduler_operation8completeEPvRKSt10error_codem.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %.loopexit

bb.ao:                                            ; preds = %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn

bb.ap:                                            ; preds = %bb.b
  %i.ea = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !420, !range !238, !noundef !239
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ap
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !451
  %i.ef = and i64 %i.ee, -2                       ; 2 uses
  store i64 %i.ef, ptr %i.i, align 8, !tbaa !451
  %i.eg = add i64 %i.ef, 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.eh = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.eg, %.lr.ph.preheader.i.i ]
  store i64 %i.eh, ptr %i.i, align 8, !tbaa !451
  %i.ei = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = tail call i32 @pthread_cond_wait(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull %i.ej) ; 0 uses
  %i.el = load i64, ptr %i.i, align 8, !tbaa !451 ; 3 uses
  %i.em = add i64 %i.el, -2
  store i64 %i.em, ptr %i.i, align 8, !tbaa !451
  %i.en = and i64 %i.el, 1
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i.i, label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, !llvm.loop !1766

_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %bb.ap
  %i.ep = tail call i32 @pause()                  ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %.lr.ph.i.i, %_ZN4asio6detail27conditionally_enabled_event5clearERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, %.thread
  %i.eq = load i8, ptr %i.a, align 8, !tbaa !507, !range !238, !noundef !239
  %9 = trunc nuw i8 %i.eq to i1
  br i1 %9, label %.loopexit, label %bb.b, !llvm.loop !1767

.loopexit:                                        ; preds = %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit, %bb.a, %bb.an
  %.3 = phi i64 [ 1, %bb.an ], [ 0, %bb.a ], [ 0, %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit ]
  ret i64 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::error_code", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !430  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #45
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.f = phi ptr [ %i.b, %.lr.ph.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !430
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !431
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.f, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store i32 0, ptr %1, align 8, !tbaa !262
  store ptr %i.e, ptr %i.d, align 8, !tbaa !263
  invoke void %i.j(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef 0)
          to label %bb.e unwind label %bb.f, !inline_history !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !430  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #43
  unreachable

_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev.exit: ; preds = %bb.e, %bb.a
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !183    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.v
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.v, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 2 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #41
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !744
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !734  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !738  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !732
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = atomicrmw add ptr %i.g, i64 %i.d seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !734
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK4asio9execution6detail17any_executor_base7executeINS_6detail7binder2IZN4crow6ServerINS6_4CrowIJNS6_12CookieParserENS6_17SessionMiddlewareINS6_13InMemoryStoreEEEEEENS6_18UnixSocketAcceptorENS6_17UnixSocketAdaptorEJS9_SC_EE3runEvEUlRKSt10error_codeiE_SH_iEEEEvOT_:bb.a
  call void @__clang_call_terminate(ptr %i.y) #43
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit:      ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.n

bb.i:                                             ; preds = %_ZN4asio6detail17executor_functionC2INS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEEET_RKT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !755   ; 3 uses
  %.not.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i7, label %_ZN4asio6detail17executor_functionD2Ev.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !757
  invoke void %i.ab(ptr noundef nonnull %i.aa, i1 noundef zeroext false)
          to label %_ZN4asio6detail17executor_functionD2Ev.exit8 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #43
  unreachable

_ZN4asio6detail17executor_functionD2Ev.exit8:     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !284
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 8) #41 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.ae, align 8, !tbaa !284
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.o

bb.n:                                             ; preds = %bb.c, %_ZN4asio6detail17executor_functionD2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.m, %_ZN4asio6detail17executor_functionD2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.z, %_ZN4asio6detail17executor_functionD2Ev.exit8 ], [ %i.af, %bb.m ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22executor_function_view8completeINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEEEEvPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !663
  tail call void @_ZN4crow6ServerINS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJS2_S5_EE4stopEv(ptr noundef nonnull align 8 dereferenceable(624) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !952
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !952
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !953  ; 5 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptr5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450  ; 4 uses
  %.not3.i = icmp eq ptr %i.h, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = load i8, ptr %i.p, align 1, !tbaa !102
  store i8 %i.q, ptr %i.d, align 1, !tbaa !102
  store ptr %i.d, ptr %i.o, align 8, !tbaa !183
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptr5resetEv.exit

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #41
  br label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptr5resetEv.exit

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptr5resetEv.exit: ; preds = %bb.e, %.thread.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail17executor_function8completeINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEEEvPNS1_9impl_baseEb(ptr noundef %0, i1 noundef zeroext %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.352", align 1 ; 4 uses
  %3 = alloca %"struct.asio::detail::executor_function::impl<asio::detail::binder2<(lambda at /opt-bench/work/crow/Crow/include/crow/http_server.h:211:15), std::error_code, int>, std::allocator<void>>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %2, ptr %3, align 8, !tbaa !2140
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !258
  %i.e = inttoptr i64 %i.d to ptr
  store ptr null, ptr %i.b, align 8, !tbaa !952
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !450  ; 4 uses
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !183
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 8, !tbaa !102
  store i8 %i.r, ptr %0, align 8, !tbaa !102
  store ptr %0, ptr %i.p, align 8, !tbaa !183
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #41
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !953
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4crow6ServerINS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJS2_S5_EE4stopEv(ptr noundef nonnull align 8 dereferenceable(624) %i.e)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptrD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.s

_ZN4asio6detail17executor_function4implINS0_7binder2IZN4crow6ServerINS4_4CrowIJNS4_12CookieParserENS4_17SessionMiddlewareINS4_13InMemoryStoreEEEEEENS4_18UnixSocketAcceptorENS4_17UnixSocketAdaptorEJS7_SA_EE3runEvEUlRKSt10error_codeiE_SF_iEESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler24post_deferred_completionEPNS0_19scheduler_operationE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !443, !range !238, !noundef !239
  %2 = trunc nuw i8 %i.b to i1
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %.08.i = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not9.i = icmp ne ptr %.08.i, null
  %or.cond.not = select i1 %2, i1 %.not9.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.010.i = phi ptr [ %.0.i, %bb.b ], [ %.08.i, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.010.i, align 8, !tbaa !448
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.f, align 8, !tbaa !449 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !18

_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit: ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450  ; 3 uses
  %.not.not = icmp eq ptr %i.h, null
  br i1 %.not.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr null, ptr %1, align 8, !tbaa !416
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !431  ; 2 uses
  %.not.i8 = icmp eq ptr %i.k, null
  %..i = select i1 %.not.i8, ptr %i.i, ptr %i.k
  store ptr %1, ptr %..i, align 8, !tbaa !433
  store ptr %1, ptr %i.j, align 8, !tbaa !431
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

.thread:                                          ; preds = %bb.b, %_ZN4asio6detail10call_stackINS0_14thread_contextENS0_16thread_info_baseEE8containsEPS2_.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !420, !range !238, !noundef !239
  %i.n = trunc nuw i8 %i.m to i1                  ; 3 uses
  br i1 %i.n, label %bb.d, label %.thread27

.thread27:                                        ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %1, align 8, !tbaa !416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431  ; 2 uses
  %.not.i928 = icmp eq ptr %i.q, null
  %..i1029 = select i1 %.not.i928, ptr %i.o, ptr %i.q
  store ptr %1, ptr %..i1029, align 8, !tbaa !433
  store ptr %1, ptr %i.p, align 8, !tbaa !431
  br label %bb.f

bb.d:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #41 ; 0 uses
  %.pre = load i8, ptr %i.l, align 8, !tbaa !420, !range !238
  %i.t = trunc nuw i8 %.pre to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %1, align 8, !tbaa !416
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !431  ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  %..i10 = select i1 %.not.i9, ptr %i.u, ptr %i.w
  store ptr %1, ptr %..i10, align 8, !tbaa !433
  store ptr %1, ptr %i.v, align 8, !tbaa !431
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !451  ; 2 uses
  %i.z = or i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !451
  %i.aa = icmp ugt i64 %i.y, 1
  br i1 %i.aa, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.f

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #41 ; 0 uses
  %i.ae = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.ab) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.f:                                             ; preds = %.thread27, %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !452, !range !238, !noundef !239
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.noexc, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !453 ; 3 uses
  %.not.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i11, label %.noexc, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.af, align 8, !tbaa !452
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !284
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.noexc unwind label %bb.k, !inline_history !19

.noexc:                                           ; preds = %bb.h, %bb.g, %bb.f
  br i1 %i.n, label %bb.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.i:                                             ; preds = %.noexc
  %i.an = load i8, ptr %i.l, align 8, !tbaa !420, !range !238, !noundef !239
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %.noexc, %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.j, %bb.i, %bb.c
  ret void

bb.k:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br i1 %i.n, label %bb.l, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit12

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.as) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit12

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit12: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.ar
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN4crow6ServerINS_4CrowIJNS_12CookieParserENS_17SessionMiddlewareINS_13InMemoryStoreEEEEEENS_18UnixSocketAcceptorENS_17UnixSocketAdaptorEJS2_S5_EE9do_acceptEvENUlSt10error_codeE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !291
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !292
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !284
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !48
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !284
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !48
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !102
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !242
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !293

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJNS0_12CookieParserENS0_17SessionMiddlewareINS0_13InMemoryStoreEEEEEEJS4_S7_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d
end_hunk_3
