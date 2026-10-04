Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/archive-file.cc.X86_64?download=true
inline.NumInlined: 580
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE_E12on_exceptionIZNSF_25extend_table_if_necessaryESK_mmEUlvE0_EEvT_:bb.a
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol, !llvm.loop !106

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
  br i1 %i.q, label %.lr.ph.i.i.us.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i, %bb.c
  %i.r = shl i32 %.sroa.0.09.us.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i, %bb.b
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i ], [ %.sroa.0.09.us.i.i.i, %bb.b ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.i.i, !llvm.loop !2

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i, %.lr.ph.i.i
  %i.u = add i64 %.01924.i.i, 1                   ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, -2
  %i.x = icmp ult i64 %i.w, %i.e
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !107

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i: ; preds = %._crit_edge.i.i
  %i.y = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 512) #14 ; 7 uses
  %i.z = load atomic ptr, ptr %i.b monotonic, align 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load atomic ptr, ptr %i.ab monotonic, align 8
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !116
  %scevgep.i.i = getelementptr i8, ptr %i.y, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %scevgep.i.i, i8 0, i64 488, i1 false), !tbaa !116
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !117, !nonnull !40, !align !114 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = cmpxchg ptr %i.f, ptr %i.ai, ptr %i.y release acquire, align 8 ; 2 uses
  %i.ak = extractvalue { ptr, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.thread.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117, !nonnull !40, !align !114 ; 2 uses
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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117, !nonnull !40, !align !114
  store ptr %.020.i8.i, ptr %i.as, align 8, !tbaa !39
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE19allocate_long_tableEPKSt6atomicIPS8_Em.exit.i
  %i.at = extractvalue { ptr, i1 } %i.aj, 0
  store ptr %i.at, ptr %i.ah, align 8
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.y) #14
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit

_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE0_ED2Ev.exit: ; preds = %bb.e, %bb.d, %.thread.i
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #14

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE14create_segmentEPSt6atomicIPS8_Emm(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.tbb::detail::d0::try_call_proxy", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 7 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic ptr, ptr %1 acquire, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

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
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.i.us.i.prol.loopexit, label %.lr.ph.i.i.us.i.prol, !llvm.loop !118

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
  br i1 %i.q, label %.lr.ph.i.i.us.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i:   ; preds = %.lr.ph.i.i.us.i.prol.loopexit, %.lr.ph.i.i.us.i, %bb.e
  %i.r = shl i32 %.sroa.0.09.us.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i, %bb.d
  %.sroa.0.1.us.i = phi i32 [ %i.r, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i ], [ %.sroa.0.09.us.i, %bb.d ]
  %i.s = load atomic ptr, ptr %i.h acquire, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !2

bb.f:                                             ; preds = %bb.b
  %i.u = shl i64 8, %i.d
  %i.v = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.u) #14 ; 17 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.x = cmpxchg ptr %i.w, ptr null, ptr %i.v seq_cst seq_cst, align 8
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %bb.g, label %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !37
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.d, 3
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit.thread, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit

_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS7_EENS3_23cache_aligned_allocatorISA_EENS3_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE_E12on_exceptionIZNSF_25extend_table_if_necessaryESK_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(65) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
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
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01087.epil
  store atomic ptr %i.v, ptr %i.ai release, align 8
  %i.aj = add nuw i64 %.01087.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter113
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !119

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
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01087
  store atomic ptr %i.v, ptr %i.al release, align 8
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01087
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic ptr %i.v, ptr %i.ao release, align 8
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01087
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store atomic ptr %i.v, ptr %i.ar release, align 8
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01087
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store atomic ptr %i.v, ptr %i.au release, align 8
  %i.av = add nuw i64 %.01087, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !120

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
  br i1 %niter121.ncmp.7, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !121

_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit: ; preds = %bb.f
  %i.ax = load ptr, ptr %0, align 8, !tbaa !51
  %.not14 = icmp eq ptr %i.v, %i.ax
  br i1 %.not14, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.v) #14
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %i.ba = load atomic ptr, ptr %i.az acquire, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit

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
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol, !llvm.loop !122

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
  br i1 %i.bi, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.bj = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.bj, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.bk = load atomic ptr, ptr %i.az acquire, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !2

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !123

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
  br i1 %i.cf, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cg = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cg, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.ch = load atomic ptr, ptr %i.bw acquire, align 8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, !llvm.loop !2

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
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit, label %.lr.ph89.epil, !llvm.loop !124

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EEZNS1_18spin_wait_while_eqIS9_S9_EET_RKSt6atomicISB_ET0_St12memory_orderEUlS9_E_EESB_SF_SG_SH_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_Emm.exit, %bb.m, %_ZNSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE23compare_exchange_strongERS6_S6_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !25
  store i64 %.0, ptr %i.d, align 8, !tbaa !26
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 1, !tbaa !26
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  store i8 %i.v, ptr %i.t, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !24
  %i.x = load ptr, ptr %0, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !7, i64 16}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"p1 _ZTSN4mold10MappedFileE", !11, i64 0}
