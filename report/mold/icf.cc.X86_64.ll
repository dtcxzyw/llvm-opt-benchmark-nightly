Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/icf.cc.X86_64?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1791
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN3tbb6detail2d113callback_leafINS1_21construct_by_exemplarIlEEE7destroyEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_leafINS1_21construct_by_exemplarIlEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_leafINS1_21construct_by_exemplarIlEEE9constructEPv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !298
  store i64 %i.b, ptr %1, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_baseD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE13internal_growIJEEENS1_15vector_iteratorISA_S7_EEmmDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.tbb::detail::d1::vector_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(65) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.tbb::detail::d0::try_call_proxy", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = add i64 %3, -1
  %i.d = or i64 %i.c, 1
  %i.e = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true) ; 3 uses
  %i.f = xor i64 %i.e, 63                         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE31assign_first_block_if_necessaryEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 64, %i.e
  %i.k = cmpxchg ptr %i.g, i64 0, i64 %i.j seq_cst seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE31assign_first_block_if_necessaryEm.exit

_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE31assign_first_block_if_necessaryEm.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 3 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = icmp ugt i64 %3, 8
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %bb.c, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE31assign_first_block_if_necessaryEm.exit
  %i.q = icmp ult i64 %2, 9
  br i1 %i.q, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_E12on_exceptionIZNSD_25extend_table_if_necessaryESI_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(65) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %.preheader.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i ], [ 1, %.preheader.i ] ; 8 uses
  %i.s = load atomic i8, ptr %i.r monotonic, align 8, !range !171, !noundef !172
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = icmp slt i32 %.sroa.0.0.i, 17
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = icmp sgt i32 %.sroa.0.0.i, 0
  br i1 %i.v, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %xtraiter = and i32 %.sroa.0.0.i, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.w, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.w = add nsw i32 %.01.i.i.i.prol, -1          ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !518

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %i.x = icmp ult i32 %.sroa.0.0.i, 8
  br i1 %i.x, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.y, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.y = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.z = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.h
  %i.aa = shl i32 %.sroa.0.0.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef i32 @sched_yield() #13 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %bb.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i
  %.sroa.0.1.i = phi i32 [ %i.aa, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ %.sroa.0.0.i, %bb.i ]
  %i.ac = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !304
  %i.ad = icmp eq ptr %i.ac, %i.m
  br i1 %i.ad, label %bb.e, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit, !llvm.loop !2

_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE31assign_first_block_if_necessaryEm.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load atomic i64, ptr %i.g monotonic, align 8
  %i.af = icmp ugt i64 %i.f, %i.ae
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !304 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.f ; 4 uses
  %i.ai = load atomic ptr, ptr %i.ah monotonic, align 8
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr exact i64 -9223372036854775808, %i.e
  %i.al = and i64 %i.ak, -2                       ; 4 uses
  %.not = icmp uge i64 %i.al, %2
  %i.am = icmp ult i64 %i.al, %3
  %or.cond = and i1 %.not, %i.am
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = load atomic ptr, ptr %i.ah monotonic, align 8 ; 0 uses
  %i.ao = call noundef ptr @_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE14create_segmentEPSt6atomicIPS7_Emm(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull %i.ag, i64 noundef %i.f, i64 noundef %i.al) ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = sub i64 0, %i.al
  %i.aq = getelementptr inbounds [128 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = cmpxchg ptr %i.ah, ptr null, ptr %i.aq seq_cst seq_cst, align 8
  %i.as = extractvalue { ptr, i1 } %i.ar, 1
  br i1 %i.as, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit, label %_ZNSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEE23compare_exchange_strongERS8_S8_St12memory_order.exit.i

_ZNSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEE23compare_exchange_strongERS8_S8_St12memory_order.exit.i: ; preds = %bb.m
  %i.at = load atomic i64, ptr %i.g monotonic, align 8
  %.not.i.i.not = icmp ult i64 %i.f, %i.at
  br i1 %.not.i.i.not, label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZNSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEE23compare_exchange_strongERS8_S8_St12memory_order.exit.i
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.ao) #13
  br label %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit

_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit: ; preds = %bb.l, %bb.m, %_ZNSt6atomicIPN3tbb6detail2d06paddedINS1_2d111ets_elementIlEELm128EEEE23compare_exchange_strongERS8_S8_St12memory_order.exit.i, %.sink.split.i.i
  %i.au = load atomic ptr, ptr %i.ah acquire, align 8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14enable_segmentERPS7_PSt6atomicISD_Emm.exit, %bb.j, %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit
  %i.av = icmp ult i64 %2, %3
  br i1 %i.av, label %_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i, label %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE23internal_loop_constructIJEEEvPSt6atomicIPS7_EmmDpRKT_.exit

_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i: ; preds = %bb.n, %_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i
  %storemerge12.i = phi i64 [ %i.ax, %_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i ], [ %2, %bb.n ] ; 2 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(121) ptr @_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %1, i64 noundef %storemerge12.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aw, i8 0, i64 128, i1 false)
  %i.ax = add nuw i64 %storemerge12.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %3
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE23internal_loop_constructIJEEEvPSt6atomicIPS7_EmmDpRKT_.exit, label %_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i, !llvm.loop !519

_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE23internal_loop_constructIJEEEvPSt6atomicIPS7_EmmDpRKT_.exit: ; preds = %_ZN3tbb6detail2d010raii_guardIZNS0_2d117concurrent_vectorINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EEE23internal_loop_constructIJEEEvPSt6atomicIPS8_EmmDpRKT_EUlvE_ED2Ev.exit.i, %bb.n
  %i.ay = or i64 %2, 1
  %i.az = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = xor i64 %i.az, 63
  %i.bb = load atomic ptr, ptr %i.l acquire, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %2
  store ptr %1, ptr %0, align 8, !tbaa !302
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.bf, align 8, !tbaa !303
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d014try_call_proxyIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_E12on_exceptionIZNSD_25extend_table_if_necessaryESI_mmEUlvE0_EEvT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !525    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !526, !nonnull !172, !align !285
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %.not27.i.i = icmp eq i64 %i.e, 0
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8
  %.not.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not.i.i, label %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i, label %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i
  %.01924.i.i = phi i64 [ %i.u, %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01924.i.i ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i
  %.sroa.0.09.us.i.i.i = phi i32 [ %.sroa.0.1.us.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i ], [ 1, %.lr.ph.i.i ] ; 8 uses
  %i.k = icmp slt i32 %.sroa.0.09.us.i.i.i, 17
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = tail call noundef i32 @sched_yield() #13 ; 0 uses
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.prol, !llvm.loop !520

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
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i, !llvm.loop !3

_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i, %.lr.ph.i.i
  %i.u = add i64 %.01924.i.i, 1                   ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = and i64 %i.v, -2
  %i.x = icmp ult i64 %i.w, %i.e
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !521

_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i: ; preds = %._crit_edge.i.i
  %i.y = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 512) #13 ; 7 uses
  %i.z = load atomic ptr, ptr %i.b monotonic, align 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !528
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load atomic ptr, ptr %i.ab monotonic, align 8
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !528
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !528
  %scevgep.i.i = getelementptr i8, ptr %i.y, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %scevgep.i.i, i8 0, i64 488, i1 false), !tbaa !528
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !529, !nonnull !172, !align !285 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = cmpxchg ptr %i.f, ptr %i.ai, ptr %i.y release acquire, align 8 ; 2 uses
  %i.ak = extractvalue { ptr, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e

_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !529, !nonnull !172, !align !285 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = cmpxchg ptr %i.f, ptr %i.an, ptr null release acquire, align 8 ; 2 uses
  %i.ap = extractvalue { ptr, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i
  %i.aq = extractvalue { ptr, i1 } %i.ao, 0
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE0_ED2Ev.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i, %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i
  %i.ar = phi ptr [ %i.al, %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i ], [ %i.ag, %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i ]
  %.020.i8.i = phi ptr [ null, %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.thread.i ], [ %i.y, %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !529, !nonnull !172, !align !285
  store ptr %.020.i8.i, ptr %i.as, align 8, !tbaa !304
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE0_ED2Ev.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE19allocate_long_tableEPKSt6atomicIPS7_Em.exit.i
  %i.at = extractvalue { ptr, i1 } %i.aj, 0
  store ptr %i.at, ptr %i.ah, align 8
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.y) #13
  br label %_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE0_ED2Ev.exit

_ZN3tbb6detail2d010raii_guardIZNS0_2d113segment_tableINS1_6paddedINS3_11ets_elementIlEELm128EEENS3_23cache_aligned_allocatorIS8_EENS3_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE0_ED2Ev.exit: ; preds = %bb.e, %bb.d, %.thread.i
  ret void
}

declare void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #13

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE14create_segmentEPSt6atomicIPS7_Emm(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.tbb::detail::d0::try_call_proxy", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !304
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 7 uses
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic ptr, ptr %1 acquire, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !304
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph.i, label %_ZN3tbb6detail2d015spin_wait_whileIPNS1_6paddedINS0_2d111ets_elementIlEELm128EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit

.lr.ph.i:                                         ; preds = %bb.c, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i
  %.sroa.0.09.us.i = phi i32 [ %.sroa.0.1.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i ], [ 1, %bb.c ] ; 8 uses
  %i.k = icmp slt i32 %.sroa.0.09.us.i, 17
end_hunk_0
begin_hunk_1_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE":bb.a
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #13
  br label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit": ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define internal fastcc void @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS6_6DigestELm18446744073709551615EES9_S7_IjLm18446744073709551615EESA_E3$_0lEEKNS1_16auto_partitionerEE8run_bodyERS4_"(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %class.SipHashTmpl, align 8         ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !548  ; 2 uses
  %i.d = icmp slt i64 %.8.val, %.0.val
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 32, !tbaa !549
  %i.g = mul nsw i64 %i.c, %.8.val
  %i.h = add nsw i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %.8.val, %.lr.ph.i.i.i.i.i ], [ %i.cw, %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i" ]
  %storemerge12.i.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.cx, %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i" ] ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !550, !nonnull !172, !align !285 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i8 0, ptr %i.i, align 8, !tbaa !313
  store i8 0, ptr %i.j, align 1, !tbaa !314
  %i.p = load <2 x i64>, ptr @_ZN4moldL11siphash_keyE, align 16
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.r = xor <4 x i64> %i.q, <i64 8317987319222330741, i64 7237128888997146499, i64 7816392313619706465, i64 8387220255154660723>
  store <4 x i64> %i.r, ptr %1, align 8, !tbaa !75
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !552, !nonnull !172, !align !285
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !316
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %storemerge12.i.i.i.i.i
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.u, i64 noundef 16)
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !553, !nonnull !172, !align !285
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !555
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %storemerge12.i.i.i.i.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !147
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !147
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !556, !nonnull !172, !align !285 ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.aa                ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %i.aj, %i.aa
  %.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ak, i64 %i.ag ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !555
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aa ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i:             ; preds = %bb.b
  %.promoted.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !317
  %.promoted3.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !318
  %.promoted6.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !319
  %.pre.i.i.i.i.i = load i8, ptr %i.i, align 8, !tbaa !313
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i
  %i.ap = phi i8 [ %storemerge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.promoted6.i.i7.i.i.i.i.i = phi i64 [ %i.cl, %._crit_edge.i.i.i.i.i.i ], [ %.promoted6.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.promoted5.i.i4.i.i.i.i.i = phi i64 [ %i.ck, %._crit_edge.i.i.i.i.i.i ], [ %.promoted3.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.aq = phi i64 [ %i.ch, %._crit_edge.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.010.015.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %._crit_edge.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.010.015.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !552, !nonnull !172, !align !285
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !316
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.as ; 3 uses
  %i.aw = load i8, ptr %i.j, align 1, !tbaa !314
  %i.ax = add i8 %i.aw, 16
  store i8 %i.ax, ptr %i.j, align 1, !tbaa !314
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.promoted29.i.pre.i.i.i.i.i = load i64, ptr %1, align 8
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ay = zext i8 %i.ap to i64                    ; 3 uses
  %i.az = sub nsw i64 8, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 1 %i.av, i64 %i.az, i1 false)
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 2 uses
  %i.bb = xor i64 %.0.copyload.i.i.i.i.i.i.i, %i.aq ; 3 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bc = add i64 %.promoted.i.i.i.i.i.i.i, %.promoted5.i.i4.i.i.i.i.i ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i.i4.i.i.i.i.i, i64 %.promoted5.i.i4.i.i.i.i.i, i64 13)
  %i.be = xor i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bg = add i64 %i.bb, %.promoted6.i.i7.i.i.i.i.i ; 2 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 16)
  %i.bi = xor i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = add i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = add i64 %i.be, %i.bg                    ; 3 uses
  %i.bn = call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bo = xor i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32) ; 2 uses
  store i64 %i.bo, ptr %i.k, align 8, !tbaa !318
  store i64 %i.bp, ptr %i.l, align 8, !tbaa !319
  store i64 %i.bl, ptr %i.m, align 8, !tbaa !317
  %i.bq = xor i64 %i.bj, %.0.copyload.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.bq, ptr %1, align 8, !tbaa !320
  %i.br = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bs = add nuw nsw i64 %i.ay, 8
  store i8 0, ptr %i.i, align 8, !tbaa !313
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i
  %.ph = phi i64 [ %.promoted6.i.i7.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bp, %bb.c ]
  %.ph19 = phi i64 [ %.promoted5.i.i4.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bo, %bb.c ]
  %.ph20 = phi i64 [ %.promoted29.i.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bq, %bb.c ]
  %.ph21 = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bl, %bb.c ]
  %.127.i.i.i.i.i.i.ph = phi i64 [ 16, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.bs, %bb.c ]
  %.12026.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i..lr.ph.i_crit_edge.i.i.i.i.i ], [ %i.br, %bb.c ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.bt = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bu = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.ph19, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bv = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.ph20, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bw = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %.ph21, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.127.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.127.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.12026.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.12026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.copyload.i22.i.i.i.i.i.i = load i64, ptr %.12026.i.i.i.i.i.i, align 1 ; 2 uses
  %i.bx = xor i64 %.0.copyload.i22.i.i.i.i.i.i, %i.bw ; 3 uses
  %i.by = add i64 %i.bv, %i.bu                    ; 3 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 13)
  %i.ca = xor i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cc = add i64 %i.bx, %i.bt                    ; 2 uses
  %i.cd = call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 16)
  %i.ce = xor i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = add i64 %i.ce, %i.cb                    ; 2 uses
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 21)
  %i.ch = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = add i64 %i.cc, %i.ca                    ; 3 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 17)
  %i.ck = xor i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = call noundef i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 32) ; 3 uses
  store i64 %i.ck, ptr %i.k, align 8, !tbaa !318
  store i64 %i.cl, ptr %i.l, align 8, !tbaa !319
  store i64 %i.ch, ptr %i.m, align 8, !tbaa !317
  %i.cm = xor i64 %i.cf, %.0.copyload.i22.i.i.i.i.i.i ; 2 uses
  store i64 %i.cm, ptr %1, align 8, !tbaa !320
  %i.cn = getelementptr inbounds nuw i8, ptr %.12026.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = add nsw i64 %.127.i.i.i.i.i.i, -8       ; 3 uses
  %i.cp = icmp samesign ugt i64 %.127.i.i.i.i.i.i, 15
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !6

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 1 %i.cn, i64 %i.co, i1 false)
  %storemerge.i.i.i.i.i.i = trunc nuw nsw i64 %i.co to i8 ; 2 uses
  store i8 %storemerge.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !313
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.an
  br i1 %i.cr, label %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !557, !nonnull !172, !align !285
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !316
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %storemerge12.i.i.i.i.i
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6finishEPv(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.cw = add nsw i64 %.013.i.i.i.i.i, 1          ; 2 uses
  %i.cx = add nsw i64 %storemerge12.i.i.i.i.i, %i.c
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cw, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !547

"_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL9propagateESt4spanINS5_6DigestELm18446744073709551615EES8_S6_IjLm18446744073709551615EES9_E3$_0lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIT_JDpT0_EE4typeEOSI_DpOSJ_.exit": ; preds = %"_ZN3tbb6detail2d06invokeIRKZN4moldL9propagateESt4spanINS3_6DigestELm18446744073709551615EES6_S4_IjLm18446744073709551615EES7_E3$_0JRlEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit.i.i.i.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !314
  %i.c = trunc i64 %2 to i8
  %i.d = add i8 %i.b, %i.c
  store i8 %i.d, ptr %i.a, align 1, !tbaa !314
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !313   ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  %i.h = add nsw i64 %2, %i.g
  %i.i = icmp slt i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  %i.l = load i8, ptr %i.e, align 8, !tbaa !313
  %i.m = zext i8 %i.l to i64
  %i.n = add nsw i64 %2, %i.m
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.o = sub nsw i64 8, %i.g                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %1, i64 %i.o, i1 false)
  %.0.copyload.i = load i64, ptr %i.p, align 8    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !317
  %i.t = xor i64 %i.s, %.0.copyload.i             ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted5.i = load i64, ptr %i.u, align 8, !tbaa !318 ; 3 uses
  %.promoted6.i = load i64, ptr %i.v, align 8, !tbaa !319
  %i.w = add i64 %.promoted5.i, %.promoted.i      ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i, i64 %.promoted5.i, i64 13)
  %i.y = xor i64 %i.w, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.aa = add i64 %.promoted6.i, %i.t             ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = add i64 %i.ac, %i.z                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = add i64 %i.aa, %i.y                     ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 17)
  %i.ai = xor i64 %i.ag, %i.ah
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !318
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !319
  store i64 %i.af, ptr %i.r, align 8, !tbaa !317
  %i.ak = xor i64 %i.ad, %.0.copyload.i
  store i64 %i.ak, ptr %0, align 8, !tbaa !320
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.am = sub nsw i64 %2, %i.o
  store i8 0, ptr %i.e, align 8, !tbaa !313
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.019 = phi ptr [ %i.al, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.am, %bb.d ], [ %2, %bb.a ]   ; 3 uses
  %i.an = icmp sgt i64 %.0, 7
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.ao, align 8, !tbaa !317
  %.promoted29 = load i64, ptr %0, align 8
  %.promoted30 = load i64, ptr %i.ap, align 8, !tbaa !318
  %.promoted31 = load i64, ptr %i.aq, align 8, !tbaa !319
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.ar = phi i64 [ %.promoted31, %.lr.ph ], [ %i.bj, %bb.f ]
  %i.as = phi i64 [ %.promoted30, %.lr.ph ], [ %i.bi, %bb.f ] ; 3 uses
  %i.at = phi i64 [ %.promoted29, %.lr.ph ], [ %i.bk, %bb.f ]
  %i.au = phi i64 [ %.promoted, %.lr.ph ], [ %i.bf, %bb.f ]
  %.127 = phi i64 [ %.0, %.lr.ph ], [ %i.bm, %bb.f ] ; 2 uses
  %.12026 = phi ptr [ %.019, %.lr.ph ], [ %i.bl, %bb.f ] ; 2 uses
  %.0.copyload.i22 = load i64, ptr %.12026, align 1 ; 2 uses
  %i.av = xor i64 %i.au, %.0.copyload.i22         ; 3 uses
  %i.aw = add i64 %i.as, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.ay = xor i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.ba = add i64 %i.ar, %i.av                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 16)
  %i.bc = xor i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = add i64 %i.bc, %i.az                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 21)
  %i.bf = xor i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = add i64 %i.ba, %i.ay                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bi = xor i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32) ; 2 uses
  store i64 %i.bi, ptr %i.ap, align 8, !tbaa !318
  store i64 %i.bj, ptr %i.aq, align 8, !tbaa !319
  store i64 %i.bf, ptr %i.ao, align 8, !tbaa !317
  %i.bk = xor i64 %i.bd, %.0.copyload.i22         ; 2 uses
  store i64 %i.bk, ptr %0, align 8, !tbaa !320
  %i.bl = getelementptr inbounds nuw i8, ptr %.12026, i64 8 ; 2 uses
  %i.bm = add nsw i64 %.127, -8                   ; 2 uses
  %i.bn = icmp samesign ugt i64 %.127, 15
  br i1 %i.bn, label %bb.f, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.120.lcssa = phi ptr [ %.019, %bb.e ], [ %i.bl, %bb.f ]
  %.1.lcssa = phi i64 [ %.0, %bb.e ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 1 %.120.lcssa, i64 %.1.lcssa, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %storemerge.in = phi i64 [ %.1.lcssa, %._crit_edge ], [ %i.n, %bb.c ]
  %storemerge = trunc i64 %storemerge.in to i8
  store i8 %storemerge, ptr %i.e, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN11SipHashTmplILi1ELi3ELi128EE6finishEPv(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !313
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = sub nsw i64 8, %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.h = load i8, ptr %i.g, align 1, !tbaa !314
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw i64 %i.i, 56
  %.0.copyload.i = load i64, ptr %i.a, align 8
  %i.k = or i64 %i.j, %.0.copyload.i              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !317
  %i.n = xor i64 %i.k, %i.m                       ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted5.i = load i64, ptr %i.o, align 8, !tbaa !318 ; 3 uses
  %.promoted6.i = load i64, ptr %i.p, align 8, !tbaa !319
  %i.q = add i64 %.promoted5.i, %.promoted.i      ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i, i64 %.promoted5.i, i64 13)
  %i.s = xor i64 %i.q, %i.r                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32)
  %i.u = add i64 %.promoted6.i, %i.n              ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.w = xor i64 %i.u, %i.v                       ; 3 uses
  %i.x = add i64 %i.w, %i.t                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.z = xor i64 %i.y, %i.x                       ; 3 uses
  %i.aa = add i64 %i.u, %i.s                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ae = xor i64 %i.x, %i.k
  %i.af = xor i64 %i.ad, 238
  %i.ag = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 13)
  %i.ai = xor i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  %i.ak = add i64 %i.af, %i.z                     ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.am = xor i64 %i.ak, %i.al                    ; 3 uses
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.ap = xor i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = add i64 %i.ai, %i.ak                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.as = xor i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.au = add i64 %i.as, %i.an                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.aw = xor i64 %i.au, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.ay = add i64 %i.at, %i.ap                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINS6_6X86_64EEESt6vectorIPNS6_12InputSectionIT_EESaISD_EERNS6_7ContextISB_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a

