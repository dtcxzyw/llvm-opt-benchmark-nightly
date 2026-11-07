Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/async_util?download=true
inline.NumInlined: 1791
inline.NumDeleted: 1060
begin_hunk_0_@_ZN5arrow9StopTokenD2Ev:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !163

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !387 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplE, i64 16), ptr %0, align 8, !tbaa !122
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow4util7tracing4SpanD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #25, !inline_history !1
  br label %_ZN5arrow4util7tracing4SpanD2Ev.exit

_ZN5arrow4util7tracing4SpanD2Ev.exit:             ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util7tracing11SpanDetailsEEclEPS3_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i: ; preds = %_ZN5arrow4util7tracing4SpanD2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #25, !inline_history !385
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit: ; preds = %_ZN5arrow4util7tracing4SpanD2Ev.exit, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.m, align 8, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !162
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !386
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !386
  br label %_ZN5arrow9StopTokenD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.g, label %_ZN5arrow9StopTokenD2Ev.exit, !prof !163

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br label %_ZN5arrow9StopTokenD2Ev.exit

_ZN5arrow9StopTokenD2Ev.exit:                     ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !165

bb.h:                                             ; preds = %_ZN5arrow9StopTokenD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !176, !range !177, !noundef !178
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow9StopTokenD2Ev.exit, %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ai, align 8, !tbaa !161
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !162
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !0
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !122
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !0
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i.i.i3 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i5 = phi i32 [ %i.al, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i5, 1
  br i1 %i.aw, label %bb.o, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !163

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #4 align 2 !guid !388 {
bb.a:
  tail call void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !393 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.arrow::Result.155", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %5 = alloca %class.anon.159, align 8            ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %7 = alloca %"class.std::unique_lock", align 8  ; 10 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #28
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !183
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
  %i.f = load ptr, ptr %8, align 8, !tbaa !164    ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !165

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !176, !range !177, !noundef !178
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
  br label %bb.bj

bb.j:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit10

bb.k:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.m = load ptr, ptr %8, align 8, !tbaa !164    ; 2 uses
  %.not.i9 = icmp eq ptr %i.m, null
  br i1 %.not.i9, label %_ZN5arrow6StatusD2Ev.exit10, label %bb.l, !prof !165

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !176, !range !177, !noundef !178
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
  %.val = load ptr, ptr %i.q, align 8, !tbaa !164
  %.not = icmp eq ptr %.val, null                 ; 2 uses
  br i1 %.not, label %bb.o, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.r = load i64, ptr %1, align 8, !tbaa !241    ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 8 uses
  store ptr null, ptr %1, align 8, !tbaa !241
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
  %i.u = load ptr, ptr %6, align 8, !tbaa !164    ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, label %bb.r, !prof !165

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !176, !range !177, !noundef !178
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit

bb.t:                                             ; preds = %.noexc11
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %6, align 8, !tbaa !164    ; 2 uses
  %.not.i6.i = icmp eq ptr %i.z, null
  br i1 %.not.i6.i, label %_ZN5arrow6StatusD2Ev.exit7.i, label %bb.u, !prof !165

bb.u:                                             ; preds = %bb.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !176, !range !177, !noundef !178
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !152
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !152
  %i.ag = load i8, ptr %i.b, align 8, !tbaa !183, !range !177, !noundef !178
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #28
          to label %.noexc12 unwind label %bb.bg

.noexc12:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ai = load ptr, ptr %7, align 8, !tbaa !182   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #25 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !183
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i

_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i:     ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !122
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.155") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc.i unwind label %.body.thread.i, !inline_history !389

.noexc.i:                                         ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !164
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.a, ptr %4, align 8, !tbaa !182
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
  store i8 1, ptr %i.ap, align 8, !tbaa !183
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !152
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.ad, align 8, !tbaa !152
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl13AbortUnlockedERKNS_6StatusEOSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.at = load i8, ptr %i.ap, align 8, !tbaa !183, !range !177, !noundef !178
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.ae, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.av = load ptr, ptr %4, align 8, !tbaa !182   ; 2 uses
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
  %i.ba = load i8, ptr %i.ap, align 8, !tbaa !183, !range !177, !noundef !178
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.aj, label %.body.i

bb.aj:                                            ; preds = %bb.ai
  %i.bc = load ptr, ptr %4, align 8, !tbaa !182   ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i9.i.i, label %.body.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #25 ; 0 uses
  br label %.body.i

bb.al:                                            ; preds = %.noexc.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %0, ptr %5, align 8, !tbaa !249
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  %.val7.i.i = load ptr, ptr %i.bf, align 8, !tbaa !241 ; 3 uses
  %.not.i.i17.i.i = icmp eq ptr %.val7.i.i, null
  br i1 %.not.i.i17.i.i, label %.body.thread21.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i

bb.as:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.val8.i.i = load ptr, ptr %i.bf, align 8, !tbaa !241 ; 3 uses
  %.not.i.i13.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i.i13.i.i, label %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i: ; preds = %bb.as
  %i.bu = load ptr, ptr %.val8.i.i, align 8, !tbaa !122
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val8.i.i) #25, !inline_history !390
  br label %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i

