inline.NumInlined: 1792
inline.NumDeleted: 1060
begin_hunk_0_@_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !359
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_ED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !360
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !361 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !361
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !361 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !344

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !361
  %.fr.i.i.i.i.i = freeze i32 %i.k
  %.not.i.i.i.i.i = icmp ne i32 %.fr.i.i.i.i.i, 0
  %i.l = load ptr, ptr %i.a, align 8, !noalias !361 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %or.cond.i.i = select i1 %.not.i.i.i.i.i, i1 %i.m, i1 false
  %i.n = load ptr, ptr %.val, align 8
  %i.o = icmp eq ptr %i.n, null
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 %i.o, i1 false
  br i1 %or.cond17.i.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %.thread.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.p

.thread.i.i:                                      ; preds = %bb.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.q = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i.i
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !85
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !364
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !364
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

bb.h:                                             ; preds = %.thread.i.i
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i6.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit: ; preds = %bb.c, %bb.a, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.212, align 8            ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.std::optional", align 8     ; 10 uses
  %4 = alloca %"class.std::unique_ptr.132", align 8 ; 8 uses
  %5 = alloca %"class.std::unique_ptr.132", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.backedge, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %.sroa.10.0 = phi i8 [ 1, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ], [ %.sroa.10.6, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.backedge ] ; 8 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.o, label %bb.al, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.t       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.x) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !155 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.sroa.speculated)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.e, align 8, !tbaa !307, !range !101, !noundef !102
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %6, label %bb.x

6:                                                ; preds = %bb.h
  %7 = trunc nuw i8 %.sroa.10.0 to i1
  br i1 %7, label %bb.i, label %.invoke

.invoke:                                          ; preds = %6, %bb.w
  %8 = phi i32 [ %i.be, %bb.w ], [ 1, %6 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %8) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %6
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 0, ptr %i.i, align 8
  store i64 %i.f, ptr %2, align 8, !tbaa !25
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.h, align 8, !tbaa !236
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.g, align 8, !tbaa !239
  %i.ak = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 0, ptr null)
          to label %bb.j unwind label %bb.m, !inline_history !365

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.p unwind label %bb.l, !inline_history !365 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29, !inline_history !365
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.aq, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.o, !inline_history !365 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #29, !inline_history !365
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.p:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.ak, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %3, align 8, !tbaa !77
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %3, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.w, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

bb.s:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.t:                                             ; preds = %bb.e, %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.v:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.be = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %.invoke

bb.x:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !112 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.132") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %9 unwind label %11

9:                                                ; preds = %bb.x
  %10 = trunc nuw i8 %.sroa.10.0 to i1
  br i1 %10, label %bb.y, label %.invoke122

bb.y:                                             ; preds = %9
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !225
  store i64 %i.bk, ptr %5, align 8, !tbaa !225
  store ptr null, ptr %4, align 8, !tbaa !225
  %i.bl = invoke fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %5, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bm, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.z
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bm) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  br i1 %i.bl, label %bb.ac, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43

11:                                               ; preds = %bb.x
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49

bb.aa:                                            ; preds = %.invoke122
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.ab:                                            ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i35 = icmp eq ptr %i.bs, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36: ; preds = %bb.ab
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bs) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.bw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i39 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i39, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43, label %.invoke122

.invoke122:                                       ; preds = %9, %bb.ac
  %13 = phi i32 [ %i.bw, %bb.ac ], [ 1, %9 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %13) #28
          to label %.cont123 unwind label %bb.aa