_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = add i8 %i.cv, -65
  %i.cz = icmp ult i8 %i.cy, 26
  %i.da = add i8 %i.cv, -48
  %i.db = icmp ult i8 %i.da, 10
  %i.dc = or i1 %i.db, %i.cz
  br i1 %i.dc, label %_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = add nuw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dd, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !588

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.de = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not19.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not19.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

.loopexit.thread.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p
  %i.df = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not1947.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not1947.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.thread.thread.i.i.i.i.i.i.i.i.i.i, label %bb.r

.thread.i.thread.thread.i.i.i.i.i.i.i.i.i.i:      ; preds = %.loopexit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.dg = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 1
  %.not20.i46.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, 0
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.loopexit.thread.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 2675
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !838, !range !171, !noundef !172
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 61
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1, !range !171, !noundef !172
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, 5
  br i1 %i.dn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.do = load i32, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.dp = xor i32 %i.do, 1768843566
  %i.dq = getelementptr i8, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = xor i32 %i.ds, 116
  %i.du = or i32 %i.dp, %i.dt
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = load i32, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.dz = xor i32 %i.dy, 1852401198
  %i.ea = getelementptr i8, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = xor i32 %i.ec, 105
  %i.ee = or i32 %i.dz, %i.ed
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %.not32.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %i.eh = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, 17
  br i1 %i.eh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.ei = load i128, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ej = xor i128 %i.ei, 144067445250647575351339336510386431790
  %i.ek = getelementptr i8, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i128
  %i.en = xor i128 %i.em, 101
  %i.eo = or i128 %i.ej, %i.en
  %i.ep = icmp ne i128 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i, label %.thread.i.thread.thread48.i.i.i.i.i.i.i.i.i.i

.thread.i.thread.thread48.i.i.i.i.i.i.i.i.i.i:    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i.i.i.i.i.i.i.i.i
  %i.es = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 1
  %.not20.i49.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.u
  %.not.i.i13.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, 18
  br i1 %.not.i.i13.i.i.i.i.i.i.i.i.i.i, label %.thread.i.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i14.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i14.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.et = load i128, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.eu = xor i128 %i.et, 144067445250647575351339336510386431790
  %i.ev = getelementptr i8, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ew = load i16, ptr %i.ev, align 1
  %i.ex = zext i16 %i.ew to i128
  %i.ey = xor i128 %i.ex, 11877
  %i.ez = or i128 %i.eu, %i.ey
  %i.fa = icmp ne i128 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i14.i.i.i.i.i.i.i.i.i.i
  %i.fd = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 1
  %.not20.i43.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.thread.i.i.i.i.i.i.i.i.i.i:             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = and i64 %.0.copyload.i21.i.i.i.i.i.i.i.i.i.i.i, 1
  %.not20.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, 0 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, 12
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.thread48.i.i.i.i.i.i.i.i.i.i
  %.not20.i45.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.not20.i43.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ], [ %.not20.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.i.i.i.i.i.i.i.i.i.i ], [ %.not20.i49.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.thread48.i.i.i.i.i.i.i.i.i.i ]
  %i.ff = load i64, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fg = xor i64 %i.ff, 7309956141274981422
  %i.fh = getelementptr i8, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = xor i64 %i.fj, 1869753964
  %i.fl = or i64 %i.fg, %i.fk
  %i.fm = icmp ne i64 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i = or i1 %.not20.i45.i.i.i.i.i.i.i.i.i.i, %i.fo
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.thread.i.i.i.i.i.i.i.i.i.i
  %.old.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.not20.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.i.i.i.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.not20.i46.i.i.i.i.i.i.i.i.i.i, %.thread.i.thread.thread.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 2676
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !839, !range !171, !noundef !172
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.i.i.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 61
  %i.ft = load atomic i8, ptr %i.fs monotonic, align 1, !range !171, !noundef !172
  %i.fu = trunc nuw i8 %i.ft to i1
  %.not30.i.i.i.i.i.i.i.i.i.i = xor i1 %i.fu, true
  %or.cond.i.i.i.i.i.i.i.i.i.i = and i1 %.old.i.i.i.i.i.i.i.i.i.i, %.not30.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i

_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit.i.i.i.i.i.i.i.i.i.i
  br i1 %.old.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i

_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i14.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %i.fv = load i8, ptr @_ZN4mold7Counter7enabledE, align 1, !tbaa !170, !range !171, !noundef !172
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.w, label %_ZN4mold7CounterppEi.exit.i.i.i.i.i.i.i.i.i.i, !prof !173

bb.w:                                             ; preds = %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @_ZZN4moldL15gather_sectionsINS_6X86_64EEESt6vectorIPNS_12InputSectionIT_EESaIS6_EERNS_7ContextIS4_EEE8eligible, i64 16), ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !75
  %i.fz = add nsw i64 %i.fy, 1
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !75
  br label %_ZN4mold7CounterppEi.exit.i.i.i.i.i.i.i.i.i.i

_ZN4mold7CounterppEi.exit.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.w, %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread28.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 76
  store i8 1, ptr %i.ga, align 4, !tbaa !337
  %i.gb = load ptr, ptr %i.ab, align 8, !tbaa !840, !nonnull !172, !align !285
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !74
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %storemerge2.i.i.i.i.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 8      ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !75
  %i.gg = add nsw i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !75
  br label %_ZN4mold7CounterppEi.exit11.i.i.i.i.i.i.i.i.i.i

_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE0_clEc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.i.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s, %_ZZN4mold15is_c_identifierESt17basic_string_viewIcSt11char_traitsIcEEENKUlcE_clEc.exit.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o, %bb.n, %_ZNK4mold12InputSectionINS_6X86_64EE4nameEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = load i8, ptr @_ZN4mold7Counter7enabledE, align 1, !tbaa !170, !range !171, !noundef !172
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.x, label %_ZN4mold7CounterppEi.exit11.i.i.i.i.i.i.i.i.i.i, !prof !173

bb.x:                                             ; preds = %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @_ZZN4moldL15gather_sectionsINS_6X86_64EEESt6vectorIPNS_12InputSectionIT_EESaIS6_EERNS_7ContextIS4_EEE12non_eligible, i64 16), ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !75
  %i.gl = add nsw i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !75
  br label %_ZN4mold7CounterppEi.exit11.i.i.i.i.i.i.i.i.i.i

_ZN4mold7CounterppEi.exit11.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.x, %_ZN4moldL11is_eligibleINS_6X86_64EEEbRNS_7ContextIT_EERNS_12InputSectionIS3_EE.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZN4mold7CounterppEi.exit.i.i.i.i.i.i.i.i.i.i, %bb.i, %_ZNK4mold17InputSectionTableINS_6X86_64EE8IteratordeEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.gm = add nuw nsw i64 %.sroa.4.034.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not31.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.x
  br i1 %.not31.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKZN4moldL15gather_sectionsINS3_6X86_64EEESt6vectorIPNS3_12InputSectionIT_EESaISA_EERNS3_7ContextIS8_EEEUllE_JRlEEENSt13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSL_.exit.i.i.i.i.i, label %bb.b

_ZN3tbb6detail2d06invokeIRKZN4moldL15gather_sectionsINS3_6X86_64EEESt6vectorIPNS3_12InputSectionIT_EESaISA_EERNS3_7ContextIS8_EEEUllE_JRlEEENSt13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSL_.exit.i.i.i.i.i: ; preds = %_ZN4mold7CounterppEi.exit11.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.gn = add nsw i64 %.03.i.i.i.i.i, 1           ; 2 uses
  %i.go = add nsw i64 %storemerge2.i.i.i.i.i, %i.e
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gn, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL15gather_sectionsINS5_6X86_64EEESt6vectorIPNS5_12InputSectionIT_EESaISC_EERNS5_7ContextISA_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSQ_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !589