_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i.i.i, %bb.as
  br i1 %i.bk, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i
  %i.bx = load ptr, ptr %3, align 8, !tbaa !164
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i, label %bb.au, !prof !165

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i unwind label %bb.ag

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i: ; preds = %bb.au, %bb.at
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !155
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bz)
          to label %bb.av unwind label %bb.ag

bb.av:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !155
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl14OnTaskFinishedERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %bb.aw unwind label %bb.ag

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i.i18.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit6.i.i.i
  %i.cd = load ptr, ptr %.val7.i.i, align 8, !tbaa !122
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.val7.i.i) #25, !inline_history !390
  br label %.body.thread21.i

bb.aw:                                            ; preds = %bb.av, %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i
  %.sroa.0.1.i = phi ptr [ null, %_ZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_D2Ev.exit.i.i ], [ null, %bb.av ], [ %i.s, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i ] ; 2 uses
  %i.cg = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ax, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i, !prof !165

bb.ax:                                            ; preds = %bb.aw
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ck, align 8, !tbaa !161
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !162
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !122
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !391
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !122
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !391
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.bb ], [ %i.cx, %bb.bc ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.bd, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, !prof !163

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25
  br label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.az, %bb.ax
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !164 ; 2 uses
  %.not.i.i20.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i20.i.i, label %bb.bf, label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i, !prof !254

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i, %bb.aw
  %i.cz = phi ptr [ %.pr.i.i.i, %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEE7DestroyEv.exit.i.i.i ], [ %i.cg, %bb.aw ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !176, !range !177, !noundef !178
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
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #25, !inline_history !392
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
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !122
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #25, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split: ; preds = %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, %bb.bf
  %.sroa.0.1.i.sink44 = phi ptr [ %.sroa.0.1.i, %bb.bf ], [ %i.s, %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.0.1.i.sink44, align 8, !tbaa !122
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sroa.0.1.i.sink44) #25
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit.sink.split, %bb.bf, %_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl18SubmitTaskUnlockedESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEOSt11unique_lockISt5mutexE.exit, %bb.n
  %i.do = load i8, ptr %i.b, align 8, !tbaa !183, !range !177, !noundef !178
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.bh, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.bh:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit
  %i.dq = load ptr, ptr %7, align 8, !tbaa !182   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i18, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i1 %.not

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16: ; preds = %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i, %.body.thread21.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15, %.body, %_ZN5arrow6StatusD2Ev.exit10
  %.pn7.ph = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i15 ], [ %eh.lpad-body, %.body ], [ %.pn, %_ZN5arrow6StatusD2Ev.exit10 ], [ %eh.lpad-body19.i, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i11.i ], [ %.pn5.i.ph.i, %.body.thread21.i ] ; 2 uses
  %i.ds = load i8, ptr %i.b, align 8, !tbaa !183
  %i.dt = trunc nuw i8 %i.ds to i1
  %.pre = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i20 = icmp ne ptr %.pre, null
  %or.cond.not = select i1 %i.dt, i1 %.not.i.i20, i1 false
  br i1 %or.cond.not, label %bb.bj, label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16, %bb.i
  %.pn73148 = phi { ptr, i32 } [ %i.j, %bb.i ], [ %.pn7.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16 ]
  %9 = phi ptr [ %i.a, %bb.i ], [ %.pre, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16 ]
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %9) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

_ZNSt11unique_lockISt5mutexED2Ev.exit21:          ; preds = %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16, %bb.bj
  %.pn730 = phi { ptr, i32 } [ %.pn7.ph, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit16 ], [ %.pn73148, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn730
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl4spanEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(112) %0) unnamed_addr #16 align 2 !guid !394 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  ret ptr %i.a
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

declare void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.140") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !397 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !125    ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow10FutureImplESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.y ; 13 uses

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow10FutureImplESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !125
  store ptr null, ptr %1, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !162
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !398
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21, label %bb.c

bb.c:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow10FutureImplESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.f, align 8, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pr.pre.i, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !162
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !395
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25, !inline_history !395
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !163

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.k
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow10FutureImplESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  store i32 0, ptr %i.ab, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !162
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !4
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !4
  br label %bb.q

bb.m:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread21
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i7 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.o, %bb.n
  %.0.i.i.i9 = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ap, label %bb.p, label %bb.q, !prof !163

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !220 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load atomic i32, ptr %i.at monotonic, align 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.q
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !400
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i.i3.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i3.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !20
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !220
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.bc = phi ptr [ %.pre.i.i.i, %bb.t ], [ %i.as, %bb.s ], [ %i.as, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !154
  %.not.i7.i.i.i.i = icmp eq i8 %i.be, 0
end_hunk_1
