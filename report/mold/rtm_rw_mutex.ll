Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rtm_rw_mutex?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb:bb.a
  %.not1.i = icmp eq i64 %i.aj, 0
  br i1 %.not1.i, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ak = atomicrmw or ptr %0, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.m, %bb.l
  br i1 %i.ae, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, label %bb.n

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.al = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.al, label %.lr.ph.i.i.preheader.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, %bb.k
  %.sroa.0.1811.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ 1, %bb.k ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.am = add nsw i32 %.01.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.an = icmp samesign ugt i32 %.01.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i
  %.sroa.0.1810.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.i ]
  %i.ao = shl nsw i32 %.sroa.0.1810.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !2

bb.n:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ap = tail call noundef i32 @sched_yield() #3 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !2

_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit:     ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i8 1, ptr %i.aq monotonic, align 64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.ar, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %.preheader.split.us, %bb.g, %.split26.us, %bb.i, %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r114acquire_readerERNS0_2d112rtm_rw_mutexERNS3_11scoped_lockEb(ptr noundef nonnull align 128 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb(ptr noundef nonnull align 128 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb(ptr noundef nonnull align 128 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3tbb6detail2r18governor12cpu_featuresE, align 1, !tbaa !17, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  br i1 %2, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.b
  %.015.us = phi i32 [ %i.h, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.d = load atomic i8, ptr %i.c acquire, align 64, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.thread, label %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us

_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us: ; preds = %.preheader.split.us
  %i.f = tail call noundef i32 @llvm.x86.xbegin() ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %.split.us, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us
  %i.h = add nuw nsw i32 %.015.us, 1
  %i.i = and i32 %i.f, 7
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp samesign ult i32 %.015.us, 9
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.preheader.split.us, label %.split26.us, !llvm.loop !3

.preheader.split:                                 ; preds = %.preheader, %bb.h
  %.015 = phi i32 [ %i.ad, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.m = load atomic i8, ptr %i.c acquire, align 64, !range !18, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit

bb.c:                                             ; preds = %.preheader.split
  %i.o = load atomic i8, ptr %i.c acquire, align 64, !range !18, !noundef !19
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i
  %.sroa.0.09.us.i = phi i32 [ %.sroa.0.1.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i ], [ 1, %bb.c ] ; 8 uses
  %i.p = icmp slt i32 %.sroa.0.09.us.i, 17
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = tail call noundef i32 @sched_yield() #3  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = icmp sgt i32 %.sroa.0.09.us.i, 0
  br i1 %i.r, label %.lr.ph.i.i.us.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.09.us.i, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol

.lr.ph.i.i.us.i.prol:                             ; preds = %.lr.ph.i.i.us.i.preheader, %.lr.ph.i.i.us.i.prol
  %.01.i.i.us.i.prol = phi i32 [ %i.s, %.lr.ph.i.i.us.i.prol ], [ %.sroa.0.09.us.i, %.lr.ph.i.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.prol ], [ 0, %.lr.ph.i.i.us.i.preheader ]
  %i.s = add nsw i32 %.01.i.i.us.i.prol, -1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol, !llvm.loop !30

.lr.ph.i.i.us.i.prol.loopexit:                    ; preds = %.lr.ph.i.i.us.i.prol, %.lr.ph.i.i.us.i.preheader
  %.01.i.i.us.i.unr = phi i32 [ %.sroa.0.09.us.i, %.lr.ph.i.i.us.i.preheader ], [ %i.s, %.lr.ph.i.i.us.i.prol ]
  %i.t = icmp ult i32 %.sroa.0.09.us.i, 8
  br i1 %i.t, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i
  %.01.i.i.us.i = phi i32 [ %i.u, %.lr.ph.i.i.us.i ], [ %.01.i.i.us.i.unr, %.lr.ph.i.i.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.u = add nsw i32 %.01.i.i.us.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.v = icmp sgt i32 %.01.i.i.us.i, 8
  br i1 %i.v, label %.lr.ph.i.i.us.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i:   ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i, %bb.e
  %i.w = shl i32 %.sroa.0.09.us.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, %bb.d
  %.sroa.0.1.us.i = phi i32 [ %i.w, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i ], [ %.sroa.0.09.us.i, %bb.d ]
  %i.x = load atomic i8, ptr %i.c acquire, align 64, !range !18, !noundef !19
  %.not22 = icmp eq i8 %i.x, 0
  br i1 %.not22, label %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !31

_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %bb.c, %.preheader.split
  %i.y = tail call noundef i32 @llvm.x86.xbegin() ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.split.us, label %bb.h

.split.us:                                        ; preds = %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit, %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us
  %i.aa = load atomic i8, ptr %i.c monotonic, align 64, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us
  tail call void @llvm.x86.xabort(i8 -1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.ac, align 8, !tbaa !26
  store ptr %0, ptr %1, align 8, !tbaa !27
  br label %.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit
  %i.ad = add nuw nsw i32 %.015, 1
  %i.ae = and i32 %i.y, 7
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp samesign ult i32 %.015, 9
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.preheader.split, label %.split26.us, !llvm.loop !3

.split26.us:                                      ; preds = %bb.h, %bb.b
  br i1 %2, label %.thread, label %bb.j

bb.i:                                             ; preds = %bb.a
  br i1 %2, label %.thread, label %bb.j

bb.j:                                             ; preds = %.split26.us, %bb.i
  store ptr %0, ptr %1, align 8, !tbaa !27
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, %bb.j
  %.sroa.0.0.i.ph = phi i32 [ %i.as, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ 1, %bb.j ] ; 7 uses
  %i.ai = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.o
  %i.aj = load atomic i64, ptr %0 monotonic, align 128
  %i.ak = and i64 %i.aj, 3
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.al = atomicrmw add ptr %0, i64 4 seq_cst, align 8
  %3 = trunc i64 %i.al to i1
  br i1 %3, label %bb.l, label %_ZN3tbb6detail2d113spin_rw_mutex11lock_sharedEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = atomicrmw sub ptr %0, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %xtraiter36 = and i32 %.sroa.0.0.i.ph, 7        ; 2 uses
  %lcmp.mod37.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.ao, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter38 = phi i32 [ %prol.iter38.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ao = add nsw i32 %.01.i.i.i.prol, -1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter38.next = add i32 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i32 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !32

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.prol ]
  %i.ap = icmp ult i32 %.sroa.0.0.i.ph, 8
  br i1 %i.ap, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.aq, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.aq = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ar = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.ar, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.n
  %i.as = shl i32 %.sroa.0.0.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !33

bb.o:                                             ; preds = %bb.m
  %i.at = tail call noundef i32 @sched_yield() #3 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !33

_ZN3tbb6detail2d113spin_rw_mutex11lock_sharedEv.exit: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.au, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %.preheader.split.us, %bb.g, %.split26.us, %bb.i, %_ZN3tbb6detail2d113spin_rw_mutex11lock_sharedEv.exit
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define noundef zeroext i1 @_ZN3tbb6detail2r17upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  switch i32 %i.b, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit [
    i32 3, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = tail call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store atomic i8 1, ptr %i.f monotonic, align 1
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !tbaa !26
  switch i32 %i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit.i [
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  tail call void @llvm.x86.xend()
  br label %.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !27
  %i.k = atomicrmw sub ptr %i.j, i64 4 seq_cst, align 8 ; 0 uses
  br label %.sink.split.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store atomic i8 0, ptr %i.m monotonic, align 1
  %i.n = load ptr, ptr %0, align 8, !tbaa !27
  %i.o = atomicrmw and ptr %i.n, i64 -4 seq_cst, align 8 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !27
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit.i

_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit.i: ; preds = %.sink.split.i.i, %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !26
  tail call void @_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb(ptr noundef nonnull align 128 dereferenceable(65) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false)
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

bb.h:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 8, !tbaa !26
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl7upgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit.i, %bb.h
  %.1.i = phi i1 [ false, %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit.i ], [ %i.d, %bb.b ], [ true, %bb.h ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress norecurse nounwind sspstrong willreturn uwtable
define noundef zeroext i1 @_ZN3tbb6detail2r19downgradeERNS0_2d112rtm_rw_mutex11scoped_lockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  switch i32 %i.b, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl9downgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit [
    i32 4, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store atomic i8 0, ptr %i.d monotonic, align 1
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = atomicrmw add ptr %i.e, i64 3 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl9downgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !26
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl9downgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl9downgradeERNS0_2d112rtm_rw_mutex11scoped_lockE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define noundef zeroext i1 @_ZN3tbb6detail2r118try_acquire_writerERNS0_2d112rtm_rw_mutexERNS3_11scoped_lockE(ptr noundef nonnull align 128 dereferenceable(65) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3tbb6detail2r18governor12cpu_featuresE, align 1, !tbaa !17, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.preheader.split.us.i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i

.preheader.split.us.i.i:                          ; preds = %bb.a, %bb.b
  %.016.us.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = load atomic i64, ptr %0 acquire, align 128
  %.not.us.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.us.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIlZNS1_18spin_wait_until_eqIllEET_RKSt6atomicIS4_ET0_St12memory_orderEUllE_EES4_S8_S9_SA_.exit.us.i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i

_ZN3tbb6detail2d015spin_wait_whileIlZNS1_18spin_wait_until_eqIllEET_RKSt6atomicIS4_ET0_St12memory_orderEUllE_EES4_S8_S9_SA_.exit.us.i.i: ; preds = %.preheader.split.us.i.i
  %i.d = tail call noundef i32 @llvm.x86.xbegin() ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.split.us.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d015spin_wait_whileIlZNS1_18spin_wait_until_eqIllEET_RKSt6atomicIS4_ET0_St12memory_orderEUllE_EES4_S8_S9_SA_.exit.us.i.i
  %i.f = add nuw nsw i32 %.016.us.i.i, 1
  %i.g = and i32 %i.d, 7
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp samesign ult i32 %.016.us.i.i, 9
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.preheader.split.us.i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, !llvm.loop !0

.split.us.i.i:                                    ; preds = %_ZN3tbb6detail2d015spin_wait_whileIlZNS1_18spin_wait_until_eqIllEET_RKSt6atomicIS4_ET0_St12memory_orderEUllE_EES4_S8_S9_SA_.exit.us.i.i
  %i.k = load atomic i64, ptr %0 monotonic, align 128
  %.not19.i.i = icmp eq i64 %i.k, 0
  br i1 %.not19.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us.i.i
  tail call void @llvm.x86.xabort(i8 -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.l, align 8, !tbaa !26
  store ptr %0, ptr %1, align 8, !tbaa !27
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i

_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i: ; preds = %bb.b, %.preheader.split.us.i.i, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i
  %i.p = load atomic i64, ptr %0 monotonic, align 128 ; 2 uses
  %i.q = and i64 %i.p, -3
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.e
  %i.r = cmpxchg ptr %0, i64 %i.p, i64 1 seq_cst seq_cst, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

bb.f:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i
  store ptr %0, ptr %1, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic i8 1, ptr %i.t monotonic, align 64
  store i32 4, ptr %i.m, align 8, !tbaa !26
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit: ; preds = %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, %bb.e, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.f
  %.0.i = phi i1 [ true, %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_writerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i ], [ true, %bb.f ], [ false, %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i ], [ false, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define noundef zeroext i1 @_ZN3tbb6detail2r118try_acquire_readerERNS0_2d112rtm_rw_mutexERNS3_11scoped_lockE(ptr noundef nonnull align 128 dereferenceable(65) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZN3tbb6detail2r18governor12cpu_featuresE, align 1, !tbaa !17, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.preheader.i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %bb.b, %.preheader.i.i
  %.015.us.i.i = phi i32 [ %i.h, %bb.b ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.d = load atomic i8, ptr %i.c acquire, align 64, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, label %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us.i.i

_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us.i.i: ; preds = %.preheader.split.us.i.i
  %i.f = tail call noundef i32 @llvm.x86.xbegin() ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %.split.us.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us.i.i
  %i.h = add nuw nsw i32 %.015.us.i.i, 1
  %i.i = and i32 %i.f, 7
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp samesign ult i32 %.015.us.i.i, 9
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.preheader.split.us.i.i, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, !llvm.loop !3

.split.us.i.i:                                    ; preds = %_ZN3tbb6detail2d015spin_wait_whileIbZNS1_18spin_wait_while_eqIbbEET_RKSt6atomicIS4_ET0_St12memory_orderEUlbE_EES4_S8_S9_SA_.exit.us.i.i
  %i.m = load atomic i8, ptr %i.c monotonic, align 64, !range !18, !noundef !19
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us.i.i
  tail call void @llvm.x86.xabort(i8 -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !26
  store ptr %0, ptr %1, align 8, !tbaa !27
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i

_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i: ; preds = %bb.b, %.preheader.split.us.i.i, %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i
  %i.s = load atomic i64, ptr %0 monotonic, align 128
  %i.t = and i64 %i.s, 3
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

bb.f:                                             ; preds = %bb.e
  %i.u = atomicrmw add ptr %0, i64 4 seq_cst, align 8
  %2 = trunc i64 %i.u to i1
  br i1 %2, label %bb.g, label %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = atomicrmw sub ptr %0, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i: ; preds = %bb.f
  store ptr %0, ptr %1, align 8, !tbaa !27
  store i32 3, ptr %i.p, align 8, !tbaa !26
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit: ; preds = %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, %bb.e, %bb.g, %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i
  %.0.i = phi i1 [ true, %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i ], [ true, %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i ], [ false, %bb.g ], [ false, %bb.e ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define void @_ZN3tbb6detail2r17releaseERNS0_2d112rtm_rw_mutex11scoped_lockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  switch i32 %i.b, label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit [
    i32 2, label %bb.b
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.x86.xend()
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  %i.d = atomicrmw sub ptr %i.c, i64 4 seq_cst, align 8 ; 0 uses
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store atomic i8 0, ptr %i.f monotonic, align 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = atomicrmw and ptr %i.g, i64 -4 seq_cst, align 8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !27
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl7releaseERNS0_2d112rtm_rw_mutex11scoped_lockE.exit: ; preds = %bb.a, %.sink.split.i
  store i32 0, ptr %i.a, align 8, !tbaa !26
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #3

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @llvm.x86.xbegin() #3

; Function Attrs: nounwind
declare void @llvm.x86.xabort(i8 immarg) #3

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, -4
  %i.c = icmp eq i64 %i.b, 4
  %i.d = and i64 %i.a, 2
  %.not13 = icmp eq i64 %i.d, 0
  %or.cond14 = or i1 %i.c, %.not13
  br i1 %or.cond14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0815 = phi i64 [ %i.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = or i64 %.0815, 3
  %i.f = cmpxchg ptr %0, i64 %.0815, i64 %i.e seq_cst seq_cst, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %.preheader, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

.preheader:                                       ; preds = %.lr.ph
  %i.h = load atomic i64, ptr %0 monotonic, align 8
  %i.i = and i64 %i.h, -4
  %.not217 = icmp eq i64 %i.i, 4
  br i1 %.not217, label %._crit_edge20, label %.lr.ph19

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.j = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.k = and i64 %i.j, -4
  %i.l = icmp eq i64 %i.k, 4
  %i.m = and i64 %i.j, 2
  %.not = icmp eq i64 %i.m, 0
  %or.cond = or i1 %i.l, %.not
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !34

.lr.ph19:                                         ; preds = %.preheader, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit
  %.sroa.0.018 = phi i32 [ %.sroa.0.1, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit ], [ 1, %.preheader ] ; 8 uses
  %i.n = icmp slt i32 %.sroa.0.018, 17
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph19
  %i.o = icmp sgt i32 %.sroa.0.018, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i32 %.sroa.0.018, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.p, %.lr.ph.i.i.prol ], [ %.sroa.0.018, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.p = add nsw i32 %.01.i.i.prol, -1            ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !35

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.018, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i32 %.sroa.0.018, 8
  br i1 %i.q, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.r = add nsw i32 %.01.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.s = icmp sgt i32 %.01.i.i, 8
  br i1 %i.s, label %.lr.ph.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i:        ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.t = shl i32 %.sroa.0.018, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

bb.c:                                             ; preds = %.lr.ph19
  %i.u = tail call noundef i32 @sched_yield() #3  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit:   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i, %bb.c
  %.sroa.0.1 = phi i32 [ %i.t, %_ZN3tbb6detail2d013machine_pauseEi.exit.i ], [ %.sroa.0.018, %bb.c ]
  %i.v = load atomic i64, ptr %0 monotonic, align 8
  %i.w = and i64 %i.v, -4
  %.not2 = icmp eq i64 %i.w, 4
  br i1 %.not2, label %._crit_edge20, label %.lr.ph19, !llvm.loop !36

._crit_edge20:                                    ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit, %.preheader
  %i.x = atomicrmw sub ptr %0, i64 6 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %i.y = atomicrmw sub ptr %0, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, %._crit_edge
  %.sroa.0.0.i.ph = phi i32 [ %i.aj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ 1, %._crit_edge ] ; 4 uses
  %i.z = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.g
  %i.aa = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.ab = and i64 %i.aa, -3
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ac = cmpxchg ptr %0, i64 %i.aa, i64 1 seq_cst seq_cst, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit, label %.lr.ph.i.i.preheader.i

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.ae = and i64 %i.aa, 2
  %.not1.i = icmp eq i64 %i.ae, 0
  br i1 %.not1.i, label %bb.f, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = atomicrmw or ptr %0, i64 2 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.f, %bb.e
  br i1 %i.z, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, label %bb.g

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ag = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.ag, label %.lr.ph.i.i.preheader.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i, %bb.d
  %.sroa.0.1811.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ 1, %bb.d ] ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.ah = add nsw i32 %.01.i.i.i, -1
  tail call void @llvm.x86.sse2.pause()
  %i.ai = icmp samesign ugt i32 %.01.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i
  %.sroa.0.1810.i = phi i32 [ %.sroa.0.0.i.ph, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.thread6.i ], [ %.sroa.0.1811.i, %.lr.ph.i.i.i ]
  %i.aj = shl nsw i32 %.sroa.0.1810.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !2
end_hunk_0