_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL15gather_sectionsINS5_6X86_64EEESt6vectorIPNS5_12InputSectionIT_EESaISC_EERNS5_7ContextISA_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSQ_.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL15gather_sectionsINS3_6X86_64EEESt6vectorIPNS3_12InputSectionIT_EESaISA_EERNS3_7ContextIS8_EEEUllE_JRlEEENSt13invoke_resultIS8_JDpT0_EE4typeEOS8_DpOSL_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINS6_6X86_64EEESt6vectorIPNS6_12InputSectionIT_EESaISD_EERNS6_7ContextISB_EEEUllE0_lEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINS6_6X86_64EEESt6vectorIPNS6_12InputSectionIT_EESaISD_EERNS6_7ContextISB_EEEUllE0_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !306  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !114
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !307
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !113
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !113
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !205 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !203 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !204 ; 4 uses
  %i.ab = sub nsw i64 %i.y, %i.aa                 ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !113 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !113
  store i64 0, ptr %i.g, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !98
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !841 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINS6_6X86_64EEESt6vectorIPNS6_12InputSectionIT_EESaISD_EERNS6_7ContextISB_EEEUllE0_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !203 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !203
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !204 ; 2 uses
  %i.ar = sub nsw i64 %i.ao, %i.aq
  %i.as = sdiv i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, %i.aq                ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !203
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !204
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !205
  store i64 %i.av, ptr %i.au, align 16, !tbaa !205
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !114
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !114
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !113
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !115
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !115
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !842 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !308
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !115
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !115
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !309
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !134
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !134
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !310
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #13, !inline_history !842
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !205 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !203 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !204 ; 4 uses
  %i.bp = sub nsw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !113 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !113
  store i64 0, ptr %i.g, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !843

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15gather_sectionsINSC_6X86_64EEESt6vectorIPNSC_12InputSectionIT_EESaISJ_EERNSC_7ContextISH_EEEUllE0_lEEKNS1_16auto_partitionerEEEEEbRSH_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL15compute_digestsINS6_6X86_64EEESt6vectorINS6_6DigestESaISA_EERNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISE_EELm18446744073709551615EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a
  %.promoted6.i.i13.i.i.i.i.i = phi i64 [ %i.xe, %bb.am ], [ %i.ya, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ] ; 3 uses
  %.promoted5.i.i12.i.i.i.i.i = phi i64 [ %i.xd, %bb.am ], [ %i.xz, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ] ; 5 uses
  %.promoted.i.i11.i.i.i.i.i = phi i64 [ %i.xf, %bb.am ], [ %i.yb, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ] ; 3 uses
  %i.yf = phi i64 [ %i.xa, %bb.am ], [ %i.xw, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ] ; 3 uses
  %.120.lcssa.i36.i.i.i.i.i = phi ptr [ %i.xg, %bb.am ], [ %i.yc, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ]
  %.1.lcssa.i37.i.i.i.i.i = phi i64 [ %i.wn, %bb.am ], [ %i.yd, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.loopexit.i.i.i.i.i ] ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 1 %.120.lcssa.i36.i.i.i.i.i, i64 %.1.lcssa.i37.i.i.i.i.i, i1 false)
  %storemerge.i39.i.i.i.i.i = trunc nuw nsw i64 %.1.lcssa.i37.i.i.i.i.i to i8
  store i8 %storemerge.i39.i.i.i.i.i, ptr %i.r, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0159.0228.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.yg, align 1, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %1, align 4
  %i.yh = load i8, ptr %i.s, align 1, !tbaa !314
  %i.yi = add i8 %i.yh, 4
  store i8 %i.yi, ptr %i.s, align 1, !tbaa !314
  %.not.i9.i.i.i.i.i = icmp eq i64 %.1.lcssa.i37.i.i.i.i.i, 0
  br i1 %.not.i9.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i
  %i.yj = icmp samesign ult i64 %.1.lcssa.i37.i.i.i.i.i, 4
  br i1 %i.yj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.yk = getelementptr inbounds nuw i8, ptr %i.x, i64 %.1.lcssa.i37.i.i.i.i.i
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.yk, align 1
  %i.yl = load i8, ptr %i.r, align 8, !tbaa !313
  %i.ym = zext i8 %i.yl to i64
  %i.yn = add nuw nsw i64 %i.ym, 4
  br label %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.yo = sub nuw nsw i64 8, %.1.lcssa.i37.i.i.i.i.i ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.x, i64 %.1.lcssa.i37.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yp, ptr nonnull align 4 %1, i64 %i.yo, i1 false)
  %.0.copyload.i.i10.i.i.i.i.i = load i64, ptr %i.x, align 8 ; 2 uses
  %i.yq = xor i64 %.0.copyload.i.i10.i.i.i.i.i, %i.yf ; 3 uses
  %i.yr = add i64 %.promoted.i.i11.i.i.i.i.i, %.promoted5.i.i12.i.i.i.i.i ; 3 uses
  %i.ys = call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i.i12.i.i.i.i.i, i64 %.promoted5.i.i12.i.i.i.i.i, i64 13)
  %i.yt = xor i64 %i.yr, %i.ys                    ; 3 uses
  %i.yu = call noundef i64 @llvm.fshl.i64(i64 %i.yr, i64 %i.yr, i64 32)
  %i.yv = add i64 %i.yq, %.promoted6.i.i13.i.i.i.i.i ; 2 uses
  %i.yw = call noundef i64 @llvm.fshl.i64(i64 %i.yq, i64 %i.yq, i64 16)
  %i.yx = xor i64 %i.yv, %i.yw                    ; 3 uses
  %i.yy = add i64 %i.yx, %i.yu                    ; 2 uses
  %i.yz = call noundef i64 @llvm.fshl.i64(i64 %i.yx, i64 %i.yx, i64 21)
  %i.za = xor i64 %i.yz, %i.yy                    ; 2 uses
  %i.zb = add i64 %i.yv, %i.yt                    ; 3 uses
  %i.zc = call noundef i64 @llvm.fshl.i64(i64 %i.yt, i64 %i.yt, i64 17)
  %i.zd = xor i64 %i.zb, %i.zc                    ; 2 uses
  %i.ze = call noundef i64 @llvm.fshl.i64(i64 %i.zb, i64 %i.zb, i64 32) ; 2 uses
  store i64 %i.zd, ptr %i.t, align 8, !tbaa !318
  store i64 %i.ze, ptr %i.u, align 8, !tbaa !319
  store i64 %i.za, ptr %i.v, align 8, !tbaa !317
  %i.zf = xor i64 %i.yy, %.0.copyload.i.i10.i.i.i.i.i ; 2 uses
  store i64 %i.zf, ptr %8, align 8, !tbaa !320
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.zh = add nsw i64 %.1.lcssa.i37.i.i.i.i.i, -4
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ap, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i
  %.promoted6.i.i159.i.i.i.i.i = phi i64 [ %i.ze, %bb.ap ], [ %.promoted6.i.i13.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ]
  %.promoted5.i.i157.i.i.i.i.i = phi i64 [ %i.zd, %bb.ap ], [ %.promoted5.i.i12.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ]
  %.promoted.i.i155.i.i.i.i.i = phi i64 [ %i.zf, %bb.ap ], [ %.promoted.i.i11.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ]
  %i.zi = phi i64 [ %i.za, %bb.ap ], [ %i.yf, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ]
  %.019.i14.i.i.i.i.i = phi ptr [ %i.zg, %bb.ap ], [ %1, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ]
  %.0.i15.i.i.i.i.i = phi i64 [ %i.zh, %bb.ap ], [ 4, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit48.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 1 %.019.i14.i.i.i.i.i, i64 %.0.i15.i.i.i.i.i, i1 false)
  br label %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i

_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ao
  %.promoted6.i.i.i.i.i.i.i = phi i64 [ %.promoted6.i.i159.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.promoted6.i.i13.i.i.i.i.i, %bb.ao ] ; 2 uses
  %.promoted5.i.i.i.i.i.i.i = phi i64 [ %.promoted5.i.i157.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.promoted5.i.i12.i.i.i.i.i, %bb.ao ] ; 4 uses
  %.promoted.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i155.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.promoted.i.i11.i.i.i.i.i, %bb.ao ] ; 2 uses
  %i.zj = phi i64 [ %i.zi, %._crit_edge.i.i.i.i.i.i ], [ %i.yf, %bb.ao ] ; 2 uses
  %storemerge.in.i.i.i.i.i.i = phi i64 [ %.0.i15.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.yn, %bb.ao ] ; 2 uses
  %storemerge.i18.i.i.i.i.i = trunc i64 %storemerge.in.i.i.i.i.i.i to i8 ; 2 uses
  store i8 %storemerge.i18.i.i.i.i.i, ptr %i.r, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.0159.0228.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.copyload.i.i.i111.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zk, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.copyload.i.i.i111.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !75
  %i.zl = load i8, ptr %i.s, align 1, !tbaa !314
  %i.zm = add i8 %i.zl, 8
  store i8 %i.zm, ptr %i.s, align 1, !tbaa !314
  %.not.i.i.i.i.i.i = icmp eq i8 %storemerge.i18.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.aq

