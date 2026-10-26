Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN4asio6detail10socket_ops18non_blocking_recv1EiPvmibRSt10error_codeRm:bb.a
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.m, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, !prof !281

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i22 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23: ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ab = icmp eq ptr %i.aa, @_ZZN4asio15system_categoryEvE8instance
  %i.ac = load i32, ptr %5, align 8
  %i.ad = icmp eq i32 %i.ac, 11
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %i.af = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, !prof !281

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i25 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26: ; preds = %bb.o, %bb.p, %bb.q
  %i.aj = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !797
  %i.ak = icmp eq ptr %i.aj, @_ZZN4asio15system_categoryEvE8instance
  %i.al = load i32, ptr %5, align 8
  %i.am = icmp eq i32 %i.al, 11
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26
  store i64 0, ptr %6, align 8, !tbaa !411
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit, %bb.h, %bb.r, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23
  %.1.ph = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit23 ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit26 ], [ true, %bb.r ], [ true, %bb.h ], [ true, %_ZNSt10error_codeC2IN4asio5error11misc_errorsEvEET_.exit ]
  ret i1 %.1.ph
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio6detail10socket_ops25set_internal_non_blockingEiRhbRSt10error_code(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i32 9, ptr %3, align 8, !tbaa !280
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !759
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %1, align 1, !tbaa !279
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, !prof !281

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i15 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i15, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16: ; preds = %bb.g, %bb.h, %bb.i
  store i32 22, ptr %3, align 8, !tbaa !280
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !759
  br label %bb.p

bb.j:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.m = zext i1 %2 to i32
  store i32 %i.m, ptr %i.a, align 4, !tbaa !280
  %i.n = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 21537, ptr noundef nonnull %i.a) #36
  %i.o = icmp sgt i32 %i.n, -1                    ; 2 uses
  br i1 %i.o, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call ptr @__errno_location() #55
  %i.q = load i32, ptr %i.p, align 4, !tbaa !280
  %i.r = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.l, label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit, !prof !281

bb.l:                                             ; preds = %bb.k
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 %i.q, ptr %3, align 8, !tbaa !280
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !759
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  store i32 0, ptr %3, align 8, !tbaa !796
  %i.v = load i8, ptr %1, align 1, !tbaa !279
  %i.w = and i8 %i.v, -3
  %masksel = select i1 %2, i8 2, i8 0
  %storemerge = or disjoint i8 %i.w, %masksel
  store i8 %storemerge, ptr %1, align 1, !tbaa !279
  br label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  %.1 = phi i1 [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit ], [ %i.o, %bb.o ], [ false, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit16 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail13epoll_reactor8start_opEiiRPNS1_16descriptor_stateEPNS0_10reactor_opEbb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::error_code", align 8   ; 4 uses
  %8 = alloca %struct.epoll_event, align 4        ; 8 uses
  %9 = alloca %struct.epoll_event, align 4        ; 5 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !784    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, !prof !281

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 9, ptr %i.f, align 8, !tbaa !280
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !759
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !962, !nonnull !366, !align !367
  tail call void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.h, ptr noundef %4, i1 noundef zeroext %5)
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !747, !range !414, !noundef !366
  %i.k = trunc nuw i8 %i.j to i1                  ; 5 uses
  br i1 %i.k, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #36 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !784
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 163
  %i.p = load i8, ptr %i.o, align 1, !tbaa !791, !range !414, !noundef !366
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.invoke, label %bb.g

.invoke:                                          ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit69, %bb.s
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !962, !nonnull !366, !align !367
  invoke void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.s, ptr noundef %4, i1 noundef zeroext %5)
          to label %_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit unwind label %bb.o

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.u = sext i32 %1 to i64                       ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !807
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  br i1 %6, label %bb.i, label %bb.y

bb.i:                                             ; preds = %bb.h
  %.not60 = icmp eq i32 %1, 0
  br i1 %.not60, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !807
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %.thread82

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.u
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !304, !range !414, !noundef !366
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1728
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZN4asio6detail10reactor_op7performEv.exit unwind label %bb.o, !inline_history !102

_ZN4asio6detail10reactor_op7performEv.exit:       ; preds = %bb.l
  switch i32 %i.ah, label %bb.p [
    i32 0, label %_ZN4asio6detail10reactor_op7performEv.exit..critedge_crit_edge
    i32 2, label %bb.m
  ]

_ZN4asio6detail10reactor_op7performEv.exit..critedge_crit_edge: ; preds = %_ZN4asio6detail10reactor_op7performEv.exit
  %.pre85 = load ptr, ptr %3, align 8, !tbaa !784
  br label %.critedge

bb.m:                                             ; preds = %_ZN4asio6detail10reactor_op7performEv.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !784   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 108
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !803
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.u
  store i8 0, ptr %i.am, align 1, !tbaa !304
  br label %bb.p

bb.o:                                             ; preds = %.invoke, %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.k, label %bb.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit70