!19 = !{!"_ZTSN4mold10MappedFileE", !16, i64 0, !13, i64 32, !15, i64 40, !17, i64 48, !18, i64 56, !18, i64 64, !17, i64 72, !8, i64 76}
!20 = !{!19, !13, i64 32}
!21 = !{!19, !15, i64 40}
!22 = !{!13, !13, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!16, !15, i64 8}
!25 = !{!16, !13, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!14, !13, i64 0}
!28 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"p2 _ZTSN4mold10MappedFileE", !12, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIPN4mold10MappedFileESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 8}
!34 = !{!32, !31, i64 16}
!35 = !{!18, !18, i64 0}
!36 = !{!32, !31, i64 0}
!37 = !{!15, !15, i64 0}
!38 = !{!"p1 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !11, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"p1 _ZTSSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS1_EE", !11, i64 0}
!43 = !{!"_ZTSN3tbb6detail2d123cache_aligned_allocatorISt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EEEEE"}
!44 = !{!"_ZTSSt13__atomic_baseIPSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS3_EEEE", !38, i64 0}
!45 = !{!"_ZTSSt6atomicIPS_IPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEEE", !44, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseImE", !15, i64 0}
!47 = !{!"_ZTSSt6atomicImE", !46, i64 0}
!48 = !{!"_ZTSSt13__atomic_baseIbE", !17, i64 0}
!49 = !{!"_ZTSSt6atomicIbE", !48, i64 0}
!50 = !{!"_ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !42, i64 0, !43, i64 8, !45, i64 16, !7, i64 24, !47, i64 48, !47, i64 56, !49, i64 64}
!51 = !{!50, !42, i64 0}
!52 = !{!"p2 _ZTSN4mold7CounterE", !12, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 0}
!55 = !{!53, !52, i64 16}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, i1 false, !"_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!58 = distinct !{!58, !57, !"_ZN4mold12path_dirnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!59 = distinct !{!59, i1 false, !"_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_"}
!60 = distinct !{!60, !59, !"_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_: argument 0"}
!61 = distinct !{!61, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!62 = distinct !{!62, !61, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!64 = distinct !{!64, !63, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!65 = !{!"branch_weights", !"expected", i32 2146411, i32 2145337237}
!66 = !{!58}
!67 = !{!60}
!68 = !{!62}
!69 = !{!64}
!70 = !{!64, !62}
!71 = !{!19, !18, i64 64}
!72 = distinct !{null}
!73 = distinct !{!73, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!74 = distinct !{!74, !73, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!75 = !{!74}
!76 = distinct !{!76, !23}
!77 = distinct !{!77, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!78 = distinct !{!78, !77, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!79 = distinct !{!79, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!80 = distinct !{!80, !79, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!81 = !{!"branch_weights", !"expected", i32 2414712, i32 2145068936}
!82 = !{!19, !17, i64 48}
!83 = !{!19, !17, i64 72}
!84 = !{!19, !8, i64 76}
!85 = !{!19, !18, i64 56}
!86 = !{!80, !78}
!87 = distinct !{!87, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!88 = distinct !{!88, !87, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!90 = distinct !{!90, !89, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!91 = distinct !{!91, i1 false, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!92 = distinct !{!92, !91, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!93 = !{!88}
!94 = !{!92, !90}
!95 = distinct !{!95, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!96 = distinct !{!96, !95, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!97 = distinct !{!97, i1 false, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!98 = distinct !{!98, !97, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!99 = !{!96}
!100 = !{!98}
!101 = !{!98, !96}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !23}
!105 = !{i8 0, i8 2}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !23}
!108 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !11, i64 0}
!109 = !{!"p1 long", !11, i64 0}
!110 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !12, i64 0}
!111 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_", !108, i64 0, !109, i64 8, !110, i64 16}
!112 = !{!111, !108, i64 0}
!113 = !{!111, !109, i64 8}
!114 = !{i64 8}
!115 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !42, i64 0}
!116 = !{!115, !42, i64 0}
!117 = !{!111, !110, i64 16}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
end_hunk_0