bb.aq:                                            ; preds = %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i
  %i.zn = and i64 %storemerge.in.i.i.i.i.i.i, 255 ; 5 uses
  %i.zo = sub nsw i64 8, %i.zn                    ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.zn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zp, ptr nonnull align 8 %i.a, i64 %i.zo, i1 false)
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8 ; 2 uses
  %i.zq = xor i64 %.0.copyload.i.i.i.i.i.i.i, %i.zj ; 3 uses
  %i.zr = add i64 %.promoted.i.i.i.i.i.i.i, %.promoted5.i.i.i.i.i.i.i ; 3 uses
  %i.zs = call noundef i64 @llvm.fshl.i64(i64 %.promoted5.i.i.i.i.i.i.i, i64 %.promoted5.i.i.i.i.i.i.i, i64 13)
  %i.zt = xor i64 %i.zr, %i.zs                    ; 3 uses
  %i.zu = call noundef i64 @llvm.fshl.i64(i64 %i.zr, i64 %i.zr, i64 32)
  %i.zv = add i64 %i.zq, %.promoted6.i.i.i.i.i.i.i ; 2 uses
  %i.zw = call noundef i64 @llvm.fshl.i64(i64 %i.zq, i64 %i.zq, i64 16)
  %i.zx = xor i64 %i.zv, %i.zw                    ; 3 uses
  %i.zy = add i64 %i.zx, %i.zu                    ; 2 uses
  %i.zz = call noundef i64 @llvm.fshl.i64(i64 %i.zx, i64 %i.zx, i64 21)
  %i.aaa = xor i64 %i.zz, %i.zy                   ; 2 uses
  %i.aab = add i64 %i.zv, %i.zt                   ; 3 uses
  %i.aac = call noundef i64 @llvm.fshl.i64(i64 %i.zt, i64 %i.zt, i64 17)
  %i.aad = xor i64 %i.aab, %i.aac                 ; 2 uses
  %i.aae = call noundef i64 @llvm.fshl.i64(i64 %i.aab, i64 %i.aab, i64 32) ; 2 uses
  store i64 %i.aad, ptr %i.t, align 8, !tbaa !318
  store i64 %i.aae, ptr %i.u, align 8, !tbaa !319
  store i64 %i.aaa, ptr %i.v, align 8, !tbaa !317
  %i.aaf = xor i64 %i.zy, %.0.copyload.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.aaf, ptr %8, align 8, !tbaa !320
  %i.aag = getelementptr inbounds i8, ptr %i.a, i64 %i.zo ; 2 uses
  %i.aah = icmp samesign ugt i64 %i.zn, 7
  br i1 %i.aah, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.aq, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i
  %.ph255 = phi i64 [ %.promoted6.i.i.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.aae, %bb.aq ]
  %.ph256 = phi i64 [ %.promoted5.i.i.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.aad, %bb.aq ]
  %.ph257 = phi i64 [ %.promoted.i.i.i.i.i.i.i, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.aaf, %bb.aq ]
  %.ph258 = phi i64 [ %i.zj, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.aaa, %bb.aq ]
  %.127.i.i.i.i.i.i.ph = phi i64 [ 8, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.zn, %bb.aq ]
  %.12026.i.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit27.i.i.i.i.i ], [ %i.aag, %bb.aq ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.aai = phi i64 [ %i.aba, %.lr.ph.i.i.i.i.i.i ], [ %.ph255, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.aaj = phi i64 [ %i.aaz, %.lr.ph.i.i.i.i.i.i ], [ %.ph256, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aak = phi i64 [ %i.abb, %.lr.ph.i.i.i.i.i.i ], [ %.ph257, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.aal = phi i64 [ %i.aaw, %.lr.ph.i.i.i.i.i.i ], [ %.ph258, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.127.i.i.i.i.i.i = phi i64 [ %i.abd, %.lr.ph.i.i.i.i.i.i ], [ %.127.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.12026.i.i.i.i.i.i = phi ptr [ %i.abc, %.lr.ph.i.i.i.i.i.i ], [ %.12026.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0.copyload.i22.i.i.i.i.i.i = load i64, ptr %.12026.i.i.i.i.i.i, align 1 ; 2 uses
  %i.aam = xor i64 %.0.copyload.i22.i.i.i.i.i.i, %i.aal ; 3 uses
  %i.aan = add i64 %i.aak, %i.aaj                 ; 3 uses
  %i.aao = call noundef i64 @llvm.fshl.i64(i64 %i.aaj, i64 %i.aaj, i64 13)
  %i.aap = xor i64 %i.aan, %i.aao                 ; 3 uses
  %i.aaq = call noundef i64 @llvm.fshl.i64(i64 %i.aan, i64 %i.aan, i64 32)
  %i.aar = add i64 %i.aam, %i.aai                 ; 2 uses
  %i.aas = call noundef i64 @llvm.fshl.i64(i64 %i.aam, i64 %i.aam, i64 16)
  %i.aat = xor i64 %i.aar, %i.aas                 ; 3 uses
  %i.aau = add i64 %i.aat, %i.aaq                 ; 2 uses
  %i.aav = call noundef i64 @llvm.fshl.i64(i64 %i.aat, i64 %i.aat, i64 21)
  %i.aaw = xor i64 %i.aav, %i.aau                 ; 2 uses
  %i.aax = add i64 %i.aar, %i.aap                 ; 3 uses
  %i.aay = call noundef i64 @llvm.fshl.i64(i64 %i.aap, i64 %i.aap, i64 17)
  %i.aaz = xor i64 %i.aax, %i.aay                 ; 2 uses
  %i.aba = call noundef i64 @llvm.fshl.i64(i64 %i.aax, i64 %i.aax, i64 32) ; 2 uses
  %i.abb = xor i64 %i.aau, %.0.copyload.i22.i.i.i.i.i.i ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.12026.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.abd = add nsw i64 %.127.i.i.i.i.i.i, -8      ; 2 uses
  %i.abe = icmp samesign ugt i64 %.127.i.i.i.i.i.i, 15
  br i1 %i.abe, label %.lr.ph.i.i.i.i.i.i, label %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.loopexit.i.i.i.i.i, !llvm.loop !6

_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store i64 %i.aaz, ptr %i.t, align 8, !tbaa !318
  store i64 %i.aba, ptr %i.u, align 8, !tbaa !319
  store i64 %i.aaw, ptr %i.v, align 8, !tbaa !317
  store i64 %i.abb, ptr %8, align 8, !tbaa !320
  br label %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.i.i.i.i.i

_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.i.i.i.i.i: ; preds = %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.loopexit.i.i.i.i.i, %bb.aq
  %.120.lcssa.i.i.i.i.i.i = phi ptr [ %i.aag, %bb.aq ], [ %i.abc, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.loopexit.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i.i = phi i64 [ %i.zn, %bb.aq ], [ %i.abd, %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 1 %.120.lcssa.i.i.i.i.i.i, i64 %.1.lcssa.i.i.i.i.i.i, i1 false)
  %storemerge.i.i.i.i.i.i = trunc nuw nsw i64 %.1.lcssa.i.i.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.abf = load ptr, ptr %i.ah, align 8, !tbaa !249, !nonnull !172, !align !285
  %i.abg = getelementptr inbounds nuw i8, ptr %.sroa.0159.0228.i.i.i.i.i.i.i.i.i.i.i, i64 12
  %.0.copyload.i112.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.abg, align 1
  %i.abh = zext i32 %.0.copyload.i112.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 56
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !367
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.abh ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !369
  %i.abm = ptrtoint ptr %i.abk to i64
  %i.abn = sext i32 %i.abl to i64
  %i.abo = shl nsw i64 %i.abn, 2
  %i.abp = add nsw i64 %i.abo, %i.abm
  %i.abq = inttoptr i64 %i.abp to ptr
  call fastcc void @_ZZN4moldL14compute_digestINS_6X86_64EEENS_6DigestERNS_7ContextIT_EERNS_12InputSectionIS4_EEENKUlRNS_6SymbolIS1_EEE_clESC_(ptr nonnull %9, ptr noundef nonnull align 8 dereferenceable(36) %i.abq)
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.0159.0228.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.fj
  br i1 %i.abs, label %_ZN3tbb6detail2d06invokeIRKZN4moldL15compute_digestsINS3_6X86_64EEESt6vectorINS3_6DigestESaIS7_EERNS3_7ContextIT_EESt4spanIPNS3_12InputSectionISB_EELm18446744073709551615EEEUllE_JRlEEENSt13invoke_resultISB_JDpT0_EE4typeEOSB_DpOSO_.exit.i.i.i.i.i, label %.lr.ph229.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d06invokeIRKZN4moldL15compute_digestsINS3_6X86_64EEESt6vectorINS3_6DigestESaIS7_EERNS3_7ContextIT_EESt4spanIPNS3_12InputSectionISB_EELm18446744073709551615EEEUllE_JRlEEENSt13invoke_resultISB_JDpT0_EE4typeEOSB_DpOSO_.exit.i.i.i.i.i: ; preds = %_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl.exit.i.i.i.i.i, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit85.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge227.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6finishEPv(ptr noundef nonnull align 8 dereferenceable(42) %8, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.abt = load <2 x i64>, ptr %7, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.abu = load ptr, ptr %i.aa, align 8, !tbaa !874, !nonnull !172, !align !285
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !137
  %i.abw = getelementptr inbounds nuw [16 x i8], ptr %i.abv, i64 %storemerge74.i.i.i.i.i
  store <2 x i64> %i.abt, ptr %i.abw, align 8, !tbaa !75
  %i.abx = add nsw i64 %.075.i.i.i.i.i, 1         ; 2 uses
  %i.aby = add nsw i64 %storemerge74.i.i.i.i.i, %i.l
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.abx, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL15compute_digestsINS5_6X86_64EEESt6vectorINS5_6DigestESaIS9_EERNS5_7ContextIT_EESt4spanIPNS5_12InputSectionISD_EELm18446744073709551615EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultISD_JDpT0_EE4typeEOSD_DpOST_.exit, label %bb.b, !llvm.loop !865

_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL15compute_digestsINS5_6X86_64EEESt6vectorINS5_6DigestESaIS9_EERNS5_7ContextIT_EESt4spanIPNS5_12InputSectionISD_EELm18446744073709551615EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultISD_JDpT0_EE4typeEOSD_DpOST_.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL15compute_digestsINS3_6X86_64EEESt6vectorINS3_6DigestESaIS7_EERNS3_7ContextIT_EESt4spanIPNS3_12InputSectionISB_EELm18446744073709551615EEEUllE_JRlEEENSt13invoke_resultISB_JDpT0_EE4typeEOSB_DpOSO_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc void @_ZZN4moldL14compute_digestINS_6X86_64EEENS_6DigestERNS_7ContextIT_EERNS_12InputSectionIS4_EEENKUlRNS_6SymbolIS1_EEE_clESC_(ptr nofree readonly captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = load i64, ptr %0, align 8, !tbaa !371    ; 3 uses
  %i.k = and i64 %i.j, 3                          ; 2 uses
  %.not3.i.i = icmp eq i64 %i.k, 0
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.0.i.i = select i1 %.not3.i.i, ptr %i.l, ptr null ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !876  ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = sub i64 0, %i.o
  %.not1 = icmp eq i64 %i.q, %i.r
  %.not = select i1 %.not.i, i1 true, i1 %.not1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.t = load i16, ptr %i.s, align 1
  %i.u = and i16 %i.t, 4
  %.not13 = icmp eq i16 %i.u, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val23 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 49, ptr %i.i, align 1, !tbaa !51
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val23, ptr noundef nonnull %i.i, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.v = ptrtoint ptr %0 to i64
  %.val18 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.v, ptr %i.h, align 8, !tbaa !75
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val18, ptr noundef nonnull %i.h, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %.not3.i.i24 = icmp ne i64 %i.k, 2
  %i.w = and i64 %i.j, -4                         ; 2 uses
  %.not142 = icmp eq i64 %i.w, 0
  %.not14 = or i1 %.not3.i.i24, %.not142
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val22 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 50, ptr %i.g, align 1, !tbaa !51
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val22, ptr noundef nonnull %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val17 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.w, ptr %i.f, align 8, !tbaa !75
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val17, ptr noundef nonnull %i.f, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not15 = icmp eq ptr %.0.i.i, null
  br i1 %.not15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val21 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 51, ptr %i.e, align 1, !tbaa !51
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val21, ptr noundef nonnull %i.e, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.y = load i8, ptr %i.x, align 4, !tbaa !337, !range !171, !noundef !172
  %i.z = trunc nuw i8 %i.y to i1
  %.val20 = load ptr, ptr %.0.val, align 8, !tbaa !878 ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 52, ptr %i.d, align 1, !tbaa !51
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val20, ptr noundef nonnull %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 53, ptr %i.c, align 1, !tbaa !51
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val20, ptr noundef nonnull %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = ptrtoint ptr %.0.i.i to i64
  %.val16 = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !75
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val16, ptr noundef nonnull %i.b, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.g, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !883
  %.val = load ptr, ptr %.0.val, align 8, !tbaa !878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !75
  call void @_ZN11SipHashTmplILi1ELi3ELi128EE6updateEPvl(ptr noundef nonnull align 8 dereferenceable(42) %.val, ptr noundef nonnull %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare void @_ZN4mold11decode_crelINS_6X86_64EEENS_10ExactArrayINS_6ElfRelIT_EEEERNS_7ContextIS4_EERNS_10ObjectFileIS4_EERKNS_7ElfShdrIS4_EE(ptr dead_on_unwind writable sret(%"class.mold::ExactArray") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 1 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 1 dereferenceable(64) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !884  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.d, align 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !886
  %i.g = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %1) #13
  %i.i = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.26)
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #24
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %bb.a
  %i.l = urem i64 %.0.copyload.i10.i, 24
  %i.m = udiv i64 %.0.copyload.i10.i, 24
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #13
  %i.n = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.o = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.25) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #24
  unreachable

bb.d:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !887
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.copyload.i.i
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.r, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.m, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %1) #13 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #13
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.b) #13 ; 0 uses
  ret ptr %0
}

end_hunk_3
begin_hunk_4_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINS6_6X86_64EEEvRNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISA_EELm18446744073709551615EERSt6vectorIjSaIjEESL_EUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a
  store ptr null, ptr %1, align 8, !tbaa !352
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !352 ; 2 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !352
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !360
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #23
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !352 ; 2 uses
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !360
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !360
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i.i.i.i.i.i.i) #23
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.pre10.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !352
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.bl = phi ptr [ %.pre10.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.be, %bb.d ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !360
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.bo = call { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.au, ptr noundef nonnull align 8 dereferenceable(14448) %i.aq, ptr noundef nonnull align 1 dereferenceable(64) %i.ay) ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.g ], [ %i.bl, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.g ], [ %i.bn, %bb.f ] ; 2 uses
  %.idx66.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx66.i.i.i.i.i.i.i.i.i.i
  %i.bs = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !249, !nonnull !172, !align !285
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !367
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph61.i.i.i.i.i.i.i.i.i.i
  %.sroa.049.060.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph61.i.i.i.i.i.i.i.i.i.i ], [ %i.cy, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.049.060.i.i.i.i.i.i.i.i.i.i, i64 12
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !362
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !352 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75 ; 4 uses
  %i.cc = load i32, ptr %.sroa.049.060.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !365
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !288
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cg, align 1
  %i.ch = add i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.049.060.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !366
  %i.cm = zext i32 %i.cl to i64                   ; 6 uses
  %i.cn = icmp ugt i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %bb.i
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cq, %bb.i ], [ %i.cm, %bb.h ] ; 3 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %.0.copyload.i.i28.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.co, align 1
  %i.cp = icmp ult i64 %.0.copyload.i.i28.i.i.i.i.i.i.i.i.i.i, %i.cj
  br i1 %i.cp, label %bb.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = add nuw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cq, %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !15

_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.h ], [ %.09.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.i ]
  %i.cr = sub nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  %i.ct = sub i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.cm
  %.0.i.i27.i.i.i.i.i.i.i.i.i.i = select i1 %i.cs, i64 %i.ct, i64 %i.cr
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cm ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0.i.i27.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.cw = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.i, 24
  br i1 %i.cw, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.041.057.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cx = load ptr, ptr %i.an, align 8, !tbaa !367
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m, %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.049.060.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.aj
  br i1 %i.cz, label %._crit_edge62.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.041.059.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.041.057.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.041.0.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %.pn58.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.041.059.i.i.i.i.i.i.i.i.i.i, %bb.m ]
  %i.da = getelementptr inbounds nuw i8, ptr %.pn58.i.i.i.i.i.i.i.i.i.i, i64 36
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.da, align 1
  %i.db = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !369
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sext i32 %i.dd to i64
  %i.dg = shl nsw i64 %i.df, 2
  %i.dh = add nsw i64 %i.dg, %i.de
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !371 ; 3 uses
  %i.dk = and i64 %i.dj, 3
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.dk, 0
  %.not2455.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dj, 0
  %.not24.i.i.i.i.i.i.i.i.i.i = or i1 %.not2455.i.i.i.i.i.i.i.i.i.i, %.not3.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = inttoptr i64 %i.dj to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !337, !range !171, !noundef !172
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = load ptr, ptr %i.ao, align 8, !tbaa !902, !nonnull !172, !align !285
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !146
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %storemerge2.i.i.i.i.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !147
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !147
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.041.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.059.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dv = icmp eq ptr %.sroa.041.0.i.i.i.i.i.i.i.i.i.i, %i.cv
  br i1 %i.dv, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.n:                                             ; preds = %bb.q, %.lr.ph64.i.i.i.i.i.i.i.i.i.i
  %.sroa.035.063.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i.i ], [ %i.er, %bb.q ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.035.063.i.i.i.i.i.i.i.i.i.i, i64 12
  %.0.copyload.i32.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dw, align 1
  %i.dx = zext i32 %.0.copyload.i32.i.i.i.i.i.i.i.i.i.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !369
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sext i32 %i.dz to i64
  %i.ec = shl nsw i64 %i.eb, 2
  %i.ed = add nsw i64 %i.ec, %i.ea
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !371 ; 3 uses
  %i.eg = and i64 %i.ef, 3
  %.not3.i.i33.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.eg, 0
  %.not56.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ef, 0
  %.not.i.i.i.i.i.i.i.i.i.i = or i1 %.not56.i.i.i.i.i.i.i.i.i.i, %.not3.i.i33.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = inttoptr i64 %i.ef to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 76
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !337, !range !171, !noundef !172
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.el = load ptr, ptr %i.bw, align 8, !tbaa !902, !nonnull !172, !align !285
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !146
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %storemerge2.i.i.i.i.i
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !147
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !147
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.035.063.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.br
  br i1 %i.es, label %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, label %bb.n

_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i: ; preds = %bb.q, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge62.i.i.i.i.i.i.i.i.i.i
  %i.et = add nsw i64 %.03.i.i.i.i.i, 1           ; 2 uses
  %i.eu = add nsw i64 %storemerge2.i.i.i.i.i, %i.c
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.et, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL12gather_edgesINS5_6X86_64EEEvRNS5_7ContextIT_EESt4spanIPNS5_12InputSectionIS9_EELm18446744073709551615EERSt6vectorIjSaIjEESK_EUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOST_.exit, label %bb.b, !llvm.loop !895

_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL12gather_edgesINS5_6X86_64EEEvRNS5_7ContextIT_EESt4spanIPNS5_12InputSectionIS9_EELm18446744073709551615EERSt6vectorIjSaIjEESK_EUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOST_.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINS6_6X86_64EEEvRNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISA_EELm18446744073709551615EERSt6vectorIjSaIjEESL_EUllE0_lEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINS6_6X86_64EEEvRNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISA_EELm18446744073709551615EERSt6vectorIjSaIjEESL_EUllE0_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !306  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !114
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !307
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !113
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !113
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !205 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !203 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !204 ; 4 uses
  %i.ab = sub nsw i64 %i.y, %i.aa                 ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !113 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !113
  store i64 0, ptr %i.g, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !98
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !903 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINS6_6X86_64EEEvRNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISA_EELm18446744073709551615EERSt6vectorIjSaIjEESL_EUllE0_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !203 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !203
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !204 ; 2 uses
  %i.ar = sub nsw i64 %i.ao, %i.aq
  %i.as = sdiv i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, %i.aq                ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !203
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !204
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !205
  store i64 %i.av, ptr %i.au, align 16, !tbaa !205
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !155
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !114
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !114
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !113
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !115
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !115
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !904 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !308
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !115
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !115
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !309
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !155
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !155
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !310
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #13, !inline_history !904
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !205 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !203 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !204 ; 4 uses
  %i.bp = sub nsw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !113 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !113
  store i64 0, ptr %i.g, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !905

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINSC_6X86_64EEEvRNSC_7ContextIT_EESt4spanIPNSC_12InputSectionISG_EELm18446744073709551615EERSt6vectorIjSaIjEESR_EUllE0_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !113
  %.not.i12.i = icmp eq i8 %i.ca, 0
end_hunk_4
begin_hunk_5_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL12gather_edgesINS6_6X86_64EEEvRNS6_7ContextIT_EESt4spanIPNS6_12InputSectionISA_EELm18446744073709551615EERSt6vectorIjSaIjEESL_EUllE0_lEEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a
_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bn = load i64, ptr %i.i, align 8, !tbaa !360
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !360
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #23
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !352 ; 2 uses
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !360
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !360
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i.i.i.i.i.i.i) #23
  br label %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N4mold6ElfRelINS0_6X86_64EEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEEaSEOS4_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.pre10.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !352
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.br = phi ptr [ %.pre10.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mold10ExactArrayINS_6ElfRelINS_6X86_64EEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.d ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !360
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.bu = call { ptr, i64 } @_ZN4mold9InputFileINS_6X86_64EE8get_dataINS_6ElfRelIS1_EEEESt4spanIT_Lm18446744073709551615EERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(312) %i.ba, ptr noundef nonnull align 8 dereferenceable(14448) %i.aw, ptr noundef nonnull align 1 dereferenceable(64) %i.be) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1
  br label %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.g ], [ %i.br, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.g ], [ %i.bt, %bb.f ] ; 2 uses
  %.idx74.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx74.i.i.i.i.i.i.i.i.i.i
  %i.by = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE0_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i.i.i.i.i.i

