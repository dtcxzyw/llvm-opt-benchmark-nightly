Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/perf?download=true
inline.NumInlined: 1228
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE_E12on_exceptionIZNSC_25extend_table_if_necessaryESH_mmEUlvE0_EEvT_:bb.a
  %i.l = tail call noundef i32 @sched_yield() #14 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = icmp sgt i32 %.sroa.0.09.us.i.i.i, 0
  br i1 %i.m, label %.lr.ph.i.i.us.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i

.lr.ph.i.i.us.i.i.i.preheader:                    ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.09.us.i.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol

.lr.ph.i.i.us.i.i.i.prol:                         ; preds = %.lr.ph.i.i.us.i.i.i.preheader, %.lr.ph.i.i.us.i.i.i.prol
  %.01.i.i.us.i.i.i.prol = phi i32 [ %i.n, %.lr.ph.i.i.us.i.i.i.prol ], [ %.sroa.0.09.us.i.i.i, %.lr.ph.i.i.us.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.i.preheader ]
  %i.n = add nsw i32 %.01.i.i.us.i.i.i.prol, -1   ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol, !llvm.loop !544

.lr.ph.i.i.us.i.i.i.prol.loopexit:                ; preds = %.lr.ph.i.i.us.i.i.i.prol, %.lr.ph.i.i.us.i.i.i.preheader
  %.01.i.i.us.i.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i.i, %.lr.ph.i.i.us.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.us.i.i.i.prol ]
  %i.o = icmp ult i32 %.sroa.0.09.us.i.i.i, 8
  br i1 %i.o, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i
  %.01.i.i.us.i.i.i = phi i32 [ %i.p, %.lr.ph.i.i.us.i.i.i ], [ %.01.i.i.us.i.i.i.unr, %.lr.ph.i.i.us.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.p = add nsw i32 %.01.i.i.us.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.q = icmp sgt i32 %.01.i.i.us.i.i.i, 8
  br i1 %i.q, label %.lr.ph.i.i.us.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, !llvm.loop !11

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i, %bb.c
  %i.r = shl i32 %.sroa.0.09.us.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, %bb.b
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i ], [ %.sroa.0.09.us.i.i.i, %bb.b ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit.i.i, !llvm.loop !12

_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i, %.lr.ph.i.i
  %i.u = add i64 %.01924.i.i, 1                   ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, -2
  %i.x = icmp ult i64 %i.w, %i.e
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !545

_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.i: ; preds = %._crit_edge.i.i
  %i.y = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 512) #14 ; 7 uses
  %i.z = load atomic ptr, ptr %i.b monotonic, align 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !553
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load atomic ptr, ptr %i.ab monotonic, align 8
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !553
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !553
  %scevgep.i.i = getelementptr i8, ptr %i.y, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %scevgep.i.i, i8 0, i64 488, i1 false), !tbaa !553
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !554, !nonnull !78, !align !93 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = cmpxchg ptr %i.f, ptr %i.ai, ptr %i.y release acquire, align 8 ; 2 uses
  %i.ak = extractvalue { ptr, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e

_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.thread.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !554, !nonnull !78, !align !93 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = cmpxchg ptr %i.f, ptr %i.an, ptr null release acquire, align 8 ; 2 uses
  %i.ap = extractvalue { ptr, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.thread.i
  %i.aq = extractvalue { ptr, i1 } %i.ao, 0
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE0_ED2Ev.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.thread.i, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.i
  %i.ar = phi ptr [ %i.al, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.thread.i ], [ %i.ag, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.i ]
  %.020.i8.i = phi ptr [ null, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.thread.i ], [ %i.y, %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.i ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !554, !nonnull !78, !align !93
  store ptr %.020.i8.i, ptr %i.as, align 8, !tbaa !95
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE0_ED2Ev.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE19allocate_long_tableEPKSt6atomicIPS5_Em.exit.i
  %i.at = extractvalue { ptr, i1 } %i.aj, 0
  store ptr %i.at, ptr %i.ah, align 8
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.y) #14
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE0_ED2Ev.exit

_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE0_ED2Ev.exit: ; preds = %bb.e, %bb.d, %.thread.i
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #13

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #14

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE14create_segmentEPSt6atomicIPS5_Emm(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.tbb::detail::d0::try_call_proxy", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 7 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic ptr, ptr %1 acquire, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i
  %.sroa.0.09.us.i = phi i32 [ %.sroa.0.1.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i ], [ 1, %bb.c ] ; 8 uses
  %i.k = icmp slt i32 %.sroa.0.09.us.i, 17
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = tail call noundef i32 @sched_yield() #14 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = icmp sgt i32 %.sroa.0.09.us.i, 0
  br i1 %i.m, label %.lr.ph.i.i.us.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.e
  %xtraiter107 = and i32 %.sroa.0.09.us.i, 7      ; 2 uses
  %lcmp.mod108.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol

.lr.ph.i.i.us.i.prol:                             ; preds = %.lr.ph.i.i.us.i.preheader, %.lr.ph.i.i.us.i.prol
  %.01.i.i.us.i.prol = phi i32 [ %i.n, %.lr.ph.i.i.us.i.prol ], [ %.sroa.0.09.us.i, %.lr.ph.i.i.us.i.preheader ]
  %prol.iter109 = phi i32 [ %prol.iter109.next, %.lr.ph.i.i.us.i.prol ], [ 0, %.lr.ph.i.i.us.i.preheader ]
  %i.n = add nsw i32 %.01.i.i.us.i.prol, -1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter109.next = add i32 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i32 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol, !llvm.loop !555

.lr.ph.i.i.us.i.prol.loopexit:                    ; preds = %.lr.ph.i.i.us.i.prol, %.lr.ph.i.i.us.i.preheader
  %.01.i.i.us.i.unr = phi i32 [ %.sroa.0.09.us.i, %.lr.ph.i.i.us.i.preheader ], [ %i.n, %.lr.ph.i.i.us.i.prol ]
  %i.o = icmp ult i32 %.sroa.0.09.us.i, 8
  br i1 %i.o, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i
  %.01.i.i.us.i = phi i32 [ %i.p, %.lr.ph.i.i.us.i ], [ %.01.i.i.us.i.unr, %.lr.ph.i.i.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.p = add nsw i32 %.01.i.i.us.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.q = icmp sgt i32 %.01.i.i.us.i, 8
  br i1 %i.q, label %.lr.ph.i.i.us.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, !llvm.loop !11

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i:   ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i, %bb.e
  %i.r = shl i32 %.sroa.0.09.us.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, %bb.d
  %.sroa.0.1.us.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i ], [ %.sroa.0.09.us.i, %bb.d ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit, !llvm.loop !12

bb.f:                                             ; preds = %bb.b
  %i.u = shl i64 8, %i.d
  %i.v = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.u) #14 ; 10 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.x = cmpxchg ptr %i.w, ptr null, ptr %i.v seq_cst seq_cst, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %_ZNSt6atomicIPPN4mold11TimerRecordEE23compare_exchange_strongERS3_S3_St12memory_order.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !51
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.d, 3
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit.thread, label %_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit

_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS7_EENS3_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE_E12on_exceptionIZNSC_25extend_table_if_necessaryESH_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(65) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.preheader

_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = icmp ugt i64 %i.d, 1
  br i1 %i.ad, label %.lr.ph.preheader, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

.lr.ph.preheader:                                 ; preds = %_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit.thread, %_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit
  %i.ae = add i64 %i.d, -1                        ; 2 uses
  %i.af = add i64 %i.d, -2
  %xtraiter113 = and i64 %i.ae, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 3
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ae, -4
  br label %.lr.ph

.preheader.unr-lcssa:                             ; preds = %.lr.ph
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph89, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.unr-lcssa, %.lr.ph.preheader
  %.01087.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.av, %.preheader.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01087.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.01087.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01087.epil
  store atomic ptr %i.v, ptr %i.ai release, align 8
  %i.aj = add nuw i64 %.01087.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter113
  br i1 %epil.iter.cmp.not, label %.lr.ph89, label %.lr.ph.epil, !llvm.loop !556

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01087 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01087
  store atomic ptr %i.v, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01087
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic ptr %i.v, ptr %i.ao release, align 8
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01087
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store atomic ptr %i.v, ptr %i.ar release, align 8
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01087
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store atomic ptr %i.v, ptr %i.au release, align 8
  %i.av = add nuw i64 %.01087, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !557

.lr.ph89:                                         ; preds = %.preheader.unr-lcssa, %.lr.ph.epil
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.v, ptr %i.aw release, align 8
  %niter121.ncmp.7 = icmp eq i64 %i.d, 2
  br i1 %niter121.ncmp.7, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit, label %.lr.ph89.1

.lr.ph89.1:                                       ; preds = %.lr.ph89
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic ptr %i.v, ptr %5 release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

_ZNSt6atomicIPPN4mold11TimerRecordEE23compare_exchange_strongERS3_S3_St12memory_order.exit: ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !73
  %.not14 = icmp eq ptr %i.v, %i.ax
  br i1 %.not14, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIPPN4mold11TimerRecordEE23compare_exchange_strongERS3_S3_St12memory_order.exit
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.v) #14
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %i.ba = load atomic ptr, ptr %i.az acquire, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

.lr.ph.i16:                                       ; preds = %bb.h, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18
  %.sroa.0.09.us.i17 = phi i32 [ %.sroa.0.1.us.i19, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18 ], [ 1, %bb.h ] ; 8 uses
  %i.bc = icmp slt i32 %.sroa.0.09.us.i17, 17
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i16
  %i.bd = tail call noundef i32 @sched_yield() #14 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

bb.j:                                             ; preds = %.lr.ph.i16
  %i.be = icmp sgt i32 %.sroa.0.09.us.i17, 0
  br i1 %i.be, label %.lr.ph.i.i.us.i21.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20

.lr.ph.i.i.us.i21.preheader:                      ; preds = %bb.j
  %xtraiter110 = and i32 %.sroa.0.09.us.i17, 7    ; 2 uses
  %lcmp.mod111.not = icmp eq i32 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol

.lr.ph.i.i.us.i21.prol:                           ; preds = %.lr.ph.i.i.us.i21.preheader, %.lr.ph.i.i.us.i21.prol
  %.01.i.i.us.i22.prol = phi i32 [ %i.bf, %.lr.ph.i.i.us.i21.prol ], [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ]
  %prol.iter112 = phi i32 [ %prol.iter112.next, %.lr.ph.i.i.us.i21.prol ], [ 0, %.lr.ph.i.i.us.i21.preheader ]
  %i.bf = add nsw i32 %.01.i.i.us.i22.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter112.next = add i32 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i32 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol, !llvm.loop !558

.lr.ph.i.i.us.i21.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i21.prol, %.lr.ph.i.i.us.i21.preheader
  %.01.i.i.us.i22.unr = phi i32 [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ], [ %i.bf, %.lr.ph.i.i.us.i21.prol ]
  %i.bg = icmp ult i32 %.sroa.0.09.us.i17, 8
  br i1 %i.bg, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, label %.lr.ph.i.i.us.i21

.lr.ph.i.i.us.i21:                                ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21
  %.01.i.i.us.i22 = phi i32 [ %i.bh, %.lr.ph.i.i.us.i21 ], [ %.01.i.i.us.i22.unr, %.lr.ph.i.i.us.i21.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bh = add nsw i32 %.01.i.i.us.i22, -8
  tail call void @llvm.x86.sse2.pause()
  %i.bi = icmp sgt i32 %.01.i.i.us.i22, 8
  br i1 %i.bi, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !11

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.bj = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.bj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.bk = load atomic ptr, ptr %i.az acquire, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit, !llvm.loop !12

bb.k:                                             ; preds = %bb.a
  %i.bm = shl nuw i64 1, %2
  %i.bn = and i64 %i.bm, -2
  %i.bo = icmp eq i64 %3, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %2, 0
  %i.bq = shl i64 8, %2
  %i.br = select i1 %i.bp, i64 16, i64 %i.bq
  %i.bs = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.br) #14
  %i.bt = sub i64 0, %3
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store atomic ptr %i.bu, ptr %i.bv release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.bx = load atomic ptr, ptr %i.bw acquire, align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit

.lr.ph.i25:                                       ; preds = %bb.m, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27
  %.sroa.0.09.us.i26 = phi i32 [ %.sroa.0.1.us.i28, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27 ], [ 1, %bb.m ] ; 8 uses
  %i.bz = icmp slt i32 %.sroa.0.09.us.i26, 17
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i25
  %i.ca = tail call noundef i32 @sched_yield() #14 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

bb.o:                                             ; preds = %.lr.ph.i25
  %i.cb = icmp sgt i32 %.sroa.0.09.us.i26, 0
  br i1 %i.cb, label %.lr.ph.i.i.us.i30.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29

.lr.ph.i.i.us.i30.preheader:                      ; preds = %bb.o
  %xtraiter = and i32 %.sroa.0.09.us.i26, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol

.lr.ph.i.i.us.i30.prol:                           ; preds = %.lr.ph.i.i.us.i30.preheader, %.lr.ph.i.i.us.i30.prol
  %.01.i.i.us.i31.prol = phi i32 [ %i.cc, %.lr.ph.i.i.us.i30.prol ], [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i30.prol ], [ 0, %.lr.ph.i.i.us.i30.preheader ]
  %i.cc = add nsw i32 %.01.i.i.us.i31.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !559

.lr.ph.i.i.us.i30.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i30.prol, %.lr.ph.i.i.us.i30.preheader
  %.01.i.i.us.i31.unr = phi i32 [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ], [ %i.cc, %.lr.ph.i.i.us.i30.prol ]
  %i.cd = icmp ult i32 %.sroa.0.09.us.i26, 8
  br i1 %i.cd, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, label %.lr.ph.i.i.us.i30

.lr.ph.i.i.us.i30:                                ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30
  %.01.i.i.us.i31 = phi i32 [ %i.ce, %.lr.ph.i.i.us.i30 ], [ %.01.i.i.us.i31.unr, %.lr.ph.i.i.us.i30.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ce = add nsw i32 %.01.i.i.us.i31, -8
  tail call void @llvm.x86.sse2.pause()
  %i.cf = icmp sgt i32 %.01.i.i.us.i31, 8
  br i1 %i.cf, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !11

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cg = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cg, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.ch = load atomic ptr, ptr %i.bw acquire, align 8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit, !llvm.loop !12

_ZN3tbb6detail2d015spin_wait_whileIPPN4mold11TimerRecordEZNS1_18spin_wait_while_eqIS6_S6_EET_RKSt6atomicIS8_ET0_St12memory_orderEUlS6_E_EES8_SC_SD_SE_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %.lr.ph89, %.lr.ph89.1, %_ZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_Emm.exit, %bb.m, %_ZNSt6atomicIPPN4mold11TimerRecordEE23compare_exchange_strongERS3_S3_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = distinct !{!5, !37}
!6 = distinct !{!6, !37}
!7 = distinct !{!7, !37}
!8 = distinct !{!8, !37}
!9 = distinct !{!9, !37}
!10 = distinct !{null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!11 = distinct !{!11, !37}
!12 = distinct !{!12, !37}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"any p2 pointer", !21, i64 0}
!23 = !{!"p2 _ZTSN4mold7CounterE", !22, i64 0}
!24 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementIlEELm128EEE", !21, i64 0}
!25 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementIlEELm128EEEEEE"}
!26 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEE", !21, i64 0}
!27 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementIlEELm128EEEEE", !26, i64 0}
!28 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEEE", !27, i64 0}
!29 = !{!"long", !17, i64 0}
!30 = !{!"_ZTSSt13__atomic_baseImE", !29, i64 0}
!31 = !{!"_ZTSSt6atomicImE", !30, i64 0}
!32 = !{!"bool", !17, i64 0}
!33 = !{!"_ZTSSt13__atomic_baseIbE", !32, i64 0}
!34 = !{!"_ZTSSt6atomicIbE", !33, i64 0}
!35 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EEE", !24, i64 0, !25, i64 8, !28, i64 16, !17, i64 24, !31, i64 48, !31, i64 56, !34, i64 64}
!36 = !{!35, !24, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"_ZTSN3tbb6detail2d013aligned_spaceIlLm1EEE", !17, i64 0}
!39 = !{!"_ZTSN3tbb6detail2d111ets_elementIlEE", !38, i64 0, !32, i64 8}
!40 = !{!39, !32, i64 8}
!41 = !{!"p1 _ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE5arrayE", !21, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !41, i64 0}
!43 = !{!"_ZTSSt6atomicIPN3tbb6detail2d18ets_baseILNS2_18ets_key_usage_typeE1EE5arrayEE", !42, i64 0}
!44 = !{!"_ZTSN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EEE", !43, i64 8, !31, i64 16}
!45 = !{!"p1 _ZTSN3tbb6detail2d113callback_baseE", !21, i64 0}
!46 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEEE", !35, i64 0}
!47 = !{!"_ZTSN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE", !44, i64 0, !45, i64 24, !46, i64 32}
!48 = !{!47, !45, i64 24}
!49 = !{!"vtable pointer", !16, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!29, !29, i64 0}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!"p1 _ZTSN4mold7CounterE", !21, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 omnipotent char", !21, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !29, i64 8, !17, i64 16}
!60 = !{!59, !56, i64 0}
!61 = !{!59, !29, i64 8}
!62 = !{!17, !17, i64 0}
!63 = !{!"p1 _ZTSN4mold11TimerRecordE", !21, i64 0}
!64 = !{!"p2 _ZTSN4mold11TimerRecordE", !22, i64 0}
!65 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPPN4mold11TimerRecordEEEE"}
!66 = !{!"p1 _ZTSSt6atomicIPPN4mold11TimerRecordEE", !21, i64 0}
!67 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPPN4mold11TimerRecordEEE", !66, i64 0}
!68 = !{!"_ZTSSt6atomicIPS_IPPN4mold11TimerRecordEEE", !67, i64 0}
!69 = !{!"_ZTSN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EEE", !64, i64 0, !65, i64 8, !68, i64 16, !17, i64 24, !31, i64 48, !31, i64 56, !34, i64 64}
!70 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEEE", !69, i64 0}
!71 = !{!"_ZTSN4mold11TimerRecordE", !59, i64 0, !63, i64 32, !70, i64 40, !29, i64 112, !29, i64 120, !29, i64 128, !29, i64 136, !32, i64 144}
!72 = !{!71, !63, i64 32}
!73 = !{!69, !64, i64 0}
!74 = !{!71, !32, i64 144}
!75 = !{!71, !29, i64 112}
!76 = !{!63, !63, i64 0}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!71, !29, i64 120}
!80 = !{!71, !29, i64 128}
!81 = !{!71, !29, i64 136}
!82 = !{!"p1 _ZTSN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEEE", !21, i64 0}
!83 = !{!"_ZTSN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS6_EEEES6_EE", !82, i64 0, !29, i64 8, !64, i64 16}
!84 = !{!83, !82, i64 0}
!85 = !{!83, !29, i64 8}
!86 = !{!83, !64, i64 16}
!87 = !{!"p1 _ZTSNSt6ranges4lessE", !21, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!21, !21, i64 0}
!90 = !{!"llvm.loop.peeled.count", i32 1}
!91 = !{!"_ZTSZNSt6ranges8__detail16__make_comp_projINS_4lessEMN4mold11TimerRecordElEEDaRT_RT0_EUlOS6_OS8_E_", !87, i64 0, !21, i64 8}
!92 = !{!91, !21, i64 8}
!93 = !{i64 8}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!66, !66, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!97 = !{!96, !23, i64 0}
!98 = !{!96, !23, i64 16}
!99 = distinct !{!99, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!100 = distinct !{!100, !99, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!101 = distinct !{null}
!102 = distinct !{!102, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!103 = distinct !{!103, !102, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!104 = !{!100}
!105 = !{!103}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!108 = distinct !{!108, !107, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!109 = distinct !{ptr @_ZN4mold7Counter9get_valueEv, null}
!110 = distinct !{!110, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!111 = distinct !{!111, !110, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!112 = !{!23, !23, i64 0}
!113 = !{!"_ZTSSt13_Ios_Fmtflags", !17, i64 0}
!114 = !{!"_ZTSSt12_Ios_Iostate", !17, i64 0}
!115 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!116 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !29, i64 8}
!117 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!118 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!119 = !{!"_ZTSSt6locale", !118, i64 0}
!120 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !113, i64 24, !114, i64 28, !114, i64 32, !115, i64 40, !116, i64 48, !17, i64 64, !18, i64 192, !117, i64 200, !119, i64 208}
!121 = !{!120, !29, i64 16}
!122 = !{!120, !113, i64 24}
!123 = !{!113, !113, i64 0}
!124 = !{!56, !56, i64 0}
!125 = !{!108}
!126 = !{!111}
!127 = distinct !{!127, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE9push_backEOS5_"}
!128 = distinct !{!128, !127, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE9push_backEOS5_: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE21internal_emplace_backIJS5_EEENS1_15vector_iteratorIS8_S5_EEDpOT_"}
!130 = distinct !{!130, !129, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE21internal_emplace_backIJS5_EEENS1_15vector_iteratorIS8_S5_EEDpOT_: argument 0"}
!131 = !{!130, !128}
!132 = distinct !{!132, !37}
!133 = distinct !{!133, !37}
!134 = distinct !{!134, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE3endEv"}
!135 = distinct !{!135, !134, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE3endEv: argument 0"}
!136 = distinct !{!136, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE9push_backEOS5_"}
!137 = distinct !{!137, !136, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE9push_backEOS5_: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE21internal_emplace_backIJS5_EEENS1_15vector_iteratorIS8_S5_EEDpOT_"}
!139 = distinct !{!139, !138, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE21internal_emplace_backIJS5_EEENS1_15vector_iteratorIS8_S5_EEDpOT_: argument 0"}
!140 = distinct !{!140, !37}
!141 = distinct !{!141, !37}
!142 = !{!"p1 _ZTSSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS1_EE", !21, i64 0}
!143 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS6_EEEEE"}
!144 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !21, i64 0}
!145 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS3_EEEE", !144, i64 0}
!146 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEEE", !145, i64 0}
!147 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !142, i64 0, !143, i64 8, !146, i64 16, !17, i64 24, !31, i64 48, !31, i64 56, !34, i64 64}
!148 = !{!147, !142, i64 0}
!149 = !{!135}
!150 = !{!139, !137}
!151 = distinct !{!151, i1 false, !"_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS4_23cache_aligned_allocatorIS8_EEEENS_4lessEMS7_lQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISF_EEE4typeISH_NS_8danglingEEEOSF_SI_SJ_"}
!152 = distinct !{!152, !151, !"_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS4_23cache_aligned_allocatorIS8_EEEENS_4lessEMS7_lQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISF_EEE4typeISH_NS_8danglingEEEOSF_SI_SJ_: argument 0"}
!153 = distinct !{!153, i1 false, !"_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS6_23cache_aligned_allocatorISA_EEEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISG_E9__adl_endISG_EEEDaOSG_"}
!154 = distinct !{!154, !153, !"_ZNKSt6ranges13__cust_access4_EndclITkNS_8__detail22__maybe_borrowed_rangeERN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS6_23cache_aligned_allocatorISA_EEEEQoooo18is_bounded_array_vINSt16remove_referenceIT_E4typeEE12__member_endISG_E9__adl_endISG_EEEDaOSG_: argument 0"}
!155 = distinct !{!155, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EEE3endEv"}
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!358 = distinct !{!358, !357, !"_ZSt14__copy_move_a1ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_: argument 0"}
!359 = distinct !{!359, i1 false, !"_ZSt14__copy_move_a2ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_"}
!360 = distinct !{!360, !359, !"_ZSt14__copy_move_a2ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_: argument 0"}
!361 = distinct !{!361, i1 false, !"_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS9_17concurrent_vectorIS5_NS9_23cache_aligned_allocatorIS5_EEEES5_EEEET0_T_SH_SG_"}
!362 = distinct !{!362, !361, !"_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS9_17concurrent_vectorIS5_NS9_23cache_aligned_allocatorIS5_EEEES5_EEEET0_T_SH_SG_: argument 0"}
!363 = distinct !{!363, i1 false, !"_ZSt12__niter_wrapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EEET_RKSC_SC_"}
!364 = distinct !{!364, !363, !"_ZSt12__niter_wrapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EEET_RKSC_SC_: argument 0"}
!365 = distinct !{!365, i1 false, !"_ZSt4moveIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_"}
!366 = distinct !{!366, !365, !"_ZSt4moveIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET0_T_SD_SC_: argument 0"}
!367 = distinct !{!367, i1 false, !"_ZSt13__copy_move_aILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_"}
!368 = distinct !{!368, !367, !"_ZSt13__copy_move_aILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_: argument 0"}
!369 = distinct !{!369, i1 false, !"_ZSt14__copy_move_a1ILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_"}
!370 = distinct !{!370, !369, !"_ZSt14__copy_move_a1ILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_: argument 0"}
!371 = distinct !{!371, i1 false, !"_ZSt14__copy_move_a2ILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_"}
!372 = distinct !{!372, !371, !"_ZSt14__copy_move_a2ILb1EN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EESB_ET1_T0_SD_SC_: argument 0"}
!373 = distinct !{!373, i1 false, !"_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIN3tbb6detail2d115vector_iteratorINS5_17concurrent_vectorIPN4mold11TimerRecordENS5_23cache_aligned_allocatorISA_EEEESA_EESE_EET0_T_SG_SF_"}
!374 = distinct !{!374, !373, !"_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIN3tbb6detail2d115vector_iteratorINS5_17concurrent_vectorIPN4mold11TimerRecordENS5_23cache_aligned_allocatorISA_EEEESA_EESE_EET0_T_SG_SF_: argument 0"}
!375 = distinct !{!375, i1 false, !"_ZSt13move_backwardIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET0_T_SE_SD_"}
!376 = distinct !{!376, !375, !"_ZSt13move_backwardIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET0_T_SE_SD_: argument 0"}
!377 = distinct !{!377, i1 false, !"_ZSt22__copy_move_backward_aILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_"}
!378 = distinct !{!378, !377, !"_ZSt22__copy_move_backward_aILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_: argument 0"}
!379 = distinct !{!379, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_"}
!380 = distinct !{!380, !379, !"_ZSt23__copy_move_backward_a1ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_: argument 0"}
!381 = distinct !{!381, i1 false, !"_ZSt23__copy_move_backward_a2ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_"}
!382 = distinct !{!382, !381, !"_ZSt23__copy_move_backward_a2ILb1EPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS6_17concurrent_vectorIS2_NS6_23cache_aligned_allocatorIS2_EEEES2_EEET1_T0_SE_SD_: argument 0"}
!383 = distinct !{!383, i1 false, !"_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS9_17concurrent_vectorIS5_NS9_23cache_aligned_allocatorIS5_EEEES5_EEEET0_T_SH_SG_"}
!384 = distinct !{!384, !383, !"_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPPN4mold11TimerRecordEN3tbb6detail2d115vector_iteratorINS9_17concurrent_vectorIS5_NS9_23cache_aligned_allocatorIS5_EEEES5_EEEET0_T_SH_SG_: argument 0"}
!385 = distinct !{!385, i1 false, !"_ZSt12__niter_wrapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EEET_RKSC_SC_"}
!386 = distinct !{!386, !385, !"_ZSt12__niter_wrapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold11TimerRecordENS2_23cache_aligned_allocatorIS7_EEEES7_EEET_RKSC_SC_: argument 0"}
!387 = distinct !{!387, i1 false, !"_ZNSt3_V26rotateIN3tbb6detail2d115vector_iteratorINS3_17concurrent_vectorIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS8_EEEES8_EEEET_SD_SD_SD_"}
!388 = distinct !{!388, !387, !"_ZNSt3_V26rotateIN3tbb6detail2d115vector_iteratorINS3_17concurrent_vectorIPN4mold11TimerRecordENS3_23cache_aligned_allocatorIS8_EEEES8_EEEET_SD_SD_SD_: argument 0"}
!389 = !{!352, !350, !348, !346, !344}
!390 = !{!354}
!391 = !{!356}
!392 = !{!362, !360, !358, !356, !354}
!393 = !{!364, !356, !354}
!394 = !{!374, !372, !370, !368, !366}
!395 = !{!376}
!396 = !{!378}
!397 = !{!384, !382, !380, !378, !376}
!398 = !{!386, !378, !376}
!399 = !{!388}
!400 = distinct !{!400, !37}
!401 = distinct !{!401, !37}
!402 = distinct !{!402, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!403 = distinct !{!403, !402, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!404 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!405 = distinct !{!405, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!406 = distinct !{!406, !405, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!407 = distinct !{!407, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!408 = distinct !{!408, !407, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!409 = distinct !{!409, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!410 = distinct !{!410, !409, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!411 = distinct !{!411, !37}
!412 = distinct !{!412, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!413 = distinct !{!413, !412, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!414 = distinct !{!414, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!415 = distinct !{!415, !414, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!416 = distinct !{!416, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!417 = distinct !{!417, !416, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!418 = distinct !{!418, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!419 = distinct !{!419, !418, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!420 = distinct !{!420, !37}
!421 = distinct !{!421, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!422 = distinct !{!422, !421, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!423 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!424 = distinct !{!424, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!425 = distinct !{!425, !424, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!426 = distinct !{!426, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!427 = distinct !{!427, !426, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!428 = distinct !{!428, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!429 = distinct !{!429, !428, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!430 = distinct !{!430, !37}
!431 = distinct !{!431, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!432 = distinct !{!432, !431, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!433 = distinct !{!433, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!434 = distinct !{!434, !433, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!435 = distinct !{!435, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!436 = distinct !{!436, !435, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!437 = distinct !{!437, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!438 = distinct !{!438, !437, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!439 = distinct !{!439, !37}
!440 = !{!403}
!441 = !{!406}
!442 = !{!408}
!443 = !{!410}
!444 = !{!413}
!445 = !{!415}
!446 = !{!417}
!447 = !{!419}
!448 = !{!"branch_weights", !"expected", i32 2146946912, i32 536736}
!449 = !{!422}
!450 = !{!425}
!451 = !{!427}
!452 = !{!429}
!453 = !{!432}
!454 = !{!434}
!455 = !{!436}
!456 = !{!438}
!457 = distinct !{!457, !37}
!458 = distinct !{!458, !37}
!459 = distinct !{!459, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!460 = distinct !{!460, !459, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!461 = distinct !{!461, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!462 = distinct !{!462, !461, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!463 = distinct !{!463, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!464 = distinct !{!464, !463, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!465 = distinct !{!465, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!466 = distinct !{!466, !465, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!467 = distinct !{!467, !37}
!468 = distinct !{!468, !37}
!469 = !{!460}
!470 = !{!462}
!471 = !{!464}
!472 = !{!466}
!473 = distinct !{!473, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!474 = distinct !{!474, !473, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!475 = distinct !{null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!476 = distinct !{!476, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!477 = distinct !{!477, !476, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!478 = distinct !{!478, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!479 = distinct !{!479, !478, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!480 = distinct !{!480, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!481 = distinct !{!481, !480, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!482 = !{!474}
!483 = !{!477}
!484 = !{!479}
!485 = !{!481}
!486 = distinct !{!486, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!487 = distinct !{!487, !486, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!488 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!489 = distinct !{!489, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!490 = distinct !{!490, !489, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!491 = distinct !{!491, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!492 = distinct !{!492, !491, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!493 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!494 = distinct !{!494, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!495 = distinct !{!495, !494, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!496 = distinct !{!496, !37}
!497 = !{!487}
!498 = !{!490}
!499 = !{!492}
!500 = !{!495}
!501 = distinct !{!501, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!502 = distinct !{!502, !501, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!503 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!504 = distinct !{!504, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!505 = distinct !{!505, !504, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!506 = distinct !{!506, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!507 = distinct !{!507, !506, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!508 = distinct !{null, null, null, null, null, ptr @_ZN4mold7Counter9get_valueEv, null}
!509 = distinct !{!509, i1 false, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv"}
!510 = distinct !{!510, !509, !"_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE3endEv: argument 0"}
!511 = distinct !{!511, !37}
!512 = !{!502}
!513 = !{!505}
!514 = !{!507}
!515 = !{!510}
!516 = distinct !{!516, i1 false, !"LVerDomain"}
!517 = distinct !{!517, !516}
!518 = distinct !{!518, !516}
!519 = distinct !{!519, !37, !536, !537}
!520 = distinct !{!520, !37, !536}
!521 = distinct !{!521, i1 false, !"LVerDomain"}
!522 = distinct !{!522, !521}
!523 = distinct !{!523, !521}
!524 = distinct !{!524, !37, !536, !537}
!525 = distinct !{!525, !94}
!526 = distinct !{!526, !37, !536}
!527 = distinct !{!527, i1 false, !"LVerDomain"}
!528 = distinct !{!528, !527}
!529 = distinct !{!529, !527}
!530 = distinct !{!530, !37, !536, !537}
!531 = distinct !{!531, !94}
!532 = distinct !{!532, !37}
!533 = distinct !{!533, !37, !536}
!534 = !{!517}
!535 = !{!518}
!536 = !{!"llvm.loop.isvectorized", i32 1}
!537 = !{!"llvm.loop.unroll.runtime.disable"}
!538 = !{!522}
!539 = !{!523}
!540 = !{!528}
!541 = !{!529}
!542 = distinct !{!542, !94}
!543 = distinct !{!543, !37}
!544 = distinct !{!544, !94}
!545 = distinct !{!545, !37}
!546 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EEE", !21, i64 0}
!547 = !{!"p1 long", !21, i64 0}
!548 = !{!"p2 _ZTSSt6atomicIPPN4mold11TimerRecordEE", !22, i64 0}
!549 = !{!"_ZTSZN3tbb6detail2d113segment_tableIPN4mold11TimerRecordENS1_23cache_aligned_allocatorIS5_EENS1_17concurrent_vectorIS5_S7_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS5_EmmEUlvE_", !546, i64 0, !547, i64 8, !548, i64 16}
!550 = !{!549, !546, i64 0}
!551 = !{!549, !547, i64 8}
!552 = !{!"_ZTSSt13__atomic_baseIPPN4mold11TimerRecordEE", !64, i64 0}
!553 = !{!552, !64, i64 0}
!554 = !{!549, !548, i64 16}
!555 = distinct !{!555, !94}
!556 = distinct !{!556, !94}
!557 = distinct !{!557, !37}
!558 = distinct !{!558, !94}
!559 = distinct !{!559, !94}
end_hunk_1