bb.p:                                             ; preds = %_ZN4asio6detail10reactor_op7performEv.exit, %bb.m, %bb.n
  br i1 %i.k, label %bb.q, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ao = load i8, ptr %i.i, align 8, !tbaa !747, !range !414, !noundef !366
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.r, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit: ; preds = %bb.p, %bb.r, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !962, !nonnull !366, !align !367
  tail call void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.at, ptr noundef nonnull %4, i1 noundef zeroext %5)
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

.critedge:                                        ; preds = %_ZN4asio6detail10reactor_op7performEv.exit..critedge_crit_edge, %bb.k
  %i.au = phi ptr [ %.pre85, %_ZN4asio6detail10reactor_op7performEv.exit..critedge_crit_edge ], [ %i.n, %bb.k ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !803 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 95) #36
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !760
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.invoke

bb.t:                                             ; preds = %.critedge
  %i.az = icmp eq i32 %1, 1
  %i.ba = and i32 %i.aw, 4
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond = and i1 %i.az, %i.bb
  br i1 %or.cond, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.bc = or disjoint i32 %i.aw, 4
  store i32 %i.bc, ptr %8, align 4, !tbaa !780
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store ptr %i.au, ptr %i.bd, align 4, !tbaa !279
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !775
  %i.bg = call i32 @epoll_ctl(i32 noundef %i.bf, i32 noundef 3, i32 noundef %2, ptr noundef nonnull %8) #36
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.bi = load i32, ptr %8, align 4, !tbaa !780
  %i.bj = load ptr, ptr %3, align 8, !tbaa !784   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 108 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !803
  %i.bm = or i32 %i.bl, %i.bi
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !803
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.bn = tail call ptr @__errno_location() #55
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !280
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4asio5error19get_system_categoryEv()
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bo, ptr %i.bq, align 8, !tbaa !280
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.bp, ptr %.sroa.573.0..sroa_idx, align 8, !tbaa !759
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !962, !nonnull !366, !align !367
  invoke void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.bs, ptr noundef nonnull %4, i1 noundef zeroext %5)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit

bb.y:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 108 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !803 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.z, label %bb.ac

.thread82:                                        ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !803 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.z, label %.thread83

bb.z:                                             ; preds = %.thread82, %bb.y
  %i.bz = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.aa, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit69, !prof !281

bb.aa:                                            ; preds = %bb.z
  %i.cb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  %.not.i.i.i.i68 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i68, label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit69, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #36
  br label %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit69

_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit69: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %i.cd, align 8, !tbaa !280
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.471.0..sroa_idx, align 8, !tbaa !759
  br label %.invoke

bb.ac:                                            ; preds = %bb.y
  %i.ce = icmp eq i32 %1, 1
  br i1 %i.ce, label %bb.ad, label %.thread83

bb.ad:                                            ; preds = %bb.ac
  %i.cf = or i32 %i.bu, 4                         ; 2 uses
  store i32 %i.cf, ptr %i.bt, align 4, !tbaa !803
  br label %.thread83

