Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/linker-script.cc.X86_64?download=true
inline.NumInlined: 1328
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE_E12on_exceptionIZNSF_25extend_table_if_necessaryESK_mmEUlvE0_EEvT_:bb.a
  %i.l = tail call noundef i32 @sched_yield() #16 ; 0 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol, !llvm.loop !508

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
  br i1 %i.q, label %.lr.ph.i.i.us.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i, %bb.c
  %i.r = shl i32 %.sroa.0.09.us.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, %bb.b
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i ], [ %.sroa.0.09.us.i.i.i, %bb.b ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i, %.lr.ph.i.i
  %i.u = add i64 %.01924.i.i, 1                   ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, -2
  %i.x = icmp ult i64 %i.w, %i.e
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !509

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i: ; preds = %._crit_edge.i.i
  %i.y = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 512) #16 ; 7 uses
  %i.z = load atomic ptr, ptr %i.b monotonic, align 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !516
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load atomic ptr, ptr %i.ab monotonic, align 8
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !516
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !516
  %scevgep.i.i = getelementptr i8, ptr %i.y, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %scevgep.i.i, i8 0, i64 488, i1 false), !tbaa !516
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !517, !nonnull !34, !align !35 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = cmpxchg ptr %i.f, ptr %i.ai, ptr %i.y release acquire, align 8 ; 2 uses
  %i.ak = extractvalue { ptr, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !517, !nonnull !34, !align !35 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = cmpxchg ptr %i.f, ptr %i.an, ptr null release acquire, align 8 ; 2 uses
  %i.ap = extractvalue { ptr, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i
  %i.aq = extractvalue { ptr, i1 } %i.ao, 0
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i
  %i.ar = phi ptr [ %i.al, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i ], [ %i.ag, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i ]
  %.020.i8.i = phi ptr [ null, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i ], [ %i.y, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !517, !nonnull !34, !align !35
  store ptr %.020.i8.i, ptr %i.as, align 8, !tbaa !102
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i
  %i.at = extractvalue { ptr, i1 } %i.aj, 0
  store ptr %i.at, ptr %i.ah, align 8
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.y) #16
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit

_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit: ; preds = %bb.e, %bb.d, %.thread.i
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #16

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE14create_segmentEPSt6atomicIPS8_Emm(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.tbb::detail::d0::try_call_proxy", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 7 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic ptr, ptr %1 acquire, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i
  %.sroa.0.09.us.i = phi i32 [ %.sroa.0.1.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i ], [ 1, %bb.c ] ; 8 uses
  %i.k = icmp slt i32 %.sroa.0.09.us.i, 17
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = tail call noundef i32 @sched_yield() #16 ; 0 uses
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
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol, !llvm.loop !518

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
  br i1 %i.q, label %.lr.ph.i.i.us.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i:   ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i, %bb.e
  %i.r = shl i32 %.sroa.0.09.us.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, %bb.d
  %.sroa.0.1.us.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i ], [ %.sroa.0.09.us.i, %bb.d ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !1

bb.f:                                             ; preds = %bb.b
  %i.u = shl i64 8, %i.d
  %i.v = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.u) #16 ; 17 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.x = cmpxchg ptr %i.w, ptr null, ptr %i.v seq_cst seq_cst, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.d, 3
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit.thread, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %0, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE_E12on_exceptionIZNSF_25extend_table_if_necessaryESK_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(65) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.preheader

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = icmp ugt i64 %i.d, 1
  br i1 %i.ad, label %.lr.ph.preheader, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.preheader:                                 ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit.thread, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit
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
  br i1 %lcmp.mod114.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.unr-lcssa, %.lr.ph.preheader
  %.01087.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.av, %.preheader.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01087.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.01087.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01087.epil
  store atomic ptr %i.v, ptr %i.ai release, align 8
  %i.aj = add nuw i64 %.01087.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter113
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !519

.preheader:                                       ; preds = %.lr.ph.epil, %.preheader.unr-lcssa
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.d, i64 3) ; 2 uses
  %5 = add nsw i64 %invariant.umin, -1            ; 2 uses
  %6 = add nsw i64 %invariant.umin, -2
  %xtraiter116 = and i64 %5, 7                    ; 3 uses
  %7 = icmp ult i64 %6, 7
  br i1 %7, label %.lr.ph89.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter120 = and i64 %5, -8
  br label %.lr.ph89

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01087 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01087
  store atomic ptr %i.v, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01087
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic ptr %i.v, ptr %i.ao release, align 8
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01087
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store atomic ptr %i.v, ptr %i.ar release, align 8
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01087
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store atomic ptr %i.v, ptr %i.au release, align 8
  %i.av = add nuw i64 %.01087, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !520

.lr.ph89:                                         ; preds = %.lr.ph89, %.preheader.new
  %.088 = phi i64 [ 1, %.preheader.new ], [ %22, %.lr.ph89 ] ; 9 uses
  %niter121 = phi i64 [ 0, %.preheader.new ], [ %niter121.next.7, %.lr.ph89 ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  store atomic ptr %i.v, ptr %8 release, align 8
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store atomic ptr %i.v, ptr %10 release, align 8
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store atomic ptr %i.v, ptr %12 release, align 8
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 24
  store atomic ptr %i.v, ptr %14 release, align 8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store atomic ptr %i.v, ptr %16 release, align 8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 40
  store atomic ptr %i.v, ptr %18 release, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store atomic ptr %i.v, ptr %20 release, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 56
  store atomic ptr %i.v, ptr %i.aw release, align 8
  %22 = add nuw nsw i64 %.088, 8                  ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !521

_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit: ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !104
  %.not14 = icmp eq ptr %i.v, %i.ax
  br i1 %.not14, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.v) #16
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %i.ba = load atomic ptr, ptr %i.az acquire, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.i16:                                       ; preds = %bb.h, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18
  %.sroa.0.09.us.i17 = phi i32 [ %.sroa.0.1.us.i19, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18 ], [ 1, %bb.h ] ; 8 uses
  %i.bc = icmp slt i32 %.sroa.0.09.us.i17, 17
  br i1 %i.bc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i16
  %i.bd = tail call noundef i32 @sched_yield() #16 ; 0 uses
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
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol, !llvm.loop !522

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
  br i1 %i.bi, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.bj = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.bj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.bk = load atomic ptr, ptr %i.az acquire, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !1

bb.k:                                             ; preds = %bb.a
  %i.bm = shl nuw i64 1, %2
  %i.bn = and i64 %i.bm, -2
  %i.bo = icmp eq i64 %3, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %2, 0
  %i.bq = shl i64 8, %2
  %i.br = select i1 %i.bp, i64 16, i64 %i.bq
  %i.bs = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.br) #16
  %i.bt = sub i64 0, %3
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store atomic ptr %i.bu, ptr %i.bv release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.bx = load atomic ptr, ptr %i.bw acquire, align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

