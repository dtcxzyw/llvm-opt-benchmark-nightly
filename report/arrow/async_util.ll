inline.NumInlined: 1792
inline.NumDeleted: 1060
begin_hunk_0_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD2Ev:bb.a

bb.d:                                             ; preds = %bb.b
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.g, label %_ZN5arrow9StopTokenD2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br label %_ZN5arrow9StopTokenD2Ev.exit

_ZN5arrow9StopTokenD2Ev.exit:                     ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !89

bb.h:                                             ; preds = %_ZN5arrow9StopTokenD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !90, !range !101, !noundef !102
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow9StopTokenD2Ev.exit, %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ai, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !85
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !86
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !86
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i3 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i5 = phi i32 [ %i.al, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i5, 1
  br i1 %i.aw, label %bb.o, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !87

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.arrow::Result.155", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %5 = alloca %class.anon.159, align 8            ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %7 = alloca %"class.std::unique_lock", align 8  ; 10 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = invoke noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.e, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNK5arrow9StopToken4PollEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl13AbortUnlockedERKNS_6StatusEOSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %8, align 8, !tbaa !88     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !90, !range !101, !noundef !102
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

bb.j:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit10

bb.k:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.m = load ptr, ptr %8, align 8, !tbaa !88     ; 2 uses
  %.not.i9 = icmp eq ptr %i.m, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10, label %bb.l, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90, !range !101, !noundef !102
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN5arrow6StatusD2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %_ZN5arrow6StatusD2Ev.exit10

_ZN5arrow6StatusD2Ev.exit10:                      ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.l, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.q, align 8, !tbaa !88
  %.not = icmp eq ptr %.val, null                 ; 2 uses
  br i1 %.not, label %bb.o, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.r = load i64, ptr %1, align 8, !tbaa !225    ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 8 uses
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.t = invoke noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.o
  br i1 %i.t, label %bb.p, label %bb.w

bb.p:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK5arrow9StopToken4PollEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc11 unwind label %bb.bg

.noexc11:                                         ; preds = %bb.p
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl13AbortUnlockedERKNS_6StatusEOSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %.noexc11
  %i.u = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, label %bb.r, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !90, !range !101, !noundef !102
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit

bb.t:                                             ; preds = %.noexc11
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %.not.i6.i = icmp eq ptr %i.z, null
  br i1 %.not.i6.i, label %_ZN5arrow6StatusD2Ev.exit7.i, label %bb.u, !prof !89

bb.u:                                             ; preds = %bb.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !90, !range !101, !noundef !102
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit7.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit7.i

_ZN5arrow6StatusD2Ev.exit7.i:                     ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

bb.w:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !30
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !110, !range !101, !noundef !102
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #28
          to label %.noexc12 unwind label %bb.bg

.noexc12:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ai = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #25 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !110
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i

_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i:     ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i unwind label %.body.thread.i, !inline_history !227

.noexc.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !88
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.a, ptr %4, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #28
          to label %.noexc.i.i unwind label %bb.ah

.noexc.i.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ap, align 8, !tbaa !110
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.ad, align 8, !tbaa !30
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl13AbortUnlockedERKNS_6StatusEOSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.at = load i8, ptr %i.ap, align 8, !tbaa !110, !range !101, !noundef !102
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.ae, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.av = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.av) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i:        ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aw

bb.ag:                                            ; preds = %bb.av, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i, %bb.au
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread21.i

bb.ah:                                            ; preds = %bb.ab
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ai:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ba = load i8, ptr %i.ap, align 8, !tbaa !110, !range !101, !noundef !102
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.aj, label %.body.i

bb.aj:                                            ; preds = %bb.ai
  %i.bc = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i9.i.i, label %.body.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #25 ; 0 uses
  br label %.body.i

bb.al:                                            ; preds = %.noexc.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %5, align 8, !tbaa !228
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.bf, align 8, !tbaa !225
  %.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bg = ptrtoint ptr %5 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bj, align 8
  store i64 %i.bg, ptr %2, align 8, !tbaa !25
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bi, align 8, !tbaa !236
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr %i.bh, align 8, !tbaa !239
  %i.bk = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 0, ptr null)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !239 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i12.i.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.as unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #29
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !239 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i5.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit6.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i.i.i unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i.i.i:            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.val7.i.i = load ptr, ptr %i.bf, align 8, !tbaa !225 ; 3 uses
  %.not.i.i17.i.i = icmp eq ptr %.val7.i.i, null
  br i1 %.not.i.i17.i.i, label %.body.thread21.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i

bb.as:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.val8.i.i = load ptr, ptr %i.bf, align 8, !tbaa !225 ; 3 uses
  %.not.i.i13.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i.i13.i.i, label %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %bb.as
  %i.bu = load ptr, ptr %.val8.i.i, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val8.i.i) #25, !inline_history !240
  br label %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i

_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i, %bb.as
  br i1 %i.bk, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i
  %i.bx = load ptr, ptr %3, align 8, !tbaa !88
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i, label %bb.au, !prof !89

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i unwind label %bb.ag

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i: ; preds = %bb.au, %bb.at
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !77
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bz)
          to label %bb.av unwind label %bb.ag

bb.av:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !77
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl14OnTaskFinishedERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %bb.aw unwind label %bb.ag

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit6.i.i.i
  %i.cd = load ptr, ptr %.val7.i.i, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val7.i.i) #25, !inline_history !240
  br label %.body.thread21.i

