Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CPUThreadPoolExecutor?download=true
inline.NumInlined: 4368
inline.NumDeleted: 2174
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !6038
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us, %bb.b
  %.1.us = phi i1 [ %i.k, %bb.b ], [ %.033.us, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us ], [ %.033.us, %bb.g ] ; 5 uses
  switch i8 %trunc.us, label %bb.i [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = call noundef i64 @llvm.x86.rdtsc()       ; 2 uses
  %i.s = sub i64 %i.r, %i.b
  br label %.thread.i.us, !llvm.loop !15625

.split:                                           ; preds = %bb.a, %bb.s
  %.0 = phi i1 [ %spec.select, %bb.s ], [ false, %bb.a ]
  %.033 = phi i1 [ %.1, %bb.s ], [ undef, %bb.a ] ; 2 uses
  %.032 = phi i64 [ %i.t, %bb.s ], [ 0, %bb.a ]   ; 2 uses
  %.031 = phi i64 [ %.030, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %.030 = phi i64 [ %i.an, %bb.s ], [ %i.b, %bb.a ] ; 3 uses
  %.029 = phi i64 [ %i.ao, %bb.s ], [ 0, %bb.a ]  ; 2 uses
  %i.t = add i64 %.032, 1
  %.not21.i = icmp ne i64 %.031, 0
  %i.u = sub i64 %.030, %.031
  %i.v = icmp ugt i64 %i.u, 199
  %or.cond24.i = and i1 %.not21.i, %i.v
  %spec.select = select i1 %or.cond24.i, i1 true, i1 %.0 ; 2 uses
  %.not40 = icmp eq i64 %.032, 0
  br i1 %.not40, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %.split
  %i.w = icmp ult i64 %.029, 40000
  %i.x = shl i64 %.030, 8
  %i.y = select i1 %i.w, i64 %i.x, i64 0
  br i1 %spec.select, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %.split
  %i.z = phi i64 [ %i.y, %bb.j ], [ -256, %.split ]
  %i.aa = or i64 %i.z, %i.a
  %i.ab = atomicrmw xchg ptr %i.c, i64 %i.aa acq_rel, align 8
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = load atomic i64, ptr %i.c acquire, align 64
  br label %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit

_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit: ; preds = %.thread.i, %bb.k
  %i.ad = phi i64 [ %i.ab, %.thread.i ], [ %i.ac, %bb.k ] ; 2 uses
  %trunc = trunc i64 %i.ad to i8                  ; 2 uses
  switch i8 %trunc, label %bb.m [
    i8 10, label %bb.l
    i8 7, label %bb.l
    i8 3, label %bb.l
    i8 2, label %bb.l
  ]

bb.l:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit, %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ae = and i64 %i.ad, 255                      ; 2 uses
  %i.af = icmp ne i64 %i.ae, 3
  %i.ag = trunc nuw nsw i64 %i.ae to i32
  store i32 %i.ag, ptr %1, align 4, !tbaa !5790
  br label %bb.r

bb.m:                                             ; preds = %_ZN5folly6detail17distributed_mutex7publishINS1_6WaiterISt6atomicEEEEmmmmmRbRT_j.exit
  %i.ah = icmp ult i64 %.029, 40000
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !6038
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !5972
  store i64 500000, ptr %i.d, align 8, !tbaa !5973
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.ai = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.q, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call ptr @__errno_location() #43
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !5790
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.p, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, !llvm.loop !219

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.l
  %.1 = phi i1 [ %i.af, %bb.l ], [ %.033, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ], [ %.033, %bb.n ] ; 5 uses
  switch i8 %trunc, label %bb.s [
    i8 10, label %.split39.us
    i8 7, label %.split39.us
    i8 3, label %.split39.us
    i8 2, label %.split39.us
  ]

bb.s:                                             ; preds = %bb.r
  %i.an = call noundef i64 @llvm.x86.rdtsc()      ; 2 uses
  %i.ao = sub i64 %i.an, %i.b
  br label %.split, !llvm.loop !15625

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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15629 ; 3 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.critedge
  %.034 = phi ptr [ %i.v, %.critedge ], [ %i.t, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15633 ; 6 uses
  %i.w = load i64, ptr %.034, align 8, !tbaa !15634
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15635
  %i.aa = load i64, ptr %0, align 8, !tbaa !15637
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.t, %.034
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15638
  %i.af = icmp eq ptr %i.ae, %.034                ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.h:                                             ; preds = %bb.f
  store ptr %i.v, ptr %i.s, align 8, !tbaa !15629
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !15639
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15639 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !15638
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !15633
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

bb.k:                                             ; preds = %bb.i
  %3 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ai, ptr %3, align 8, !tbaa !15639
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.v, ptr %i.ak, align 8, !tbaa !15633
  br label %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit

_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = atomicrmw add ptr %i.o, i64 -1 monotonic, align 8 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.034, i64 40 ; 2 uses
  %i.an = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.an) #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29 ; 0 uses
  resume { ptr, i32 } %i.ao

bb.n:                                             ; preds = %_ZN5folly18parking_lot_detail6Bucket5eraseEPNS0_12WaitNodeBaseE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.034, i64 32
  store i8 1, ptr %i.aq, align 8, !tbaa !15640
  %i.ar = getelementptr inbounds nuw i8, ptr %.034, i64 80
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ar) #29
  %i.as = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #29 ; 0 uses
  br label %.loopexit, !llvm.loop !15626

.critedge:                                        ; preds = %bb.d, %.lr.ph
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.n
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly18parking_lot_detail6Bucket9bucketForEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly16ThrottledLifoSem14try_wait_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 64 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.06.in.in14.i.i = and i64 %i.b, 4294967295
  %.06.in15.not.i.i = icmp eq i64 %.06.in.in14.i.i, 0
  br i1 %.06.in15.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i
  %.016.i.i = phi i64 [ %i.f, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = add i64 %.016.i.i, -1
  %i.d = cmpxchg weak ptr %i.a, i64 %.016.i.i, i64 %i.c seq_cst monotonic, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i: ; preds = %.lr.ph.i.i
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %.06.in.in.i.i = and i64 %i.f, 4294967295
  %.06.in.not.i.i = icmp eq i64 %.06.in.in.i.i, 0
  br i1 %.06.in.not.i.i, label %.loopexit14, label %.lr.ph.i.i

.loopexit14:                                      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i, %bb.a
  %i.g = atomicrmw add ptr %i.a, i64 8589934592 seq_cst, align 8 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !5892
  %i.h = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.loopexit14
  %i.i = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.07.in.in15.i.i.i = and i64 %i.i, 4294967295
  %.07.in16.not.i.i.i = icmp eq i64 %.07.in.in15.i.i.i, 0
  br i1 %.07.in16.not.i.i.i, label %.loopexit50.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i
  %.017.i.i.i = phi i64 [ %i.m, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = add i64 %.017.i.i.i, -8589934593
  %i.k = cmpxchg weak ptr %i.a, i64 %.017.i.i.i, i64 %i.j seq_cst monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %.07.in.in.i.i.i = and i64 %i.m, 4294967295
  %.07.in.not.i.i.i = icmp eq i64 %.07.in.in.i.i.i, 0
  br i1 %.07.in.not.i.i.i, label %.loopexit50.i, label %.lr.ph.i.i.i

.loopexit50.i:                                    ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i, %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !5892
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.n, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit50.i
  %i.o = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.034.0.i = phi i64 [ %i.o, %bb.c ], [ %.sroa.speculated.i, %bb.f ]
  %i.p = load atomic i64, ptr %i.a monotonic, align 64 ; 2 uses
  %.07.in.in15.i.i14.i = and i64 %i.p, 4294967295
  %.07.in16.not.i.i15.i = icmp eq i64 %.07.in.in15.i.i14.i, 0
  br i1 %.07.in16.not.i.i15.i, label %.loopexit.i, label %.lr.ph.i.i16.i

.lr.ph.i.i16.i:                                   ; preds = %bb.d, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i18.i
  %.017.i.i17.i = phi i64 [ %i.t, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i18.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = add i64 %.017.i.i17.i, -8589934593
  %i.r = cmpxchg weak ptr %i.a, i64 %.017.i.i17.i, i64 %i.q seq_cst monotonic, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i18.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i18.i: ; preds = %.lr.ph.i.i16.i
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 2 uses
  %.07.in.in.i.i19.i = and i64 %i.t, 4294967295
  %.07.in.not.i.i20.i = icmp eq i64 %.07.in.in.i.i19.i, 0
  br i1 %.07.in.not.i.i20.i, label %.loopexit.i, label %.lr.ph.i.i16.i

.loopexit.i:                                      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i18.i, %bb.d
  %i.u = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29 ; 3 uses
  %.sroa.0.0.copyload.i2.i24.i = load i64, ptr %1, align 8, !tbaa !5892
  %.not.i = icmp slt i64 %i.u, %.sroa.0.0.copyload.i2.i24.i
  br i1 %.not.i, label %bb.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit

bb.e:                                             ; preds = %.loopexit.i
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %.sroa.034.0.i) ; 2 uses
  %.sroa.0.0.copyload.i25.i = load i64, ptr %2, align 8, !tbaa !5892
  %i.v = add nsw i64 %.sroa.0.0.copyload.i25.i, %.sroa.speculated.i
  %.not47.i = icmp slt i64 %i.u, %i.v
  br i1 %.not47.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !6038
  br label %bb.d, !llvm.loop !15641

_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit: ; preds = %.loopexit.i, %.loopexit50.i
  %i.w = load atomic i64, ptr %i.a monotonic, align 64 ; 3 uses
  %.07.in.in17.i.i = and i64 %i.w, 4294967295
  %.07.in18.i.i = icmp ne i64 %.07.in.in17.i.i, 0 ; 2 uses
  %.neg19.i.i = sext i1 %.07.in18.i.i to i64
  %i.x = add i64 %i.w, -8589934592
  %i.y = add i64 %i.x, %.neg19.i.i
  %i.z = cmpxchg weak ptr %i.a, i64 %i.w, i64 %i.y seq_cst monotonic, align 8 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5: ; preds = %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5
  %i.ab = phi { i64, i1 } [ %i.af, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5 ], [ %i.z, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit ]
  %i.ac = extractvalue { i64, i1 } %i.ab, 0       ; 3 uses
  %.07.in.in.i.i = and i64 %i.ac, 4294967295
  %.07.in.i.i = icmp ne i64 %.07.in.in.i.i, 0     ; 2 uses
  %.neg.i.i = sext i1 %.07.in.i.i to i64
  %i.ad = add i64 %i.ac, -8589934592
  %i.ae = add i64 %i.ad, %.neg.i.i
  %i.af = cmpxchg weak ptr %i.a, i64 %i.ac, i64 %i.ae seq_cst monotonic, align 8 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5

.loopexit:                                        ; preds = %bb.e, %.loopexit14
  %i.ah = tail call noundef zeroext i1 @_ZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EE(ptr noundef nonnull align 64 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5folly16ThrottledLifoSem8try_waitEv.exit

_ZN5folly16ThrottledLifoSem8try_waitEv.exit:      ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i16.i, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit, %.loopexit
  %.0 = phi i1 [ true, %.lr.ph.i.i.i ], [ %i.ah, %.loopexit ], [ true, %.lr.ph.i.i16.i ], [ %.07.in18.i.i, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_16ThrottledLifoSem14try_wait_untilIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESG_SJ_T1_.exit ], [ %.07.in.i.i, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i5 ], [ true, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly16ThrottledLifoSem16tryWaitUntilSlowINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS2_10time_pointIT_T0_EE(ptr noundef nonnull align 64 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.folly::Optional.325", align 8 ; 11 uses
  %5 = alloca %class.anon.332, align 8            ; 4 uses
  %6 = alloca %"class.folly::WaitOptions", align 8 ; 7 uses
  %7 = alloca %"class.folly::WaitOptions", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %5, align 8, !tbaa !6004
  store ptr %0, ptr %i.d, align 8, !tbaa !13647
  store ptr %4, ptr %i.e, align 8, !tbaa !13648
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %storemerge = phi i8 [ 0, %bb.a ], [ 1, %.backedge.backedge ]
  %.0 = phi i1 [ undef, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 2 uses
  store i8 %storemerge, ptr %i.a, align 1, !tbaa !5908
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
end_hunk_0