.lr.ph72.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !249, !nonnull !172, !align !285
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !367
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph67.i.i.i.i.i.i.i.i.i.i
  %.066.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph67.i.i.i.i.i.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.053.065.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph67.i.i.i.i.i.i.i.i.i.i ], [ %i.de, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.053.065.i.i.i.i.i.i.i.i.i.i, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !362
  %i.cf = zext i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.as, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !352 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !75 ; 4 uses
  %i.ci = load i32, ptr %.sroa.053.065.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !365
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !288
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cm, align 1
  %i.cn = add i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.053.065.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !366
  %i.cs = zext i32 %i.cr to i64                   ; 6 uses
  %i.ct = icmp ugt i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %bb.i
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.i ], [ %i.cs, %bb.h ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 1
  %i.cv = icmp ult i64 %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i, %i.cp
  br i1 %i.cv, label %bb.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cw = add nuw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cw, %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !15

_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.h ], [ %.09.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.i ]
  %i.cx = sub nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.cs ; 2 uses
  %i.cy = icmp eq i64 %i.cx, -1
  %i.cz = sub i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.cs
  %.0.i.i31.i.i.i.i.i.i.i.i.i.i = select i1 %i.cy, i64 %i.cz, i64 %i.cx
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cs ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0.i.i31.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.dc = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.i, 24
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.045.061.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !367
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m, %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.066.i.i.i.i.i.i.i.i.i.i, %_ZNK4mold9FdeRecordINS_6X86_64EE8get_relsERNS_10ObjectFileIS1_EE.exit.i.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.053.065.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ap
  br i1 %i.df, label %._crit_edge68.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.045.064.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.045.061.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.045.0.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %.163.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.066.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 4 uses
  %.pn62.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.045.064.i.i.i.i.i.i.i.i.i.i, %bb.m ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn62.i.i.i.i.i.i.i.i.i.i, i64 36
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dg, align 1
  %i.dh = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !369
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sext i32 %i.dj to i64
  %i.dm = shl nsw i64 %i.dl, 2
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !371 ; 3 uses
  %i.dq = and i64 %i.dp, 3
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.dq, 0
  %i.dr = inttoptr i64 %i.dp to ptr               ; 2 uses
  %.not2859.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dp, 0
  %.not28.i.i.i.i.i.i.i.i.i.i = or i1 %.not2859.i.i.i.i.i.i.i.i.i.i, %.not3.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !337, !range !171, !noundef !172
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !338
  %i.dx = load ptr, ptr %i.au, align 8, !tbaa !918, !nonnull !172, !align !285
  %i.dy = add nsw i64 %.163.i.i.i.i.i.i.i.i.i.i, 1
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !146
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.163.i.i.i.i.i.i.i.i.i.i
  store i32 %i.dw, ptr %i.ea, align 4, !tbaa !147
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dy, %bb.l ], [ %.163.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.163.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.045.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.064.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.eb = icmp eq ptr %.sroa.045.0.i.i.i.i.i.i.i.i.i.i, %i.db
  br i1 %i.eb, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.n:                                             ; preds = %bb.q, %.lr.ph72.i.i.i.i.i.i.i.i.i.i
  %.371.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i.i.i ], [ %.4.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 4 uses
  %.sroa.039.070.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i.i.i ], [ %i.ex, %bb.q ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i.i.i.i.i.i.i.i.i.i, i64 12
  %.0.copyload.i36.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ec, align 1
  %i.ed = zext i32 %.0.copyload.i36.i.i.i.i.i.i.i.i.i.i to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !369
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sext i32 %i.ef to i64
  %i.ei = shl nsw i64 %i.eh, 2
  %i.ej = add nsw i64 %i.ei, %i.eg
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !371 ; 3 uses
  %i.em = and i64 %i.el, 3
  %.not3.i.i37.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.em, 0
  %i.en = inttoptr i64 %i.el to ptr               ; 2 uses
  %.not60.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.el, 0
  %.not.i.i.i.i.i.i.i.i.i.i = or i1 %.not60.i.i.i.i.i.i.i.i.i.i, %.not3.i.i37.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 76
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !337, !range !171, !noundef !172
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.es = load i32, ptr %i.er, align 8, !tbaa !338
  %i.et = load ptr, ptr %i.cc, align 8, !tbaa !918, !nonnull !172, !align !285
  %i.eu = add nsw i64 %.371.i.i.i.i.i.i.i.i.i.i, 1
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !146
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.371.i.i.i.i.i.i.i.i.i.i
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !147
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.4.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eu, %bb.p ], [ %.371.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.371.i.i.i.i.i.i.i.i.i.i, %bb.n ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.039.070.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.bx
  br i1 %i.ey, label %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE0_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, label %bb.n

_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE0_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i: ; preds = %bb.q, %_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge68.i.i.i.i.i.i.i.i.i.i
  %i.ez = add nsw i64 %.03.i.i.i.i.i, 1           ; 2 uses
  %i.fa = add nsw i64 %storemerge2.i.i.i.i.i, %i.c
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ez, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL12gather_edgesINS5_6X86_64EEEvRNS5_7ContextIT_EESt4spanIPNS5_12InputSectionIS9_EELm18446744073709551615EERSt6vectorIjSaIjEESK_EUllE0_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOST_.exit, label %bb.b, !llvm.loop !910

_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL12gather_edgesINS5_6X86_64EEEvRNS5_7ContextIT_EESt4spanIPNS5_12InputSectionIS9_EELm18446744073709551615EERSt6vectorIjSaIjEESK_EUllE0_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOST_.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL12gather_edgesINS3_6X86_64EEEvRNS3_7ContextIT_EESt4spanIPNS3_12InputSectionIS7_EELm18446744073709551615EERSt6vectorIjSaIjEESI_EUllE0_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSO_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZNK3tbb6detail2d113callback_leafINS1_20construct_by_defaultIlEEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 8) #13, !inline_history !919 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d113callback_leafINS1_20construct_by_defaultIlEEEE, i64 16), ptr %i.a, align 8, !tbaa !100
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_leafINS1_20construct_by_defaultIlEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13, !inline_history !920
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_leafINS1_20construct_by_defaultIlEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113callback_leafINS1_20construct_by_defaultIlEEE9constructEPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  store i64 0, ptr %1, align 8, !tbaa !75
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %4 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %5 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !306  ; 2 uses
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.f = icmp eq i16 %i.c, %i.e
  br i1 %i.f, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !114
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.h, align 8, !tbaa !114
  %i.j = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !307
  %.not7.i = icmp eq i16 %i.j, %i.l
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 16, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store atomic i8 1, ptr %i.s monotonic, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !113
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.u, i8 1)
  %i.v = add i8 %spec.select.i, 1
  store i8 %i.v, ptr %i.t, align 4, !tbaa !113
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = load i64, ptr %i.x, align 16, !tbaa !205 ; 4 uses
  %i.z = load i64, ptr %i.w, align 64, !tbaa !203 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !204 ; 4 uses
  %i.ac = sub nsw i64 %i.z, %i.ab                 ; 4 uses
  %i.ad = icmp ult i64 %i.y, %i.ac
  br i1 %i.ad, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1
  br i1 %i.af, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !113 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add i8 %i.ah, -1
  store i8 %i.ai, ptr %i.ag, align 4, !tbaa !113
  store i64 0, ptr %i.h, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !98
  %i.am = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !921 ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.am, align 64, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = load i64, ptr %i.w, align 64, !tbaa !203 ; 2 uses
  store i64 %i.ap, ptr %i.ao, align 64, !tbaa !203
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.as = sub nsw i64 %i.ap, %i.ar
  %i.at = sdiv i64 %i.as, 2
  %i.au = add nsw i64 %i.at, %i.ar                ; 2 uses
  store i64 %i.au, ptr %i.w, align 64, !tbaa !203
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.aw = load i64, ptr %i.x, align 16, !tbaa !205
  store i64 %i.aw, ptr %i.av, align 16, !tbaa !205
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  store ptr null, ptr %i.ay, align 16, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !114
  %i.bb = lshr i64 %i.ba, 1                       ; 2 uses
  store i64 %i.bb, ptr %i.h, align 8, !tbaa !114
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store i32 2, ptr %i.bc, align 64, !tbaa !112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 132
  %i.be = load i8, ptr %i.aj, align 4, !tbaa !113
  store i8 %i.be, ptr %i.bd, align 4, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.bg = load i64, ptr %5, align 8, !tbaa !115
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !115
  %i.bh = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !922 ; 6 uses
  %i.bi = load ptr, ptr %i.al, align 16, !tbaa !308
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !119
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 2, ptr %i.bj, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %5, align 8, !tbaa !115
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !115
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i8 0, ptr %i.bm, align 8, !tbaa !309
  store ptr %i.bh, ptr %i.al, align 16, !tbaa !195
  store ptr %i.bh, ptr %i.ay, align 16, !tbaa !195
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !310
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.am, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #13, !inline_history !922
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.bn = load i64, ptr %i.x, align 16, !tbaa !205 ; 4 uses
  %i.bo = load i64, ptr %i.w, align 64, !tbaa !203 ; 4 uses
  %i.bp = load i64, ptr %i.aa, align 8, !tbaa !204 ; 4 uses
  %i.bq = sub nsw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = icmp ult i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !114 ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 1
  br i1 %i.bt, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load i8, ptr %i.aj, align 4, !tbaa !113 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bu, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add i8 %i.bu, -1
  store i8 %i.bv, ptr %i.aj, align 4, !tbaa !113
  store i64 0, ptr %i.h, align 8, !tbaa !114
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !923

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ac, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.bq, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bq, %bb.k ], [ %i.bq, %bb.l ]
  %i.bw = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ] ; 3 uses
  %i.bx = phi i64 [ %i.z, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit ], [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %i.by = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSC_6X86_64EEElSt4spanINSC_6DigestELm18446744073709551615EESF_IPNSC_12InputSectionIT_EELm18446744073709551615EERNSC_9DigestMapISJ_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSJ_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bz = icmp ult i64 %i.by, %.pre-phi.i
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !113
  %.not.i12.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !932 ; 2 uses
  %i.cf = icmp slt i64 %i.bw, %i.bx
  br i1 %i.cf, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = load i64, ptr %i.cg, align 32, !tbaa !933
  %i.ci = mul nsw i64 %i.ce, %i.bw
  %i.cj = add nsw i64 %i.ch, %i.ci
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i.i.i.i ]
  %storemerge2.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !934, !nonnull !172, !align !285 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !936, !nonnull !172, !align !285
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !937, !nonnull !172, !align !285
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !316
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %storemerge2.i.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !938, !nonnull !172, !align !285
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !340
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %storemerge2.i.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !130
  %i.cv = call noundef zeroext i1 @_ZN4mold9DigestMapINS_6X86_64EE6insertERKNS_6DigestEPNS_12InputSectionIS1_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef %i.cu), !inline_history !924
  br i1 %i.cv, label %bb.p, label %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !939, !nonnull !172, !align !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !924 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !75
  %i.da = add nsw i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !75
  br label %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %i.db = add nsw i64 %.03.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.dc = add nsw i64 %storemerge2.i.i.i.i.i.i.i.i, %i.ce
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, %i.bx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !925

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 6 uses
  store i8 0, ptr %i.dd, align 1, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !311
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.r

bb.r:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %bb.q
  %i.dj = phi i8 [ %i.ns, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.q ] ; 3 uses
  %i.dk = phi i8 [ %i.nt, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 1, %bb.q ] ; 4 uses
  %i.dl = phi i8 [ %i.nu, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.dm = load i8, ptr %i.ca, align 4, !tbaa !113 ; 4 uses
  %i.dn = icmp ult i8 %i.dk, 8
  br i1 %i.dn, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %.phi.trans.insert.i.i.i = zext i8 %i.dl to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !51
  %i.do = icmp ult i8 %.pre.i.i.i, %i.dm
  br i1 %i.do, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %bb.t
  %i.dp = icmp ult i8 %i.ep, %i.dm
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i, !llvm.loop !4

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %i.dq = phi i8 [ %i.ed, %bb.s ], [ %i.dl, %.lr.ph.i.i.i ] ; 3 uses
  %i.dr = phi i8 [ %i.er, %bb.s ], [ %i.dk, %.lr.ph.i.i.i ] ; 2 uses
  %i.ds = zext i8 %i.dq to i64                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.ds ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !205
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !203
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !204
  %i.dz = sub nsw i64 %i.dw, %i.dy
  %i.ea = icmp ult i64 %i.dv, %i.dz
  br i1 %i.ea, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ds ; 2 uses
  %i.ec = add nuw i8 %i.dq, 1
  %i.ed = and i8 %i.ec, 7                         ; 5 uses
  %i.ee = zext nneg i8 %i.ed to i64               ; 3 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.ee ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false), !tbaa.struct !311
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !203 ; 2 uses
  store i64 %i.eg, ptr %i.dt, align 8, !tbaa !203
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !204 ; 2 uses
  %i.ej = sub nsw i64 %i.eg, %i.ei
  %i.ek = sdiv i64 %i.ej, 2
  %i.el = add nsw i64 %i.ek, %i.ei                ; 2 uses
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !203
  store i64 %i.el, ptr %i.dx, align 8, !tbaa !204
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !205
  store i64 %i.en, ptr %i.du, align 8, !tbaa !205
  %i.eo = load i8, ptr %i.eb, align 1, !tbaa !51
  %i.ep = add i8 %i.eo, 1                         ; 3 uses
  store i8 %i.ep, ptr %i.eb, align 1, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ee
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !51
  %i.er = add nuw nsw i8 %i.dr, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.er, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.s, !llvm.loop !4

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, %bb.s, %.lr.ph.i.i.i, %bb.r
  %i.es = phi i8 [ %i.dk, %bb.r ], [ %i.dk, %.lr.ph.i.i.i ], [ %i.er, %bb.s ], [ %i.dr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i ] ; 6 uses
  %i.et = phi i8 [ %i.dl, %bb.r ], [ %i.dl, %.lr.ph.i.i.i ], [ %i.ed, %bb.s ], [ %i.dq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i ] ; 7 uses
  %i.eu = load ptr, ptr %i.df, align 16, !tbaa !195
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load atomic i8, ptr %i.ev monotonic, align 1, !range !171, !noundef !172
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.et to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.t
  %i.ey = load ptr, ptr %i.df, align 16, !tbaa !195
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load atomic i8, ptr %i.ez monotonic, align 1, !range !171, !noundef !172
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.thread59.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i

.thread59.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.fc = add i8 %i.dm, 1
  store i8 %i.fc, ptr %i.ca, align 4, !tbaa !113
  br label %.thread.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i
  %i.fd = add i8 %i.dm, 1                         ; 2 uses
  store i8 %i.fd, ptr %i.ca, align 4, !tbaa !113
  %i.fe = icmp ugt i8 %i.es, 1
  br i1 %i.fe, label %.thread.i.i, label %bb.v