bb.aw:                                            ; preds = %bb.av, %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i
  %.sroa.0.1.i = phi ptr [ null, %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i ], [ null, %bb.av ], [ %i.s, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i ] ; 2 uses
  %i.cg = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ax, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i, !prof !89

bb.ax:                                            ; preds = %bb.aw
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ck, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !85
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !241
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !241
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.bb ], [ %i.cx, %bb.bc ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.bd, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, !prof !87

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.az, %bb.ax
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !88 ; 2 uses
  %.not.i.i20.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i20.i.i, label %bb.bf, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i, !prof !242

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, %bb.aw
  %i.cz = phi ptr [ %.pr.i.i.i, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i ], [ %i.cg, %bb.aw ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !90, !range !101, !noundef !102
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i9.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i9.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split

.body.thread.i:                                   ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i

.body.thread21.i:                                 ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i, %_ZNSt14_Function_baseD2Ev.exit6.i.i.i, %bb.ag
  %.pn5.i.ph.i = phi { ptr, i32 } [ %i.bp, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i ], [ %i.bp, %_ZNSt14_Function_baseD2Ev.exit6.i.i.i ], [ %i.ax, %bb.ag ]
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

.body.i:                                          ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.pn.i.i = phi { ptr, i32 } [ %i.ay, %bb.ah ], [ %i.az, %bb.ai ], [ %i.az, %bb.aj ], [ %i.az, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i: ; preds = %.body.i, %.body.thread.i
  %eh.lpad-body19.i = phi { ptr, i32 } [ %i.dd, %.body.thread.i ], [ %.pn.i.i, %.body.i ]
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #25, !inline_history !243
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i13 = icmp eq i64 %i.r, 0
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split

bb.bg:                                            ; preds = %bb.x, %bb.p, %bb.o
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit7.i, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.dh, %bb.bg ], [ %i.y, %_ZN5arrow6StatusD2Ev.exit7.i ] ; 2 uses
  %.not.i14 = icmp eq i64 %i.r, 0
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15: ; preds = %.body
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split: ; preds = %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, %bb.bf
  %.sroa.0.1.i.sink44 = phi ptr [ %.sroa.0.1.i, %bb.bf ], [ %i.s, %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.0.1.i.sink44, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sroa.0.1.i.sink44) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split, %bb.bf, %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, %bb.n
  %i.do = load i8, ptr %i.b, align 8, !tbaa !110, !range !101, !noundef !102
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.bh, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.dq = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i18, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i1 %.not

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i, %.body.thread21.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15, %.body, %_ZN5arrow6StatusD2Ev.exit10, %bb.i
  %.pn7 = phi { ptr, i32 } [ %i.j, %bb.i ], [ %.pn, %_ZN5arrow6StatusD2Ev.exit10 ], [ %eh.lpad-body, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body19.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i ], [ %.pn5.i.ph.i, %.body.thread21.i ]
  %i.ds = load i8, ptr %i.b, align 8, !tbaa !110, !range !101, !noundef !102
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.bj, label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16
  %i.du = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.du, null
  br i1 %.not.i.i20, label %_ZNSt11unique_lockISt5mutexED2Ev.exit21, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.du) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

_ZNSt11unique_lockISt5mutexED2Ev.exit21:          ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl4spanEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

declare void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.140") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @_ZNK5arrow9StopToken4PollEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !85
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !256
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !256
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread, !prof !242

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90, !range !101, !noundef !102
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::FnOnce.161") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !257   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !228, !noalias !262
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !225, !noalias !262 ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !225, !noalias !262
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSC_18AsyncTaskScheduler4TaskESt14default_deleteISH_EEEUlvE_ZZNSE_12DoSubmitTaskESK_ENSL_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISP_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSY_DpOSZ_.exit unwind label %bb.b, !noalias !259 ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i4.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit6.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i5.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i5.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !19, !noalias !259
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !259
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #25, !noalias !259, !inline_history !269
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit6.i

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i5.i, %bb.b
  resume { ptr, i32 } %i.f

_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSC_18AsyncTaskScheduler4TaskESt14default_deleteISH_EEEUlvE_ZZNSE_12DoSubmitTaskESK_ENSL_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISP_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSY_DpOSZ_.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %i.e, align 8, !tbaa !19, !noalias !259
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !270, !noalias !259
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.c, ptr %i.k, align 8, !tbaa !225, !noalias !259
  store ptr %i.e, ptr %0, align 8, !tbaa !80, !alias.scope !259
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK5arrow6FutureINS_8internal5EmptyEE14TryAddCallbackIZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS5_18AsyncTaskScheduler4TaskESt14default_deleteISA_EEEUlvE_ZZNS7_12DoSubmitTaskESD_ENSE_clEvEUlRKNS_6StatusEE_NS3_21WrapStatusyOnComplete8CallbackISI_EEEEbT_NS_15CallbackOptionsEEUlvE_, ptr %0, align 8, !tbaa !272
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !25
  store i64 %.val.i, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %.val, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val) #25, !inline_history !274
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val.i) #25, !inline_history !275
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !225
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #25, !inline_history !276
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEENUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i
  tail call fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl14OnTaskFinishedERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %.val)
  ret void
}

