Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/concurrent_bounded_queue?download=true
inline.NumInlined: 138
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3tbb6detail2r123concurrent_monitor_baseImE17abort_all_relaxedEv:bb.a

_ZN3tbb6detail2r141circular_doubly_linked_list_with_sentinel8flush_toERS2_.exit: ; preds = %bb.e, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %.not16 = icmp eq ptr %i.am, %i.d
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN3tbb6detail2r141circular_doubly_linked_list_with_sentinel8flush_toERS2_.exit
  %i.an = atomicrmw xchg ptr %0, i32 0 seq_cst, align 4 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4
  %.not.i.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i15, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aq = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  br label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit

_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit: ; preds = %._crit_edge, %bb.f
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %.not1418 = icmp eq ptr %i.ar, %i.d
  br i1 %.not1418, label %._crit_edge21, label %.lr.ph20

.lr.ph:                                           ; preds = %_ZN3tbb6detail2r141circular_doubly_linked_list_with_sentinel8flush_toERS2_.exit, %.lr.ph
  %.01217 = phi ptr [ %i.aw, %.lr.ph ], [ %i.am, %_ZN3tbb6detail2r141circular_doubly_linked_list_with_sentinel8flush_toERS2_.exit ] ; 3 uses
  %i.as = icmp eq ptr %.01217, null
  %i.at = getelementptr inbounds i8, ptr %.01217, i64 -8
  %i.au = select i1 %i.as, ptr null, ptr %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store atomic i8 0, ptr %i.av monotonic, align 1
  %i.aw = load ptr, ptr %.01217, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge21:                                    ; preds = %.lr.ph20, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.g

.lr.ph20:                                         ; preds = %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit, %.lr.ph20
  %.019 = phi ptr [ %i.ax, %.lr.ph20 ], [ %i.ar, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit ] ; 3 uses
  %i.ax = load ptr, ptr %.019, align 8, !tbaa !19 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.019, i64 -8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.019, i64 27
  store i8 1, ptr %i.az, align 1, !tbaa !44
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  %.not14 = icmp eq ptr %i.ax, %i.d
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20, !llvm.loop !67

bb.g:                                             ; preds = %bb.a, %._crit_edge21
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r123concurrent_monitor_baseImE14notify_relaxedINS1_13predicate_leqEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::r1::circular_doubly_linked_list_with_sentinel", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = atomicrmw xchg ptr %0, i32 1 seq_cst, align 4
  %.not2.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i.i, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit, label %.lr.ph4.i.i

.lr.ph4.i.i:                                      ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, %.lr.ph4.i.i
  %i.i = load atomic i32, ptr %0 monotonic, align 8
  %.09.in14.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.09.in14.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %bb.c, %.lr.ph.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i.prol, !llvm.loop !69

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i:    ; preds = %.lr.ph.i.i.i.i.prol
  %i.j = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.09.in.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol.1

.lr.ph.i.i.i.i.prol.1:                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, %.lr.ph.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, label %.lr.ph.i.i.i.i.prol.1, !llvm.loop !69

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1:  ; preds = %.lr.ph.i.i.i.i.prol.1
  %i.k = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.1 = icmp eq i32 %i.k, 0
  br i1 %.09.in.i.i.i.1, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol.2

