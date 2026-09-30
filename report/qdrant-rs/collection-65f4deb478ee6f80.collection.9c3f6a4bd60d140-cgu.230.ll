Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.230?download=true
inline.NumInlined: 146
inline.NumDeleted: 77
begin_hunk_0_@_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE4growBY_:bb.a
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !96 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE3newBY_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE3newBY_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE4readBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE5writeBY_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE8try_pushBY_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2304
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.g = tail call fastcc ptr @_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5block5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalEEB1U_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #21
  ret ptr %i.g
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE9has_valueBY_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp uge i64 %1, %i.b
  %i.d = add i64 %i.b, 32
  %.not = icmp ult i64 %1, %i.d
  %or.cond = and i1 %i.c, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %1, 31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.g = load atomic i64, ptr %i.f acquire, align 8
  %i.h = lshr i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE22observed_tail_positionBY_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #10
  %i.a = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef 8) #10 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE4growBY_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #10
  %i.c = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef 8) #10 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #20
  unreachable

_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 512
  %i.k = load i64, ptr %i.j, align 8, !noalias !99, !noundef !5
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 8, !noalias !99
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 520
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !99 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 512
  %i.q = load i64, ptr %i.p, align 8, !noalias !99, !noundef !5
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 8, !noalias !99
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 520
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !99 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE3newBY_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE4readBY_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %2 = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %2, 0
  %. = select i1 %.not1, i64 -2, i64 -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.4.0 = phi i64 [ %i.k, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ %., %bb.b ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.l)
  br label %bb.c
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE5writeBY_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 3) %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.a ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.f = atomicrmw or ptr %i.e, i64 %i.d release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalE8try_pushBY_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = tail call fastcc ptr @_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5block5BlockNtNtCsPYQCUnoTxQ_10collection14update_handler15OptimizerSignalEEB1U_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #21
  ret ptr %i.g
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE22observed_tail_positionB10_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #10
  %i.a = tail call noundef align 8 dereferenceable_or_null(2592) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2592, i64 noundef 8) #10 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2560
  store i64 %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2592) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE4growB10_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #10
  %i.c = tail call noundef align 8 dereferenceable_or_null(2592) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 2592, i64 noundef 8) #10 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2592) #20
  unreachable

_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2560 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 2560
  %i.k = load i64, ptr %i.j, align 8, !noalias !102, !noundef !5
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 8, !noalias !102
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 2568
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !102 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 2560
  %i.q = load i64, ptr %i.p, align 8, !noalias !102, !noundef !5
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 8, !noalias !102
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 2568
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !102 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE3newB10_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE4readB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE5writeB10_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5blockINtB2_5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageE8try_pushB10_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2560
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.g = tail call fastcc ptr @_RINvNtNtCskKLDkoKarTP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc5block5BlockNtNtNtCsPYQCUnoTxQ_10collection9profiling23slow_requests_collector21RequestProfileMessageEEB1W_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #21
  ret ptr %i.g
end_hunk_0