.thread.i.i:                                      ; preds = %bb.u, %.thread59.i.i
  %i.ff = phi i8 [ 8, %.thread59.i.i ], [ %i.es, %bb.u ]
  %i.fg = phi i8 [ %i.ed, %.thread59.i.i ], [ %i.et, %bb.u ]
  %i.fh = zext nneg i8 %i.dj to i64               ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !98
  %i.fl = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !926 ; 10 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fm, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.fl, align 64, !tbaa !100
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.fn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fi, i64 24, i1 false), !tbaa.struct !311
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 112 ; 2 uses
  store ptr null, ptr %i.fp, align 16, !tbaa !195
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !114
  %i.fs = lshr i64 %i.fr, 1                       ; 2 uses
  store i64 %i.fs, ptr %i.h, align 8, !tbaa !114
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !114
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  store i32 2, ptr %i.ft, align 64, !tbaa !112
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 132
  %i.fv = load i8, ptr %i.ca, align 4, !tbaa !113
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 136
  %i.fx = load i64, ptr %3, align 8, !tbaa !115
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !115
  %i.fy = sub i8 %i.fv, %i.fk
  store i8 %i.fy, ptr %i.fu, align 4, !tbaa !113
  %i.fz = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13, !inline_history !927 ; 6 uses
  %i.ga = load ptr, ptr %i.df, align 16, !tbaa !308
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !119
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 2, ptr %i.gb, align 8, !tbaa !120
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gd = load i64, ptr %3, align 8, !tbaa !115
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !115
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i8 0, ptr %i.ge, align 8, !tbaa !309
  store ptr %i.fz, ptr %i.df, align 16, !tbaa !195
  store ptr %i.fz, ptr %i.fp, align 16, !tbaa !195
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !310
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.fl, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #13, !inline_history !927
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.gf = add i8 %i.ff, -1
  %i.gg = add nuw nsw i8 %i.dj, 1
  %i.gh = and i8 %i.gg, 7
  br label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.gi = zext i8 %i.et to i64                    ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !51
  %i.gl = icmp ult i8 %i.gk, %i.fd
  br i1 %i.gl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.v
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.gi ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !205
  %i.gp = load i64, ptr %i.gm, align 8, !tbaa !203
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !204
  %i.gs = sub nsw i64 %i.gp, %i.gr
  %i.gt = icmp ult i64 %i.go, %i.gs
  br i1 %i.gt, label %thread-pre-split22.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, %bb.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i
  %i.gu = phi i8 [ %i.et, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.et, %bb.v ], [ %i.et, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i ], [ %i.ed, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.gv = phi i8 [ %i.es, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.es, %bb.v ], [ %i.es, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.gi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.gi, %bb.v ], [ %.pre.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit_crit_edge.i_crit_edge.i ], [ %i.ee, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.gw, align 8, !tbaa !203 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %.val10.i.i = load i64, ptr %i.gx, align 8, !tbaa !204 ; 3 uses
  %i.gy = load i64, ptr %i.dh, align 8, !tbaa !932 ; 2 uses
  %i.gz = icmp slt i64 %.val10.i.i, %.val.i.i
  br i1 %i.gz, label %.lr.ph.preheader.i.i.i.i.i.i13.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i

.lr.ph.preheader.i.i.i.i.i.i13.i.i:               ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i
  %i.ha = load i64, ptr %i.di, align 32, !tbaa !933
  %i.hb = mul nsw i64 %i.gy, %.val10.i.i
  %i.hc = add nsw i64 %i.ha, %i.hb
  br label %.lr.ph.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i14.i.i:                         ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i, %.lr.ph.preheader.i.i.i.i.i.i13.i.i
  %.03.i.i.i.i.i.i15.i.i = phi i64 [ %i.nk, %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i ], [ %.val10.i.i, %.lr.ph.preheader.i.i.i.i.i.i13.i.i ]
  %storemerge2.i.i.i.i.i.i16.i.i = phi i64 [ %i.nl, %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i ], [ %i.hc, %.lr.ph.preheader.i.i.i.i.i.i13.i.i ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %i.jl = extractvalue { ptr, i1 } %i.jj, 0       ; 3 uses
  %i.jm = load ptr, ptr %i.hn, align 8, !tbaa !249, !nonnull !172, !align !285
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 128
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !275
  %i.jp = shl i64 %i.jo, 32
  %i.jq = load i32, ptr %i.is, align 8, !tbaa !250
  %i.jr = sext i32 %i.jq to i64
  %i.js = or i64 %i.jp, %i.jr
  %i.jt = load ptr, ptr %i.jl, align 8, !tbaa !249, !nonnull !172, !align !285
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !275
  %i.jw = shl i64 %i.jv, 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !250
  %i.jz = sext i32 %i.jy to i64
  %i.ka = or i64 %i.jw, %i.jz
  %i.kb = icmp slt i64 %i.js, %i.ka
  br i1 %i.kb, label %.lr.ph57.i.i, label %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i, !llvm.loop !20

.critedge.i.i:                                    ; preds = %._crit_edge54.i.i, %._crit_edge.i.i
  %i.kc = add nsw i64 %.024.i.i, 1
  %i.kd = load i64, ptr %i.ht, align 8, !tbaa !163
  %i.ke = and i64 %i.kd, %i.kc
  br label %bb.w, !llvm.loop !21

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.kf = load i64, ptr %i.hy, align 8, !tbaa !374
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store atomic i64 %i.kf, ptr %i.kg monotonic, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store atomic ptr %i.hn, ptr %i.kh monotonic, align 8
  store atomic i64 %i.hs, ptr %i.ia release, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !939, !nonnull !172, !align !285 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.kk = tail call i64 @pthread_self() #27
  store i64 %i.kk, ptr %2, align 8
  %i.kl = call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 3339675911) #13 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 5 uses
  %i.kn = load atomic ptr, ptr %i.km acquire, align 8 ; 2 uses
  %.not119.i = icmp eq ptr %i.kn, null
  br i1 %.not119.i, label %._crit_edge123.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.y
  %.sroa.029.0.copyload.i = load i64, ptr %2, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %.lr.ph122.i
  %.073120.i = phi ptr [ %i.kn, %.lr.ph122.i ], [ %i.lj, %._crit_edge.i ] ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.073120.i, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !201 ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.kp
  %i.kq = xor i64 %notmask.i.i, -1
  %i.kr = sub i64 64, %i.kp
  %i.ks = lshr i64 %i.kl, %i.kr                   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.073120.i, i64 16 ; 2 uses
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.ks ; 2 uses
  %i.kv = load atomic i64, ptr %i.ku monotonic, align 8
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.ab
  %i.kx = phi ptr [ %i.lg, %bb.ab ], [ %i.ku, %bb.z ] ; 2 uses
  %.068118.i = phi i64 [ %i.lf, %bb.ab ], [ %i.ks, %bb.z ]
  %i.ky = load atomic i64, ptr %i.kx monotonic, align 8
  %i.kz = icmp eq i64 %i.ky, %.sroa.029.0.copyload.i
  br i1 %i.kz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.la = load atomic ptr, ptr %i.km acquire, align 8
  %i.lb = icmp eq ptr %.073120.i, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !324 ; 2 uses
  br i1 %i.lb, label %_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb.exit, label %.thread107.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.le = add i64 %.068118.i, 1
  %i.lf = and i64 %i.le, %i.kq                    ; 2 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.lf ; 2 uses
  %i.lh = load atomic i64, ptr %i.lg monotonic, align 8
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.ab, %bb.z
  %i.lj = load ptr, ptr %.073120.i, align 8, !tbaa !200 ; 2 uses
  %.not.i8 = icmp eq ptr %i.lj, null
  br i1 %.not.i8, label %._crit_edge123.i, label %bb.z, !llvm.loop !8

._crit_edge123.i:                                 ; preds = %._crit_edge.i, %bb.y
  %i.lk = load ptr, ptr %i.kj, align 8, !tbaa !100
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = call noundef ptr %i.ll(ptr noundef nonnull align 8 dereferenceable(104) %i.kj) #13, !inline_history !928 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.lo = atomicrmw add ptr %i.ln, i64 1 seq_cst, align 8
  %i.lp = add i64 %i.lo, 1                        ; 2 uses
  %i.lq = load atomic ptr, ptr %i.km acquire, align 8 ; 3 uses
  %.not76.i = icmp eq ptr %i.lq, null
  br i1 %.not76.i, label %.critedge.i9.preheader, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge123.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !201 ; 2 uses
  %i.lt = shl nuw i64 1, %i.ls
  %i.lu = lshr i64 %i.lt, 1
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  br i1 %i.lv, label %.critedge.i9.preheader, label %.thread107.i

.critedge.i9.preheader:                           ; preds = %bb.ac, %._crit_edge123.i
  %.060.i.ph = phi i64 [ %i.ls, %bb.ac ], [ 2, %._crit_edge123.i ]
  br label %.critedge.i9

.critedge.i9:                                     ; preds = %.critedge.i9.preheader, %.critedge.i9
  %.060.i = phi i64 [ %i.lz, %.critedge.i9 ], [ %.060.i.ph, %.critedge.i9.preheader ] ; 5 uses
  %i.lw = add i64 %.060.i, -1
  %i.lx = shl nuw i64 1, %i.lw
  %i.ly = icmp ugt i64 %i.lp, %i.lx
  %i.lz = add i64 %.060.i, 1
  br i1 %i.ly, label %.critedge.i9, label %bb.ad, !llvm.loop !9

bb.ad:                                            ; preds = %.critedge.i9
  %i.ma = shl i64 16, %.060.i                     ; 2 uses
  %i.mb = add nuw i64 %i.ma, 16
  %i.mc = load ptr, ptr %i.kj, align 8, !tbaa !100
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = call noundef ptr %i.me(ptr noundef nonnull align 8 dereferenceable(104) %i.kj, i64 noundef %i.mb) #13, !inline_history !929 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  store i64 %.060.i, ptr %i.mg, align 8, !tbaa !201
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mh, i8 0, i64 %i.ma, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.061.i = phi ptr [ %i.lq, %bb.ad ], [ %i.mk, %bb.af ] ; 2 uses
  store ptr %.061.i, ptr %i.mf, align 8, !tbaa !200
  %i.mi = cmpxchg ptr %i.km, ptr %.061.i, ptr %i.mf seq_cst seq_cst, align 8 ; 2 uses
  %i.mj = extractvalue { ptr, i1 } %i.mi, 1
  br i1 %i.mj, label %.thread107.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mk = extractvalue { ptr, i1 } %i.mi, 0       ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !201
  %.not77.i = icmp ult i64 %i.mm, %.060.i
  br i1 %.not77.i, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mn = load i64, ptr %i.mg, align 8, !tbaa !201
  %i.mo = shl i64 16, %i.mn
  %i.mp = add nuw i64 %i.mo, 16
  %i.mq = load ptr, ptr %i.kj, align 8, !tbaa !100
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(104) %i.kj, ptr noundef nonnull %i.mf, i64 noundef %i.mp) #13, !inline_history !930
  br label %.thread107.i

.thread107.i:                                     ; preds = %bb.ae, %bb.ag, %bb.ac, %bb.aa
  %.467.i = phi ptr [ %i.ld, %bb.aa ], [ %i.lm, %bb.ac ], [ %i.lm, %bb.ag ], [ %i.lm, %bb.ae ] ; 2 uses
  %i.mt = load atomic ptr, ptr %i.km acquire, align 8 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !201 ; 2 uses
  %notmask.i78.i = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i78.i, -1
  %i.mx = sub i64 64, %i.mv
  %i.my = lshr i64 %i.kl, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.thread107.i
  %.059.i = phi i64 [ %i.my, %.thread107.i ], [ %i.nh, %bb.ak ] ; 2 uses
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %.059.i ; 3 uses
  %i.nb = load atomic i64, ptr %i.na monotonic, align 8
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !75
  %i.nd = cmpxchg ptr %i.na, i64 0, i64 %.sroa.0.0.copyload.i seq_cst seq_cst, align 8
  %i.ne = extractvalue { i64, i1 } %i.nd, 1
  br i1 %i.ne, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %.467.i, ptr %i.nf, align 8, !tbaa !324
  br label %_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.ng = add i64 %.059.i, 1
  %i.nh = and i64 %i.ng, %i.mw
  br label %bb.ah, !llvm.loop !10

_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb.exit: ; preds = %bb.aa, %bb.aj
  %.6.i = phi ptr [ %.467.i, %bb.aj ], [ %i.ld, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.ni = load i64, ptr %.6.i, align 8, !tbaa !75
  %i.nj = add nsw i64 %i.ni, 1
  store i64 %i.nj, ptr %.6.i, align 8, !tbaa !75
  br label %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i

_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i: ; preds = %_ZNSt6atomicIPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS4_S4_St12memory_order.exit.i.i, %.lr.ph57.i.i, %_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb.exit, %bb.x
  %i.nk = add nsw i64 %.03.i.i.i.i.i.i15.i.i, 1   ; 2 uses
  %i.nl = add nsw i64 %storemerge2.i.i.i.i.i.i16.i.i, %i.gy
  %exitcond.not.i.i.i.i.i.i18.i.i = icmp eq i64 %i.nk, %.val.i.i
  br i1 %exitcond.not.i.i.i.i.i.i18.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i, label %.lr.ph.i.i.i.i.i.i14.i.i, !llvm.loop !925

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i17.i.i, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS8_6X86_64EEElSt4spanINS8_6DigestELm18446744073709551615EESB_IPNS8_12InputSectionIT_EELm18446744073709551615EERNS8_9DigestMapISF_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSF_.exit.i.i
  %i.nm = add i8 %i.gv, -1
  %i.nn = add nuw i8 %i.gu, 7
  %i.no = and i8 %i.nn, 7
  br label %thread-pre-split22.i.i

thread-pre-split22.i.i:                           ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i
  %i.np = phi i8 [ %i.nm, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i ], [ %i.es, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.nq = phi i8 [ %i.no, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit19.i.i ], [ %i.et, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ]
  %i.nr = icmp eq i8 %i.np, 0
  br i1 %i.nr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.al

bb.al:                                            ; preds = %thread-pre-split22.i.i, %.thread.i.i
  %i.ns = phi i8 [ %i.gh, %.thread.i.i ], [ %i.dj, %thread-pre-split22.i.i ]
  %i.nt = phi i8 [ %i.gf, %.thread.i.i ], [ %i.np, %thread-pre-split22.i.i ]
  %i.nu = phi i8 [ %i.fg, %.thread.i.i ], [ %i.nq, %thread-pre-split22.i.i ]
  %i.nv = load ptr, ptr %1, align 8, !tbaa !310   ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 15
  %i.nx = load atomic i8, ptr %i.nw monotonic, align 1
  %i.ny = icmp eq i8 %i.nx, -1
  br i1 %i.ny, label %bb.am, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !51
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i = phi ptr [ %i.oa, %bb.am ], [ %i.nv, %bb.al ]
  %i.ob = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #13, !inline_history !924
  br i1 %i.ob, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.r, !llvm.loop !931

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i: ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %thread-pre-split22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL17count_num_classesINS3_6X86_64EEElSt4spanINS3_6DigestELm18446744073709551615EES6_IPNS3_12InputSectionIT_EELm18446744073709551615EERNS3_9DigestMapISA_EEEUllE_JRlEEENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSM_.exit.i.i.i.i.i.i.i.i, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.od = load ptr, ptr %i.oc, align 16, !tbaa !195 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !115
  %i.og = load ptr, ptr %0, align 64, !tbaa !100
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #13, !inline_history !22
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oj = atomicrmw sub ptr %i.oi, i32 1 seq_cst, align 4
  %i.ok = add i32 %i.oj, -1
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit, %bb.an
  %.019.i.i = phi ptr [ %i.om, %bb.an ], [ %i.od, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.om = load ptr, ptr %.019.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.om, null
  br i1 %.not.i.i7, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i6
  %i.on = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !115
  %i.op = inttoptr i64 %i.oo to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.op, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.or = atomicrmw sub ptr %i.oq, i32 1 seq_cst, align 4
  %i.os = add i32 %i.or, -1
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i6

bb.ao:                                            ; preds = %.lr.ph.i.i6
  %i.ou = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.ov = atomicrmw sub ptr %i.ou, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ov, 1
  br i1 %.not.i.i.i.i, label %bb.ap, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ow = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ox = ptrtoint ptr %i.ow to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ox) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.an, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINSA_6X86_64EEElSt4spanINSA_6DigestELm18446744073709551615EESD_IPNSA_12InputSectionIT_EELm18446744073709551615EERNSA_9DigestMapISH_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSH_RT0_RNS1_14execution_dataE.exit, %bb.ao, %bb.ap
  %i.oy = inttoptr i64 %i.of to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.oy, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !195 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %0, align 64, !tbaa !100
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #13, !inline_history !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !119 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !115
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL17count_num_classesINS6_6X86_64EEElSt4spanINS6_6DigestELm18446744073709551615EES9_IPNS6_12InputSectionIT_EELm18446744073709551615EERNS6_9DigestMapISD_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZN4mold9DigestMapINS_6X86_64EE6insertERKNS_6DigestEPNS_12InputSectionIS1_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !373    ; 2 uses
  %i.b = lshr i64 %i.a, 16                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !162
  %i.d = shl i64 %i.c, 49
  %i.e = or disjoint i64 %i.d, %i.b               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !163
  %i.h = and i64 %i.g, %i.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = or disjoint i64 %i.e, 281474976710656
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.024 = phi i64 [ %i.h, %bb.a ], [ %i.bt, %.critedge ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.024 ; 8 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 3 uses
  %i.o = lshr i64 %i.n, 49
  %i.p = load i64, ptr %0, align 8, !tbaa !162
  %.not48.not = icmp eq i64 %i.o, %i.p
  br i1 %.not48.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit
  %.03549 = phi i64 [ %i.s, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit ], [ %i.n, %bb.b ]
  %i.q = cmpxchg weak ptr %i.m, i64 %.03549, i64 %i.j acquire acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.c, label %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit

_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.s = extractvalue { i64, i1 } %i.q, 0         ; 3 uses
  %i.t = lshr i64 %i.s, 49
  %i.u = load i64, ptr %0, align 8, !tbaa !162
  %.not.not = icmp eq i64 %i.t, %i.u
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

bb.c:                                             ; preds = %.lr.ph
  %i.v = load i64, ptr %i.k, align 8, !tbaa !374
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store atomic i64 %i.v, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store atomic ptr %2, ptr %i.x monotonic, align 8
  store atomic i64 %i.e, ptr %i.m release, align 8
  br label %_ZNSt6atomicIPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS4_S4_St12memory_order.exit.thread

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit, %bb.b
  %.035.lcssa = phi i64 [ %i.n, %bb.b ], [ %i.s, %_ZNSt13__atomic_baseImE21compare_exchange_weakERmmSt12memory_orderS2_.exit ] ; 2 uses
  %i.y = and i64 %.035.lcssa, 281474976710655
  %.not26 = icmp eq i64 %i.y, %i.b
  br i1 %.not26, label %.preheader, label %.critedge

.preheader:                                       ; preds = %._crit_edge
  %i.z = and i64 %.035.lcssa, 281474976710656
  %.not2752 = icmp eq i64 %i.z, 0
  br i1 %.not2752, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
end_hunk_6
begin_hunk_7_@_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE11init_bucketEm:bb.a
  %i.az = load atomic ptr, ptr %i.as acquire, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18, %bb.m
  %.0.i.i15 = phi ptr [ %i.az, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i18 ], [ %i.at, %bb.m ] ; 2 uses
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.bb = icmp eq ptr %.0.i.i15, %i.ba
  br i1 %i.bb, label %bb.q, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19: ; preds = %bb.p, %bb.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i15, i64 %i.r
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %1, 8
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %1, 16
  %.sroa.48.0.extract.shift.i.i.i = lshr i64 %1, 24
  %.sroa.59.0.extract.shift.i.i.i = lshr i64 %1, 32
  %.sroa.610.0.extract.shift.i.i.i = lshr i64 %1, 40
  %.sroa.711.0.extract.shift.i.i.i = lshr i64 %1, 48
  %.sroa.812.0.extract.shift.i.i.i = lshr i64 %1, 56
  %i.be = and i64 %1, 255
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = and i64 %.sroa.2.0.extract.shift.i.i.i, 255
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bk = and i64 %.sroa.3.0.extract.shift.i.i.i, 255
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bn = and i64 %.sroa.48.0.extract.shift.i.i.i, 255
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bq = and i64 %.sroa.59.0.extract.shift.i.i.i, 255
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51
  %i.bt = and i64 %.sroa.610.0.extract.shift.i.i.i, 255
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !51
  %i.bw = and i64 %.sroa.711.0.extract.shift.i.i.i, 255
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %.sroa.812.0.extract.shift.i.i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %.sroa.10.0.insert.ext.i.i.i = zext i8 %i.bg to i64
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i.i, 56
  %.sroa.9.0.insert.ext.i.i.i = zext i8 %i.bj to i64
  %.sroa.9.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i.i, 48
  %.sroa.9.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.shift.i.i.i, %.sroa.10.0.insert.shift.i.i.i
  %.sroa.8.0.insert.ext.i.i.i = zext i8 %i.bm to i64
  %.sroa.8.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i.i, 40
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.insert.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.7.0.insert.ext.i.i.i = zext i8 %i.bp to i64
  %.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i.i, 32
  %.sroa.7.0.insert.insert.i.i.i = or disjoint i64 %.sroa.8.0.insert.insert.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.bs to i64
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 24
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i64 %.sroa.7.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.bv to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.by to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.4.0.insert.mask.i.i.i = or disjoint i64 %.sroa.6.0.insert.insert.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.ca to i64
  %.sroa.0.0.insert.mask.i.i.i = or i64 %.sroa.4.0.insert.mask.i.i.i, %.sroa.4.0.insert.shift.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or i64 %.sroa.0.0.insert.mask.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.cb = and i64 %.sroa.0.0.insert.insert.i.i.i, -2 ; 4 uses
  %i.cc = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 16) #13 ; 9 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !395
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !296
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19
  %.018.i = phi ptr [ %i.bd, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit19 ], [ %.018.i.be, %.backedge.i.backedge ] ; 3 uses
  %i.ce = load atomic ptr, ptr %.018.i acquire, align 8 ; 4 uses
  %.not23.i = icmp eq ptr %i.ce, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.backedge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !296 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cb
  br i1 %i.ch, label %.lr.ph, label %.critedge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !296 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cb
  br i1 %i.ck, label %.lr.ph, label %.critedge.i, !llvm.loop !1009

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.025.i33 = phi ptr [ %i.cl, %.lr.ph.i ], [ %i.ce, %.lr.ph.i.preheader ] ; 3 uses
  %i.cl = load atomic ptr, ptr %.025.i33 acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1009

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.025.i.lcssa = phi ptr [ %i.ce, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i ] ; 3 uses
  %.124.i.lcssa = phi ptr [ %.018.i, %.lr.ph.i.preheader ], [ %.025.i33, %.lr.ph.i ] ; 2 uses
  %.lcssa = phi i64 [ %i.cg, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i ]
  %i.cm = icmp eq i64 %.lcssa, %i.cb
  br i1 %i.cm, label %bb.r, label %.split.i

.split.i:                                         ; preds = %.critedge.i
  store atomic ptr %.025.i.lcssa, ptr %i.cc release, align 8
  %i.cn = cmpxchg ptr %.124.i.lcssa, ptr %.025.i.lcssa, ptr %i.cc seq_cst seq_cst, align 8
  %i.co = extractvalue { ptr, i1 } %i.cn, 1
  br i1 %i.co, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit, label %.backedge.i.backedge

bb.r:                                             ; preds = %.critedge.i
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.cc) #13
  br label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit

._crit_edge.i:                                    ; preds = %.lr.ph, %.backedge.i
  %.1.lcssa.i = phi ptr [ %.018.i, %.backedge.i ], [ %.025.i33, %.lr.ph ] ; 2 uses
  store atomic ptr null, ptr %i.cc release, align 8
  %i.cp = cmpxchg ptr %.1.lcssa.i, ptr null, ptr %i.cc seq_cst seq_cst, align 8
  %i.cq = extractvalue { ptr, i1 } %i.cp, 1
  br i1 %i.cq, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.i, %.split.i
  %.018.i.be = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %.124.i.lcssa, %.split.i ]
  br label %.backedge.i, !llvm.loop !1010

_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit: ; preds = %.split.i, %._crit_edge.i, %bb.r
  %.019.i = phi ptr [ %.025.i.lcssa, %bb.r ], [ %i.cc, %._crit_edge.i ], [ %i.cc, %.split.i ]
  %i.cr = or i64 %1, 1
  %i.cs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true) ; 3 uses
  %i.ct = xor i64 %i.cs, 63                       ; 2 uses
  %i.cu = load atomic ptr, ptr %i.w acquire, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ct ; 3 uses
  %i.cw = load atomic ptr, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit
  %i.cy = icmp eq i64 %i.cs, 63
  %i.cz = shl i64 8, %i.ct
  %i.da = select i1 %i.cy, i64 16, i64 %i.cz      ; 2 uses
  %i.db = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.da) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %i.da, i1 false), !tbaa !395
  %.not.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i22, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = lshr exact i64 -9223372036854775808, %i.cs
  %i.dd = and i64 %i.dc, -2
  %i.de = sub i64 0, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.de
  %i.dg = cmpxchg ptr %i.cv, ptr null, ptr %i.df seq_cst seq_cst, align 8
  %i.dh = extractvalue { ptr, i1 } %i.dg, 1
  br i1 %i.dh, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, label %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23