.lr.ph.i.i.i.i.prol.2:                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, %.lr.ph.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, label %.lr.ph.i.i.i.i.prol.2, !llvm.loop !69

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2:  ; preds = %.lr.ph.i.i.i.i.prol.2
  %i.l = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.2 = icmp eq i32 %i.l, 0
  br i1 %.09.in.i.i.i.2, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, %.lr.ph.i.i.i.i.3
  %.01.i.i.i.i.3 = phi i32 [ %i.m, %.lr.ph.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.m = add nsw i32 %.01.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not30 = icmp eq i32 %.01.i.i.i.i.3, 8
  br i1 %.not30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, label %.lr.ph.i.i.i.i.3, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3:  ; preds = %.lr.ph.i.i.i.i.3
  %i.n = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.3 = icmp eq i32 %i.n, 0
  br i1 %.09.in.i.i.i.3, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, %.lr.ph.i.i.i.i.4
  %.01.i.i.i.i.4 = phi i32 [ %i.o, %.lr.ph.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.o = add nsw i32 %.01.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not31 = icmp eq i32 %.01.i.i.i.i.4, 8
  br i1 %.not31, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, label %.lr.ph.i.i.i.i.4, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4:  ; preds = %.lr.ph.i.i.i.i.4
  %i.p = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.4 = icmp eq i32 %i.p, 0
  br i1 %.09.in.i.i.i.4, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, %.lr.ph.i.i.i
  %.016.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4 ] ; 2 uses
  %i.q = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.r = load atomic i32, ptr %0 monotonic, align 8
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  %i.t = add nuw nsw i32 %.016.i.i.i, 1
  %i.u = icmp samesign ugt i32 %.016.i.i.i, 62
  %.not11.i.i.i = select i1 %i.s, i1 true, i1 %i.u
  br i1 %.not11.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %i.s, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i
  %i.v = atomicrmw add ptr %i.h, i32 1 seq_cst, align 4 ; 0 uses
  %i.w = load atomic i32, ptr %0 monotonic, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.y = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 128, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  %i.z = load atomic i32, ptr %0 monotonic, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %i.ab = atomicrmw sub ptr %i.h, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, %._crit_edge.i.i, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, %bb.c
  %i.ac = atomicrmw xchg ptr %0, i32 1 seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit, label %bb.c, !llvm.loop !4

_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 8
  %i.af = add i32 %i.ae, 1
  store atomic i32 %i.af, ptr %i.ad monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %.not20 = icmp eq ptr %i.ah, %i.f
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit
  %.pre26 = load i64, ptr %1, align 8, !tbaa !43
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit
  %i.ai = atomicrmw xchg ptr %0, i32 0 seq_cst, align 4 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %.not.i.i18 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i18, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.al = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #9 ; 0 uses
  br label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit

_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit: ; preds = %._crit_edge, %bb.e
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %.not1722 = icmp eq ptr %i.am, %i.d
  br i1 %.not1722, label %._crit_edge25, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %3 = phi i64 [ %4, %bb.g ], [ %.pre26, %.lr.ph.preheader ] ; 2 uses
  %.01621 = phi ptr [ %i.ao, %bb.g ], [ %i.ah, %.lr.ph.preheader ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01621, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %.not19 = icmp ugt i64 %i.aq, %3
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = load atomic i64, ptr %i.a monotonic, align 8
  %i.as = add i64 %i.ar, -1
  store atomic i64 %i.as, ptr %i.a monotonic, align 8
  %i.at = load ptr, ptr %.01621, align 8, !tbaa !19 ; 2 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %.01621, i64 24
  store atomic i8 0, ptr %i.aw monotonic, align 8
  %i.ax = load atomic i64, ptr %2 monotonic, align 8
  %i.ay = add i64 %i.ax, 1
  store atomic i64 %i.ay, ptr %2 monotonic, align 8
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  store ptr %i.az, ptr %i.an, align 8, !tbaa !20
  store ptr %i.d, ptr %.01621, align 8, !tbaa !19
  store ptr %.01621, ptr %i.az, align 8, !tbaa !19
  store ptr %.01621, ptr %i.e, align 8, !tbaa !50
  %.pre = load i64, ptr %1, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %4 = phi i64 [ %.pre, %bb.f ], [ %3, %.lr.ph ]
  %.not = icmp eq ptr %i.ao, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge25:                                    ; preds = %.lr.ph24, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.h

.lr.ph24:                                         ; preds = %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit, %.lr.ph24
  %.023 = phi ptr [ %i.ba, %.lr.ph24 ], [ %i.am, %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEED2Ev.exit ] ; 2 uses
  %i.ba = load ptr, ptr %.023, align 8, !tbaa !19 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.023, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(40) %i.bb)
  %.not17 = icmp eq ptr %i.ba, %i.d
  br i1 %.not17, label %._crit_edge25, label %.lr.ph24, !llvm.loop !71

bb.h:                                             ; preds = %bb.a, %._crit_edge25
  ret void
}

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = !{i32 8, !"cf-protection-return", i32 1}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"probe-stack", !"inline-asm"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !16, i64 0}
!18 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !17, i64 0, !17, i64 8}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{i64 1439514}
!23 = !{!"long", !12, i64 0}
!24 = !{!"bool", !12, i64 0}
!25 = !{!"_ZTSSt13__atomic_baseIbE", !24, i64 0}
!26 = !{!"_ZTSSt6atomicIbE", !25, i64 0}
!27 = !{!"_ZTSN3tbb6detail2r19wait_nodeImEE", !18, i64 8, !23, i64 24, !26, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !13, i64 36}
!28 = !{!27, !23, i64 24}
!29 = !{!"vtable pointer", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTSN3tbb6detail2r123concurrent_monitor_baseImEE", !16, i64 0}
!32 = !{!"p1 _ZTSN3tbb6detail2r110sleep_nodeImEE", !16, i64 0}
!33 = !{!"_ZTSZN3tbb6detail2r123concurrent_monitor_baseImE12guarded_callINS1_10sleep_nodeImEEZNS1_26wait_bounded_queue_monitorEPNS1_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_EUlvE0_", !31, i64 0, !32, i64 8}
!34 = !{!"_ZTSN3tbb6detail2d010raii_guardIZNS0_2r123concurrent_monitor_baseImE12guarded_callINS3_10sleep_nodeImEEZNS3_26wait_bounded_queue_monitorEPNS3_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_EUlvE0_EE", !33, i64 0, !24, i64 16}
!35 = !{!34, !24, i64 16}
!36 = !{!27, !13, i64 36}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!27, !24, i64 33}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{ptr @_ZN3tbb6detail2r110sleep_nodeImED2Ev}
!42 = !{!"_ZTSN3tbb6detail2r113predicate_leqE", !23, i64 0}
!43 = !{!42, !23, i64 0}
!44 = !{!27, !24, i64 35}
!45 = !{!27, !24, i64 34}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"_ZTSSt13__atomic_baseImE", !23, i64 0}
!48 = !{!"_ZTSSt6atomicImE", !47, i64 0}
!49 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinelE", !48, i64 0, !18, i64 8}
!50 = !{!49, !17, i64 16}
!51 = !{!47, !23, i64 0}
!52 = !{!49, !17, i64 8}
!53 = distinct !{!53, i1 false, !"_ZN3tbb6detail2d015make_raii_guardIZNS0_2r123concurrent_monitor_baseImE12guarded_callINS3_10sleep_nodeImEEZNS3_26wait_bounded_queue_monitorEPNS3_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_EUlvE0_EENS1_10raii_guardISH_EESH_"}
!54 = distinct !{!54, !53, !"_ZN3tbb6detail2d015make_raii_guardIZNS0_2r123concurrent_monitor_baseImE12guarded_callINS3_10sleep_nodeImEEZNS3_26wait_bounded_queue_monitorEPNS3_18concurrent_monitorEmlRNS0_2d113delegate_baseEE3$_0EEbOT0_RT_EUlvE0_EENS1_10raii_guardISH_EESH_: argument 0"}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{!57, !37}
!58 = !{!31, !31, i64 0}
!59 = !{!54}
!60 = !{!32, !32, i64 0}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !46}
!63 = !{!33, !31, i64 0}
!64 = !{!33, !32, i64 8}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = !{!17, !17, i64 0}
!69 = distinct !{!69, !46}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
end_hunk_0