declare void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !85
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !86
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !78    ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %"_ZZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenEEN3$_0D2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit
  %i.r = load ptr, ptr %.val, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(112) %.val) #25, !inline_history !105
  br label %"_ZZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenEEN3$_0D2Ev.exit"

"_ZZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenEEN3$_0D2Ev.exit": ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i
  ret void
}

declare void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32, ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackINS3_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS8_EEENS9_IFvRKSA_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISJ_EEEEED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !85
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !277
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !277
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i
  %i.r = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(112) %.val.i) #25, !inline_history !278
  br label %"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev.exit"

"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev.exit": ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEEE", i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !85
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !279
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25, !inline_history !279
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@"_ZNK5arrow6detail14ContinueFutureclINS_6FutureINS_8internal5EmptyEE17PassthruOnFailureIZNS_4util18AsyncTaskScheduler4MakeENS4_6FnOnceIFNS_6StatusEPS9_EEENSA_IFvRKSB_EEENS_9StopTokenEE3$_0EEJSG_ENS_6ResultIS5_EES6_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISP_EE5valuesrT2_8is_emptyntsr3std7is_sameISP_SB_EE5valueEvE4typeESQ_OT_DpOT0_":bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !90, !range !101, !noundef !102
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.i = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.g, !prof !89

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90, !range !101, !noundef !102
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #25
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.i:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit6

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %.not.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i5, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.k, !prof !89

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !90, !range !101, !noundef !102
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_ZN5arrow6StatusD2Ev.exit6

_ZN5arrow6StatusD2Ev.exit6:                       ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %bb.l ]
  %i.s = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i7, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8, label %bb.m, !prof !89

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !90, !range !101, !noundef !102
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #25
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8:  ; preds = %_ZN5arrow6StatusD2Ev.exit6, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_19FifoQueueD2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow4util12_GLOBAL__N_19FifoQueueE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #25, !inline_history !292
  br label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i

_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #27
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !293

_ZNSt7__cxx1110_List_baseISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_19FifoQueueD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow4util12_GLOBAL__N_19FifoQueueE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i.i, label %_ZN5arrow4util12_GLOBAL__N_19FifoQueueD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #25, !inline_history !295
  br label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #27, !inline_history !296
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5arrow4util12_GLOBAL__N_19FifoQueueD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !293

_ZN5arrow4util12_GLOBAL__N_19FifoQueueD2Ev.exit:  ; preds = %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_19FifoQueue4PushESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %1, align 8, !tbaa !225
  store i64 %i.d, ptr %i.c, align 8, !tbaa !225
  store ptr null, ptr %1, align 8, !tbaa !225
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !297
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_19FifoQueue3PopEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.132") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225
  store i64 %i.d, ptr %0, align 8, !tbaa !225
  store ptr null, ptr %i.c, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !297
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !297
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !225  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE9pop_frontEv.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #25, !inline_history !300
  br label %_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE9pop_frontEv.exit

_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE9pop_frontEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4util12_GLOBAL__N_19FifoQueue4PeekEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_19FifoQueue5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = icmp eq ptr %i.b, %i.a
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_19FifoQueue5PurgeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #25, !inline_history !301
  br label %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i

_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #27
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !293

_ZNSt7__cxx114listISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS5_EESaIS8_EE5clearEv.exit: ; preds = %_ZSt10destroy_atISt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS4_EEEvPT_.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.i, align 8, !tbaa !117
  store ptr %i.a, ptr %i.a, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.j, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZNK5arrow4util12_GLOBAL__N_19FifoQueue4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !297
  ret i64 %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util12ThrottleImplD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow4util12ThrottleImplE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %1, i8 noundef signext 8, ptr noundef nonnull align 1 dereferenceable(32) @.str.8)
          to label %_ZN5arrow6Status9CancelledIJRA32_KcEEES0_DpOT_.exit unwind label %bb.l