_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23: ; preds = %bb.t
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.db) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24: ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i23, %bb.t, %bb.s
  %i.di = load atomic ptr, ptr %i.cv acquire, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit
  %.0.i.i21 = phi ptr [ %i.di, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i24 ], [ %i.cw, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE17insert_dummy_nodeEPNS1_9list_nodeImEEm.exit ] ; 2 uses
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.dk = icmp eq ptr %.0.i.i21, %i.dj
  br i1 %i.dk, label %bb.v, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25: ; preds = %bb.u, %bb.v
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i21, i64 %1
  store atomic ptr %.019.i, ptr %i.dl release, align 8
  br label %_ZNSt6atomicIPN3tbb6detail2d29list_nodeImEEE23compare_exchange_strongERS5_S5_St12memory_order.exit

_ZNSt6atomicIPN3tbb6detail2d29list_nodeImEEE23compare_exchange_strongERS5_S5_St12memory_order.exit: ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define internal fastcc void @_ZSt4sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EvSG_SG_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %6 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %7 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %8 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !241    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !242  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.k = icmp ne ptr %i.a, %i.f
  %.fr.i.i = freeze i1 %i.k                       ; 2 uses
  %i.l = icmp ne i64 %i.c, %i.h
  %.not3.i.i = select i1 %.fr.i.i, i1 true, i1 %i.l
  br i1 %.not3.i.i, label %bb.b, label %_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %7, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.c, ptr %i.m, align 8, !tbaa !242
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.n, align 8, !tbaa !243
  store ptr %i.f, ptr %8, align 8, !tbaa !241
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.h, ptr %i.o, align 8, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.j, ptr %i.p, align 8, !tbaa !243
  %i.q = sub nsw i64 %i.h, %i.c                   ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = sub nsw i64 126, %i.s
  call fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %7, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %8, i64 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.u = icmp sgt i64 %i.q, 16
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %3, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.v, align 8, !tbaa !242
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.w, align 8, !tbaa !243
  %i.x = add nsw i64 %i.c, 16                     ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !241, !alias.scope !1015
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !242, !alias.scope !1015
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !243, !alias.scope !1015
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.fr.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i: ; preds = %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i
  %.sroa.5.08.i.us.i.i = phi i64 [ %i.da, %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i ], [ %i.x, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i ] ; 7 uses
  %i.ab = or i64 %.sroa.5.08.i.us.i.i, 1
  %i.ac = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63                       ; 3 uses
  %i.ae = load atomic ptr, ptr %i.aa acquire, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.5.08.i.us.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130 ; 4 uses
  %i.aj = add i64 %.sroa.5.08.i.us.i.i, -1        ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 48     ; 2 uses
  %i.al = or i64 %i.aj, 1
  %i.am = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63                       ; 2 uses
  %i.ao = load atomic ptr, ptr %i.aa acquire, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aj
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !130 ; 2 uses
  %.val.i.i.peel.i = load ptr, ptr %i.ai, align 8, !tbaa !249
  %.val2.i.i.peel.i = load i32, ptr %i.ak, align 8, !tbaa !250
  %.val3.i.i.peel.i = load ptr, ptr %i.as, align 8, !tbaa !249
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %.val4.i.i.peel.i = load i32, ptr %i.at, align 8, !tbaa !250
  %i.au = getelementptr i8, ptr %.val.i.i.peel.i, i64 128
  %.val.val.i.i.peel.i = load i64, ptr %i.au, align 8, !tbaa !275
  %i.av = getelementptr i8, ptr %.val3.i.i.peel.i, i64 128
  %.val3.val.i.i.peel.i = load i64, ptr %i.av, align 8, !tbaa !275
  %i.aw = shl i64 %.val.val.i.i.peel.i, 32
  %i.ax = sext i32 %.val2.i.i.peel.i to i64
  %i.ay = or i64 %i.aw, %i.ax
  %i.az = shl i64 %.val3.val.i.i.peel.i, 32
  %i.ba = sext i32 %.val4.i.i.peel.i to i64
  %i.bb = or i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i, label %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i
  %i.bd = load atomic ptr, ptr %i.aa acquire, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.an
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aj
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130
  %i.bi = load atomic ptr, ptr %i.aa acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ad
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.sroa.5.08.i.us.i.i
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !130
  %i.bm = add i64 %.sroa.5.08.i.us.i.i, -2
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i
  %.sroa.6.0.i14.i = phi i64 [ %.sroa.6.0.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i ], [ %i.aj, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i ] ; 4 uses
  %.sroa.6.0.i.i = phi i64 [ %i.cu, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i ], [ %i.bm, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i ] ; 6 uses
  %i.bn = or i64 %.sroa.6.0.i.i, 1
  %i.bo = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63
  %i.bq = load atomic ptr, ptr %i.aa acquire, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load atomic ptr, ptr %i.br acquire, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.6.0.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !249
  %.val2.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !250
  %.val3.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !249
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %.val4.i.i.i = load i32, ptr %i.bv, align 8, !tbaa !250
  %i.bw = getelementptr i8, ptr %.val.i.i.i, i64 128
  %.val.val.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !275
  %i.bx = getelementptr i8, ptr %.val3.i.i.i, i64 128
  %.val3.val.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !275
  %i.by = shl i64 %.val.val.i.i.i, 32
  %i.bz = sext i32 %.val2.i.i.i to i64
  %i.ca = or i64 %i.by, %i.bz
  %i.cb = shl i64 %.val3.val.i.i.i, 32
  %i.cc = sext i32 %.val4.i.i.i to i64
  %i.cd = or i64 %i.cb, %i.cc
  %i.ce = icmp slt i64 %i.ca, %i.cd
  br i1 %i.ce, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i, label %.loopexit.i..loopexit.i.thread_crit_edge

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i
  %i.cf = or i64 %.sroa.6.0.i.i, 1
  %i.cg = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = xor i64 %i.cg, 63
  %i.ci = load atomic ptr, ptr %i.aa acquire, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load atomic ptr, ptr %i.cj acquire, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sroa.6.0.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130
  %i.cn = or i64 %.sroa.6.0.i14.i, 1
  %i.co = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = xor i64 %i.co, 63
  %i.cq = load atomic ptr, ptr %i.aa acquire, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load atomic ptr, ptr %i.cr acquire, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sroa.6.0.i14.i
  store ptr %i.cm, ptr %i.ct, align 8, !tbaa !130
  %i.cu = add i64 %.sroa.6.0.i.i, -1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i, !llvm.loop !1013

.loopexit.i..loopexit.i.thread_crit_edge:         ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i
  %.pre = or i64 %.sroa.6.0.i14.i, 1
  %.pre11 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre, i1 true)
  %.pre13 = xor i64 %.pre11, 63
  br label %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i

_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i, %.loopexit.i..loopexit.i.thread_crit_edge
  %.pre-phi14 = phi i64 [ %.pre13, %.loopexit.i..loopexit.i.thread_crit_edge ], [ %i.ad, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %i.cv = phi i64 [ %.sroa.6.0.i14.i, %.loopexit.i..loopexit.i.thread_crit_edge ], [ %.sroa.5.08.i.us.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %i.cw = load atomic ptr, ptr %i.aa acquire, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.pre-phi14
  %i.cy = load atomic ptr, ptr %i.cx acquire, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cv
  store ptr %i.ai, ptr %i.cz, align 8, !tbaa !130
  %i.da = add i64 %.sroa.5.08.i.us.i.i, 1
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i: ; preds = %bb.c, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i
  %.sroa.5.08.i.i.i = phi i64 [ %i.db, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i ], [ %i.x, %bb.c ] ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !241
  store i64 %.sroa.5.08.i.i.i, ptr %9, align 8, !tbaa !242
  store ptr null, ptr %10, align 8, !tbaa !243
  call fastcc void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %2)
  %i.db = add nsw i64 %.sroa.5.08.i.i.i, 1        ; 2 uses
  %.not.i.i = icmp eq i64 %i.db, %i.h
  br i1 %.not.i.i, label %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i, !llvm.loop !1014

_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

bb.d:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !241
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.dc, align 8, !tbaa !242
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.dd, align 8, !tbaa !243
  store ptr %i.f, ptr %6, align 8, !tbaa !241
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.de, align 8, !tbaa !242
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.j, ptr %i.df, align 8, !tbaa !243
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %5, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %6)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i: ; preds = %bb.d, %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit

_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit: ; preds = %bb.a, %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 12 uses
  %4 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %6 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.e = sub nsw i64 %i.c, %i.d                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph95

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit
  %i.n = icmp eq i64 %i.cx, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph95, !llvm.loop !1017

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa92 = phi i64 [ %i.e, %.lr.ph ], [ %i.ma, %bb.b ] ; 2 uses
  %.lcssa90 = phi i64 [ %i.d, %.lr.ph ], [ %i.lz, %bb.b ] ; 9 uses
  %.lcssa88 = phi i64 [ %i.c, %.lr.ph ], [ %.us-phi, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !243  ; 5 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !241
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = add nsw i64 %.lcssa92, -2
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.u, align 8, !tbaa !242
  store ptr %i.p, ptr %i.v, align 8, !tbaa !243
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.ag, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i ] ; 4 uses
  %i.x = add i64 %.08.i.i.i, %.lcssa90            ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = load atomic ptr, ptr %i.w acquire, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4, i64 noundef %.08.i.i.i, i64 noundef %.lcssa92, ptr noundef %i.af)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ag = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, !llvm.loop !1018

_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.p, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.al = or i64 %.lcssa90, 1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63                       ; 2 uses
  br i1 %i.aj, label %.lr.ph.i1.split.us.i, label %.lr.ph.i1.split.i