.lr.ph.i25:                                       ; preds = %bb.m, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27
  %.sroa.0.09.us.i26 = phi i32 [ %.sroa.0.1.us.i28, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27 ], [ 1, %bb.m ] ; 8 uses
  %i.bz = icmp slt i32 %.sroa.0.09.us.i26, 17
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i25
  %i.ca = tail call noundef i32 @sched_yield() #16 ; 0 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !523

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
  br i1 %i.cf, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cg = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cg, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.ch = load atomic ptr, ptr %i.bw acquire, align 8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !1

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, %.preheader
  %.088.epil.init = phi i64 [ 1, %.preheader ], [ %22, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %.088.epil = phi i64 [ %24, %.lr.ph89.epil ], [ %.088.epil.init, %.lr.ph89.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph89.epil ], [ 0, %.lr.ph89.epil.preheader ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088.epil
  store atomic ptr %i.v, ptr %23 release, align 8
  %24 = add nuw nsw i64 %.088.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %.lr.ph89.epil, !llvm.loop !524

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit, %bb.m, %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(401) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !539, !range !65, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #23
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !540, !nonnull !34, !align !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !40, !alias.scope !543
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !45, !alias.scope !543
  store i8 0, ptr %i.g, align 8, !tbaa !41, !alias.scope !543
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !544, !noalias !543 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !noalias !543 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i1 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !545, !noalias !543 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %1, align 8, !tbaa !44
  %i.v = load i64, ptr %i.h, align 8, !tbaa !45
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.u, i64 noundef %i.v) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !41
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !552
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.a, i64 noundef 1) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.g:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #16 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !41
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store i8 1, ptr %i.b, align 8, !tbaa !539
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !42

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !41
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !44
  store i64 %.0, ptr %i.d, align 8, !tbaa !41
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !45
  store i8 0, ptr %i.c, align 1, !tbaa !41
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !41
  store i8 %i.v, ptr %i.t, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !45
  %i.x = load ptr, ptr %0, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !30 ; 9 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.c = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %.sroa.0.0.copyload.i, 1     ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !41
  store i8 %i.j, ptr %i.i, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.l, align 1, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #16
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

