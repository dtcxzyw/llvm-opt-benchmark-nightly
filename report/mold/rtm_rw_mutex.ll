Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rtm_rw_mutex?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3tbb6detail2r118try_acquire_writerERNS0_2d112rtm_rw_mutexERNS3_11scoped_lockE:bb.a

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
  %i.v = and i64 %i.u, 1
  %.not5.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not5.not.i.i, label %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %0, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i: ; preds = %bb.f
  store ptr %0, ptr %1, align 8, !tbaa !27
  store i32 3, ptr %i.p, align 8, !tbaa !26
  br label %_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit

_ZN3tbb6detail2r117rtm_rw_mutex_impl18try_acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockE.exit: ; preds = %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i, %bb.e, %bb.g, %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i
  %.0.i = phi i1 [ true, %_ZN3tbb6detail2r117rtm_rw_mutex_impl14acquire_readerERNS0_2d112rtm_rw_mutexERNS4_11scoped_lockEb.exit.i ], [ true, %_ZN3tbb6detail2d113spin_rw_mutex15try_lock_sharedEv.exit.i ], [ false, %bb.e ], [ false, %bb.g ]
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
  %i.d = atomicrmw add ptr %i.c, i64 -4 seq_cst, align 8 ; 0 uses
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
  br i1 %or.cond, label %.lr.ph, label %._crit_edge

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !34

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
  br i1 %.not2, label %._crit_edge20, label %.lr.ph19, !llvm.loop !35

._crit_edge20:                                    ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit, %.preheader
  %i.x = atomicrmw add ptr %0, i64 -6 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %i.y = atomicrmw add ptr %0, i64 -4 seq_cst, align 8 ; 0 uses
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

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i
  %i.ak = tail call noundef i32 @sched_yield() #3 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !2

_ZN3tbb6detail2d113spin_rw_mutex4lockEv.exit:     ; preds = %bb.d, %._crit_edge20
  %or.cond12 = phi i1 [ true, %._crit_edge20 ], [ false, %bb.d ]
  ret i1 %or.cond12
}

; Function Attrs: nounwind
declare void @llvm.x86.xend() #3

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"cf-protection-return", i32 1}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"probe-stack", !"inline-asm"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTSN3tbb6detail2r117cpu_features_typeE", !15, i64 0, !15, i64 1, !15, i64 2}
!17 = !{!16, !15, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"any pointer", !11, i64 0}
!23 = !{!"p1 _ZTSN3tbb6detail2d112rtm_rw_mutexE", !22, i64 0}
!24 = !{!"_ZTSN3tbb6detail2d112rtm_rw_mutex8rtm_typeE", !11, i64 0}
!25 = !{!"_ZTSN3tbb6detail2d112rtm_rw_mutex11scoped_lockE", !23, i64 0, !24, i64 8}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !23, i64 0}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !20}
end_hunk_0