.cont123:                                         ; preds = %.invoke122
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit43:       ; preds = %bb.ac, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %.sroa.10.3 = phi i8 [ 0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ 1, %bb.ac ]
  %.0 = phi i32 [ 1, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ 0, %bb.ac ]
  %i.bx = load ptr, ptr %4, align 8, !tbaa !225   ; 3 uses
  %.not.i44 = icmp eq ptr %i.bx, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bx) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36, %bb.ab, %bb.aa
  %.pn17 = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %i.br, %bb.ab ], [ %i.br, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36 ] ; 2 uses
  %i.cb = load ptr, ptr %4, align 8, !tbaa !225   ; 3 uses
  %.not.i47 = icmp eq ptr %i.cb, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cb) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, %11
  %.sroa.10.5 = phi i8 [ %.sroa.10.0, %11 ], [ 0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37 ], [ 0, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48 ]
  %.pn17.pn = phi { ptr, i32 } [ %12, %11 ], [ %.pn17, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37 ], [ %.pn17, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.w, %bb.p, %bb.r, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46
  %.sroa.10.6 = phi i8 [ 0, %bb.p ], [ %.sroa.10.3, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46 ], [ 0, %bb.r ], [ 1, %bb.w ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.p ], [ %.0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46 ], [ 1, %bb.r ], [ 2, %bb.w ]
  %i.cf = load i8, ptr %i.e, align 8, !tbaa !307, !range !101, !noundef !102
  %i.cg = trunc nuw i8 %i.cf to i1
  store i8 0, ptr %i.e, align 8, !tbaa !307
  br i1 %i.cg, label %bb.ad, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !16  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ci, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !85
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25, !inline_history !340
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25, !inline_history !340
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.ah ], [ %i.cv, %bb.ai ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.aj, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit, !prof !87

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %bb.ad, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  switch i32 %.1, label %bb.al [
    i32 0, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.backedge
    i32 2, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.backedge
  ]

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.backedge: ; preds = %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit, %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit
  br label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, !llvm.loop !366

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit6.i, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49
  %.sroa.10.7 = phi i8 [ %.sroa.10.5, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49 ], [ 0, %_ZNSt14_Function_baseD2Ev.exit6.i ], [ 0, %.loopexit.split-lp ], [ 0, %.loopexit ]
  %.pn20 = phi { ptr, i32 } [ %.pn17.pn, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49 ], [ %i.ap, %_ZNSt14_Function_baseD2Ev.exit6.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.v
  %.sroa.10.8 = phi i8 [ %.sroa.10.7, %.body ], [ %.sroa.10.0, %bb.v ]
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %.body ], [ %i.bd, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.an

bb.al:                                            ; preds = %bb.c, %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit
  %.sroa.10.9 = phi i8 [ %.sroa.10.0, %bb.c ], [ %.sroa.10.6, %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit ]
  %14 = trunc nuw i8 %.sroa.10.9 to i1
  br i1 %14, label %bb.am, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %15 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.al, %bb.am
  ret void

bb.an:                                            ; preds = %bb.t, %bb.u, %bb.ak, %bb.s
  %.sroa.10.10 = phi i8 [ %.sroa.10.8, %bb.ak ], [ %.sroa.10.0, %bb.s ], [ %.sroa.10.0, %bb.u ], [ %.sroa.10.0, %bb.t ]
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.ak ], [ %i.ba, %bb.s ], [ %i.bc, %bb.u ], [ %i.bb, %bb.t ]
  %16 = trunc nuw i8 %.sroa.10.10 to i1
  br i1 %16, label %bb.ao, label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

bb.ao:                                            ; preds = %bb.an
  %i.cx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

_ZNSt11unique_lockISt5mutexED2Ev.exit52:          ; preds = %bb.an, %bb.ao
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::FnOnce.161") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !367
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !369 ; 2 uses
  %i.a = getelementptr i8, ptr %.val.val, i64 8
  %i.b = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val1 = load ptr, ptr %i.b, align 8, !tbaa !157 ; 5 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val.val1, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val.val1, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !374
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !374
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3, !noalias !374
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !374 ; 0 uses
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i

_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSE_13ContinueTasksEvENKSF_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISJ_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOSS_DpOST_.exit unwind label %bb.e, !noalias !371, !inline_history !383 ; 3 uses

bb.e:                                             ; preds = %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val.val.val1, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !371
  %.not.i.i.i.i.i6.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !371 ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3, !noalias !371
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i

bb.h:                                             ; preds = %bb.f
  %i.o = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4, !noalias !371
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i8.i = phi i32 [ %i.m, %bb.g ], [ %i.o, %bb.h ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i8.i, 1
  br i1 %i.p, label %bb.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i
  %i.q = load ptr, ptr %.val.val.val1, align 8, !tbaa !19, !noalias !371
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !371
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.val.val.val1) #25, !noalias !371, !inline_history !384
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit9.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i7.i, %bb.e
  resume { ptr, i32 } %i.j

_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSE_13ContinueTasksEvENKSF_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISJ_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOSS_DpOST_.exit: ; preds = %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISA_SE_SF_EEbT_NS0_15CallbackOptionsEEUlvE_JEESH_St14__invoke_otherOT0_DpOT1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %i.i, align 8, !tbaa !19, !noalias !371
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <2 x ptr> %i.c, ptr %i.t, align 8, !tbaa !25, !noalias !371
  store ptr %i.i, ptr %0, align 8, !tbaa !80, !alias.scope !371
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK5arrow6FutureINS_8internal5EmptyEE14TryAddCallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS7_13ContinueTasksEvENKS8_clEvEUlRKNS_6StatusEE_NS3_21WrapStatusyOnComplete8CallbackISC_EEEEbT_NS_15CallbackOptionsEEUlvE_, ptr %0, align 8, !tbaa !272
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !25
  store i64 %.val.i, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !385
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !386
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !387 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