_ZN5arrow6Status9CancelledIJRA32_KcEEES0_DpOT_.exit: ; preds = %bb.b
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZN5arrow6Status9CancelledIJRA32_KcEEES0_DpOT_.exit
  %i.c = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !90, !range !101, !noundef !102
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.i, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !85
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !86
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !86
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.i ], [ %i.v, %bb.j ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.k, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.b, %_ZN5arrow6Status9CancelledIJRA32_KcEEES0_DpOT_.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util12ThrottleImplD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow4util12ThrottleImplD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util12ThrottleImpl10TryAcquireEi(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__shared_ptr", align 16 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.140", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Future", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %.not.i.i5.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i5.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr %i.d, ptr %0, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !16
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN5arrow6FutureINS0_8internal5EmptyEEEEC2IRS4_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISA_ISt10in_place_tSH_EESt16is_constructibleIS4_JSD_EESt14is_convertibleISD_S4_EEEbE4typeELb1EEEOSD_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  store ptr %i.bh, ptr %2, align 8, !tbaa !80
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val21, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %2, align 8, !tbaa !80    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i29, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %bb.s
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #25, !inline_history !339
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !80    ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i8.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i: ; preds = %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.val18, i64 12 ; 3 uses
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i12.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i12.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i

bb.w:                                             ; preds = %bb.u
  %i.bu = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i14.i = phi i32 [ %i.bs, %bb.v ], [ %i.bu, %bb.w ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i14.i, 1
  br i1 %i.bv, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45

bb.x:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

bb.y:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69: ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

bb.z:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i32 = icmp eq ptr %i.ca, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33: ; preds = %bb.z
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ca) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24

bb.aa:                                            ; preds = %bb.k
  %i.ce = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.cf = load i64, ptr %1, align 8, !tbaa !225
  store i64 %i.cf, ptr %6, align 8, !tbaa !225
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.cg = invoke fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %6, i32 noundef %.sroa.speculated, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %6, align 8, !tbaa !225   ; 3 uses
  %.not.i43 = icmp eq ptr %i.ch, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44: ; preds = %bb.ab
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ch) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45

bb.ac:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !225   ; 2 uses
  %.not.i46 = icmp eq ptr %i.cm, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44, %bb.ab, %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit
  %.0 = phi i1 [ true, %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlRKNS_6StatusEE_D2Ev.exit ], [ %i.cg, %bb.ab ], [ %i.cg, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i44 ]
  %i.cn = load i8, ptr %i.am, align 8, !tbaa !307, !range !101, !noundef !102
  %i.co = trunc nuw i8 %i.cn to i1
  store i8 0, ptr %i.am, align 8, !tbaa !307
  br i1 %i.co, label %bb.ad, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cr, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !85
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #25, !inline_history !340
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #25, !inline_history !340
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.ah ], [ %i.de, %bb.ai ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.aj, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, !prof !87

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.af, %bb.ad, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ak:                                            ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i, %bb.e
  %i.dg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %bb.ak
  %.163 = phi i1 [ %.0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ true, %bb.ak ]
  ret i1 %.163

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i, %bb.t
  %.val18.sink88 = phi ptr [ %i.bo, %bb.t ], [ %.val18, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %i.cm, %bb.ac ] ; 2 uses
  %.sink87 = phi i64 [ 8, %bb.t ], [ 24, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ 8, %bb.ac ]
  %.pn13.ph.ph = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %i.cl, %bb.ac ]
  %i.dh = load ptr, ptr %.val18.sink88, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink87
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %.val18.sink88) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i, %bb.ac
  %.pn13.ph = phi { ptr, i32 } [ %i.bp, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i ], [ %i.cl, %bb.ac ], [ %i.bn, %bb.t ], [ %i.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i ], [ %.pn13.ph.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73.sink.split ]
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit50

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i33
  call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread: ; preds = %bb.x, %bb.y, %bb.g, %bb.f, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24
  %.pn13.pn.pn.pn68 = phi { ptr, i32 } [ %i.by, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69 ], [ %i.bz, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24 ], [ %i.bw, %bb.x ], [ %i.bx, %bb.y ], [ %i.s, %bb.g ], [ %i.s, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23 ], [ %i.r, %bb.f ]
  %i.dk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit50

_ZNSt11unique_lockISt5mutexED2Ev.exit50:          ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread
  %.pn13.pn.pn.pn67 = phi { ptr, i32 } [ %.pn13.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread73 ], [ %.pn13.pn.pn.pn68, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread ]
  resume { ptr, i32 } %.pn13.pn.pn.pn67
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl4spanEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl5PauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl6ResumeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl9QueueSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  ret i64 %i.h

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.217, align 8            ; 7 uses
  %5 = alloca %"class.std::unique_ptr.132", align 8 ; 6 uses
  %i.a = zext i1 %3 to i8
  %i.b = load ptr, ptr %1, align 8, !tbaa !225    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  store i32 %2, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %i.a, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !225    ; 4 uses
  store i64 %i.k, ptr %i.j, align 8
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !157, !noalias !341 ; 4 uses
  store ptr %i.p, ptr %i.n, align 8
  %i.q = icmp eq ptr %i.p, null
  %i.r = inttoptr i64 %i.k to ptr                 ; 2 uses
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 8, !noalias !341
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.t, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %.06.i.i.i.i.i, 1
  %i.v = cmpxchg weak ptr %i.s, i32 %.06.i.i.i.i.i, i32 %i.u acq_rel monotonic, align 8, !noalias !341 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.c, !llvm.loop !344

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #25, !noalias !341 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.y, align 8, !tbaa !19, !noalias !341
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !156, !noalias !341 ; 2 uses
  store ptr %i.z, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aa = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc7 unwind label %bb.i, !inline_history !345 ; 11 uses

.noexc7:                                          ; preds = %bb.e
  %i.ab = extractvalue { i64, ptr } %i.f, 0
  %i.ac = extractvalue { i64, ptr } %i.f, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %i.aa, align 8, !tbaa !19, !noalias !346
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #25, !noalias !346, !inline_history !349
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %i.aa, align 8, !tbaa !19, !noalias !346
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ae, ptr noundef nonnull align 8 dereferenceable(5) %4, i64 5, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.k, ptr %i.af, align 8, !tbaa !225, !noalias !346
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !350, !noalias !346
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !16, !noalias !346
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !352, !noalias !346
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.ac, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !353, !noalias !346
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i8 0, ptr %i.aj, align 8, !tbaa !354, !noalias !346
  store ptr %i.aa, ptr %5, align 8, !tbaa !356
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.g, !inline_history !345