declare void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #17

declare void @__once_proxy() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE22get_script_output_typeEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !554, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE19parse_linker_scriptEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !556, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4mold6ScriptINS3_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS9_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560, !nonnull !34, !align !35
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  tail call void @_ZN4mold6ScriptINS_6X86_64EE8tokenizeEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret void
}

declare void @_ZNSt10filesystem8relativeERKNS_7__cxx114pathES3_(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !40
  %i.e = icmp eq ptr %i.a, null
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.i.i.i = and i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.c, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.c, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !44
  store i64 %i.c, ptr %i.d, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !41
  store i8 %i.m, ptr %i.l, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.o, align 1, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #16
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

declare void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p1 _ZTSN4mold7ContextINS_6X86_64EEE", !10, i64 0}
!13 = !{!"p1 _ZTSN4mold13ReaderContextE", !10, i64 0}
!14 = !{!"p1 _ZTSN4mold10MappedFileE", !10, i64 0}
!15 = !{!"_ZTSSt9once_flag", !7, i64 0}
!16 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !19, i64 0}
!21 = !{!"_ZTSN4mold6ScriptINS_6X86_64EEE", !12, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !20, i64 32}
!22 = !{!21, !14, i64 16}
!23 = !{!"p1 _ZTSN4mold6ScriptINS_6X86_64EEE", !10, i64 0}
!24 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE22get_script_output_typeEvEUlvE_", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!17, !16, i64 0}
!28 = !{!17, !16, i64 8}
!29 = !{!"long", !6, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 omnipotent char", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!21, !12, i64 0}
!34 = !{}
!35 = !{i64 8}
!36 = !{!21, !13, i64 8}
!37 = !{!"bool", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!40 = !{!39, !31, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !29, i64 8, !6, i64 16}
!44 = !{!43, !31, i64 0}
!45 = !{!43, !29, i64 8}
!46 = !{!"p1 bool", !10, i64 0}
!47 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE12resolve_pathESt17basic_string_viewIcSt11char_traitsIcEEbEUlRKNSt7__cxx1112basic_stringIcS5_SaIcEEEE_", !23, i64 0, !46, i64 8}
!48 = !{!47, !23, i64 0}
!49 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTSZN4mold6ScriptINS_6X86_64EE19parse_linker_scriptEvEUlvE_", !23, i64 0}
!54 = !{!53, !23, i64 0}
!55 = !{!"p1 _ZTSSt4pairIPN4mold6SymbolINS0_6X86_64EEESt7variantIJS4_mEEE", !10, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4mold6SymbolINS1_6X86_64EEESt7variantIJS5_mEEESaIS8_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"p1 _ZTSN4mold6SymbolINS_6X86_64EEE", !10, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"p1 int", !10, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIjSaIjEE", !62, i64 0}
!64 = !{!"_ZTSN4mold13ReaderContextE", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !63, i64 8, !7, i64 32}
!65 = !{i8 0, i8 2}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!321 = !{!"p1 _ZTSN3tbb6detail2d113callback_baseE", !10, i64 0}
!322 = !{!"p1 _ZTSN3tbb6detail2d06paddedINS0_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS7_6SymbolINS7_6X86_64EEEE7PendingESaISD_EELm64EEEELm128EEE", !10, i64 0}
!323 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPNS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEEE"}
!324 = !{!"p1 _ZTSSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEE", !10, i64 0}
!325 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPN3tbb6detail2d06paddedINS2_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS9_6SymbolINS9_6X86_64EEEE7PendingESaISF_EELm64EEEELm128EEEEE", !324, i64 0}
!326 = !{!"_ZTSSt6atomicIPS_IPN3tbb6detail2d06paddedINS1_2d111ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEEEE", !325, i64 0}
!327 = !{!"_ZTSN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EENS1_17concurrent_vectorISJ_SL_EELm3EEE", !322, i64 0, !323, i64 8, !326, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!328 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementISt5arrayISt6vectorIN4mold10ShardedMapINS8_6SymbolINS8_6X86_64EEEE7PendingESaISE_EELm64EEEELm128EEENS1_23cache_aligned_allocatorISJ_EEEE", !327, i64 0}
!329 = !{!"_ZTSN3tbb6detail2d126enumerable_thread_specificISt5arrayISt6vectorIN4mold10ShardedMapINS5_6SymbolINS5_6X86_64EEEE7PendingESaISB_EELm64EENS1_23cache_aligned_allocatorISE_EELNS1_18ets_key_usage_typeE1EEE", !320, i64 0, !321, i64 24, !328, i64 32}
!330 = !{!"_ZTSN4mold10ShardedMapINS_6SymbolINS_6X86_64EEEEE", !6, i64 0, !329, i64 8192}
!331 = !{!"p1 _ZTSSt10unique_ptrIN4mold13MergedSectionINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !10, i64 0}
!332 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!333 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !10, i64 0}
!334 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13MergedSectionINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !333, i64 0}
!335 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13MergedSectionINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !334, i64 0}
!336 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !331, i64 0, !332, i64 8, !335, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!337 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13MergedSectionINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !336, i64 0}
!338 = !{!"p1 _ZTSSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS1_EE", !10, i64 0}
!339 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS6_EEEEE"}
!340 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !10, i64 0}
!341 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS3_EEEE", !340, i64 0}
!342 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEEE", !341, i64 0}
!343 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !338, i64 0, !339, i64 8, !342, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!344 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !343, i64 0}
!345 = !{!"p1 _ZTSSt10unique_ptrIN4mold10ObjectFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !10, i64 0}
!346 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!347 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !10, i64 0}
!348 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !347, i64 0}
!349 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !348, i64 0}
!350 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !345, i64 0, !346, i64 8, !349, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!351 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !350, i64 0}
!352 = !{!"p1 _ZTSSt10unique_ptrIN4mold10SharedFileINS0_6X86_64EEENS0_18ArenaObjectDeleterIS3_EEE", !10, i64 0}
!353 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10SharedFileINS5_6X86_64EEENS5_18ArenaObjectDeleterIS8_EEEEEE"}
!354 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !10, i64 0}
!355 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10SharedFileINS2_6X86_64EEENS2_18ArenaObjectDeleterIS5_EEEEE", !354, i64 0}
!356 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10SharedFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEEE", !355, i64 0}
!357 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !352, i64 0, !353, i64 8, !356, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!358 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10SharedFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEEE", !357, i64 0}
!359 = !{!"p1 _ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !10, i64 0}
!360 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS5_EEEEE"}
!361 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE", !10, i64 0}
!362 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS2_EEEE", !361, i64 0}
!363 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIA_hSt14default_deleteIS1_EEEE", !362, i64 0}
!364 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EEE", !359, i64 0, !360, i64 8, !363, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!365 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEEE", !364, i64 0}
!366 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEEE", !97, i64 0}
!367 = !{!"p1 _ZTSSt10unique_ptrIN4mold5ChunkINS0_6X86_64EEESt14default_deleteIS3_EE", !10, i64 0}
!368 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold5ChunkINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!369 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEE", !10, i64 0}
!370 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold5ChunkINS2_6X86_64EEESt14default_deleteIS5_EEEE", !369, i64 0}
!371 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold5ChunkINS1_6X86_64EEESt14default_deleteIS4_EEEE", !370, i64 0}
!372 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !367, i64 0, !368, i64 8, !371, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!373 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !372, i64 0}
!374 = !{!"p1 _ZTSSt10unique_ptrIN4mold13OutputSectionINS0_6X86_64EEESt14default_deleteIS3_EE", !10, i64 0}
!375 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS5_6X86_64EEESt14default_deleteIS8_EEEEE"}
!376 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEE", !10, i64 0}
!377 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold13OutputSectionINS2_6X86_64EEESt14default_deleteIS5_EEEE", !376, i64 0}
!378 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold13OutputSectionINS1_6X86_64EEESt14default_deleteIS4_EEEE", !377, i64 0}
!379 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !374, i64 0, !375, i64 8, !378, i64 16, !6, i64 24, !89, i64 48, !89, i64 56, !91, i64 64}
!380 = !{!"_ZTSN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold13OutputSectionINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEEE", !379, i64 0}
!381 = !{!"p2 _ZTSN4mold10ObjectFileINS_6X86_64EEE", !11, i64 0}
!382 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !381, i64 0, !381, i64 8, !381, i64 16}
!383 = !{!"_ZTSNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !382, i64 0}
!384 = !{!"_ZTSSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !383, i64 0}
!385 = !{!"_ZTSSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE", !384, i64 0}
!386 = !{!"p2 _ZTSN4mold10SharedFileINS_6X86_64EEE", !11, i64 0}
!387 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !386, i64 0, !386, i64 8, !386, i64 16}
!388 = !{!"_ZTSNSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_Vector_implE", !387, i64 0}
!389 = !{!"_ZTSSt12_Vector_baseIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !388, i64 0}
!390 = !{!"_ZTSSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE", !389, i64 0}
!391 = !{!"p1 _ZTSN4mold10ObjectFileINS_6X86_64EEE", !10, i64 0}
!392 = !{!"p1 _ZTSN4mold6ElfSymINS_6X86_64EEE", !10, i64 0}
!393 = !{!"_ZTSNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE17_Vector_impl_dataE", !392, i64 0, !392, i64 8, !392, i64 16}
!394 = !{!"_ZTSNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_Vector_implE", !393, i64 0}
!395 = !{!"_ZTSSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE", !394, i64 0}
!396 = !{!"_ZTSSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE", !395, i64 0}
!397 = !{!"p1 _ZTSN4mold10OutputFileINS_6X86_64EEE", !10, i64 0}
!398 = !{!"_ZTSSt10_Head_baseILm0EPN4mold10OutputFileINS0_6X86_64EEELb0EE", !397, i64 0}
!399 = !{!"_ZTSSt11_Tuple_implILm0EJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !398, i64 0}
!400 = !{!"_ZTSSt5tupleIJPN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EEE", !399, i64 0}
!401 = !{!"_ZTSSt15__uniq_ptr_implIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !400, i64 0}
!402 = !{!"_ZTSSt15__uniq_ptr_dataIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_ELb1ELb1EE", !401, i64 0}
!403 = !{!"_ZTSSt10unique_ptrIN4mold10OutputFileINS0_6X86_64EEESt14default_deleteIS3_EE", !402, i64 0}
!404 = !{!"p2 _ZTSN4mold5ChunkINS_6X86_64EEE", !11, i64 0}
!405 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !404, i64 0, !404, i64 8, !404, i64 16}
!406 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_Vector_implE", !405, i64 0}
!407 = !{!"_ZTSSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !406, i64 0}
!408 = !{!"_ZTSSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE", !407, i64 0}
!409 = !{!"_ZTSN4mold6AtomicIbEE", !91, i64 0}
!410 = !{!"_ZTSSt13__atomic_baseIiE", !7, i64 0}
!411 = !{!"_ZTSSt6atomicIiE", !410, i64 0}
!412 = !{!"_ZTSN4mold6AtomicIiEE", !411, i64 0}
!413 = !{!"_ZTSN3tbb6detail2d113tbb_allocatorINS0_2d213hash_map_baseINS2_ISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS1_13spin_rw_mutexEE6bucketEEE"}
!414 = !{!"_ZTSN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN4mold6SymbolINS6_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEEEENS3_13spin_rw_mutexEEE", !413, i64 0, !89, i64 8, !89, i64 16, !6, i64 24, !6, i64 56}
!415 = !{!"_ZTSSt4hashIPN4mold6SymbolINS0_6X86_64EEEE"}
!416 = !{!"_ZTSSt8equal_toIPN4mold6SymbolINS0_6X86_64EEEE"}
!417 = !{!"_ZTSN3tbb6detail2d116tbb_hash_compareIPN4mold6SymbolINS3_6X86_64EEEEE", !415, i64 0, !416, i64 1}
!418 = !{!"_ZTSN3tbb6detail2d219concurrent_hash_mapIPN4mold6SymbolINS3_6X86_64EEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EENS0_2d116tbb_hash_compareIS7_EENSH_13tbb_allocatorISt4pairIKS7_SG_EEEEE", !414, i64 0, !417, i64 568}
!419 = !{!"p1 _ZTSN4mold10OutputEhdrINS_6X86_64EEE", !10, i64 0}
!420 = !{!"p1 _ZTSN4mold10OutputShdrINS_6X86_64EEE", !10, i64 0}
!421 = !{!"p1 _ZTSN4mold10OutputPhdrINS_6X86_64EEE", !10, i64 0}
!422 = !{!"p1 _ZTSN4mold13InterpSectionINS_6X86_64EEE", !10, i64 0}
!423 = !{!"p1 _ZTSN4mold10GotSectionINS_6X86_64EEE", !10, i64 0}
!424 = !{!"p1 _ZTSN4mold13GotPltSectionINS_6X86_64EEE", !10, i64 0}
!425 = !{!"p1 _ZTSN4mold13RelPltSectionINS_6X86_64EEE", !10, i64 0}
!426 = !{!"p1 _ZTSN4mold13RelDynSectionINS_6X86_64EEE", !10, i64 0}
!427 = !{!"p1 _ZTSN4mold14RelrDynSectionINS_6X86_64EEE", !10, i64 0}
!428 = !{!"p1 _ZTSN4mold14DynamicSectionINS_6X86_64EEE", !10, i64 0}
!429 = !{!"p1 _ZTSN4mold13StrtabSectionINS_6X86_64EEE", !10, i64 0}
!430 = !{!"p1 _ZTSN4mold13DynstrSectionINS_6X86_64EEE", !10, i64 0}
!431 = !{!"p1 _ZTSN4mold11HashSectionINS_6X86_64EEE", !10, i64 0}
!432 = !{!"p1 _ZTSN4mold14GnuHashSectionINS_6X86_64EEE", !10, i64 0}
!433 = !{!"p1 _ZTSN4mold19GnuDebuglinkSectionINS_6X86_64EEE", !10, i64 0}
!434 = !{!"p1 _ZTSN4mold15ShstrtabSectionINS_6X86_64EEE", !10, i64 0}
!435 = !{!"p1 _ZTSN4mold10PltSectionINS_6X86_64EEE", !10, i64 0}
!436 = !{!"p1 _ZTSN4mold13PltGotSectionINS_6X86_64EEE", !10, i64 0}
!437 = !{!"p1 _ZTSN4mold13SymtabSectionINS_6X86_64EEE", !10, i64 0}
!438 = !{!"p1 _ZTSN4mold18SymtabShndxSectionINS_6X86_64EEE", !10, i64 0}
!439 = !{!"p1 _ZTSN4mold13DynsymSectionINS_6X86_64EEE", !10, i64 0}
!440 = !{!"p1 _ZTSN4mold14EhFrameSectionINS_6X86_64EEE", !10, i64 0}
!441 = !{!"p1 _ZTSN4mold17EhFrameHdrSectionINS_6X86_64EEE", !10, i64 0}
!442 = !{!"p1 _ZTSN4mold19EhFrameRelocSectionINS_6X86_64EEE", !10, i64 0}
!443 = !{!"p1 _ZTSN4mold13SFrameSectionINS_6X86_64EEE", !10, i64 0}
!444 = !{!"p1 _ZTSN4mold18SFrameRelocSectionINS_6X86_64EEE", !10, i64 0}
!445 = !{!"p1 _ZTSN4mold14CopyrelSectionINS_6X86_64EEE", !10, i64 0}
!446 = !{!"p1 _ZTSN4mold13VersymSectionINS_6X86_64EEE", !10, i64 0}
!447 = !{!"p1 _ZTSN4mold14VerneedSectionINS_6X86_64EEE", !10, i64 0}
!448 = !{!"p1 _ZTSN4mold13VerdefSectionINS_6X86_64EEE", !10, i64 0}
!449 = !{!"p1 _ZTSN4mold14BuildIdSectionINS_6X86_64EEE", !10, i64 0}
!450 = !{!"p1 _ZTSN4mold18NotePackageSectionINS_6X86_64EEE", !10, i64 0}
!451 = !{!"p1 _ZTSN4mold15GdbIndexSectionINS_6X86_64EEE", !10, i64 0}
!452 = !{!"p1 _ZTSN4mold19RelroPaddingSectionINS_6X86_64EEE", !10, i64 0}
!453 = !{!"p1 _ZTSN4mold13MergedSectionINS_6X86_64EEE", !10, i64 0}
!454 = !{!"p1 _ZTSN4mold12GdbIndexDataE", !10, i64 0}
!455 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!456 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !455, i64 0}
!457 = !{!"_ZTSSt12__shared_ptrIN4mold12GdbIndexDataELN9__gnu_cxx12_Lock_policyE2EE", !454, i64 0, !456, i64 8}
!458 = !{!"_ZTSSt10shared_ptrIN4mold12GdbIndexDataEE", !457, i64 0}
!459 = !{!"_ZTSSt4spanIhLm18446744073709551615EE", !31, i64 0, !82, i64 8}
!460 = !{!"p1 _ZTSN4mold19NotePropertySectionINS_6X86_64EEE", !10, i64 0}
!461 = !{!"_ZTSN4mold13ContextExtrasINS_6X86_64EEE", !460, i64 0}
!462 = !{!"_ZTSN4mold7ContextINS_6X86_64EEE", !295, i64 0, !300, i64 3992, !305, i64 4024, !308, i64 4048, !29, i64 4072, !29, i64 4080, !37, i64 4088, !29, i64 4096, !315, i64 4104, !316, i64 4176, !330, i64 4192, !337, i64 12488, !344, i64 12560, !351, i64 12632, !358, i64 12704, !365, i64 12776, !366, i64 12848, !373, i64 12920, !380, i64 12992, !20, i64 13064, !385, i64 13088, !390, i64 13112, !391, i64 13136, !396, i64 13144, !403, i64 13168, !31, i64 13176, !37, i64 13184, !408, i64 13192, !409, i64 13216, !409, i64 13217, !412, i64 13220, !418, i64 13224, !408, i64 13800, !419, i64 13824, !420, i64 13832, !421, i64 13840, !422, i64 13848, !423, i64 13856, !424, i64 13864, !425, i64 13872, !426, i64 13880, !427, i64 13888, !428, i64 13896, !429, i64 13904, !430, i64 13912, !431, i64 13920, !432, i64 13928, !433, i64 13936, !434, i64 13944, !435, i64 13952, !436, i64 13960, !437, i64 13968, !438, i64 13976, !439, i64 13984, !440, i64 13992, !441, i64 14000, !442, i64 14008, !443, i64 14016, !444, i64 14024, !445, i64 14032, !445, i64 14040, !446, i64 14048, !447, i64 14056, !448, i64 14064, !449, i64 14072, !450, i64 14080, !451, i64 14088, !452, i64 14096, !453, i64 14104, !458, i64 14112, !459, i64 14128, !459, i64 14144, !459, i64 14160, !459, i64 14176, !459, i64 14192, !29, i64 14208, !29, i64 14216, !29, i64 14224, !57, i64 14232, !57, i64 14240, !57, i64 14248, !57, i64 14256, !57, i64 14264, !57, i64 14272, !57, i64 14280, !57, i64 14288, !57, i64 14296, !57, i64 14304, !57, i64 14312, !57, i64 14320, !57, i64 14328, !57, i64 14336, !57, i64 14344, !57, i64 14352, !57, i64 14360, !57, i64 14368, !57, i64 14376, !57, i64 14384, !57, i64 14392, !57, i64 14400, !57, i64 14408, !57, i64 14416, !57, i64 14424, !57, i64 14432, !461, i64 14440}
!463 = !{!462, !29, i64 4072}
!464 = !{!302, !301, i64 8}
!465 = !{!302, !301, i64 16}
!466 = !{!302, !301, i64 0}
!467 = !{i64 0, i64 8, !30, i64 8, i64 8, !32, i64 16, i64 8, !30, i64 24, i64 8, !32, i64 32, i64 8, !30, i64 40, i64 8, !32, i64 48, i64 8, !30, i64 56, i64 1, !38}
!468 = !{!213, !212}
!469 = !{!217, !216}
!470 = distinct !{!470, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!471 = distinct !{!471, !470, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!472 = !{!471}
!473 = !{!47, !46, i64 8}
!474 = !{!"_ZTSSt22_Optional_payload_baseIN4mold10SyncStreamEE", !6, i64 0, !37, i64 408}
!475 = !{!474, !37, i64 408}
!476 = !{!101, !29, i64 8}
!477 = distinct !{!477, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!478 = distinct !{!478, !477, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!479 = distinct !{!479, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!480 = distinct !{!480, !479, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!481 = !{!478}
!482 = !{!480}
!483 = !{!480, !478}
!484 = distinct !{!484, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!485 = distinct !{!485, !484, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!486 = distinct !{!486, !484, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!487 = distinct !{!487, !58}
!488 = distinct !{!488, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!489 = distinct !{!489, !488, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!490 = distinct !{!490, !488, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!491 = !{!485}
!492 = !{!486}
!493 = !{!485, !486}
!494 = !{!489}
!495 = !{!490}
!496 = !{!489, !490}
!497 = distinct !{!497, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!498 = distinct !{!498, !497, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!499 = distinct !{!499, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!500 = distinct !{!500, !499, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!501 = distinct !{!501, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!502 = distinct !{!502, !501, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!503 = !{!498}
!504 = !{!502, !500}
!505 = !{!14, !14, i64 0}
!506 = distinct !{!506, !103}
!507 = distinct !{!507, !58}
!508 = distinct !{!508, !103}
!509 = distinct !{!509, !58}
!510 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !10, i64 0}
!511 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !11, i64 0}
!512 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_", !510, i64 0, !87, i64 8, !511, i64 16}
!513 = !{!512, !510, i64 0}
!514 = !{!512, !87, i64 8}
!515 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !92, i64 0}
!516 = !{!515, !92, i64 0}
!517 = !{!512, !511, i64 16}
!518 = distinct !{!518, !103}
!519 = distinct !{!519, !103}
!520 = distinct !{!520, !58}
!521 = distinct !{!521, !58}
!522 = distinct !{!522, !103}
!523 = distinct !{!523, !103}
!524 = distinct !{!524, !103}
!525 = distinct !{!525, i1 false, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!526 = distinct !{!526, !525, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!527 = distinct !{!527, i1 false, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!528 = distinct !{!528, !527, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!529 = !{!"p1 _ZTSSo", !10, i64 0}
!530 = !{!"_ZTSSo"}
!531 = !{!"_ZTSSd", !101, i64 0, !530, i64 16}
!532 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!533 = !{!"_ZTSSt6locale", !532, i64 0}
!534 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !533, i64 56}
!535 = !{!"_ZTSSt13_Ios_Openmode", !6, i64 0}
!536 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !534, i64 0, !535, i64 64, !43, i64 72}
!537 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !531, i64 0, !536, i64 24}
!538 = !{!"_ZTSN4mold10SyncStreamE", !529, i64 0, !537, i64 8, !37, i64 400}
!539 = !{!538, !37, i64 400}
!540 = !{!538, !529, i64 0}
!541 = !{!526}
!542 = !{!528}
!543 = !{!528, !526}
!544 = !{!534, !31, i64 40}
!545 = !{!534, !31, i64 32}
!546 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!547 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!548 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!549 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !29, i64 8}
!550 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!551 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !546, i64 24, !547, i64 28, !547, i64 32, !548, i64 40, !549, i64 48, !6, i64 64, !7, i64 192, !550, i64 200, !533, i64 208}
!552 = !{!551, !29, i64 16}
!553 = !{!"_ZTSZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE22get_script_output_typeEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !10, i64 0}
!554 = !{!553, !10, i64 0}
!555 = !{!"_ZTSZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE19parse_linker_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !10, i64 0}
!556 = !{!555, !10, i64 0}
!557 = !{!"_ZTSZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE20parse_version_scriptEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !10, i64 0}
!558 = !{!557, !10, i64 0}
!559 = !{!"_ZTSZSt9call_onceIZN4mold6ScriptINS0_6X86_64EE18parse_dynamic_listEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !10, i64 0}
!560 = !{!559, !10, i64 0}
end_hunk_1
