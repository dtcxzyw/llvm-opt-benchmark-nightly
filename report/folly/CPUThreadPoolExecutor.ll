Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CPUThreadPoolExecutor?download=true
inline.NumInlined: 4368
inline.NumDeleted: 2174
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5folly6detail17distributed_mutex18lockImplementationISt6atomicLb1ES3_ImENS1_17RequestWithReturnIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EEEENS1_16DistributedMutexIT_XT0_EE26DistributedMutexStateProxyERSB_RT1_RT2_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %.045, ptr %i.p, align 8, !tbaa !13638
  br label %bb.k

bb.c:                                             ; preds = %_ZN5folly6detail17distributed_mutex33recordTimedWaiterAndClearTimedBitERbRm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !5790
  %i.q = icmp eq i32 %.044, 4
  br i1 %i.q, label %bb.d, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw xchg ptr %.sroa.6.0..sroa_idx, i32 5 acq_rel, align 4
  switch i32 %i.r, label %.lr.ph.i.i.preheader [
    i32 5, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
    i32 2, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57
  ]

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %.not.i.i.i.peel = icmp eq ptr %.045, null
  br i1 %.not.i.i.i.peel, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %.045, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.s release, align 4
  %i.t = call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.s, i32 noundef 1, i32 noundef -1) ; 0 uses
  br label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel: ; preds = %bb.e, %.lr.ph.i.i.preheader
  %i.u = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.v = load atomic i32, ptr %.sroa.6.0..sroa_idx acquire, align 32
  %.not.i.i.peel = icmp eq i32 %i.v, 2
  br i1 %.not.i.i.peel, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i
  %i.w = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1) ; 0 uses
  %i.x = load atomic i32, ptr %.sroa.6.0..sroa_idx acquire, align 32
  %.not.i.i = icmp eq i32 %i.x, 2
  br i1 %.not.i.i, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, !llvm.loop !15620

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57: ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel, %bb.d
  %i.y = load atomic i64, ptr %i.f monotonic, align 8
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  br label %bb.j, !llvm.loop !15621

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit: ; preds = %bb.c
  %i.ab = call noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.044)
  br i1 %i.ab, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, label %bb.j, !llvm.loop !15621

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread: ; preds = %bb.d, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit
  %i.ac = load i64, ptr %i.d, align 16            ; 3 uses
  %i.ad = icmp eq i64 %.0, %i.ac                  ; 2 uses
  %spec.select26 = select i1 %i.ad, i64 1, i64 %i.e
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !5790 ; 3 uses
  %i.af = icmp eq i32 %i.ae, 7
  %i.ag = icmp eq i32 %i.ae, 10                   ; 2 uses
  %or.cond = or i1 %i.af, %i.ag
  %i.ah = inttoptr i64 %i.ac to ptr               ; 2 uses
  switch i32 %i.ae, label %.thread [
    i32 10, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.ag, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit, !prof !5791

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i: ; preds = %bb.f
  store ptr null, ptr %i.d, align 16, !tbaa !13641
  store ptr %i.ah, ptr %4, align 8, !tbaa !13641
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #42
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  unreachable

bb.h:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %4, align 8, !tbaa !13641
  %.not.i6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i6.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ai

_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !13635
  br label %.thread

.thread:                                          ; preds = %_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread
  %i.al = and i64 %.0, -2
  %i.am = select i1 %i.ad, i64 0, i64 %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !569
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = zext i1 %or.cond to i8
  store ptr %i.an, ptr %0, align 8, !tbaa !13636
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select26, ptr %i.as, align 8, !tbaa !13637
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.148, ptr %i.at, align 8, !tbaa !13633
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !13630
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.av, align 8, !tbaa !13642
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.aw, align 8, !tbaa !13643
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.045, ptr %i.ax, align 8, !tbaa !13638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.k

bb.j:                                             ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57
  %.254 = phi ptr [ %.045, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit ], [ %i.aa, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit

bb.k:                                             ; preds = %.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail17InlineFunctionRefIFvvELm48EE10callInlineIKNS0_17distributed_mutex16TaskWithCoalesceIZNS_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS5_6WaiterISt6atomicEEEEEEvRKNS0_15aligned_storageILm40ELm8EE4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15623  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5911 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = icmp eq ptr %i.d, %i.c
  %i.f = or i1 %.not.i.i.i.i.i.i, %i.e
  br i1 %i.f, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 3 uses
  %i.i = and i64 %i.h, 4294967296
  %.not4.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, 4294967295
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i1 %.not4.i.i.i.i.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.p, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = or disjoint i64 %.05.i.i.i.i.i.i, 4294967296
  %i.n = cmpxchg weak ptr %i.g, i64 %.05.i.i.i.i.i.i, i64 %i.m seq_cst monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.i.i.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = extractvalue { i64, i1 } %i.n, 0         ; 3 uses
  %i.q = and i64 %i.p, 4294967296
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.q, 0
  %i.r = and i64 %i.p, 4294967295
  %i.s = icmp ne i64 %i.r, 0
  %i.t = and i1 %.not.i2.i.i.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit

_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5912 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !5911 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !5912 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !5911
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !5912
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !13632
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !13632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit

_ZSt6invokeIRKN5folly6detail17distributed_mutex16TaskWithCoalesceIZNS0_16ThrottledLifoSem21maybeStartWakingChainEvEUlvE_NS2_6WaiterISt6atomicEEEEJEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit: ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i, %bb.a, %bb.b, %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.w, %_ZN5folly16ThrottledLifoSem19tryAcquireWakingBitEv.exit.i.i.i.i.i ], [ null, %bb.b ], [ null, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15625, !nonnull !732, !align !13644
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %.0.i.i.i.i.i, ptr %i.af, align 16, !tbaa !13635
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 11 uses
  %.not = icmp eq i32 %2, 8
  %i.a = tail call noundef i64 @llvm.x86.rdtsc()  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %.split, label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.a, %bb.i
  %.033.us = phi i1 [ %.1.us, %bb.i ], [ undef, %bb.a ] ; 2 uses
  %.030.us = phi i64 [ %i.o, %bb.i ], [ %i.a, %bb.a ]
  %.029.us = phi i64 [ %i.p, %bb.i ], [ 0, %bb.a ]
  %i.d = icmp ult i64 %.029.us, 40000             ; 2 uses
  %i.e = shl i64 %.030.us, 8
  %4 = or disjoint i64 %i.e, 1
  %5 = select i1 %i.d, i64 %4, i64 1
  %i.f = atomicrmw xchg ptr %i.b, i64 %5 acq_rel, align 8 ; 2 uses
  %trunc.us = trunc i64 %i.f to i8                ; 2 uses
  switch i8 %trunc.us, label %bb.c [
    i8 10, label %bb.b
    i8 7, label %bb.b
    i8 3, label %bb.b
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %.thread.i.us, %.thread.i.us, %.thread.i.us, %.thread.i.us
  %i.g = and i64 %i.f, 255                        ; 2 uses
  %i.h = icmp ne i64 %i.g, 3
  %i.i = trunc nuw nsw i64 %i.g to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !5790
  br label %bb.h

bb.c:                                             ; preds = %.thread.i.us
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !5972
  store i64 500000, ptr %i.c, align 8, !tbaa !5973
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.j = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #43
  %i.m = load i32, ptr %i.l, align 4, !tbaa !5790
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.e, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us, !llvm.loop !219

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !6038
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us, %bb.b
  %.1.us = phi i1 [ %i.h, %bb.b ], [ %.033.us, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us ], [ %.033.us, %bb.g ] ; 5 uses
  switch i8 %trunc.us, label %bb.i [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = call noundef i64 @llvm.x86.rdtsc()       ; 2 uses
  %i.p = sub i64 %i.o, %i.a
  br label %.thread.i.us, !llvm.loop !15626

.split:                                           ; preds = %bb.a, %bb.s
  %.0 = phi i1 [ %spec.select, %bb.s ], [ false, %bb.a ]
  %.033 = phi i1 [ %.1, %bb.s ], [ undef, %bb.a ] ; 2 uses
  %.032 = phi i64 [ %i.q, %bb.s ], [ 0, %bb.a ]   ; 2 uses
  %.031 = phi i64 [ %.030, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %.030 = phi i64 [ %i.ak, %bb.s ], [ %i.a, %bb.a ] ; 3 uses
  %.029 = phi i64 [ %i.al, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %i.q = add i64 %.032, 1
  %.not21.i = icmp ne i64 %.031, 0
  %i.r = sub i64 %.030, %.031
  %i.s = icmp ugt i64 %i.r, 199
  %or.cond24.i = and i1 %.not21.i, %i.s
  %spec.select = select i1 %or.cond24.i, i1 true, i1 %.0 ; 2 uses
  %.not40 = icmp eq i64 %.032, 0
  br i1 %.not40, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %.split
  %i.t = icmp ult i64 %.029, 40000
  %i.u = shl i64 %.030, 8
  %i.v = select i1 %i.t, i64 %i.u, i64 0
  br i1 %spec.select, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %.split
  %i.w = phi i64 [ %i.v, %bb.j ], [ -256, %.split ]
  %i.x = or i64 %i.w, 9
  %i.y = atomicrmw xchg ptr %i.b, i64 %i.x acq_rel, align 8
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

bb.k:                                             ; preds = %bb.j
  %i.z = load atomic i64, ptr %i.b acquire, align 64
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit: ; preds = %.thread.i, %bb.k
  %i.aa = phi i64 [ %i.y, %.thread.i ], [ %i.z, %bb.k ] ; 2 uses
  %trunc = trunc i64 %i.aa to i8                  ; 2 uses
  switch i8 %trunc, label %bb.m [
    i8 10, label %bb.l
    i8 7, label %bb.l
    i8 3, label %bb.l
    i8 2, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 3
  %i.ad = trunc nuw nsw i64 %i.ab to i32
  store i32 %i.ad, ptr %1, align 4, !tbaa !5790
  br label %bb.r

bb.m:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ae = icmp ult i64 %.029, 40000
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !6038
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !5972
  store i64 500000, ptr %i.c, align 8, !tbaa !5973
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.af = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.q, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call ptr @__errno_location() #43
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !5790
  %i.aj = icmp eq i32 %i.ai, 4
  br i1 %i.aj, label %bb.p, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, !llvm.loop !219

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.l
  %.1 = phi i1 [ %i.ac, %bb.l ], [ %.033, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ], [ %.033, %bb.n ] ; 5 uses
  switch i8 %trunc, label %bb.s [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.s:                                             ; preds = %bb.r
  %i.ak = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.al = sub i64 %i.ak, %i.a
  br label %.split, !llvm.loop !15626

.split39.us:                                      ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.r, %bb.r, %bb.r, %bb.r
  %.us-phi = phi i1 [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1, %bb.r ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ], [ %.1.us, %bb.h ]
  ret i1 %.us-phi
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = xor i64 %i.a, -1
  %i.c = shl i64 %i.a, 21
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 24
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 265                        ; 2 uses
  %i.h = lshr i64 %i.g, 14
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 21                         ; 2 uses
  %i.k = lshr i64 %i.j, 28
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 2147483649                 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly18parking_lot_detail6Bucket9bucketForEm(i64 noundef %i.m) ; 6 uses
  fence seq_cst
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = load atomic i64, ptr %i.o seq_cst, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.r) #42
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15630 ; 3 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.critedge
  %.034 = phi ptr [ %i.v, %.critedge ], [ %i.t, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15634 ; 6 uses
  %i.w = load i64, ptr %.034, align 8, !tbaa !15635
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15636
  %i.aa = load i64, ptr %0, align 8, !tbaa !15638
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.t, %.034
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15639
  %i.af = icmp eq ptr %i.ae, %.034                ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.s, align 8, !tbaa !15630
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !15640
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15640 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !15639
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !15634
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !15640
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.v, ptr %i.al, align 8, !tbaa !15634
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.am = atomicrmw sub ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.034, i64 40 ; 2 uses
  %i.ao = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29 ; 0 uses
  resume { ptr, i32 } %i.ap

bb.n:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.034, i64 32
  store i8 1, ptr %i.ar, align 8, !tbaa !15641
  %i.as = getelementptr inbounds nuw i8, ptr %.034, i64 80
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as) #29
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #29 ; 0 uses
  br label %.loopexit, !llvm.loop !15627

.critedge:                                        ; preds = %bb.d, %.lr.ph
end_hunk_0