bb.f:                                             ; preds = %.noexc7
  %i.ao = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ao) #25, !inline_history !357
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit

bb.g:                                             ; preds = %.noexc7
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.at, null
  br i1 %.not.i4.i, label %.body, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i: ; preds = %bb.g
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.at) #25, !inline_history !357
  br label %.body

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i1 %i.an

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.i ], [ %i.as, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i ], [ %i.as, %bb.g ]
  call fastcc void @_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i, %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ax, %bb.h ], [ %i.ax, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !307, !range !101, !noundef !102
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !307
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !85
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !358
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !358
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
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
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.o, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.x) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !155 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.sroa.speculated)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.e, align 8, !tbaa !307, !range !101, !noundef !102
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.aj = trunc nuw i8 %.sroa.10.0 to i1
  br i1 %i.aj, label %bb.j, label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.x
  %i.ak = phi i32 [ %i.bg, %bb.x ], [ 1, %bb.i ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ak) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 0, ptr %i.i, align 8
  store i64 %i.f, ptr %2, align 8, !tbaa !25
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.h, align 8, !tbaa !236
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.g, align 8, !tbaa !239
  %i.am = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 0, ptr null)
          to label %bb.k unwind label %bb.n, !inline_history !365

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.q unwind label %bb.m, !inline_history !365 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29, !inline_history !365
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !239 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.as, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.p, !inline_history !365 ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #29, !inline_history !365
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.q:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.am, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %3, align 8, !tbaa !77
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %3, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.x, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

bb.t:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.u:                                             ; preds = %bb.e, %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.v:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.w:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.bg = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %.invoke

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !112 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.132") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bl = trunc nuw i8 %.sroa.10.0 to i1
  br i1 %i.bl, label %bb.aa, label %.invoke122

bb.aa:                                            ; preds = %bb.z
  %i.bm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  %i.bn = load i64, ptr %4, align 8, !tbaa !225
  store i64 %i.bn, ptr %5, align 8, !tbaa !225
  store ptr null, ptr %4, align 8, !tbaa !225
  %i.bo = invoke fastcc noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %5, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bp, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.ab
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bp) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ab, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  br i1 %i.bo, label %bb.af, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43

bb.ac:                                            ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49

bb.ad:                                            ; preds = %.invoke122
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.ae:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !225   ; 3 uses
  %.not.i35 = icmp eq ptr %i.bw, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36: ; preds = %bb.ae
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bw) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.ca = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i39 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i39, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit43, label %.invoke122

.invoke122:                                       ; preds = %bb.z, %bb.af
  %i.cb = phi i32 [ %i.ca, %bb.af ], [ 1, %bb.z ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cb) #28
          to label %.cont123 unwind label %bb.ad

.cont123:                                         ; preds = %.invoke122
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit43:       ; preds = %bb.af, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %.sroa.10.3 = phi i8 [ 0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ 1, %bb.af ]
  %.0 = phi i32 [ 1, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit ], [ 0, %bb.af ]
  %i.cc = load ptr, ptr %4, align 8, !tbaa !225   ; 3 uses
  %.not.i44 = icmp eq ptr %i.cc, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cc) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46: ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit43, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36, %bb.ae, %bb.ad
  %.pn17 = phi { ptr, i32 } [ %i.bu, %bb.ad ], [ %i.bv, %bb.ae ], [ %i.bv, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i36 ] ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !225   ; 3 uses
  %.not.i47 = icmp eq ptr %i.cg, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cg) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit49: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37, %bb.ac
  %.sroa.10.5 = phi i8 [ %.sroa.10.0, %bb.ac ], [ 0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37 ], [ 0, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48 ]
  %.pn17.pn = phi { ptr, i32 } [ %i.bt, %bb.ac ], [ %.pn17, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit37 ], [ %.pn17, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.x, %bb.q, %bb.s, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46
  %.sroa.10.6 = phi i8 [ 0, %bb.q ], [ %.sroa.10.3, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46 ], [ 0, %bb.s ], [ 1, %bb.x ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.q ], [ %.0, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit46 ], [ 1, %bb.s ], [ 2, %bb.x ]
  %i.ck = load i8, ptr %i.e, align 8, !tbaa !307, !range !101, !noundef !102
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.e, align 8, !tbaa !307
  br i1 %i.cl, label %bb.ag, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !16  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cn, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !85
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25, !inline_history !340
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #25, !inline_history !340
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_8internal5EmptyEEELb0ELb0EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cq, %bb.ak ], [ %i.da, %bb.al ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
end_hunk_3
begin_hunk_4_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.df = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit52

_ZNSt11unique_lockISt5mutexED2Ev.exit52:          ; preds = %bb.aq, %bb.ar
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
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !387
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !387 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !344

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !387
  %.fr.i.i.i.i.i = freeze i32 %i.k
  %.not.i.i.i.i.i = icmp ne i32 %.fr.i.i.i.i.i, 0
  %i.l = load ptr, ptr %i.a, align 8, !noalias !387 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %or.cond.i.i = select i1 %.not.i.i.i.i.i, i1 %i.m, i1 false
  %i.n = load ptr, ptr %.val, align 8
  %i.o = icmp eq ptr %i.n, null
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 %i.o, i1 false
  br i1 %or.cond17.i.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %.thread.i.i unwind label %bb.f, !inline_history !390

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.d) #25, !inline_history !390
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
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !391
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !391
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

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
  br i1 %i.ad, label %bb.k, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, !prof !87

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !390
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit: ; preds = %bb.c, %bb.a, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16  ; 8 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !85
  %i.g = load ptr, ptr %.val, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !392
  %i.j = load ptr, ptr %.val, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !392
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !354, !range !101, !noundef !102
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !354
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !68
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !85
  %i.p = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !393
  %i.s = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !393
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #25, !inline_history !394
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1, label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #25, !inline_history !395
  br label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !354, !range !101, !noundef !102
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !354
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !68
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27, !inline_history !396
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !85
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !397
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !397
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %bb.f ], [ %i.x, %bb.g ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #25, !inline_history !396
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #25, !inline_history !398
  br label %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i

_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #25, !inline_history !399
  br label %_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_ED2Ev.exit: ; preds = %_ZZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEibENUlvE_D2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EclEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.236, align 8            ; 5 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  %4 = alloca %"class.arrow::Result.155", align 8 ; 13 uses
  %5 = alloca %"class.arrow::Future", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !400
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225, !noalias !400 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !noalias !400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !400
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !400, !inline_history !403
  %i.g = load ptr, ptr %4, align 8, !tbaa !88, !noalias !400
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25, !inline_history !403
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !400
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77, !noalias !410 ; 3 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !77, !alias.scope !411, !noalias !400
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !410 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !16, !noalias !410
  store ptr %i.m, ptr %i.k, align 8, !tbaa !16, !alias.scope !411, !noalias !400
  store ptr null, ptr %i.i, align 8, !tbaa !77, !noalias !410
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !400
  store ptr %i.n, ptr %2, align 8, !noalias !400
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.o, align 8, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !400
  %i.p = ptrtoint ptr %2 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !400
  store i64 %i.p, ptr %3, align 8, !tbaa !25, !noalias !400
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.r, align 8, !tbaa !236, !noalias !400
  store ptr @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation, ptr %i.q, align 8, !tbaa !239, !noalias !400
  %i.t = invoke noundef zeroext i1 @_ZN5arrow10FutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKS0_EEEvEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 0, ptr null)
          to label %bb.d unwind label %bb.g, !noalias !400, !inline_history !412

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !239, !noalias !400 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.j unwind label %bb.f, !noalias !400, !inline_history !412 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #29, !noalias !400, !inline_history !412
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !239, !noalias !400 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i, label %_ZNSt14_Function_baseD2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i.i unwind label %bb.i, !noalias !400, !inline_history !412 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29, !noalias !400, !inline_history !412
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i.i:              ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !400
  br label %.body.i