.lr.ph.i1.split.us.i:                             ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i
  %.sroa.7.0.us.i = phi ptr [ %.sroa.7.1.us40.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ao = phi i64 [ %i.ap, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ap = add nsw i64 %i.ao, -1                   ; 6 uses
  %.not.i.i2.us.i = icmp eq ptr %.sroa.7.0.us.i, null
  br i1 %.not.i.i2.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  %i.aq = add i64 %i.ao, -3
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = icmp eq i64 %i.ar, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.as, label %bb.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.c

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.at = getelementptr inbounds i8, ptr %.sroa.7.0.us.i, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !130
  %i.av = load atomic ptr, ptr %i.w acquire, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.an
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.lcssa90
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !130
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

bb.c:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.ba = or i64 %i.ap, 1
  %i.bb = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63                       ; 2 uses
  %i.bd = load atomic ptr, ptr %i.ak acquire, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ap
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130
  %i.bi = load atomic ptr, ptr %i.w acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.lcssa90
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !130
  %i.bn = load atomic ptr, ptr %i.ak acquire, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bc
  %i.bp = load atomic ptr, ptr %i.bo acquire, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ap
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i: ; preds = %bb.c, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i
  %i.br = phi ptr [ %i.bm, %bb.c ], [ %i.az, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %i.bs = phi ptr [ %i.bh, %bb.c ], [ %i.au, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.sroa.7.1.us40.i = phi ptr [ null, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.0.i4.i.i8.us.i = phi ptr [ %i.bq, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  store ptr %i.br, ptr %.0.i4.i.i8.us.i, align 8, !tbaa !130
  store ptr %i.o, ptr %3, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.ah, align 8, !tbaa !242
  store ptr null, ptr %i.ai, align 8, !tbaa !243
  %i.bt = sub nsw i64 %i.ap, %.lcssa90            ; 2 uses
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.bt, ptr noundef %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %.lr.ph.i1.split.us.i, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1019

.lr.ph.i1.split.i:                                ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i
  %.sroa.7.0.i = phi ptr [ %.sroa.7.144.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bv = phi i64 [ %i.bw, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bw = add nsw i64 %i.bv, -1                   ; 6 uses
  %.not.i.i2.i = icmp eq ptr %.sroa.7.0.i, null
  br i1 %.not.i.i2.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i: ; preds = %.lr.ph.i1.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.d

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i: ; preds = %.lr.ph.i1.split.i
  %i.bx = add i64 %i.bv, -3
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.bz, label %bb.d, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i
  %i.ca = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !130
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !130
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i

bb.d:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i
  %i.cd = or i64 %i.bw, 1
  %i.ce = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = xor i64 %i.ce, 63                       ; 2 uses
  %i.cg = load atomic ptr, ptr %i.ak acquire, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load atomic ptr, ptr %i.ch acquire, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.bw
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !130
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !130
  %i.cm = load atomic ptr, ptr %i.ak acquire, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cf
  %i.co = load atomic ptr, ptr %i.cn acquire, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.bw
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i

_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i: ; preds = %bb.d, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i
  %i.cq = phi ptr [ %i.cl, %bb.d ], [ %i.cc, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %i.cr = phi ptr [ %i.ck, %bb.d ], [ %i.cb, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %.sroa.7.144.i = phi ptr [ null, %bb.d ], [ %i.ca, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %.0.i4.i.i8.i = phi ptr [ %i.cp, %bb.d ], [ %i.ca, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  store ptr %i.cq, ptr %.0.i4.i.i8.i, align 8, !tbaa !130
  store ptr %i.o, ptr %3, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.ah, align 8, !tbaa !242
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !243
  %i.cs = sub nsw i64 %i.bw, %.lcssa90            ; 2 uses
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.cs, ptr noundef %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ct = icmp sgt i64 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.i1.split.i, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1019

.lr.ph95:                                         ; preds = %.lr.ph, %bb.b
  %.05494 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cu = phi i64 [ %.us-phi, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.cv = phi i64 [ %i.lz, %bb.b ], [ %i.d, %.lr.ph ] ; 8 uses
  %i.cw = phi i64 [ %i.ma, %bb.b ], [ %i.e, %.lr.ph ]
  %i.cx = add nsw i64 %.05494, -1                 ; 3 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !241   ; 9 uses
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !243 ; 11 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !241   ; 3 uses
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !243
  %i.dc = lshr i64 %i.cw, 1
  %i.dd = add i64 %i.dc, %i.cv                    ; 7 uses
  %i.de = add nsw i64 %i.cv, 1                    ; 7 uses
  %i.df = add nsw i64 %i.cu, -1                   ; 7 uses
  %i.dg = or i64 %i.de, 1
  %i.dh = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = xor i64 %i.dh, 63                       ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 11 uses
  %i.dk = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  %i.dm = load atomic ptr, ptr %i.dl acquire, align 8, !noalias !1027
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.de
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.dp = or i64 %i.dd, 1
  %i.dq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = xor i64 %i.dq, 63                       ; 6 uses
  %i.ds = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load atomic ptr, ptr %i.dt acquire, align 8, !noalias !1027
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dd
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i.i.i9 = load ptr, ptr %i.do, align 8, !tbaa !249, !noalias !1027
  %i.dx = getelementptr i8, ptr %i.do, i64 48
  %.val1.i.i.i10 = load i32, ptr %i.dx, align 8, !tbaa !250, !noalias !1027
  %.val2.i.i.i11 = load ptr, ptr %i.dw, align 8, !tbaa !249, !noalias !1027
  %i.dy = getelementptr i8, ptr %i.dw, i64 48
  %.val3.i.i.i12 = load i32, ptr %i.dy, align 8, !tbaa !250, !noalias !1027
  %i.dz = getelementptr i8, ptr %.val.i.i.i9, i64 128
  %.val.val.i.i.i13 = load i64, ptr %i.dz, align 8, !tbaa !275, !noalias !1027
  %i.ea = getelementptr i8, ptr %.val2.i.i.i11, i64 128
  %.val2.val.i.i.i14 = load i64, ptr %i.ea, align 8, !tbaa !275, !noalias !1027
  %i.eb = shl i64 %.val.val.i.i.i13, 32
  %i.ec = sext i32 %.val1.i.i.i10 to i64
  %i.ed = or i64 %i.eb, %i.ec
  %i.ee = shl i64 %.val2.val.i.i.i14, 32
  %i.ef = sext i32 %.val3.i.i.i12 to i64
  %i.eg = or i64 %i.ee, %i.ef
  %i.eh = icmp slt i64 %i.ed, %i.eg
  %i.ei = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027 ; 2 uses
  %i.ej = or i64 %i.df, 1
  %i.ek = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ej, i1 true)
  %i.el = xor i64 %i.ek, 63                       ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 6 uses
  br i1 %i.eh, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i: ; preds = %.lr.ph95
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dr
  %i.eo = load atomic ptr, ptr %i.en acquire, align 8, !noalias !1027
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dd
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.er = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.el
  %i.et = load atomic ptr, ptr %i.es acquire, align 8, !noalias !1027
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.df
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i4.i.i = load ptr, ptr %i.eq, align 8, !tbaa !249, !noalias !1027
  %i.ew = getelementptr i8, ptr %i.eq, i64 48
  %.val1.i5.i.i = load i32, ptr %i.ew, align 8, !tbaa !250, !noalias !1027
  %.val2.i6.i.i = load ptr, ptr %i.ev, align 8, !tbaa !249, !noalias !1027
  %i.ex = getelementptr i8, ptr %i.ev, i64 48
  %.val3.i7.i.i = load i32, ptr %i.ex, align 8, !tbaa !250, !noalias !1027
  %i.ey = getelementptr i8, ptr %.val.i4.i.i, i64 128
  %.val.val.i8.i.i = load i64, ptr %i.ey, align 8, !tbaa !275, !noalias !1027
  %i.ez = getelementptr i8, ptr %.val2.i6.i.i, i64 128
  %.val2.val.i9.i.i = load i64, ptr %i.ez, align 8, !tbaa !275, !noalias !1027
  %i.fa = shl i64 %.val.val.i8.i.i, 32
  %i.fb = sext i32 %.val1.i5.i.i to i64
  %i.fc = or i64 %i.fa, %i.fb
  %i.fd = shl i64 %.val2.val.i9.i.i, 32
  %i.fe = sext i32 %.val3.i7.i.i to i64
  %i.ff = or i64 %i.fd, %i.fe
  %i.fg = icmp slt i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i
  %i.fh = icmp eq ptr %i.cz, null
  br i1 %i.fh, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i
  %i.fi = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.di
  %i.fk = load atomic ptr, ptr %i.fj acquire, align 8, !noalias !1027
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.de
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.fn = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.el
  %i.fp = load atomic ptr, ptr %i.fo acquire, align 8, !noalias !1027
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.df
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i16.i.i = load ptr, ptr %i.fm, align 8, !tbaa !249, !noalias !1027
  %i.fs = getelementptr i8, ptr %i.fm, i64 48
  %.val1.i17.i.i = load i32, ptr %i.fs, align 8, !tbaa !250, !noalias !1027
  %.val2.i18.i.i = load ptr, ptr %i.fr, align 8, !tbaa !249, !noalias !1027
  %i.ft = getelementptr i8, ptr %i.fr, i64 48
  %.val3.i19.i.i = load i32, ptr %i.ft, align 8, !tbaa !250, !noalias !1027
  %i.fu = getelementptr i8, ptr %.val.i16.i.i, i64 128
  %.val.val.i20.i.i = load i64, ptr %i.fu, align 8, !tbaa !275, !noalias !1027
  %i.fv = getelementptr i8, ptr %.val2.i18.i.i, i64 128
  %.val2.val.i21.i.i = load i64, ptr %i.fv, align 8, !tbaa !275, !noalias !1027
  %i.fw = shl i64 %.val.val.i20.i.i, 32
  %i.fx = sext i32 %.val1.i17.i.i to i64
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = shl i64 %.val2.val.i21.i.i, 32
  %i.ga = sext i32 %.val3.i19.i.i to i64
  %i.gb = or i64 %i.fz, %i.ga
  %i.gc = icmp slt i64 %i.fy, %i.gb               ; 3 uses
  %i.gd = icmp eq ptr %i.cz, null
  %..i = select i1 %i.gc, i64 %i.el, i64 %i.di    ; 2 uses
  %.106.i = select i1 %i.gc, i64 %i.df, i64 %i.de ; 2 uses
  %.107.i = select i1 %i.gc, ptr %i.da, ptr %i.cy ; 2 uses
  br i1 %i.gd, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i: ; preds = %.lr.ph95
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.di
  %i.gf = load atomic ptr, ptr %i.ge acquire, align 8, !noalias !1027
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.de
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.gi = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.el
  %i.gk = load atomic ptr, ptr %i.gj acquire, align 8, !noalias !1027
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.df
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i34.i.i = load ptr, ptr %i.gh, align 8, !tbaa !249, !noalias !1027
  %i.gn = getelementptr i8, ptr %i.gh, i64 48
  %.val1.i35.i.i = load i32, ptr %i.gn, align 8, !tbaa !250, !noalias !1027
  %.val2.i36.i.i = load ptr, ptr %i.gm, align 8, !tbaa !249, !noalias !1027
  %i.go = getelementptr i8, ptr %i.gm, i64 48
  %.val3.i37.i.i = load i32, ptr %i.go, align 8, !tbaa !250, !noalias !1027
  %i.gp = getelementptr i8, ptr %.val.i34.i.i, i64 128
  %.val.val.i38.i.i = load i64, ptr %i.gp, align 8, !tbaa !275, !noalias !1027
  %i.gq = getelementptr i8, ptr %.val2.i36.i.i, i64 128
  %.val2.val.i39.i.i = load i64, ptr %i.gq, align 8, !tbaa !275, !noalias !1027
  %i.gr = shl i64 %.val.val.i38.i.i, 32
  %i.gs = sext i32 %.val1.i35.i.i to i64
  %i.gt = or i64 %i.gr, %i.gs
  %i.gu = shl i64 %.val2.val.i39.i.i, 32
  %i.gv = sext i32 %.val3.i37.i.i to i64
  %i.gw = or i64 %i.gu, %i.gv
  %i.gx = icmp slt i64 %i.gt, %i.gw
  br i1 %i.gx, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i
  %i.gy = icmp eq ptr %i.cz, null
  br i1 %i.gy, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i
  %i.gz = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.dr
  %i.hb = load atomic ptr, ptr %i.ha acquire, align 8, !noalias !1027
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.dd
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.he = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.el
  %i.hg = load atomic ptr, ptr %i.hf acquire, align 8, !noalias !1027
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.df
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i48.i.i = load ptr, ptr %i.hd, align 8, !tbaa !249, !noalias !1027
  %i.hj = getelementptr i8, ptr %i.hd, i64 48
  %.val1.i49.i.i = load i32, ptr %i.hj, align 8, !tbaa !250, !noalias !1027
  %.val2.i50.i.i = load ptr, ptr %i.hi, align 8, !tbaa !249, !noalias !1027
  %i.hk = getelementptr i8, ptr %i.hi, i64 48
  %.val3.i51.i.i = load i32, ptr %i.hk, align 8, !tbaa !250, !noalias !1027
  %i.hl = getelementptr i8, ptr %.val.i48.i.i, i64 128
  %.val.val.i52.i.i = load i64, ptr %i.hl, align 8, !tbaa !275, !noalias !1027
  %i.hm = getelementptr i8, ptr %.val2.i50.i.i, i64 128
  %.val2.val.i53.i.i = load i64, ptr %i.hm, align 8, !tbaa !275, !noalias !1027
  %i.hn = shl i64 %.val.val.i52.i.i, 32
  %i.ho = sext i32 %.val1.i49.i.i to i64
  %i.hp = or i64 %i.hn, %i.ho
  %i.hq = shl i64 %.val2.val.i53.i.i, 32
  %i.hr = sext i32 %.val3.i51.i.i to i64
  %i.hs = or i64 %i.hq, %i.hr
  %i.ht = icmp slt i64 %i.hp, %i.hs               ; 3 uses
  %i.hu = icmp eq ptr %i.cz, null
  %.108.i = select i1 %i.ht, i64 %i.el, i64 %i.dr ; 2 uses
  %.109.i = select i1 %i.ht, i64 %i.df, i64 %i.dd ; 2 uses
  %.110.i = select i1 %i.ht, ptr %i.da, ptr %i.cy ; 2 uses
  br i1 %i.hu, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i, %bb.e
  %.pre-phi95.ph.i = phi i64 [ %.108.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.di, %bb.f ], [ %i.dr, %bb.e ], [ %..i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %.sink156.i.ph.i = phi i64 [ %.109.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.de, %bb.f ], [ %i.dd, %bb.e ], [ %.106.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %.sink.i.ph.i = phi ptr [ %.110.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cy, %bb.f ], [ %i.cy, %bb.e ], [ %.107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %i.hv = or i64 %i.cv, 1
  %i.hw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hv, i1 true)
  %i.hx = xor i64 %i.hw, 63
  %i.hy = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load atomic ptr, ptr %i.hz acquire, align 8, !noalias !1027
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.cv
  br label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i, %bb.e
  %.pre-phi95.i = phi i64 [ %.108.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.dr, %bb.e ], [ %i.di, %bb.f ], [ %..i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.pre-phi95.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.sink156.i.i = phi i64 [ %.109.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.dd, %bb.e ], [ %i.de, %bb.f ], [ %.106.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.sink156.i.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.sink.i.i = phi ptr [ %.110.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cy, %bb.e ], [ %i.cy, %bb.f ], [ %.107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.sink.i.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.0.i.i42.sink149.ph.i.i = phi ptr [ %i.cz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cz, %bb.e ], [ %i.cz, %bb.f ], [ %i.cz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %i.ib, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.id = load atomic ptr, ptr %i.ic acquire, align 8, !noalias !1027
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre-phi95.i
  %i.if = load atomic ptr, ptr %i.ie acquire, align 8, !noalias !1027
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sink156.i.i ; 2 uses
  %i.ih = load ptr, ptr %.0.i.i42.sink149.ph.i.i, align 8, !tbaa !130, !noalias !1027
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !130, !noalias !1027
end_hunk_7