.thread83:                                        ; preds = %.thread82, %bb.ad, %bb.ac
  %i.cg = phi i32 [ %i.bu, %bb.ac ], [ %i.cf, %bb.ad ], [ %i.bx, %.thread82 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 %i.cg, ptr %9, align 4, !tbaa !780
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 4
  store ptr %i.n, ptr %i.ch, align 4, !tbaa !279
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !775
  %i.ck = call i32 @epoll_ctl(i32 noundef %i.cj, i32 noundef 3, i32 noundef %2, ptr noundef nonnull %9) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %.pre86 = load ptr, ptr %3, align 8, !tbaa !784
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %.thread83, %bb.t, %bb.g
  %i.cl = phi ptr [ %i.bj, %.thread ], [ %.pre86, %.thread83 ], [ %i.au, %bb.t ], [ %i.n, %bb.g ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.cm, i64 %i.u ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !793
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !808 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  %..i = select i1 %.not.i, ptr %i.cn, ptr %i.cp
  store ptr %4, ptr %..i, align 8, !tbaa !376
  store ptr %4, ptr %i.co, align 8, !tbaa !808
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !962, !nonnull !366, !align !367
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 216
  %i.ct = atomicrmw add ptr %i.cs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit

_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit: ; preds = %.invoke, %bb.x, %bb.ae
  br i1 %i.k, label %bb.af, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.af:                                            ; preds = %_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cv = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cu) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit, %bb.af, %_ZN4asio6detail13epoll_reactor25post_immediate_completionEPNS0_19scheduler_operationEb.exit, %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit
  ret void

bb.ag:                                            ; preds = %bb.w, %bb.v
  %10 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br i1 %i.k, label %bb.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit70

bb.ah:                                            ; preds = %bb.o, %bb.ag
  %.pn6491 = phi { ptr, i32 } [ %i.an, %bb.o ], [ %10, %bb.ag ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cx = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #36 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit70

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit70: ; preds = %bb.o, %bb.ag, %bb.ah
  %.pn6490 = phi { ptr, i32 } [ %i.an, %bb.o ], [ %10, %bb.ag ], [ %.pn6491, %bb.ah ]
  resume { ptr, i32 } %.pn6490
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail22deadline_timer_serviceINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS5_EEEEE10async_waitINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENSC_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINSB_6streamIRSI_EESM_PKSL_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSV_11async_writeISR_SM_EEN12async_simple4coro4LazyISZ_EERT_T0_EUlOS15_E_SR_EENS13_IS15_EES17_RT1_ENKUlS15_E_clINSV_21callback_awaitor_baseISZ_NSV_16callback_awaitorISZ_EEE15awaitor_handlerEEEDaS15_EUlDpOT_E_EEEESH_EEvRNS9_19implementation_typeES16_RKS17_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::wait_handler<asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::write_op<std::array<asio::const_buffer, 2>>, asio::detail::write_op<asio::ssl::stream<asio::basic_stream_socket<asio::ip::tcp> &>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %2, ptr %4, align 8, !tbaa !1744
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !818
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.f, i64 noundef 248, i64 noundef 16) ; 19 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1745
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !793
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E11do_completeEPvPNS0_19scheduler_operationERKSP_m, ptr %i.i, align 8, !tbaa !794
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !805
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !796
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !5960
  store ptr %i.m, ptr %i.l, align 8, !tbaa !797
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !1102
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !376
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !376
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !1717
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !279
  store <2 x i32> %i.u, ptr %i.s, align 8, !tbaa !279
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !760
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1706
  store i64 %i.z, ptr %i.x, align 8, !tbaa !1706
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1709, !nonnull !366, !align !367
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !1189
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !tbaa.struct !1710
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1707
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !1707
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1432
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !1432
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  tail call void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %3) #36, !inline_history !5960
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1746
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.am, align 8, !tbaa !876
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !886, !nonnull !366, !align !367
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN4asio6detail13epoll_reactor14schedule_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEvRNS0_11timer_queueIT_EERKNSB_9time_typeERNSC_14per_timer_dataEPNS0_7wait_opE(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull %i.g)
          to label %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptrD2Ev.exit unwind label %bb.d

_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptrD2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1746 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !853
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !860
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_ED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #49
  unreachable

_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_ED2Ev.exit.i: ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1746
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_ED2Ev.exit.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1745 ; 5 uses
  %.not1.i = icmp eq ptr %i.j, null
  br i1 %.not1.i, label %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptr5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !819  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i.i.i

_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !818  ; 4 uses
  %.not4.i = icmp eq ptr %i.n, null
  br i1 %.not4.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !376
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.preheader.1.i.i.i.i.i.i.i.i.i.i

.preheader.1.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !376
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %.thread.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.preheader.1.i.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ], [ 1, %.preheader.1.i.i.i.i.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.v = load i8, ptr %i.u, align 1, !tbaa !279
  store i8 %i.v, ptr %i.j, align 1, !tbaa !279
  store ptr %i.j, ptr %i.t, align 8, !tbaa !376
  br label %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptr5resetEv.exit

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.1.i.i.i.i.i.i.i.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i.i.i.i.i.i.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.j) #36
  br label %_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptr5resetEv.exit

_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E3ptr5resetEv.exit: ; preds = %bb.f, %.thread.i.i.i.i.i.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail12wait_handlerINS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS3_8write_opISt5arrayINS_12const_bufferELm2EEEENS0_8write_opINS2_6streamIRS9_EESD_PKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSM_11async_writeISI_SD_EEN12async_simple4coro4LazyISQ_EERT_T0_EUlOSW_E_SI_EENSU_ISW_EESY_RT1_ENKUlSW_E_clINSM_21callback_awaitor_baseISQ_NSM_16callback_awaitorISQ_EEE15awaitor_handlerEEEDaSW_EUlDpOT_E_EEEES8_E11do_completeEPvPNS0_19scheduler_operationERKSP_m(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.asio::detail::wait_handler<asio::ssl::detail::io_op<asio::basic_stream_socket<asio::ip::tcp>, asio::ssl::detail::write_op<std::array<asio::const_buffer, 2>>, asio::detail::write_op<asio::ssl::stream<asio::basic_stream_socket<asio::ip::tcp> &>, std::array<asio::const_buffer, 2>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  %5 = alloca %"class.asio::detail::handler_work.1647", align 8 ; 11 uses
  %6 = alloca %"class.asio::detail::binder1.1658", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1745
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !853  ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !853
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !852
  store ptr %i.i, ptr %i.g, align 8, !tbaa !852
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableIvEEPKNS2_10object_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.e, align 8, !tbaa !853
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableIvEEPKNS2_10target_fnsEPNSt9enable_ifIXsr7is_sameIT_vEE5valueEvE4typeEE3fns, ptr %i.h, align 8, !tbaa !852
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !981
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #49
  unreachable

end_hunk_0