bb.j:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !400
  br i1 %i.t, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val9.i = load ptr, ptr %i.n, align 8, !tbaa !350, !noalias !400
  %i.ad = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !155, !noalias !400 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !413, !noalias !400
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !19, !noalias !400
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !400
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.af)
          to label %bb.l unwind label %bb.n, !noalias !400, !inline_history !403

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !225, !noalias !400 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !225, !noalias !400
  %.not.i.i11.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i11.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i: ; preds = %bb.l
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19, !noalias !400
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !400
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aj) #25, !noalias !400, !inline_history !416
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !417, !range !101, !noalias !400, !noundef !102
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !350, !noalias !400
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %.val.i)
          to label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i unwind label %bb.n, !noalias !400, !inline_history !403

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit6.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.y, %_ZNSt14_Function_baseD2Ev.exit6.i.i ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25, !noalias !400, !inline_history !403
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !400
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25, !noalias !400, !inline_history !403
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !400
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i: ; preds = %bb.m, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i, %bb.j
  store ptr null, ptr %0, align 8, !tbaa !88, !alias.scope !400
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !77, !alias.scope !400
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.as, align 8, !tbaa !16, !alias.scope !400
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !400
  br label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i, %bb.b
  %i.at = load ptr, ptr %4, align 8, !tbaa !88, !noalias !400 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i, !prof !89

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16, !noalias !400 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ax, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !85
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !418
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !418
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !400
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.v, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i, !prof !87

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !403
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.r, %bb.p
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !88, !noalias !400 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %.pr.i.i, null
end_hunk_4
begin_hunk_5_@_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE:bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::FnOnce.161") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !419   ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !421
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val1 = load ptr, ptr %i.a, align 8, !tbaa !425
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !350 ; 2 uses
  %.val.val1.val = load i32, ptr %.val.val1, align 4, !tbaa !3
  %i.b = getelementptr i8, ptr %.val.val.val, i64 8
  %i.c = getelementptr i8, ptr %.val.val.val, i64 16
  %.val.val.val.val2 = load ptr, ptr %i.c, align 8, !tbaa !157 ; 5 uses
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val.val.val2, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val.val.val2, i64 12 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !429
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !429
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !429
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !429 ; 0 uses
  br label %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i

_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSC_18AsyncTaskScheduler4TaskESt14default_deleteISH_EEibENUlvE_clEvEUlvE_ZZZNSE_10SubmitTaskESK_ibENSL_clEvENKSM_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOSZ_DpOS10_.exit unwind label %bb.e, !noalias !426, !inline_history !438 ; 4 uses

bb.e:                                             ; preds = %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit10.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val.val.val.val2, i64 12 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !426
  %.not.i.i.i.i.i7.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !426 ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3, !noalias !426
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

bb.h:                                             ; preds = %bb.f
  %i.p = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4, !noalias !426
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i9.i = phi i32 [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i9.i, 1
  br i1 %i.q, label %bb.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit10.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i
  %i.r = load ptr, ptr %.val.val.val.val2, align 8, !tbaa !19, !noalias !426
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !426
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.val.val.val.val2) #25, !noalias !426, !inline_history !439
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit10.i

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit10.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i, %bb.e
  resume { ptr, i32 } %i.k

_ZSt10__invoke_rIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEERZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSC_18AsyncTaskScheduler4TaskESt14default_deleteISH_EEibENUlvE_clEvEUlvE_ZZZNSE_10SubmitTaskESK_ibENSL_clEvENKSM_clEvEUlRKNS0_6StatusEE_NSA_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISU_T0_DpT1_EESU_E4typeEOSZ_DpOS10_.exit: ; preds = %_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISH_SL_SM_EEbT_NS0_15CallbackOptionsEEUlvE_JEESO_St14__invoke_otherOT0_DpOT1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %i.j, align 8, !tbaa !19, !noalias !426
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %.val.val1.val, ptr %i.u, align 8, !tbaa !440, !noalias !426
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x ptr> %i.d, ptr %i.v, align 8, !tbaa !25, !noalias !426
  store ptr %i.j, ptr %0, align 8, !tbaa !80, !alias.scope !426
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK5arrow6FutureINS_8internal5EmptyEE14TryAddCallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS5_18AsyncTaskScheduler4TaskESt14default_deleteISA_EEibENUlvE_clEvEUlvE_ZZZNS7_10SubmitTaskESD_ibENSE_clEvENKSF_clEvEUlRKNS_6StatusEE_NS3_21WrapStatusyOnComplete8CallbackISJ_EEEEbT_NS_15CallbackOptionsEEUlvE_, ptr %0, align 8, !tbaa !272
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !25
  store i64 %.val.i, ptr %0, align 8, !tbaa !25
  br label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit, label %bb.b

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
  br i1 %i.g, label %bb.e, label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !442
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_ED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit, label %bb.b

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
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !443
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157, !noalias !444 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !444
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !444 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !344

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !444
  %.fr.i.i.i.i.i = freeze i32 %i.l
  %.not.i.i.i.i.i = icmp ne i32 %.fr.i.i.i.i.i, 0
  %i.m = load ptr, ptr %i.c, align 8, !noalias !444 ; 3 uses
  %i.n = icmp ne ptr %i.m, null
  %or.cond.i.i = select i1 %.not.i.i.i.i.i, i1 %i.n, i1 false
  %i.o = load ptr, ptr %.val, align 8
  %i.p = icmp eq ptr %i.o, null
  %or.cond18.i.i = select i1 %or.cond.i.i, i1 %i.p, i1 false
  br i1 %or.cond18.i.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155  ; 2 uses
  %i.s = load i32, ptr %i.a, align 8, !tbaa !440
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %i.s)
          to label %bb.f unwind label %bb.g, !inline_history !447

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv(ptr noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %.thread.i.i unwind label %bb.g, !inline_history !447

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.e) #25, !inline_history !447
  resume { ptr, i32 } %i.w

.thread.i.i:                                      ; preds = %bb.f, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.x = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i.i
  store i32 0, ptr %i.f, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !85
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !448
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !448
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

bb.i:                                             ; preds = %.thread.i.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i7.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i7.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aj = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.z, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.l, label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit, !prof !87

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !447
  br label %_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit

_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS6_18AsyncTaskScheduler4TaskESt14default_deleteISB_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EclERKNS_10FutureImplE.exit: ; preds = %bb.c, %bb.a, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.132", align 8 ; 6 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.b = atomicrmw sub ptr %.val1, i32 1 seq_cst, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.val = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !175, !noalias !450
  %i.f = inttoptr i64 %i.e to ptr                 ; 6 uses
  store ptr null, ptr %i.d, align 8, !tbaa !175, !noalias !450
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19, !noalias !450
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !450
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #25, !inline_history !453
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #25, !inline_history !453
  %i.q = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !177  ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.u = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc unwind label %bb.p     ; 8 uses

.noexc:                                           ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %i.u, align 8, !tbaa !19, !noalias !454
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #25, !noalias !454
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_EE, i64 16), ptr %i.u, align 8, !tbaa !19, !noalias !454
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !88, !noalias !454
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 20, ptr %i.x, align 8, !tbaa !352, !noalias !454
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @.str.9, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !353, !noalias !454
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i8 0, ptr %i.y, align 8, !tbaa !354, !noalias !454
  store ptr %i.u, ptr %1, align 8, !tbaa !356
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %1, align 8, !tbaa !225   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ad) #25, !inline_history !457
  br label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImplD1EvENUlvE_D2Ev.exit

bb.f:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !225   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i, label %.body, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i5.i

end_hunk_5
begin_hunk_6_@_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_EclEv:bb.a

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_ZNK5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_118AsyncTaskGroupImplD1EvEUlvE_E4nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !352
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !353
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTask, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16  ; 8 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !85
  %i.g = load ptr, ptr %.val, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !459
  %i.j = load ptr, ptr %.val, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !459
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1, label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25, !inline_history !395
  br label %_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit

_ZN5arrow4util18AsyncTaskScheduler4TaskD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEE11WrapperTask, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !85
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !469
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !469
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #25, !inline_history !470
  br label %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.r) #25, !inline_history !471
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i, %_ZNSt12__shared_ptrIN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %0, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i, label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25, !inline_history !472
  br label %_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD2Ev.exit

_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::FnOnce.161", align 8 ; 6 uses
  %3 = alloca %"struct.arrow::Future<>::WrapResultOnComplete::Callback.278", align 8 ; 8 uses
  %4 = alloca %"class.std::__shared_ptr", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr.140", align 8 ; 7 uses
  %6 = alloca %"struct.arrow::Future<>::ThenOnComplete.277", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Result.155", align 8 ; 13 uses
  %8 = alloca %"class.arrow::Future", align 16    ; 7 uses
  %9 = alloca %"class.arrow::Future", align 16    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.f = load ptr, ptr %7, align 8, !tbaa !88
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !25, !noalias !479
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !77, !noalias !479 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !16, !noalias !479
  store <2 x ptr> %i.k, ptr %8, align 16, !tbaa !25, !alias.scope !479
  store ptr null, ptr %i.h, align 8, !tbaa !77, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !449  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !486
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !486
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.140") align 8 %5)
          to label %bb.d unwind label %bb.f, !noalias !486

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !486
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.g, !noalias !486

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %4, align 8, !tbaa !26, !noalias !486 ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !26, !noalias !486
  store ptr %i.q, ptr %9, align 16, !tbaa !26, !alias.scope !486
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !16, !noalias !486 ; 5 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !16, !alias.scope !486
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !26, !noalias !486 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !486
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i: ; preds = %bb.e
  %i.u = load ptr, ptr %.pre.i.i, align 8, !tbaa !19, !noalias !486
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !486
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i) #25, !noalias !486, !inline_history !487
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !26, !noalias !486 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i: ; preds = %bb.g
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19, !noalias !486
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !486
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(72) %i.z) #25, !noalias !486, !inline_history !487
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

common.resume.i:                                  ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i
  %.sroa.3.0 = phi ptr [ null, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i ], [ %i.p, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ]
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i6.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i ], [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call fastcc void @_ZZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEvENUlvE_D2Ev(ptr %.sroa.3.0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %common.resume.op.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i, %bb.g, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !486
  br label %common.resume.i

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !486
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !68, !noalias !480
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !480
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3, !noalias !480
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !480 ; 0 uses
  %.val.i.pre = load ptr, ptr %8, align 16, !tbaa !77, !noalias !480
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i: ; preds = %bb.j, %bb.i, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
  %.val.i = phi ptr [ %.val.i.pre, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !480
  store ptr %i.n, ptr %3, align 8, !tbaa !449, !noalias !480
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !16, !noalias !480
  store ptr %i.p, ptr %i.al, align 8, !tbaa !16, !noalias !480
  store ptr null, ptr %6, align 8, !tbaa !449, !noalias !480
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.am, align 8, !tbaa !77, !noalias !480
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !16, !noalias !480
  store ptr %i.t, ptr %i.an, align 8, !tbaa !16, !noalias !480
  store ptr null, ptr %i.ae, align 8, !tbaa !77, !noalias !480
  %i.ao = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %bb.k unwind label %bb.m, !noalias !480 ; 6 uses

bb.k:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !480
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINSE_18AsyncTaskScheduler4TaskESt14default_deleteISJ_EEEN11WrapperTaskclEvEUlvE_NSA_17PassthruOnFailureISO_EEEEEEEE, i64 16), ptr %i.ao, align 8, !tbaa !19, !noalias !480
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.n, ptr %i.ap, align 8, !tbaa !449, !noalias !480
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.p, ptr %i.aq, align 8, !tbaa !16, !noalias !480
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.q, ptr %i.ar, align 8, !tbaa !77, !noalias !480
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.t, ptr %i.as, align 8, !tbaa !16, !noalias !480
  store ptr %i.ao, ptr %2, align 8, !tbaa !80, !noalias !480
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val.i, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.l unwind label %bb.n, !noalias !480

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %2, align 8, !tbaa !80, !noalias !480 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEvENUlvE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.l
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19, !noalias !480
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !480
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #25, !noalias !480, !inline_history !488
  br label %_ZZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEvENUlvE_D2Ev.exit

bb.m:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i

bb.n:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !80, !noalias !480 ; 3 uses
  %.not.i.i7.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i7.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i: ; preds = %bb.n
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19, !noalias !480
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !480
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.az) #25, !noalias !480, !inline_history !488
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i, %bb.n, %bb.m
  %.pn.i6.i = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.ay, %bb.n ], [ %i.ay, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i ]
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackINS3_14ThenOnCompleteIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEN11WrapperTaskclEvEUlvE_NS3_17PassthruOnFailureISH_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #25, !noalias !480
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS5_18AsyncTaskScheduler4TaskESt14default_deleteISA_EEEN11WrapperTaskclEvEUlvE_NS3_17PassthruOnFailureISF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #25, !noalias !480
  br label %common.resume.i

_ZZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEvENUlvE_D2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr null, ptr %0, align 8, !tbaa !88
end_hunk_6
