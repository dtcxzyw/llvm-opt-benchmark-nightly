Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.12?download=true
inline.NumInlined: 241
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7Ga9Brpi21q_11polars_lazy:bb.a
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !2620
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !2620
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !2626, !prof !388

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !2627
  br label %bb.c, !dbg !2627

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2628
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !2637
  %i.e = icmp eq i64 %i.d, 0, !dbg !2637
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !2637, !prof !388

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2638
  %i.g = xor i1 %i.f, true, !dbg !2639
  %i.h = zext i1 %i.g to i8, !dbg !2640
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !2638

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !2641
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2642
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !2643
  %i.k = icmp ne i8 %i.j, 0, !dbg !2647
  tail call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !1661 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !2650
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !2650
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !2654, !prof !388

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !2655
  br label %bb.c, !dbg !2655

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2656
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !2664
  %i.e = icmp eq i64 %i.d, 0, !dbg !2664
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !2664, !prof !388

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2665
  %i.g = xor i1 %i.f, true, !dbg !2666
  %i.h = zext i1 %i.g to i8, !dbg !2667
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !2665

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !2668
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2669
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !2670
  %i.k = icmp ne i8 %i.j, 0, !dbg !2674
  tail call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !2675
  ret void, !dbg !2676
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #1 !dbg !2677 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !2678
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !2678
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !2684, !prof !388

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !2685
  br label %bb.c, !dbg !2685

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !2686
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !2695
  %i.e = icmp eq i64 %i.d, 0, !dbg !2695
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !2695, !prof !388

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !2696
  %i.g = xor i1 %i.f, true, !dbg !2697
  %i.h = zext i1 %i.g to i8, !dbg !2698
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !2696

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !2699
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !2700
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !2701
  %i.k = icmp ne i8 %i.j, 0, !dbg !2705
  tail call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1), !dbg !2706
  ret void, !dbg !2707
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2708 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128, !dbg !2709
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b, !dbg !2714

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, %bb.a
  %.sroa.0.029 = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22 ], !dbg !2716 ; 14 uses
  %.sroa.02.0 = phi i64 [ %i.a, %bb.a ], [ %i.al, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22 ], !dbg !2717 ; 7 uses
  %i.h = load i64, ptr %i.b, align 16, !dbg !2719, !noundef !14
  %i.i = add i64 %i.h, -1, !dbg !2720
  %i.j = and i64 %i.i, %.sroa.02.0, !dbg !2721    ; 3 uses
  %i.k = load i64, ptr %i.c, align 8, !dbg !2722, !noundef !14
  %i.l = sub i64 0, %i.k, !dbg !2724
  %i.m = and i64 %.sroa.02.0, %i.l, !dbg !2725
  %i.n = load ptr, ptr %i.d, align 8, !dbg !2726, !nonnull !14, !noundef !14
  %i.o = load i64, ptr %i.e, align 32, !dbg !2726, !noundef !14
  %i.p = icmp ult i64 %i.j, %i.o, !dbg !2728
  tail call void @llvm.assume(i1 %i.p), !dbg !2736
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.j, !dbg !2737 ; 2 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8, !dbg !2738 ; 3 uses
  %i.s = add i64 %.sroa.02.0, 1, !dbg !2742
  %i.t = icmp eq i64 %i.s, %i.r, !dbg !2742
  br i1 %i.t, label %bb.d, label %bb.c, !dbg !2742

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.r, %.sroa.02.0, !dbg !2744
  br i1 %i.u, label %bb.h, label %bb.e, !dbg !2744

bb.d:                                             ; preds = %bb.b
  %i.v = add nuw i64 %i.j, 1, !dbg !2745
  %i.w = load i64, ptr %i.g, align 128, !dbg !2746, !noundef !14
  %i.x = icmp ult i64 %i.v, %i.w, !dbg !2745
  br i1 %i.x, label %bb.n, label %bb.m, !dbg !2745

bb.e:                                             ; preds = %bb.c
  %i.y = icmp ult i32 %.sroa.0.029, 7, !dbg !2747
  br i1 %i.y, label %bb.g, label %bb.f, !dbg !2747

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !2753
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, !dbg !2753

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %.sroa.0.029, 0, !dbg !2754
  br i1 %.not.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.preheader, !dbg !2768

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.z = mul nuw i32 %.sroa.0.029, %.sroa.0.029, !dbg !2769 ; 2 uses
  %xtraiter = and i32 %i.z, 7, !dbg !2768         ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.029, 3, !dbg !2768
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !2768

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.z, 56, !dbg !2768
  br label %.lr.ph.i, !dbg !2768

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  %niter.next.7 = add i32 %niter, 8, !dbg !2768   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !2768
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !2768

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2768
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil.preheader, !dbg !2768

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0, !dbg !2768
  tail call void @llvm.assume(i1 %lcmp.mod52), !dbg !2768
  br label %.lr.ph.i.epil, !dbg !2768

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2775
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !2768 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !2768
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil, !dbg !2768, !llvm.loop !2784

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f, %bb.g
  %i.ab = add i32 %.sroa.0.029, 1, !dbg !2786
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2787

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !2788
  %i.ac = load atomic i64, ptr %i.f monotonic, align 128, !dbg !2790 ; 2 uses
  %i.ad = load i64, ptr %i.b, align 16, !dbg !2793, !noundef !14 ; 2 uses
  %i.ae = xor i64 %i.ad, -1, !dbg !2795
  %i.af = and i64 %i.ac, %i.ae, !dbg !2796
  %i.ag = icmp eq i64 %i.af, %.sroa.02.0, !dbg !2796
  br i1 %i.ag, label %bb.j, label %bb.i, !dbg !2796

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029, i32 6), !dbg !2797 ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i, %.sroa.0.0.i.i, !dbg !2803 ; 2 uses
  %.not.i11 = icmp eq i32 %.sroa.0.029, 0, !dbg !2806
  br i1 %.not.i11, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, label %.lr.ph.i12.preheader, !dbg !2815

.lr.ph.i12.preheader:                             ; preds = %bb.i
  %xtraiter53 = and i32 %2, 5, !dbg !2815         ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.029, 3, !dbg !2815
  br i1 %i.ah, label %.lr.ph.i12.epil.preheader, label %.lr.ph.i12.preheader.new, !dbg !2815

.lr.ph.i12.preheader.new:                         ; preds = %.lr.ph.i12.preheader
  %unroll_iter57 = and i32 %2, 56, !dbg !2815
  br label %.lr.ph.i12, !dbg !2815

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i12
  %lcmp.mod55.not = icmp eq i32 %xtraiter53, 0, !dbg !2815
  br i1 %lcmp.mod55.not, label %._crit_edge.loopexit.i, label %.lr.ph.i12.epil.preheader, !dbg !2815

.lr.ph.i12.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i12.preheader
  %lcmp.mod56 = icmp ne i32 %xtraiter53, 0, !dbg !2815
  tail call void @llvm.assume(i1 %lcmp.mod56), !dbg !2815
  br label %.lr.ph.i12.epil, !dbg !2815

.lr.ph.i12.epil:                                  ; preds = %.lr.ph.i12.epil, %.lr.ph.i12.epil.preheader
  %epil.iter54 = phi i32 [ 0, %.lr.ph.i12.epil.preheader ], [ %epil.iter54.next, %.lr.ph.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  %epil.iter54.next = add i32 %epil.iter54, 1, !dbg !2815 ; 2 uses
  %epil.iter54.cmp.not = icmp eq i32 %epil.iter54.next, %xtraiter53, !dbg !2815
  br i1 %epil.iter54.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i12.epil, !dbg !2815, !llvm.loop !2821

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i12.epil, %._crit_edge.loopexit.i.unr-lcssa
  %i.ai = add i32 %.sroa.0.029, 1, !dbg !2822
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2823

.lr.ph.i12:                                       ; preds = %.lr.ph.i12, %.lr.ph.i12.preheader.new
  %niter58 = phi i32 [ 0, %.lr.ph.i12.preheader.new ], [ %niter58.next.7, %.lr.ph.i12 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  tail call void @llvm.x86.sse2.pause(), !dbg !2816
  %niter58.next.7 = add i32 %niter58, 8, !dbg !2815 ; 2 uses
  %niter58.ncmp.7 = icmp eq i32 %niter58.next.7, %unroll_iter57, !dbg !2815
  br i1 %niter58.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i12, !dbg !2815

bb.j:                                             ; preds = %bb.h
  %i.aj = and i64 %i.ad, %i.ac, !dbg !2827
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !2827
  br i1 %i.ak, label %bb.l, label %bb.k, !dbg !2827

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22: ; preds = %._crit_edge.loopexit.i, %bb.i, %._crit_edge.loopexit.i20, %bb.o, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit
  %.sroa.0.1 = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit ], [ 1, %bb.o ], [ %i.ar, %._crit_edge.loopexit.i20 ], [ %i.ai, %._crit_edge.loopexit.i ], [ 1, %bb.i ], !dbg !2828
  %i.al = load atomic i64, ptr %0 monotonic, align 128, !dbg !2829
  br label %bb.b, !dbg !2714

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !2831
  br label %bb.l, !dbg !2832

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.k ], [ false, %bb.j ], !dbg !2828
  ret i1 %.sroa.0.0, !dbg !2833

bb.m:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.c, align 8, !dbg !2834, !noundef !14
  %i.an = add i64 %i.am, %i.m, !dbg !2835
  br label %bb.n, !dbg !2838

bb.n:                                             ; preds = %bb.d, %bb.m
  %.sroa.01.0 = phi i64 [ %i.an, %bb.m ], [ %i.r, %bb.d ], !dbg !2828
  %i.ao = cmpxchg weak ptr %0, i64 %.sroa.02.0, i64 %.sroa.01.0 seq_cst monotonic, align 8, !dbg !2839
  %i.ap = extractvalue { i64, i1 } %i.ao, 1, !dbg !2839
  br i1 %i.ap, label %bb.p, label %bb.o, !dbg !2845

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i15 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029, i32 6), !dbg !2846 ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i15, %.sroa.0.0.i.i15, !dbg !2849 ; 2 uses
  %.not.i16 = icmp eq i32 %.sroa.0.029, 0, !dbg !2851
  br i1 %.not.i16, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, label %.lr.ph.i17.preheader, !dbg !2855

.lr.ph.i17.preheader:                             ; preds = %bb.o
  %xtraiter59 = and i32 %3, 5, !dbg !2855         ; 3 uses
  %i.aq = icmp ult i32 %.sroa.0.029, 3, !dbg !2855
  br i1 %i.aq, label %.lr.ph.i17.epil.preheader, label %.lr.ph.i17.preheader.new, !dbg !2855

.lr.ph.i17.preheader.new:                         ; preds = %.lr.ph.i17.preheader
  %unroll_iter63 = and i32 %3, 56, !dbg !2855
  br label %.lr.ph.i17, !dbg !2855

._crit_edge.loopexit.i20.unr-lcssa:               ; preds = %.lr.ph.i17
  %lcmp.mod61.not = icmp eq i32 %xtraiter59, 0, !dbg !2855
  br i1 %lcmp.mod61.not, label %._crit_edge.loopexit.i20, label %.lr.ph.i17.epil.preheader, !dbg !2855

.lr.ph.i17.epil.preheader:                        ; preds = %._crit_edge.loopexit.i20.unr-lcssa, %.lr.ph.i17.preheader
  %lcmp.mod62 = icmp ne i32 %xtraiter59, 0, !dbg !2855
  tail call void @llvm.assume(i1 %lcmp.mod62), !dbg !2855
  br label %.lr.ph.i17.epil, !dbg !2855

.lr.ph.i17.epil:                                  ; preds = %.lr.ph.i17.epil, %.lr.ph.i17.epil.preheader
  %epil.iter60 = phi i32 [ 0, %.lr.ph.i17.epil.preheader ], [ %epil.iter60.next, %.lr.ph.i17.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  %epil.iter60.next = add i32 %epil.iter60, 1, !dbg !2855 ; 2 uses
  %epil.iter60.cmp.not = icmp eq i32 %epil.iter60.next, %xtraiter59, !dbg !2855
  br i1 %epil.iter60.cmp.not, label %._crit_edge.loopexit.i20, label %.lr.ph.i17.epil, !dbg !2855, !llvm.loop !2859

._crit_edge.loopexit.i20:                         ; preds = %.lr.ph.i17.epil, %._crit_edge.loopexit.i20.unr-lcssa
  %i.ar = add i32 %.sroa.0.029, 1, !dbg !2860
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22, !dbg !2861

.lr.ph.i17:                                       ; preds = %.lr.ph.i17, %.lr.ph.i17.preheader.new
  %niter64 = phi i32 [ 0, %.lr.ph.i17.preheader.new ], [ %niter64.next.7, %.lr.ph.i17 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  tail call void @llvm.x86.sse2.pause(), !dbg !2856
  %niter64.next.7 = add i32 %niter64, 8, !dbg !2855 ; 2 uses
  %niter64.ncmp.7 = icmp eq i32 %niter64.next.7, %unroll_iter63, !dbg !2855
  br i1 %niter64.ncmp.7, label %._crit_edge.loopexit.i20.unr-lcssa, label %.lr.ph.i17, !dbg !2855

bb.p:                                             ; preds = %bb.n
  store ptr %i.q, ptr %1, align 8, !dbg !2863
  %i.as = load i64, ptr %i.c, align 8, !dbg !2864, !noundef !14
  %i.at = add i64 %i.as, %.sroa.02.0, !dbg !2865
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2867
  store i64 %i.at, ptr %i.au, align 8, !dbg !2867
  br label %bb.l, !dbg !2868
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacityCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 !dbg !2870 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 -1, label %bb.d
  ], !dbg !2871, !prof !2872

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25, !dbg !2873
  unreachable, !dbg !2873

bb.c:                                             ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2874
  %i.b = lshr i64 -1, %i.a, !dbg !2880
  %i.c = add i64 %i.b, 1, !dbg !2882
  br label %bb.d, !dbg !2883

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.04.0 = phi i64 [ %i.c, %bb.c ], [ 1, %bb.a ], !dbg !2884 ; 2 uses
  %i.d = shl i64 %.sroa.04.0, 1, !dbg !2885
  %i.e = tail call { ptr, i64 } @_RINvXsb_NtNtCsgZ49sUHp3tW_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEINtNtNtNtB1H_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtB1H_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECs7Ga9Brpi21q_11polars_lazy(i64 noundef 0, i64 noundef %1), !dbg !2887 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0, !dbg !2887
  %i.g = extractvalue { ptr, i64 } %i.e, 1, !dbg !2887
  store i64 0, ptr %0, align 128, !dbg !2893
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2893
  store i64 0, ptr %i.h, align 128, !dbg !2893
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !2893
  store ptr %i.f, ptr %i.i, align 8, !dbg !2893
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !2893
  store i64 %i.g, ptr %i.j, align 32, !dbg !2893
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !2893
  store i64 %1, ptr %i.k, align 128, !dbg !2893
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !2893
  store i64 %i.d, ptr %i.l, align 8, !dbg !2893
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2893
  store i64 %.sroa.04.0, ptr %i.m, align 16, !dbg !2893
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !2893
  store i32 0, ptr %i.n, align 128, !dbg !2893
  %.sroa.06.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260, !dbg !2893
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx, align 4, !dbg !2893
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !2893
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2893
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !2893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16, !dbg !2893
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !2893
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !2893
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !2893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2893
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !2893
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx.sroa_idx, align 16, !dbg !2893
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !2893
  store i8 1, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !2893
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !2893
  store i32 0, ptr %i.o, align 64, !dbg !2893
  %.sroa.06.sroa.3.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 324, !dbg !2893
  store i8 0, ptr %.sroa.06.sroa.3.0..sroa_idx26, align 4, !dbg !2893
  %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !2893
  store i64 0, ptr %.sroa.06.sroa.4.sroa.3.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8, !dbg !2893
  %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !2893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.4.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16, !dbg !2893
  %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !2893
  %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !2893
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.sroa.4.sroa.5.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, i8 0, i64 16, i1 false), !dbg !2893
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.06.sroa.4.sroa.7.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 8, !dbg !2893
  %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !2893
  store i64 0, ptr %.sroa.06.sroa.4.sroa.8.0..sroa.06.sroa.4.0..sroa_idx28.sroa_idx, align 16, !dbg !2893
  %.sroa.37.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !2893
  store i8 1, ptr %.sroa.37.0..sroa_idx8, align 8, !dbg !2893
  ret void, !dbg !2895
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !2896 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2897 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !2897, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2898
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !2905
  %i.e = load i64, ptr %i.a, align 16, !dbg !2908, !noundef !14
  %i.f = and i64 %i.e, %i.d, !dbg !2910
  %i.g = icmp eq i64 %i.f, 0, !dbg !2910          ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2910

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !2911
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28, !dbg !2912
  br label %bb.c, !dbg !2913

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g, !dbg !2914
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20disconnect_receiversCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !2915 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !2916 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !2916, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2917
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !2924 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !dbg !2927, !noundef !14 ; 2 uses
  %i.f = and i64 %i.e, %i.d, !dbg !2929
  %i.g = icmp eq i64 %i.f, 0, !dbg !2929          ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2929

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !2930
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28, !dbg !2931
  %.pre = load i64, ptr %i.a, align 16, !dbg !2932
  br label %bb.c, !dbg !2937

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ], !dbg !2932 ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128, !dbg !2938
  %i.k = xor i64 %i.i, -1, !dbg !2942
  %i.l = and i64 %i.d, %i.k, !dbg !2943
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d, !dbg !2944

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.j ], !dbg !2947
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.j ], !dbg !2948 ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.j ], !dbg !2951 ; 5 uses
  %i.r = add i64 %i.q, -1, !dbg !2952
  %i.s = and i64 %.sroa.0.0.i, %i.r, !dbg !2953   ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !dbg !2954, !noundef !14
  %i.u = sub i64 0, %i.t, !dbg !2956
  %i.v = and i64 %.sroa.0.0.i, %i.u, !dbg !2957
  %i.w = load ptr, ptr %i.n, align 8, !dbg !2958, !nonnull !14, !noundef !14
  %i.x = load i64, ptr %i.o, align 32, !dbg !2958, !noundef !14
  %i.y = icmp ult i64 %i.s, %i.x, !dbg !2960
  tail call void @llvm.assume(i1 %i.y), !dbg !2965
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.s, !dbg !2966 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !2967 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1, !dbg !2971
  %i.ac = icmp eq i64 %i.ab, %i.aa, !dbg !2971
  br i1 %i.ac, label %bb.f, label %bb.e, !dbg !2971

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i, !dbg !2973
  br i1 %i.ad, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCs7Ga9Brpi21q_11polars_lazy.exit, label %bb.g, !dbg !2973

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1, !dbg !2974
  %i.af = load i64, ptr %i.p, align 128, !dbg !2975, !noundef !14
  %i.ag = icmp ult i64 %i.ae, %i.af, !dbg !2974
  br i1 %i.ag, label %bb.l, label %bb.k, !dbg !2974

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7, !dbg !2976
  br i1 %i.ah, label %bb.i, label %bb.h, !dbg !2976

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !2978
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !2978

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0, !dbg !2979
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !2983

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !2984 ; 2 uses
  %xtraiter = and i32 %i.ai, 7, !dbg !2983        ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3, !dbg !2983
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !2983

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56, !dbg !2983
  br label %.lr.ph.i.i, !dbg !2983

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  tail call void @llvm.x86.sse2.pause(), !dbg !2986
  %niter.next.7 = add i32 %niter, 8, !dbg !2983   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !2983
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !2983

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2983
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !2983
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvCs7Ga9Brpi21q_11polars_lazy:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3247, !noalias !3068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3248, !noalias !3068
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !3249

bb.r:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !dbg !3250, !noalias !3256
  %i.aw = icmp eq i64 %i.av, 1, !dbg !3263
  br i1 %i.aw, label %bb.s, label %common.resume, !dbg !3263

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !3264
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %common.resume unwind label %bb.m, !dbg !3266, !noalias !3068

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs0_0Cs7Ga9Brpi21q_11polars_lazy(ptr nonnull %i.f), !dbg !3267, !noalias !3068
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !3267

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3271, !noalias !3068
  %i.ax = call fastcc noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 dereferenceable(40) %i.i), !dbg !3011
  br i1 %i.ax, label %._crit_edge, label %bb.b, !dbg !3013

.split:                                           ; preds = %bb.f
  %i.ay = extractvalue { i64, i32 } %i.x, 1, !dbg !3056 ; 2 uses
  %i.az = icmp ult i32 %i.ay, 1000000000, !dbg !3272
  call void @llvm.assume(i1 %i.az), !dbg !3272
  %.not13 = icmp samesign ult i32 %i.ay, %i.p, !dbg !3285
  br i1 %.not13, label %bb.g, label %bb.u, !dbg !3056

bb.t:                                             ; preds = %bb.f
  %.not12 = icmp slt i64 %i.y, %i.w, !dbg !3285
  br i1 %.not12, label %bb.g, label %bb.u, !dbg !3056

bb.u:                                             ; preds = %.split, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3293
  store i8 0, ptr %i.ba, align 8, !dbg !3293
  br label %bb.v, !dbg !3294

bb.v:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy.exit.thread, %bb.w, %bb.u
  %storemerge = phi i64 [ 19, %bb.u ], [ %.sroa.0.0.copyload2, %bb.w ], [ 19, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy.exit.thread ], !dbg !3048
  store i64 %storemerge, ptr %0, align 8, !dbg !3048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3296
  ret void, !dbg !3297

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy.exit.thread: ; preds = %._crit_edge, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3298
  store i8 1, ptr %i.bb, align 8, !dbg !3298
  br label %bb.v, !dbg !3300

bb.w:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false), !dbg !3303
  br label %bb.v, !dbg !3304
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4sendCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3305 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3306
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3307
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !3307
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !dbg !3309, !noalias !3317 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !dbg !3320, !noalias !3317, !noundef !14 ; 2 uses
  %i.o = and i64 %i.n, %i.m, !dbg !3322
  %i.p = icmp eq i64 %i.o, 0, !dbg !3322
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !3322

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i, !dbg !3322

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3323), !dbg !3325
  br label %bb.b, !dbg !3322

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1, !dbg !3326
  %i.aa = and i64 %i.z, %.sroa.02.034.i, !dbg !3327 ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !dbg !3328, !noalias !3323, !noundef !14
  %i.ac = sub i64 0, %i.ab, !dbg !3330
  %i.ad = and i64 %.sroa.02.034.i, %i.ac, !dbg !3331
  %i.ae = load ptr, ptr %i.r, align 8, !dbg !3332, !noalias !3323, !nonnull !14, !noundef !14
  %i.af = load i64, ptr %i.s, align 32, !dbg !3332, !noalias !3323, !noundef !14
  %i.ag = icmp ult i64 %i.aa, %i.af, !dbg !3334
  call void @llvm.assume(i1 %i.ag), !dbg !3339
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %i.aa, !dbg !3340 ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !dbg !3341, !noalias !3323 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai, !dbg !3345
  br i1 %i.aj, label %bb.d, label %bb.c, !dbg !3345

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !dbg !3347, !noalias !3323, !noundef !14
  %i.al = add i64 %i.ak, %i.ai, !dbg !3348
  %i.am = add i64 %.sroa.02.034.i, 1, !dbg !3351
  %i.an = icmp eq i64 %i.al, %i.am, !dbg !3352
  br i1 %i.an, label %bb.h, label %bb.e, !dbg !3352

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1, !dbg !3353
  %i.ap = load i64, ptr %i.t, align 128, !dbg !3354, !noalias !3323, !noundef !14
  %i.aq = icmp ult i64 %i.ao, %i.ap, !dbg !3353
  br i1 %i.aq, label %bb.k, label %bb.j, !dbg !3353

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7, !dbg !3355
  br i1 %i.ar, label %bb.g, label %bb.f, !dbg !3355

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit, !dbg !3357

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !3358
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !3362

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i, !dbg !3363 ; 2 uses
  %xtraiter = and i32 %i.as, 7, !dbg !3362        ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !3362
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !3362

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56, !dbg !3362
  br label %.lr.ph.i.i, !dbg !3362

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  %niter.next.7 = add i32 %niter, 8, !dbg !3362   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !3362
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !3362

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !3362
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !3362

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0, !dbg !3362
  call void @llvm.assume(i1 %lcmp.mod91), !dbg !3362
  br label %.lr.ph.i.i.epil, !dbg !3362

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !3365, !noalias !3323
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !3362 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !3362
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !3362, !llvm.loop !3368

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1, !dbg !3369
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !3370

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !3371
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !dbg !3373, !noalias !3323
  %i.aw = load i64, ptr %i.q, align 8, !dbg !3376, !noalias !3323, !noundef !14
  %i.ax = add i64 %i.aw, %i.av, !dbg !3378
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i, !dbg !3380
  br i1 %i.ay, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit, label %bb.i, !dbg !3380

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6), !dbg !3381 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !3384 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !3386
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader, !dbg !3390

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter92 = and i32 %5, 5, !dbg !3390         ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !3390
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !3390

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %5, 56, !dbg !3390
  br label %.lr.ph.i12.i, !dbg !3390

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0, !dbg !3390
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !3390

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0, !dbg !3390
  call void @llvm.assume(i1 %lcmp.mod95), !dbg !3390
  br label %.lr.ph.i12.i.epil, !dbg !3390

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  %epil.iter93.next = add i32 %epil.iter93, 1, !dbg !3390 ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92, !dbg !3390
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !3390, !llvm.loop !3394

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1, !dbg !3395
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !3396

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3391, !noalias !3323
  %niter97.next.7 = add i32 %niter97, 8, !dbg !3390 ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96, !dbg !3390
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !3390

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ], !dbg !3398
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !dbg !3399, !noalias !3323 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !dbg !3320, !noalias !3323, !noundef !14 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb, !dbg !3322
  %i.be = icmp eq i64 %i.bd, 0, !dbg !3322
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !3322

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !dbg !3402, !noalias !3323, !noundef !14
  %i.bg = add i64 %i.bf, %i.ad, !dbg !3403
  br label %bb.l, !dbg !3405

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1, !dbg !3406
  br label %bb.l, !dbg !3405

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ], !dbg !3398
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !3407, !noalias !3323
  %i.bj = extractvalue { i64, i1 } %i.bi, 1, !dbg !3407
  br i1 %i.bj, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit.thread, label %bb.m, !dbg !3412

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6), !dbg !3413 ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !3416 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0, !dbg !3418
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader, !dbg !3422

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter98 = and i32 %6, 5, !dbg !3422         ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3, !dbg !3422
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !3422

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %6, 56, !dbg !3422
  br label %.lr.ph.i17.i, !dbg !3422

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0, !dbg !3422
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !3422

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0, !dbg !3422
  call void @llvm.assume(i1 %lcmp.mod101), !dbg !3422
  br label %.lr.ph.i17.i.epil, !dbg !3422

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  %epil.iter99.next = add i32 %epil.iter99, 1, !dbg !3422 ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98, !dbg !3422
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !3422, !llvm.loop !3426

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1, !dbg !3427
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !3428

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  call void @llvm.x86.sse2.pause(), !dbg !3423, !noalias !3323
  %niter103.next.7 = add i32 %niter103, 8, !dbg !3422 ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102, !dbg !3422
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !3422

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i, %bb.n, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !dbg !3430, !range !1216, !noundef !14 ; 2 uses
  %.not = icmp eq i32 %i.bm, 1000000000, !dbg !3430
  br i1 %.not, label %bb.o, label %bb.n, !dbg !3432

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !dbg !3433, !alias.scope !3323
  %i.bn = add i64 %.sroa.02.034.i, 1, !dbg !3434  ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !dbg !3434, !alias.scope !3323
  %.sroa.018.0.copyload35 = load i64, ptr %2, align 8, !dbg !3435
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !3435
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !3436
  store i64 %.sroa.018.0.copyload35, ptr %i.bo, align 8, !dbg !3442, !noalias !3447
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !3442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx36, i64 64, i1 false), !dbg !3442
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !dbg !3450, !noalias !3454
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320, !dbg !3456
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp) #28, !dbg !3457
  br label %bb.ai, !dbg !3458

bb.n:                                             ; preds = %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit
  %i.bq = load i64, ptr %i.h, align 8, !dbg !3462, !noundef !14 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp, !dbg !3463 ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3464, !noalias !3467
  store ptr %i.g, ptr %i.f, align 8, !dbg !3470
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !3470
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !3470
  %i.bs = load i8, ptr %i.v, align 8, !dbg !3471, !range !3093, !noalias !3480, !noundef !14
  %i.bt = icmp eq i8 %i.bs, 1, !dbg !3487
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i, !dbg !3487, !prof !388

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp, !dbg !3488 ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null, !dbg !3489
  br i1 %i.bv, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.thread.i.i, !dbg !3489

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !3492, !noalias !3467, !noundef !14 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !3502, !noalias !3467
  %.not.i.i.i = icmp eq ptr %i.bw, null, !dbg !3504
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !dbg !3505, !prof !409

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3506, !noalias !3467
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp, !dbg !3506 ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !dbg !3506, !noalias !3467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3507, !noalias !3467
  store ptr %i.g, ptr %i.c, align 8, !dbg !3508, !noalias !3467
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !dbg !3508
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8, !dbg !3508
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0Cs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !dbg !3513, !noalias !3467

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3515), !dbg !3518
  call void @llvm.experimental.noalias.scope.decl(metadata !3519), !dbg !3522
  call void @llvm.experimental.noalias.scope.decl(metadata !3524), !dbg !3527
  %i.bz = load ptr, ptr %i.e, align 8, !dbg !3529, !alias.scope !3533, !noalias !3467, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !3534, !noalias !3537
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !3538
  br i1 %i.cb, label %bb.s, label %.body.thread, !dbg !3538

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !3539
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %.body.thread unwind label %bb.v, !dbg !3541, !noalias !3467

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3507, !noalias !3467
  call void @llvm.experimental.noalias.scope.decl(metadata !3542), !dbg !3518
  call void @llvm.experimental.noalias.scope.decl(metadata !3545), !dbg !3548
  call void @llvm.experimental.noalias.scope.decl(metadata !3550), !dbg !3553
  %i.cc = load ptr, ptr %i.e, align 8, !dbg !3555, !alias.scope !3559, !noalias !3467, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !3560, !noalias !3563
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !3564
  br i1 %i.ce, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i, !dbg !3564

bb.u:                                             ; preds = %bb.t
  fence acquire, !dbg !3565
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp, !dbg !3567

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3518, !noalias !3467
  br label %bb.ag, !dbg !3518

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #23, !dbg !3568, !noalias !3467
  unreachable, !dbg !3568

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3569, !noalias !3467
  store ptr %i.bw, ptr %i.d, align 8, !dbg !3569, !noalias !3467
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !3570
  store atomic i64 0, ptr %i.cg release, align 8, !dbg !3580, !noalias !3467
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !3582
  store atomic ptr null, ptr %i.ch release, align 8, !dbg !3589, !noalias !3467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3591, !noalias !3467
  store ptr %i.g, ptr %i.b, align 8, !dbg !3592, !noalias !3467
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8, !dbg !3592
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8, !dbg !3592
  invoke fastcc void @_RNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0Cs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !dbg !3596, !noalias !3467

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3591, !noalias !3467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3598, !noalias !3467
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !3602, !noalias !3467, !noundef !14 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !dbg !3602, !noalias !3467
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !3606, !noalias !3467
  %i.cj = icmp eq ptr %i.ci, null, !dbg !3608
  br i1 %i.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i, label %bb.y, !dbg !3608

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !dbg !3610, !noalias !3616
  %i.cl = icmp eq i64 %i.ck, 1, !dbg !3625
  br i1 %i.cl, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i, !dbg !3625

bb.z:                                             ; preds = %bb.y
  fence acquire, !dbg !3626
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp, !dbg !3628

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3629, !noalias !3467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3630, !noalias !3467
  br label %bb.ag, !dbg !3631

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !3632, !noalias !3638
  %i.co = icmp eq i64 %i.cn, 1, !dbg !3645
  br i1 %i.co, label %bb.ab, label %.body.thread, !dbg !3645

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !3646
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %.body.thread unwind label %bb.v, !dbg !3648, !noalias !3467

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %.noexc10
  invoke fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs0_0Cs7Ga9Brpi21q_11polars_lazy(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread30.loopexit.split-lp, !dbg !3649

bb.ac:                                            ; preds = %bb.n
  %i.cp = extractvalue { i64, i32 } %i.br, 0, !dbg !3463 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.bq, !dbg !3653
  br i1 %i.cq, label %.split, label %bb.ad, !dbg !3653

.split:                                           ; preds = %bb.ac
  %i.cr = extractvalue { i64, i32 } %i.br, 1, !dbg !3463 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 1000000000, !dbg !3661
  call void @llvm.assume(i1 %i.cs), !dbg !3661
  %.not44 = icmp samesign ult i32 %i.cr, %i.bm, !dbg !3669
  br i1 %.not44, label %bb.o, label %bb.ae, !dbg !3463

bb.ad:                                            ; preds = %bb.ac
  %.not43 = icmp slt i64 %i.cp, %i.bq, !dbg !3669
  br i1 %.not43, label %bb.o, label %bb.ae, !dbg !3463

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !dbg !3679
  store i64 0, ptr %0, align 8, !dbg !3678
  br label %bb.af, !dbg !3680

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3682
  ret void, !dbg !3683

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3684, !noalias !3467
  %i.ct = load atomic i64, ptr %i.k monotonic, align 128, !dbg !3309, !noalias !3685 ; 2 uses
  %i.cu = load i64, ptr %i.l, align 16, !dbg !3320, !noalias !3685, !noundef !14 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct, !dbg !3322
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!2597 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 2870, column: 26, scope: !1671, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 464, column: 31, scope: !1673, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 616, column: 6, scope: !1675, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 221, column: 5, scope: !1677, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 121, column: 24, scope: !1679, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 720, column: 40, scope: !2604, inlinedAt: !2605)
!2604 = distinct !DISubprogram(name: "new<core::option::Option<polars_lazy::frame::cached_arenas::CachedArena>>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCs7Ga9Brpi21q_11polars_lazy5frame13cached_arenas11CachedArenaEE3newB1L_", scope: !1682, file: !360, line: 719, type: !13, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2605 = !DILocation(line: 493, column: 13, scope: !2588)
!2606 = !DILocation(line: 464, column: 12, scope: !1673, inlinedAt: !2600)
!2607 = !DILocation(line: 476, column: 13, scope: !1673, inlinedAt: !2600)
!2608 = !DILocation(line: 616, column: 5, scope: !1675, inlinedAt: !2601)
!2609 = !DILocation(line: 123, column: 25, scope: !1688, inlinedAt: !2603)
!2610 = !DILocation(line: 0, scope: !1673, inlinedAt: !2600)
!2611 = !DILocation(line: 720, column: 28, scope: !2604, inlinedAt: !2605)
!2612 = !DILocation(line: 3904, column: 24, scope: !1692, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 741, column: 18, scope: !1694, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 141, column: 21, scope: !1696, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 123, column: 17, scope: !1688, inlinedAt: !2603)
!2616 = !DILocation(line: 123, column: 12, scope: !1688, inlinedAt: !2603)
!2617 = !DILocation(line: 720, column: 9, scope: !2604, inlinedAt: !2605)
!2618 = !DILocation(line: 495, column: 6, scope: !2588)
!2619 = distinct !DISubprogram(name: "lock<std::sync::mpmc::zero::Inner>", linkageName: "_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7Ga9Brpi21q_11polars_lazy", scope: !1662, file: !360, line: 490, type: !13, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2620 = !DILocation(line: 3989, column: 17, scope: !1655, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 3065, column: 26, scope: !2622, inlinedAt: !2623)
!2622 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE16compare_exchange", scope: !24, file: !18, line: 3059, type: !13, scopeLine: 3059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2623 = !DILocation(line: 32, column: 23, scope: !2624, inlinedAt: !2625)
!2624 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !404, file: !403, line: 31, type: !13, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2625 = !DILocation(line: 492, column: 24, scope: !2619)
!2626 = !DILocation(line: 32, column: 12, scope: !2624, inlinedAt: !2625)
!2627 = !DILocation(line: 33, column: 18, scope: !2624, inlinedAt: !2625)
!2628 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 2870, column: 26, scope: !1671, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 464, column: 31, scope: !1673, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 616, column: 6, scope: !1675, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 221, column: 5, scope: !1677, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 121, column: 24, scope: !1679, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 720, column: 40, scope: !2635, inlinedAt: !2636)
!2635 = distinct !DISubprogram(name: "new<std::sync::mpmc::zero::Inner>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc4zero5InnerE3newCs7Ga9Brpi21q_11polars_lazy", scope: !1682, file: !360, line: 719, type: !13, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2636 = !DILocation(line: 493, column: 13, scope: !2619)
!2637 = !DILocation(line: 464, column: 12, scope: !1673, inlinedAt: !2631)
!2638 = !DILocation(line: 476, column: 13, scope: !1673, inlinedAt: !2631)
!2639 = !DILocation(line: 616, column: 5, scope: !1675, inlinedAt: !2632)
!2640 = !DILocation(line: 123, column: 25, scope: !1688, inlinedAt: !2634)
!2641 = !DILocation(line: 0, scope: !1673, inlinedAt: !2631)
!2642 = !DILocation(line: 720, column: 28, scope: !2635, inlinedAt: !2636)
!2643 = !DILocation(line: 3904, column: 24, scope: !1692, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 741, column: 18, scope: !1694, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 141, column: 21, scope: !1696, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 123, column: 17, scope: !1688, inlinedAt: !2634)
!2647 = !DILocation(line: 123, column: 12, scope: !1688, inlinedAt: !2634)
!2648 = !DILocation(line: 720, column: 9, scope: !2635, inlinedAt: !2636)
!2649 = !DILocation(line: 495, column: 6, scope: !2619)
!2650 = !DILocation(line: 3989, column: 17, scope: !1655, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 3065, column: 26, scope: !1657, inlinedAt: !2652)
!2652 = !DILocation(line: 32, column: 23, scope: !1659, inlinedAt: !2653)
!2653 = !DILocation(line: 492, column: 24, scope: !1661)
!2654 = !DILocation(line: 32, column: 12, scope: !1659, inlinedAt: !2653)
!2655 = !DILocation(line: 33, column: 18, scope: !1659, inlinedAt: !2653)
!2656 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 2870, column: 26, scope: !1671, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 464, column: 31, scope: !1673, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 616, column: 6, scope: !1675, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 221, column: 5, scope: !1677, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 121, column: 24, scope: !1679, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 720, column: 40, scope: !1681, inlinedAt: !2663)
!2663 = !DILocation(line: 493, column: 13, scope: !1661)
!2664 = !DILocation(line: 464, column: 12, scope: !1673, inlinedAt: !2659)
!2665 = !DILocation(line: 476, column: 13, scope: !1673, inlinedAt: !2659)
!2666 = !DILocation(line: 616, column: 5, scope: !1675, inlinedAt: !2660)
!2667 = !DILocation(line: 123, column: 25, scope: !1688, inlinedAt: !2662)
!2668 = !DILocation(line: 0, scope: !1673, inlinedAt: !2659)
!2669 = !DILocation(line: 720, column: 28, scope: !1681, inlinedAt: !2663)
!2670 = !DILocation(line: 3904, column: 24, scope: !1692, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 741, column: 18, scope: !1694, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 141, column: 21, scope: !1696, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 123, column: 17, scope: !1688, inlinedAt: !2662)
!2674 = !DILocation(line: 123, column: 12, scope: !1688, inlinedAt: !2662)
!2675 = !DILocation(line: 720, column: 9, scope: !1681, inlinedAt: !2663)
!2676 = !DILocation(line: 495, column: 6, scope: !1661)
!2677 = distinct !DISubprogram(name: "lock<bool>", linkageName: "_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexbE4lockCs7Ga9Brpi21q_11polars_lazy", scope: !1662, file: !360, line: 490, type: !13, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2678 = !DILocation(line: 3989, column: 17, scope: !1655, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 3065, column: 26, scope: !2680, inlinedAt: !2681)
!2680 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE16compare_exchange", scope: !24, file: !18, line: 3059, type: !13, scopeLine: 3059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2681 = !DILocation(line: 32, column: 23, scope: !2682, inlinedAt: !2683)
!2682 = distinct !DISubprogram(name: "lock", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4lock", scope: !404, file: !403, line: 31, type: !13, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2683 = !DILocation(line: 492, column: 24, scope: !2677)
!2684 = !DILocation(line: 32, column: 12, scope: !2682, inlinedAt: !2683)
!2685 = !DILocation(line: 33, column: 18, scope: !2682, inlinedAt: !2683)
!2686 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 2870, column: 26, scope: !1671, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 464, column: 31, scope: !1673, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 616, column: 6, scope: !1675, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 221, column: 5, scope: !1677, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 121, column: 24, scope: !1679, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 720, column: 40, scope: !2693, inlinedAt: !2694)
!2693 = distinct !DISubprogram(name: "new<bool>", linkageName: "_RNvMs9_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbE3newCs7Ga9Brpi21q_11polars_lazy", scope: !1682, file: !360, line: 719, type: !13, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2694 = !DILocation(line: 493, column: 13, scope: !2677)
!2695 = !DILocation(line: 464, column: 12, scope: !1673, inlinedAt: !2689)
!2696 = !DILocation(line: 476, column: 13, scope: !1673, inlinedAt: !2689)
!2697 = !DILocation(line: 616, column: 5, scope: !1675, inlinedAt: !2690)
!2698 = !DILocation(line: 123, column: 25, scope: !1688, inlinedAt: !2692)
!2699 = !DILocation(line: 0, scope: !1673, inlinedAt: !2689)
!2700 = !DILocation(line: 720, column: 28, scope: !2693, inlinedAt: !2694)
!2701 = !DILocation(line: 3904, column: 24, scope: !1692, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 741, column: 18, scope: !1694, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 141, column: 21, scope: !1696, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 123, column: 17, scope: !1688, inlinedAt: !2692)
!2705 = !DILocation(line: 123, column: 12, scope: !1688, inlinedAt: !2692)
!2706 = !DILocation(line: 720, column: 9, scope: !2693, inlinedAt: !2694)
!2707 = !DILocation(line: 495, column: 6, scope: !2677)
!2708 = distinct !DISubprogram(name: "start_recv<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 215, type: !13, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2709 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 2870, column: 26, scope: !2711, inlinedAt: !2712)
!2711 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !24, file: !18, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2712 = !DILocation(line: 217, column: 34, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !1152, line: 216, column: 9)
!2714 = !DILocation(line: 219, column: 9, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2713, file: !1152, line: 217, column: 9)
!2716 = !DILocation(line: 0, scope: !2708)
!2717 = !DILocation(line: 2870, column: 26, scope: !2711, inlinedAt: !2718)
!2718 = !DILocation(line: 0, scope: !2713)
!2719 = !DILocation(line: 221, column: 33, scope: !2715)
!2720 = !DILocation(line: 221, column: 32, scope: !2715)
!2721 = !DILocation(line: 221, column: 25, scope: !2715)
!2722 = !DILocation(line: 222, column: 32, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !1152, line: 221, column: 13)
!2724 = !DILocation(line: 222, column: 30, scope: !2723)
!2725 = !DILocation(line: 222, column: 23, scope: !2723)
!2726 = !DILocation(line: 226, column: 33, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !1152, line: 222, column: 13)
!2728 = !DILocation(line: 252, column: 39, scope: !2729, inlinedAt: !2733)
!2729 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !2731, file: !2730, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2730 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!2731 = !DINamespace(name: "{impl#2}", scope: !2732)
!2732 = !DINamespace(name: "index", scope: !1461)
!2733 = !DILocation(line: 646, column: 26, scope: !2734, inlinedAt: !2735)
!2734 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !1460, file: !1459, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2735 = !DILocation(line: 226, column: 45, scope: !2727)
!2736 = !DILocation(line: 252, column: 13, scope: !2729, inlinedAt: !2733)
!2737 = !DILocation(line: 253, column: 13, scope: !2729, inlinedAt: !2733)
!2738 = !DILocation(line: 3905, column: 24, scope: !17, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 2870, column: 26, scope: !2711, inlinedAt: !2740)
!2740 = !DILocation(line: 227, column: 36, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2727, file: !1152, line: 226, column: 13)
!2742 = !DILocation(line: 230, column: 16, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2741, file: !1152, line: 227, column: 13)
!2744 = !DILocation(line: 259, column: 23, scope: !2743)
!2745 = !DILocation(line: 231, column: 30, scope: !2743)
!2746 = !DILocation(line: 231, column: 42, scope: !2743)
!2747 = !DILocation(line: 127, column: 12, scope: !2748, inlinedAt: !2752)
!2748 = distinct !DISubprogram(name: "spin_heavy", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy", scope: !2750, file: !2749, line: 126, type: !13, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2749 = !DIFile(filename: "library/std/src/sync/mpmc/utils.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b941d8df8f24d0813175fb738fe0f164")
!2750 = !DINamespace(name: "Backoff", scope: !2751)
!2751 = !DINamespace(name: "utils", scope: !1000)
!2752 = distinct !DILocation(line: 281, column: 25, scope: !2743)
!2753 = !DILocation(line: 132, column: 13, scope: !2748, inlinedAt: !2752)
!2754 = !DILocation(line: 1917, column: 50, scope: !2755, inlinedAt: !2757)
!2755 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !2756, file: !1252, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2756 = !DINamespace(name: "{impl#64}", scope: !1479)
!2757 = distinct !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !2762)
!2758 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCs7Ga9Brpi21q_11polars_lazy", scope: !2760, file: !2759, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2759 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!2760 = !DINamespace(name: "{impl#5}", scope: !2761)
!2761 = !DINamespace(name: "range", scope: !1979)
!2762 = distinct !DILocation(line: 866, column: 14, scope: !2763, inlinedAt: !2765)
!2763 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !2764, file: !2759, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2764 = !DINamespace(name: "{impl#6}", scope: !2761)
!2765 = distinct !DILocation(line: 128, column: 22, scope: !2766, inlinedAt: !2752)
!2766 = !DILexicalBlockFile(scope: !2767, file: !2749, discriminator: 2)
!2767 = distinct !DILexicalBlock(scope: !2748, file: !2749, line: 128, column: 13)
!2768 = !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !2762)
!2769 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !2774)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !43, line: 3550, column: 13)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !43, line: 3549, column: 13)
!2772 = distinct !DISubprogram(name: "pow", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm3pow", scope: !2773, file: !43, line: 3545, type: !13, scopeLine: 3545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2773 = !DINamespace(name: "{impl#8}", scope: !45)
!2774 = distinct !DILocation(line: 128, column: 41, scope: !2748, inlinedAt: !2752)
!2775 = !DILocation(line: 25, column: 14, scope: !2776, inlinedAt: !2781)
!2776 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !2778, file: !2777, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2777 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/sse2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6b1864d45cac802b34c17e3c3e5be790")
!2778 = !DINamespace(name: "sse2", scope: !2779)
!2779 = !DINamespace(name: "x86", scope: !2780)
!2780 = !DINamespace(name: "core_arch", scope: !21)
!2781 = distinct !DILocation(line: 287, column: 13, scope: !2782, inlinedAt: !2783)
!2782 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !2290, file: !2289, line: 270, type: !13, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2783 = distinct !DILocation(line: 129, column: 17, scope: !2767, inlinedAt: !2752)
!2784 = distinct !{!2784, !2785}
!2785 = !{!"llvm.loop.unroll.disable"}
!2786 = !DILocation(line: 135, column: 23, scope: !2748, inlinedAt: !2752)
!2787 = !DILocation(line: 259, column: 20, scope: !2743)
!2788 = !DILocation(line: 4390, column: 23, scope: !176, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 260, column: 17, scope: !2743)
!2790 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 2870, column: 26, scope: !2711, inlinedAt: !2792)
!2792 = !DILocation(line: 261, column: 38, scope: !2743)
!2793 = !DILocation(line: 264, column: 29, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2743, file: !1152, line: 261, column: 17)
!2795 = !DILocation(line: 264, column: 28, scope: !2794)
!2796 = !DILocation(line: 264, column: 20, scope: !2794)
!2797 = !DILocation(line: 1077, column: 12, scope: !2798, inlinedAt: !2800)
!2798 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCs7Ga9Brpi21q_11polars_lazy", scope: !2799, file: !1252, line: 1073, type: !13, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2799 = !DINamespace(name: "Ord", scope: !1254)
!2800 = distinct !DILocation(line: 114, column: 36, scope: !2801, inlinedAt: !2802)
!2801 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !2750, file: !2749, line: 113, type: !13, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2802 = distinct !DILocation(line: 277, column: 25, scope: !2794)
!2803 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 115, column: 26, scope: !2805, inlinedAt: !2802)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !2749, line: 114, column: 9)
!2806 = !DILocation(line: 1917, column: 50, scope: !2807, inlinedAt: !2808)
!2807 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !2756, file: !1252, line: 1917, type: !13, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2808 = distinct !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !2810)
!2809 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCs7Ga9Brpi21q_11polars_lazy", scope: !2760, file: !2759, line: 780, type: !13, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2810 = distinct !DILocation(line: 866, column: 14, scope: !2811, inlinedAt: !2812)
!2811 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !2764, file: !2759, line: 865, type: !13, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2812 = distinct !DILocation(line: 115, column: 18, scope: !2813, inlinedAt: !2802)
!2813 = !DILexicalBlockFile(scope: !2814, file: !2749, discriminator: 2)
!2814 = distinct !DILexicalBlock(scope: !2805, file: !2749, line: 115, column: 9)
!2815 = !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !2810)
!2816 = !DILocation(line: 25, column: 14, scope: !2817, inlinedAt: !2818)
!2817 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !2778, file: !2777, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2818 = distinct !DILocation(line: 287, column: 13, scope: !2819, inlinedAt: !2820)
!2819 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !2290, file: !2289, line: 270, type: !13, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2820 = distinct !DILocation(line: 116, column: 13, scope: !2814, inlinedAt: !2802)
!2821 = distinct !{!2821, !2785}
!2822 = !DILocation(line: 119, column: 23, scope: !2805, inlinedAt: !2802)
!2823 = !DILocation(line: 555, column: 18, scope: !2824, inlinedAt: !2826)
!2824 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCs7Ga9Brpi21q_11polars_lazy", scope: !2825, file: !1176, line: 552, type: !13, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2825 = !DINamespace(name: "Cell", scope: !1178)
!2826 = distinct !DILocation(line: 119, column: 33, scope: !2805, inlinedAt: !2802)
!2827 = !DILocation(line: 266, column: 24, scope: !2794)
!2828 = !DILocation(line: 0, scope: !2743)
!2829 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2830)
!2830 = !DILocation(line: 2870, column: 26, scope: !2711, inlinedAt: !2828)
!2831 = !DILocation(line: 269, column: 25, scope: !2794)
!2832 = !DILocation(line: 270, column: 25, scope: !2794)
!2833 = !DILocation(line: 285, column: 6, scope: !2708)
!2834 = !DILocation(line: 238, column: 38, scope: !2743)
!2835 = !DILocation(line: 2511, column: 13, scope: !2836, inlinedAt: !2837)
!2836 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !44, file: !43, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2837 = !DILocation(line: 238, column: 25, scope: !2743)
!2838 = !DILocation(line: 231, column: 27, scope: !2743)
!2839 = !DILocation(line: 4081, column: 17, scope: !2840, inlinedAt: !2841)
!2840 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECs7Ga9Brpi21q_11polars_lazy", scope: !19, file: !18, line: 4034, type: !13, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2841 = distinct !DILocation(line: 3130, column: 21, scope: !2842, inlinedAt: !2843)
!2842 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !24, file: !18, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2843 = !DILocation(line: 242, column: 33, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2743, file: !1152, line: 231, column: 17)
!2845 = !DILocation(line: 242, column: 17, scope: !2844)
!2846 = !DILocation(line: 1077, column: 12, scope: !2798, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 114, column: 36, scope: !2801, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 255, column: 33, scope: !2844)
!2849 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 115, column: 26, scope: !2805, inlinedAt: !2848)
!2851 = !DILocation(line: 1917, column: 50, scope: !2807, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 866, column: 14, scope: !2811, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 115, column: 18, scope: !2813, inlinedAt: !2848)
!2855 = !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !2853)
!2856 = !DILocation(line: 25, column: 14, scope: !2817, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 287, column: 13, scope: !2819, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 116, column: 13, scope: !2814, inlinedAt: !2848)
!2859 = distinct !{!2859, !2785}
!2860 = !DILocation(line: 119, column: 23, scope: !2805, inlinedAt: !2848)
!2861 = !DILocation(line: 555, column: 18, scope: !2824, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 119, column: 33, scope: !2805, inlinedAt: !2848)
!2863 = !DILocation(line: 250, column: 25, scope: !2844)
!2864 = !DILocation(line: 251, column: 63, scope: !2844)
!2865 = !DILocation(line: 2511, column: 13, scope: !2836, inlinedAt: !2866)
!2866 = !DILocation(line: 251, column: 50, scope: !2844)
!2867 = !DILocation(line: 251, column: 25, scope: !2844)
!2868 = !DILocation(line: 0, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2743, file: !1284, discriminator: 0)
!2870 = distinct !DISubprogram(name: "with_capacity<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacityCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 90, type: !13, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2871 = !DILocation(line: 91, column: 17, scope: !2870)
!2872 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!2873 = !DILocation(line: 91, column: 9, scope: !2870)
!2874 = !DILocation(line: 3837, column: 30, scope: !2875, inlinedAt: !2877)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !43, line: 3832, column: 13)
!2876 = distinct !DISubprogram(name: "one_less_than_next_power_of_two", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj31one_less_than_next_power_of_two", scope: !44, file: !43, line: 3829, type: !13, scopeLine: 3829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2877 = !DILocation(line: 3861, column: 18, scope: !2878, inlinedAt: !2879)
!2878 = distinct !DISubprogram(name: "next_power_of_two", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj17next_power_of_two", scope: !44, file: !43, line: 3860, type: !13, scopeLine: 3860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2879 = !DILocation(line: 94, column: 34, scope: !2870)
!2880 = !DILocation(line: 3838, column: 13, scope: !2881, inlinedAt: !2877)
!2881 = distinct !DILexicalBlock(scope: !2875, file: !43, line: 3837, column: 13)
!2882 = !DILocation(line: 3861, column: 13, scope: !2878, inlinedAt: !2879)
!2883 = !DILocation(line: 3839, column: 10, scope: !2876, inlinedAt: !2877)
!2884 = !DILocation(line: 0, scope: !2876, inlinedAt: !2877)
!2885 = !DILocation(line: 95, column: 23, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2870, file: !1152, line: 94, column: 9)
!2887 = !DILocation(line: 2104, column: 9, scope: !2888, inlinedAt: !2889)
!2888 = distinct !DISubprogram(name: "collect<core::iter::adapters::map::Map<core::ops::range::Range<usize>, std::sync::mpmc::array::{impl#1}::with_capacity::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>, alloc::boxed::Box<[std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>], alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB1q_7ChannelINtNtBc_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtB1q_4SlotB2j_EEECs7Ga9Brpi21q_11polars_lazy", scope: !1976, file: !1973, line: 2091, type: !13, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2889 = !DILocation(line: 109, column: 14, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !1152, line: 100, column: 9)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !1152, line: 98, column: 9)
!2892 = distinct !DILexicalBlock(scope: !2886, file: !1152, line: 95, column: 9)
!2893 = !DILocation(line: 111, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !1152, line: 104, column: 9)
!2895 = !DILocation(line: 121, column: 6, scope: !2870)
!2896 = distinct !DISubprogram(name: "disconnect_senders<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 451, type: !13, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2897 = !DILocation(line: 452, column: 39, scope: !2896)
!2898 = !DILocation(line: 2447, column: 9, scope: !2899, inlinedAt: !2900)
!2899 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2900 = !DILocation(line: 3615, column: 24, scope: !2901, inlinedAt: !2902)
!2901 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !24, file: !18, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2902 = !DILocation(line: 3295, column: 41, scope: !2903, inlinedAt: !2904)
!2903 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !24, file: !18, line: 3293, type: !13, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2904 = !DILocation(line: 452, column: 30, scope: !2896)
!2905 = !DILocation(line: 4135, column: 23, scope: !2906, inlinedAt: !2907)
!2906 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !19, file: !18, line: 4131, type: !13, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2907 = !DILocation(line: 3295, column: 26, scope: !2903, inlinedAt: !2904)
!2908 = !DILocation(line: 454, column: 19, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2896, file: !1152, line: 452, column: 9)
!2910 = !DILocation(line: 454, column: 12, scope: !2909)
!2911 = !DILocation(line: 455, column: 13, scope: !2909)
!2912 = !DILocation(line: 455, column: 28, scope: !2909)
!2913 = !DILocation(line: 454, column: 9, scope: !2909)
!2914 = !DILocation(line: 460, column: 6, scope: !2896)
!2915 = distinct !DISubprogram(name: "disconnect_receivers<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20disconnect_receiversCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 470, type: !13, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2916 = !DILocation(line: 471, column: 39, scope: !2915)
!2917 = !DILocation(line: 2447, column: 9, scope: !2918, inlinedAt: !2919)
!2918 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2919 = !DILocation(line: 3615, column: 24, scope: !2920, inlinedAt: !2921)
!2920 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !24, file: !18, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2921 = !DILocation(line: 3295, column: 41, scope: !2922, inlinedAt: !2923)
!2922 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !24, file: !18, line: 3293, type: !13, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2923 = !DILocation(line: 471, column: 30, scope: !2915)
!2924 = !DILocation(line: 4135, column: 23, scope: !2925, inlinedAt: !2926)
!2925 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !19, file: !18, line: 4131, type: !13, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2926 = !DILocation(line: 3295, column: 26, scope: !2922, inlinedAt: !2923)
!2927 = !DILocation(line: 472, column: 38, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2915, file: !1152, line: 471, column: 9)
!2929 = !DILocation(line: 472, column: 31, scope: !2928)
!2930 = !DILocation(line: 473, column: 13, scope: !2928)
!2931 = !DILocation(line: 473, column: 26, scope: !2928)
!2932 = !DILocation(line: 502, column: 28, scope: !2933, inlinedAt: !2935)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !1152, line: 501, column: 9)
!2934 = distinct !DISubprogram(name: "discard_all_messages<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 495, type: !13, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2935 = distinct !DILocation(line: 479, column: 23, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2928, file: !1152, line: 472, column: 9)
!2937 = !DILocation(line: 472, column: 28, scope: !2928)
!2938 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 2870, column: 26, scope: !2940, inlinedAt: !2941)
!2940 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !24, file: !18, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2941 = distinct !DILocation(line: 501, column: 34, scope: !2934, inlinedAt: !2935)
!2942 = !DILocation(line: 502, column: 27, scope: !2933, inlinedAt: !2935)
!2943 = !DILocation(line: 502, column: 20, scope: !2933, inlinedAt: !2935)
!2944 = !DILocation(line: 505, column: 9, scope: !2945, inlinedAt: !2935)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !1152, line: 504, column: 9)
!2946 = distinct !DILexicalBlock(scope: !2933, file: !1152, line: 502, column: 9)
!2947 = !DILocation(line: 507, column: 33, scope: !2945, inlinedAt: !2935)
!2948 = !DILocation(line: 105, column: 9, scope: !2949, inlinedAt: !2950)
!2949 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff3new", scope: !2750, file: !2749, line: 104, type: !13, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2950 = distinct !DILocation(line: 504, column: 23, scope: !2946, inlinedAt: !2935)
!2951 = !DILocation(line: 0, scope: !2934, inlinedAt: !2935)
!2952 = !DILocation(line: 507, column: 32, scope: !2945, inlinedAt: !2935)
!2953 = !DILocation(line: 507, column: 25, scope: !2945, inlinedAt: !2935)
!2954 = !DILocation(line: 508, column: 32, scope: !2955, inlinedAt: !2935)
!2955 = distinct !DILexicalBlock(scope: !2945, file: !1152, line: 507, column: 13)
!2956 = !DILocation(line: 508, column: 30, scope: !2955, inlinedAt: !2935)
!2957 = !DILocation(line: 508, column: 23, scope: !2955, inlinedAt: !2935)
!2958 = !DILocation(line: 512, column: 33, scope: !2959, inlinedAt: !2935)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !1152, line: 508, column: 13)
!2960 = !DILocation(line: 252, column: 39, scope: !2961, inlinedAt: !2962)
!2961 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !2731, file: !2730, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2962 = distinct !DILocation(line: 646, column: 26, scope: !2963, inlinedAt: !2964)
!2963 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !1460, file: !1459, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2964 = distinct !DILocation(line: 512, column: 45, scope: !2959, inlinedAt: !2935)
!2965 = !DILocation(line: 252, column: 13, scope: !2961, inlinedAt: !2962)
!2966 = !DILocation(line: 253, column: 13, scope: !2961, inlinedAt: !2962)
!2967 = !DILocation(line: 3905, column: 24, scope: !17, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 2870, column: 26, scope: !2940, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 513, column: 36, scope: !2970, inlinedAt: !2935)
!2970 = distinct !DILexicalBlock(scope: !2959, file: !1152, line: 512, column: 13)
!2971 = !DILocation(line: 516, column: 16, scope: !2972, inlinedAt: !2935)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !1152, line: 513, column: 13)
!2973 = !DILocation(line: 531, column: 23, scope: !2972, inlinedAt: !2935)
!2974 = !DILocation(line: 517, column: 27, scope: !2972, inlinedAt: !2935)
!2975 = !DILocation(line: 517, column: 39, scope: !2972, inlinedAt: !2935)
!2976 = !DILocation(line: 127, column: 12, scope: !2748, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 536, column: 25, scope: !2972, inlinedAt: !2935)
!2978 = !DILocation(line: 132, column: 13, scope: !2748, inlinedAt: !2977)
!2979 = !DILocation(line: 1917, column: 50, scope: !2755, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 866, column: 14, scope: !2763, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 128, column: 22, scope: !2766, inlinedAt: !2977)
!2983 = !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !2981)
!2984 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 128, column: 41, scope: !2748, inlinedAt: !2977)
!2986 = !DILocation(line: 25, column: 14, scope: !2776, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 287, column: 13, scope: !2782, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 129, column: 17, scope: !2767, inlinedAt: !2977)
!2989 = distinct !{!2989, !2785}
!2990 = !DILocation(line: 135, column: 23, scope: !2748, inlinedAt: !2977)
!2991 = !DILocation(line: 516, column: 13, scope: !2972, inlinedAt: !2935)
!2992 = !DILocation(line: 0, scope: !2946, inlinedAt: !2935)
!2993 = !DILocation(line: 524, column: 38, scope: !2972, inlinedAt: !2935)
!2994 = !DILocation(line: 2511, column: 13, scope: !2995, inlinedAt: !2996)
!2995 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !44, file: !43, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!2996 = distinct !DILocation(line: 524, column: 25, scope: !2972, inlinedAt: !2935)
!2997 = !DILocation(line: 517, column: 24, scope: !2972, inlinedAt: !2935)
!2998 = !DILocation(line: 0, scope: !2972, inlinedAt: !2935)
!2999 = !DILocation(line: 2447, column: 9, scope: !3000, inlinedAt: !3001)
!3000 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3001 = distinct !DILocation(line: 528, column: 32, scope: !2972, inlinedAt: !2935)
!3002 = !DILocation(line: 832, column: 18, scope: !3003, inlinedAt: !3004)
!3003 = distinct !DISubprogram(name: "assume_init_drop<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE16assume_init_dropCs7Ga9Brpi21q_11polars_lazy", scope: !142, file: !141, line: 825, type: !13, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3004 = distinct !DILocation(line: 528, column: 39, scope: !2972, inlinedAt: !2935)
!3005 = !DILocation(line: 481, column: 6, scope: !2915)
!3006 = distinct !DISubprogram(name: "recv<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 375, type: !13, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3007 = !DILocation(line: 376, column: 26, scope: !3006)
!3008 = !DILocation(line: 5, column: 17, scope: !3009, inlinedAt: !3007)
!3009 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !3010, file: !1159, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3010 = !DINamespace(name: "{impl#4}", scope: !1161)
!3011 = !DILocation(line: 379, column: 21, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !1152, line: 376, column: 9)
!3013 = !DILocation(line: 379, column: 16, scope: !3012)
!3014 = !DILocation(line: 384, column: 30, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !1152, line: 384, column: 39)
!3016 = !DILocation(line: 384, column: 20, scope: !3015)
!3017 = !DILocation(line: 380, column: 41, scope: !3012)
!3018 = !DILocation(line: 289, column: 12, scope: !3019, inlinedAt: !3020)
!3019 = distinct !DISubprogram(name: "read<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 288, type: !37, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3020 = distinct !DILocation(line: 380, column: 41, scope: !3012)
!3021 = !DILocation(line: 295, column: 13, scope: !3019, inlinedAt: !3020)
!3022 = !{!3023}
!3023 = distinct !{!3023, !3024, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3024 = distinct !{!3024, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy"}
!3025 = !DILocation(line: 298, column: 17, scope: !3026, inlinedAt: !3020)
!3026 = distinct !DILexicalBlock(scope: !3019, file: !1152, line: 296, column: 13)
!3027 = !DILocation(line: 2447, column: 9, scope: !3028, inlinedAt: !3029)
!3028 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3029 = distinct !DILocation(line: 298, column: 32, scope: !3026, inlinedAt: !3020)
!3030 = !DILocation(line: 1721, column: 9, scope: !3031, inlinedAt: !3032)
!3031 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !64, file: !63, line: 1682, type: !13, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3032 = distinct !DILocation(line: 1263, column: 18, scope: !3033, inlinedAt: !3034)
!3033 = distinct !DISubprogram(name: "read<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4readCs7Ga9Brpi21q_11polars_lazy", scope: !184, file: !183, line: 1258, type: !13, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3034 = distinct !DILocation(line: 298, column: 38, scope: !3026, inlinedAt: !3020)
!3035 = !DILocation(line: 3890, column: 24, scope: !3036, inlinedAt: !3037)
!3036 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storejECs7Ga9Brpi21q_11polars_lazy", scope: !19, file: !18, line: 3885, type: !13, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3037 = distinct !DILocation(line: 2898, column: 26, scope: !3038, inlinedAt: !3039)
!3038 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !24, file: !18, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3039 = distinct !DILocation(line: 299, column: 24, scope: !3040, inlinedAt: !3020)
!3040 = distinct !DILexicalBlock(scope: !3026, file: !1152, line: 298, column: 13)
!3041 = !DILocation(line: 300, column: 13, scope: !3040, inlinedAt: !3020)
!3042 = !DILocation(line: 301, column: 9, scope: !3026, inlinedAt: !3020)
!3043 = !DILocation(line: 304, column: 9, scope: !3044, inlinedAt: !3020)
!3044 = distinct !DILexicalBlock(scope: !3019, file: !1152, line: 295, column: 9)
!3045 = !DILocation(line: 304, column: 22, scope: !3044, inlinedAt: !3020)
!3046 = !DILocation(line: 306, column: 5, scope: !3019, inlinedAt: !3020)
!3047 = !DILocation(line: 288, column: 5, scope: !3019, inlinedAt: !3020)
!3048 = !DILocation(line: 0, scope: !3012)
!3049 = !DILocation(line: 305, column: 12, scope: !3044, inlinedAt: !3020)
!3050 = !DILocation(line: 966, column: 15, scope: !3051, inlinedAt: !3052)
!3051 = distinct !DISubprogram(name: "map_err<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, (), std::sync::mpsc::RecvTimeoutError, std::sync::mpmc::array::{impl#1}::recv::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuE7map_errNtNtNtCsh8eZTKRCwoO_3std4sync4mpsc16RecvTimeoutErrorNCNvMs_NtNtB2F_4mpmc5arrayINtB3y_7ChannelBI_E4recv0ECs7Ga9Brpi21q_11polars_lazy", scope: !342, file: !341, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3052 = !DILocation(line: 381, column: 28, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3012, file: !1152, line: 380, column: 17)
!3054 = !DILocation(line: 966, column: 9, scope: !3051, inlinedAt: !3052)
!3055 = !DILocation(line: 384, column: 25, scope: !3015)
!3056 = !DILocation(line: 385, column: 20, scope: !3015)
!3057 = !DILocation(line: 25, column: 38, scope: !3058, inlinedAt: !3059)
!3058 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs5_NtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix4timeNtB5_8TimespecNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !1235, file: !1234, line: 25, type: !13, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3059 = !DILocation(line: 49, column: 38, scope: !3060, inlinedAt: !3061)
!3060 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std3sys4time4unixNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !1242, file: !1241, line: 49, type: !13, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3061 = !DILocation(line: 154, column: 38, scope: !3062, inlinedAt: !3063)
!3062 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsm_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp", scope: !1248, file: !1247, line: 154, type: !13, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
end_hunk_2
begin_hunk_3_@llvm.umin.i64
!3181 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3175)
!3182 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3175)
!3184 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3175)
!3185 = !DILocation(line: 53, column: 23, scope: !3116, inlinedAt: !3117)
!3186 = !DILocation(line: 55, column: 22, scope: !3116, inlinedAt: !3117)
!3187 = !DILocation(line: 2447, column: 9, scope: !3188, inlinedAt: !3189)
!3188 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3189 = distinct !DILocation(line: 3615, column: 24, scope: !3190, inlinedAt: !3191)
!3190 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !24, file: !18, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3191 = distinct !DILocation(line: 2898, column: 44, scope: !3192, inlinedAt: !3193)
!3192 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !24, file: !18, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3193 = distinct !DILocation(line: 81, column: 27, scope: !3194, inlinedAt: !3195)
!3194 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !1201, file: !996, line: 80, type: !13, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3195 = distinct !DILocation(line: 56, column: 24, scope: !3196, inlinedAt: !3117)
!3196 = distinct !DILexicalBlock(scope: !3116, file: !996, line: 55, column: 17)
!3197 = !DILocation(line: 3890, column: 24, scope: !3036, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 2898, column: 26, scope: !3192, inlinedAt: !3193)
!3199 = !DILocation(line: 2447, column: 9, scope: !3200, inlinedAt: !3201)
!3200 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3201 = distinct !DILocation(line: 2500, column: 16, scope: !3202, inlinedAt: !3203)
!3202 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !24, file: !18, line: 2499, type: !13, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3203 = distinct !DILocation(line: 1763, column: 31, scope: !3204, inlinedAt: !3205)
!3204 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCs7Ga9Brpi21q_11polars_lazy", scope: !24, file: !18, line: 1760, type: !13, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3205 = distinct !DILocation(line: 82, column: 27, scope: !3194, inlinedAt: !3195)
!3206 = !DILocation(line: 3890, column: 24, scope: !2249, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1763, column: 13, scope: !3204, inlinedAt: !3205)
!3208 = !DILocation(line: 57, column: 31, scope: !3196, inlinedAt: !3117)
!3209 = !DILocation(line: 1015, column: 18, scope: !3126, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 48, column: 30, scope: !3211, inlinedAt: !3212)
!3211 = !DILexicalBlockFile(scope: !3128, file: !996, discriminator: 2)
!3212 = distinct !DILocation(line: 57, column: 31, scope: !3196, inlinedAt: !3117)
!3213 = !DILocation(line: 49, column: 13, scope: !3214, inlinedAt: !3212)
!3214 = distinct !DILexicalBlock(scope: !3128, file: !996, line: 48, column: 13)
!3215 = !DILocation(line: 437, column: 9, scope: !3216, inlinedAt: !3217)
!3216 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCs7Ga9Brpi21q_11polars_lazy", scope: !2825, file: !1176, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3217 = distinct !DILocation(line: 58, column: 26, scope: !3218, inlinedAt: !3117)
!3218 = distinct !DILexicalBlock(scope: !3196, file: !996, line: 57, column: 21)
!3219 = !DILocation(line: 929, column: 22, scope: !3110, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 513, column: 9, scope: !3221, inlinedAt: !3222)
!3221 = !DILexicalBlockFile(scope: !3112, file: !1176, discriminator: 2)
!3222 = distinct !DILocation(line: 437, column: 14, scope: !3216, inlinedAt: !3217)
!3223 = !DILocation(line: 930, column: 49, scope: !3224, inlinedAt: !3220)
!3224 = distinct !DILexicalBlock(scope: !3110, file: !233, line: 929, column: 9)
!3225 = !DILocation(line: 810, column: 1, scope: !3226, inlinedAt: !3227)
!3226 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy", scope: !64, file: !63, line: 810, type: !13, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3227 = distinct !DILocation(line: 437, column: 26, scope: !3216, inlinedAt: !3217)
!3228 = !DILocation(line: 3956, column: 24, scope: !1044, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 3193, column: 26, scope: !1046, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 2814, column: 32, scope: !1040, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 810, column: 1, scope: !3226, inlinedAt: !3227)
!3234 = !{!3235, !3237, !3239, !3241, !3069}
!3235 = distinct !{!3235, !3236, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3236 = distinct !{!3236, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3237 = distinct !{!3237, !3238, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3238 = distinct !{!3238, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3239 = distinct !{!3239, !3240, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3240 = distinct !{!3240, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3241 = distinct !{!3241, !3242, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3242 = distinct !{!3242, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy"}
!3243 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3231)
!3244 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3231)
!3246 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3231)
!3247 = !DILocation(line: 437, column: 26, scope: !3216, inlinedAt: !3217)
!3248 = !DILocation(line: 60, column: 17, scope: !3116, inlinedAt: !3117)
!3249 = !DILocation(line: 61, column: 13, scope: !3116, inlinedAt: !3117)
!3250 = !DILocation(line: 3956, column: 24, scope: !1044, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 3193, column: 26, scope: !1046, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 2814, column: 32, scope: !1040, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 60, column: 17, scope: !3116, inlinedAt: !3117)
!3256 = !{!3257, !3259, !3261, !3069}
!3257 = distinct !{!3257, !3258, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3258 = distinct !{!3258, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3259 = distinct !{!3259, !3260, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3260 = distinct !{!3260, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3261 = distinct !{!3261, !3262, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3262 = distinct !{!3262, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3263 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3253)
!3264 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3253)
!3266 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3253)
!3267 = !DILocation(line: 1622, column: 23, scope: !3268, inlinedAt: !3270)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !341, line: 1622, column: 13)
!3269 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::array::{impl#1}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs_NtB1W_5arrayINtB2L_7ChannelIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs0_0ECs7Ga9Brpi21q_11polars_lazy", scope: !342, file: !341, line: 1616, type: !13, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3270 = distinct !DILocation(line: 62, column: 14, scope: !3091, inlinedAt: !3067)
!3271 = !DILocation(line: 63, column: 5, scope: !3066, inlinedAt: !3067)
!3272 = !DILocation(line: 49, column: 26, scope: !3273, inlinedAt: !3277)
!3273 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !3275, file: !3274, line: 46, type: !13, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3274 = !DIFile(filename: "library/core/src/num/niche_types.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b3871eb21e61251a8509e6d07911f9fb")
!3275 = !DINamespace(name: "Nanoseconds", scope: !3276)
!3276 = !DINamespace(name: "niche_types", scope: !45)
!3277 = !DILocation(line: 70, column: 32, scope: !3278, inlinedAt: !3280)
!3278 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !3279, file: !3274, line: 69, type: !13, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3279 = !DINamespace(name: "{impl#12}", scope: !3276)
!3280 = !DILocation(line: 77, column: 22, scope: !3281, inlinedAt: !3283)
!3281 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !3282, file: !3274, line: 76, type: !13, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3282 = !DINamespace(name: "{impl#13}", scope: !3276)
!3283 = !DILocation(line: 25, column: 38, scope: !3284, inlinedAt: !3059)
!3284 = !DILexicalBlockFile(scope: !3058, file: !1234, discriminator: 2)
!3285 = !DILocation(line: 539, column: 9, scope: !3286, inlinedAt: !3287)
!3286 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !1259, file: !1252, line: 538, type: !13, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3287 = !DILocation(line: 250, column: 5, scope: !3288, inlinedAt: !3289)
!3288 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCs7Ga9Brpi21q_11polars_lazy", scope: !314, file: !33, line: 250, type: !13, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3289 = !DILocation(line: 664, column: 24, scope: !3290, inlinedAt: !3292)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !206, line: 664, column: 13)
!3291 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECs7Ga9Brpi21q_11polars_lazy", scope: !207, file: !206, line: 661, type: !13, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3292 = !DILocation(line: 1466, column: 33, scope: !3064, inlinedAt: !3056)
!3293 = !DILocation(line: 386, column: 28, scope: !3015)
!3294 = !DILocation(line: 0, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3012, file: !1284, discriminator: 0)
!3296 = !DILocation(line: 415, column: 5, scope: !3006)
!3297 = !DILocation(line: 415, column: 6, scope: !3006)
!3298 = !DILocation(line: 968, column: 23, scope: !3299, inlinedAt: !3052)
!3299 = distinct !DILexicalBlock(scope: !3051, file: !341, line: 968, column: 13)
!3300 = !DILocation(line: 968, column: 32, scope: !3051, inlinedAt: !3052)
!3301 = !DILocation(line: 967, column: 22, scope: !3302, inlinedAt: !3052)
!3302 = distinct !DILexicalBlock(scope: !3051, file: !341, line: 967, column: 13)
!3303 = !DILocation(line: 967, column: 16, scope: !3051, inlinedAt: !3052)
!3304 = !DILocation(line: 970, column: 5, scope: !3051, inlinedAt: !3052)
!3305 = distinct !DISubprogram(name: "send<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4sendCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 319, type: !13, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3306 = !DILocation(line: 324, column: 26, scope: !3305)
!3307 = !DILocation(line: 5, column: 17, scope: !3308, inlinedAt: !3306)
!3308 = distinct !DISubprogram(name: "default", linkageName: "_RNvXs2_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc6selectNtB5_5TokenNtNtCscgRAwXFJnXP_4core7default7Default7default", scope: !3010, file: !1159, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3309 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 2870, column: 26, scope: !3311, inlinedAt: !3312)
!3311 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !24, file: !18, line: 2868, type: !13, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3312 = distinct !DILocation(line: 126, column: 34, scope: !3313, inlinedAt: !3315)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !1152, line: 125, column: 9)
!3314 = distinct !DISubprogram(name: "start_send<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 124, type: !13, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3315 = distinct !DILocation(line: 327, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3305, file: !1152, line: 324, column: 9)
!3317 = !{!3318}
!3318 = distinct !{!3318, !3319, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy: argument 0:pre.rot"}
!3319 = distinct !{!3319, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy"}
!3320 = !DILocation(line: 130, column: 23, scope: !3321, inlinedAt: !3315)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !1152, line: 126, column: 9)
!3322 = !DILocation(line: 130, column: 16, scope: !3321, inlinedAt: !3315)
!3323 = !{!3324}
!3324 = distinct !{!3324, !3319, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3325 = !DILocation(line: 327, column: 21, scope: !3316)
!3326 = !DILocation(line: 137, column: 32, scope: !3321, inlinedAt: !3315)
!3327 = !DILocation(line: 137, column: 25, scope: !3321, inlinedAt: !3315)
!3328 = !DILocation(line: 138, column: 32, scope: !3329, inlinedAt: !3315)
!3329 = distinct !DILexicalBlock(scope: !3321, file: !1152, line: 137, column: 13)
!3330 = !DILocation(line: 138, column: 30, scope: !3329, inlinedAt: !3315)
!3331 = !DILocation(line: 138, column: 23, scope: !3329, inlinedAt: !3315)
!3332 = !DILocation(line: 142, column: 33, scope: !3333, inlinedAt: !3315)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !1152, line: 138, column: 13)
!3334 = !DILocation(line: 252, column: 39, scope: !3335, inlinedAt: !3336)
!3335 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !2731, file: !2730, line: 239, type: !13, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3336 = distinct !DILocation(line: 646, column: 26, scope: !3337, inlinedAt: !3338)
!3337 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::array::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5array4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !1460, file: !1459, line: 639, type: !13, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3338 = distinct !DILocation(line: 142, column: 45, scope: !3333, inlinedAt: !3315)
!3339 = !DILocation(line: 252, column: 13, scope: !3335, inlinedAt: !3336)
!3340 = !DILocation(line: 253, column: 13, scope: !3335, inlinedAt: !3336)
!3341 = !DILocation(line: 3905, column: 24, scope: !17, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 2870, column: 26, scope: !3311, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 143, column: 36, scope: !3344, inlinedAt: !3315)
!3344 = distinct !DILexicalBlock(scope: !3333, file: !1152, line: 142, column: 13)
!3345 = !DILocation(line: 146, column: 16, scope: !3346, inlinedAt: !3315)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !1152, line: 143, column: 13)
!3347 = !DILocation(line: 175, column: 42, scope: !3346, inlinedAt: !3315)
!3348 = !DILocation(line: 2511, column: 13, scope: !3349, inlinedAt: !3350)
!3349 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !44, file: !43, line: 2510, type: !13, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3350 = distinct !DILocation(line: 175, column: 29, scope: !3346, inlinedAt: !3315)
!3351 = !DILocation(line: 175, column: 59, scope: !3346, inlinedAt: !3315)
!3352 = !DILocation(line: 175, column: 23, scope: !3346, inlinedAt: !3315)
!3353 = !DILocation(line: 147, column: 35, scope: !3346, inlinedAt: !3315)
!3354 = !DILocation(line: 147, column: 47, scope: !3346, inlinedAt: !3315)
!3355 = !DILocation(line: 127, column: 12, scope: !2748, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 189, column: 25, scope: !3346, inlinedAt: !3315)
!3357 = !DILocation(line: 132, column: 13, scope: !2748, inlinedAt: !3356)
!3358 = !DILocation(line: 1917, column: 50, scope: !2755, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 866, column: 14, scope: !2763, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 128, column: 22, scope: !2766, inlinedAt: !3356)
!3362 = !DILocation(line: 781, column: 12, scope: !2758, inlinedAt: !3360)
!3363 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 128, column: 41, scope: !2748, inlinedAt: !3356)
!3365 = !DILocation(line: 25, column: 14, scope: !2776, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 287, column: 13, scope: !2782, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 129, column: 17, scope: !2767, inlinedAt: !3356)
!3368 = distinct !{!3368, !2785}
!3369 = !DILocation(line: 135, column: 23, scope: !2748, inlinedAt: !3356)
!3370 = !DILocation(line: 175, column: 20, scope: !3346, inlinedAt: !3315)
!3371 = !DILocation(line: 4390, column: 23, scope: !176, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 176, column: 17, scope: !3346, inlinedAt: !3315)
!3373 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 2870, column: 26, scope: !3311, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 177, column: 38, scope: !3346, inlinedAt: !3315)
!3376 = !DILocation(line: 180, column: 38, scope: !3377, inlinedAt: !3315)
!3377 = distinct !DILexicalBlock(scope: !3346, file: !1152, line: 177, column: 17)
!3378 = !DILocation(line: 2511, column: 13, scope: !3349, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 180, column: 25, scope: !3377, inlinedAt: !3315)
!3380 = !DILocation(line: 180, column: 20, scope: !3377, inlinedAt: !3315)
!3381 = !DILocation(line: 1077, column: 12, scope: !2798, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 114, column: 36, scope: !2801, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 185, column: 25, scope: !3377, inlinedAt: !3315)
!3384 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 115, column: 26, scope: !2805, inlinedAt: !3383)
!3386 = !DILocation(line: 1917, column: 50, scope: !2807, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 866, column: 14, scope: !2811, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 115, column: 18, scope: !2813, inlinedAt: !3383)
!3390 = !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !3388)
!3391 = !DILocation(line: 25, column: 14, scope: !2817, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 287, column: 13, scope: !2819, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 116, column: 13, scope: !2814, inlinedAt: !3383)
!3394 = distinct !{!3394, !2785}
!3395 = !DILocation(line: 119, column: 23, scope: !2805, inlinedAt: !3383)
!3396 = !DILocation(line: 555, column: 18, scope: !2824, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 119, column: 33, scope: !2805, inlinedAt: !3383)
!3398 = !DILocation(line: 0, scope: !3346, inlinedAt: !3315)
!3399 = !DILocation(line: 3904, column: 24, scope: !17, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 2870, column: 26, scope: !3311, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 0, scope: !3346, inlinedAt: !3315)
!3402 = !DILocation(line: 154, column: 38, scope: !3346, inlinedAt: !3315)
!3403 = !DILocation(line: 2511, column: 13, scope: !3349, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 154, column: 25, scope: !3346, inlinedAt: !3315)
!3405 = !DILocation(line: 147, column: 32, scope: !3346, inlinedAt: !3315)
!3406 = !DILocation(line: 150, column: 21, scope: !3346, inlinedAt: !3315)
!3407 = !DILocation(line: 4081, column: 17, scope: !2840, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 3130, column: 21, scope: !3409, inlinedAt: !3410)
!3409 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !24, file: !18, line: 3123, type: !13, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3410 = distinct !DILocation(line: 158, column: 33, scope: !3411, inlinedAt: !3315)
!3411 = distinct !DILexicalBlock(scope: !3346, file: !1152, line: 147, column: 17)
!3412 = !DILocation(line: 158, column: 17, scope: !3411, inlinedAt: !3315)
!3413 = !DILocation(line: 1077, column: 12, scope: !2798, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 114, column: 36, scope: !2801, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 171, column: 33, scope: !3411, inlinedAt: !3315)
!3416 = !DILocation(line: 3558, column: 28, scope: !2770, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 115, column: 26, scope: !2805, inlinedAt: !3415)
!3418 = !DILocation(line: 1917, column: 50, scope: !2807, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 866, column: 14, scope: !2811, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 115, column: 18, scope: !2813, inlinedAt: !3415)
!3422 = !DILocation(line: 781, column: 12, scope: !2809, inlinedAt: !3420)
!3423 = !DILocation(line: 25, column: 14, scope: !2817, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 287, column: 13, scope: !2819, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 116, column: 13, scope: !2814, inlinedAt: !3415)
!3426 = distinct !{!3426, !2785}
!3427 = !DILocation(line: 119, column: 23, scope: !2805, inlinedAt: !3415)
!3428 = !DILocation(line: 555, column: 18, scope: !2824, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 119, column: 33, scope: !2805, inlinedAt: !3415)
!3430 = !DILocation(line: 332, column: 30, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3316, file: !1152, line: 332, column: 39)
!3432 = !DILocation(line: 332, column: 20, scope: !3431)
!3433 = !DILocation(line: 166, column: 25, scope: !3411, inlinedAt: !3315)
!3434 = !DILocation(line: 167, column: 25, scope: !3411, inlinedAt: !3315)
!3435 = !DILocation(line: 328, column: 54, scope: !3316)
!3436 = !DILocation(line: 2447, column: 9, scope: !3437, inlinedAt: !3438)
!3437 = distinct !DISubprogram(name: "get<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtB7_3mem12maybe_uninit11MaybeUninitINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3438 = distinct !DILocation(line: 205, column: 22, scope: !3439, inlinedAt: !3441)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !1152, line: 204, column: 13)
!3440 = distinct !DISubprogram(name: "write<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy", scope: !1172, file: !1152, line: 196, type: !37, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3441 = distinct !DILocation(line: 328, column: 41, scope: !3316)
!3442 = !DILocation(line: 1921, column: 41, scope: !3443, inlinedAt: !3444)
!3443 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !64, file: !63, line: 1898, type: !13, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3444 = distinct !DILocation(line: 1418, column: 18, scope: !3445, inlinedAt: !3446)
!3445 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy", scope: !184, file: !183, line: 1413, type: !13, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3446 = distinct !DILocation(line: 205, column: 28, scope: !3439, inlinedAt: !3441)
!3447 = !{!3448}
!3448 = distinct !{!3448, !3449, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3449 = distinct !{!3449, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy"}
!3450 = !DILocation(line: 3890, column: 24, scope: !3036, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 2898, column: 26, scope: !3452, inlinedAt: !3453)
!3452 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !24, file: !18, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3453 = distinct !DILocation(line: 206, column: 24, scope: !3439, inlinedAt: !3441)
!3454 = !{!3448, !3455}
!3455 = distinct !{!3455, !3449, !"_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy: argument 1"}
!3456 = !DILocation(line: 210, column: 9, scope: !3440, inlinedAt: !3441)
!3457 = !DILocation(line: 210, column: 24, scope: !3440, inlinedAt: !3441)
!3458 = !DILocation(line: 966, column: 9, scope: !3459, inlinedAt: !3460)
!3459 = distinct !DISubprogram(name: "map_err<(), core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>, std::sync::mpmc::error::SendTimeoutError<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, fn(core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>) -> std::sync::mpmc::error::SendTimeoutError<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE7map_errINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5error16SendTimeoutErrorBJ_ENcNtB2B_12Disconnected0ECs7Ga9Brpi21q_11polars_lazy", scope: !342, file: !341, line: 962, type: !13, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3460 = !DILocation(line: 329, column: 28, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3316, file: !1152, line: 328, column: 17)
!3462 = !DILocation(line: 332, column: 25, scope: !3431)
!3463 = !DILocation(line: 333, column: 20, scope: !3431)
!3464 = !DILocation(line: 46, column: 13, scope: !3465, inlinedAt: !3466)
!3465 = distinct !DISubprogram(name: "with<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uECs7Ga9Brpi21q_11polars_lazy", scope: !1201, file: !996, line: 37, type: !13, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3466 = distinct !DILocation(line: 338, column: 13, scope: !3316)
!3467 = !{!3468}
!3468 = distinct !{!3468, !3469, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3469 = distinct !{!3469, !"_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uECs7Ga9Brpi21q_11polars_lazy"}
!3470 = !DILocation(line: 46, column: 21, scope: !3465, inlinedAt: !3466)
!3471 = !DILocation(line: 555, column: 18, scope: !3073, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 59, column: 42, scope: !3075, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 97, column: 49, scope: !3083, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 250, column: 5, scope: !3087, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 461, column: 37, scope: !3476, inlinedAt: !3477)
!3476 = distinct !DISubprogram(name: "try_with<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>, std::sync::mpmc::context::{impl#0}::with::{closure_env#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>, ()>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0uECs7Ga9Brpi21q_11polars_lazy", scope: !318, file: !317, line: 457, type: !37, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3477 = distinct !DILocation(line: 53, column: 14, scope: !3478, inlinedAt: !3466)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !996, line: 47, column: 9)
!3479 = distinct !DILexicalBlock(scope: !3465, file: !996, line: 46, column: 9)
!3480 = !{!3481, !3483, !3485, !3468}
!3481 = distinct !{!3481, !3482, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3482 = distinct !{!3482, !"_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE11get_or_initNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7Ga9Brpi21q_11polars_lazy"}
!3483 = distinct !{!3483, !3484, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00Cs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3484 = distinct !{!3484, !"_RNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB8_7Context4with7CONTEXT00Cs7Ga9Brpi21q_11polars_lazy"}
!3485 = distinct !{!3485, !3486, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3486 = distinct !{!3486, !"_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy"}
!3487 = !DILocation(line: 59, column: 16, scope: !3075, inlinedAt: !3473)
!3488 = !DILocation(line: 62, column: 27, scope: !3077, inlinedAt: !3473)
!3489 = !DILocation(line: 269, column: 12, scope: !3490, inlinedAt: !3491)
!3490 = distinct !DISubprogram(name: "as_ref<core::cell::Cell<core::option::Option<std::sync::mpmc::context::Context>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtB6_4cell4CellINtNtB6_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !3106, file: !3105, line: 266, type: !13, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3491 = distinct !DILocation(line: 461, column: 56, scope: !3476, inlinedAt: !3477)
!3492 = !DILocation(line: 929, column: 22, scope: !3493, inlinedAt: !3494)
!3493 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replaceINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy", scope: !144, file: !233, line: 915, type: !13, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3494 = distinct !DILocation(line: 513, column: 9, scope: !3495, inlinedAt: !3496)
!3495 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE7replaceCs7Ga9Brpi21q_11polars_lazy", scope: !2825, file: !1176, line: 510, type: !13, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3496 = distinct !DILocation(line: 675, column: 14, scope: !3497, inlinedAt: !3498)
!3497 = distinct !DISubprogram(name: "take<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMsa_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE4takeCs7Ga9Brpi21q_11polars_lazy", scope: !2825, file: !1176, line: 671, type: !13, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3498 = distinct !DILocation(line: 53, column: 41, scope: !3499, inlinedAt: !3500)
!3499 = distinct !DISubprogram(name: "{closure#1}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uEs_0Cs7Ga9Brpi21q_11polars_lazy", scope: !997, file: !996, line: 53, type: !37, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3500 = distinct !DILocation(line: 462, column: 12, scope: !3501, inlinedAt: !3477)
!3501 = distinct !DILexicalBlock(scope: !3476, file: !317, line: 461, column: 9)
!3502 = !DILocation(line: 930, column: 49, scope: !3503, inlinedAt: !3494)
!3503 = distinct !DILexicalBlock(scope: !3493, file: !233, line: 929, column: 9)
!3504 = !DILocation(line: 53, column: 36, scope: !3499, inlinedAt: !3500)
!3505 = !DILocation(line: 53, column: 30, scope: !3499, inlinedAt: !3500)
!3506 = !DILocation(line: 54, column: 28, scope: !3499, inlinedAt: !3500)
!3507 = !DILocation(line: 54, column: 25, scope: !3499, inlinedAt: !3500)
!3508 = !DILocation(line: 1015, column: 18, scope: !3509, inlinedAt: !3510)
!3509 = distinct !DISubprogram(name: "unwrap<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNCNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtBO_7ChannelINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0E6unwrapCs7Ga9Brpi21q_11polars_lazy", scope: !207, file: !206, line: 1013, type: !13, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3510 = distinct !DILocation(line: 48, column: 30, scope: !3511, inlinedAt: !3512)
!3511 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::array::{impl#1}::send::{closure_env#0}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>", linkageName: "_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4send0uE0Cs7Ga9Brpi21q_11polars_lazy", scope: !997, file: !996, line: 47, type: !13, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3512 = distinct !DILocation(line: 54, column: 25, scope: !3499, inlinedAt: !3500)
!3513 = !DILocation(line: 49, column: 13, scope: !3514, inlinedAt: !3512)
!3514 = distinct !DILexicalBlock(scope: !3511, file: !996, line: 48, column: 13)
!3515 = !{!3516}
!3516 = distinct !{!3516, !3517, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3517 = distinct !{!3517, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3518 = !DILocation(line: 54, column: 42, scope: !3499, inlinedAt: !3500)
!3519 = !{!3520}
!3520 = distinct !{!3520, !3521, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3521 = distinct !{!3521, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3522 = !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 54, column: 42, scope: !3499, inlinedAt: !3500)
!3524 = !{!3525}
!3525 = distinct !{!3525, !3526, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3526 = distinct !{!3526, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3527 = !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3523)
!3529 = !DILocation(line: 444, column: 20, scope: !1036, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 2110, column: 27, scope: !1038, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 2814, column: 17, scope: !1040, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3528)
!3533 = !{!3525, !3520, !3516}
!3534 = !DILocation(line: 3956, column: 24, scope: !1044, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 3193, column: 26, scope: !1046, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 2814, column: 32, scope: !1040, inlinedAt: !3532)
!3537 = !{!3525, !3520, !3516, !3468}
!3538 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3532)
!3539 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3532)
!3541 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3532)
!3542 = !{!3543}
!3543 = distinct !{!3543, !3544, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3544 = distinct !{!3544, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3545 = !{!3546}
!3546 = distinct !{!3546, !3547, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3547 = distinct !{!3547, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3548 = !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 54, column: 42, scope: !3499, inlinedAt: !3500)
!3550 = !{!3551}
!3551 = distinct !{!3551, !3552, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3552 = distinct !{!3552, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3553 = !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3549)
!3555 = !DILocation(line: 444, column: 20, scope: !1036, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 2110, column: 27, scope: !1038, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 2814, column: 17, scope: !1040, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3554)
!3559 = !{!3551, !3546, !3543}
!3560 = !DILocation(line: 3956, column: 24, scope: !1044, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 3193, column: 26, scope: !1046, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 2814, column: 32, scope: !1040, inlinedAt: !3558)
!3563 = !{!3551, !3546, !3543, !3468}
!3564 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3558)
!3565 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3558)
!3567 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3558)
!3568 = !DILocation(line: 53, column: 23, scope: !3499, inlinedAt: !3500)
!3569 = !DILocation(line: 55, column: 22, scope: !3499, inlinedAt: !3500)
!3570 = !DILocation(line: 2447, column: 9, scope: !3571, inlinedAt: !3572)
!3571 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3572 = distinct !DILocation(line: 3615, column: 24, scope: !3573, inlinedAt: !3574)
!3573 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !24, file: !18, line: 3614, type: !13, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3574 = distinct !DILocation(line: 2898, column: 44, scope: !3575, inlinedAt: !3576)
!3575 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !24, file: !18, line: 2896, type: !13, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3576 = distinct !DILocation(line: 81, column: 27, scope: !3577, inlinedAt: !3578)
!3577 = distinct !DISubprogram(name: "reset", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context5reset", scope: !1201, file: !996, line: 80, type: !13, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3578 = distinct !DILocation(line: 56, column: 24, scope: !3579, inlinedAt: !3500)
!3579 = distinct !DILexicalBlock(scope: !3499, file: !996, line: 55, column: 17)
!3580 = !DILocation(line: 3890, column: 24, scope: !3036, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 2898, column: 26, scope: !3575, inlinedAt: !3576)
!3582 = !DILocation(line: 2447, column: 9, scope: !3583, inlinedAt: !3584)
!3583 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut ()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OuEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1177, file: !1176, line: 2443, type: !13, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3584 = distinct !DILocation(line: 2500, column: 16, scope: !3585, inlinedAt: !3586)
!3585 = distinct !DISubprogram(name: "as_ptr<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !24, file: !18, line: 2499, type: !13, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3586 = distinct !DILocation(line: 1763, column: 31, scope: !3587, inlinedAt: !3588)
!3587 = distinct !DISubprogram(name: "store<()>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOuE5storeCs7Ga9Brpi21q_11polars_lazy", scope: !24, file: !18, line: 1760, type: !13, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3588 = distinct !DILocation(line: 82, column: 27, scope: !3577, inlinedAt: !3578)
!3589 = !DILocation(line: 3890, column: 24, scope: !2249, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1763, column: 13, scope: !3587, inlinedAt: !3588)
!3591 = !DILocation(line: 57, column: 31, scope: !3579, inlinedAt: !3500)
!3592 = !DILocation(line: 1015, column: 18, scope: !3509, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 48, column: 30, scope: !3594, inlinedAt: !3595)
!3594 = !DILexicalBlockFile(scope: !3511, file: !996, discriminator: 2)
!3595 = distinct !DILocation(line: 57, column: 31, scope: !3579, inlinedAt: !3500)
!3596 = !DILocation(line: 49, column: 13, scope: !3597, inlinedAt: !3595)
!3597 = distinct !DILexicalBlock(scope: !3511, file: !996, line: 48, column: 13)
!3598 = !DILocation(line: 437, column: 9, scope: !3599, inlinedAt: !3600)
!3599 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCs7Ga9Brpi21q_11polars_lazy", scope: !2825, file: !1176, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !14)
!3600 = distinct !DILocation(line: 58, column: 26, scope: !3601, inlinedAt: !3500)
!3601 = distinct !DILexicalBlock(scope: !3579, file: !996, line: 57, column: 21)
!3602 = !DILocation(line: 929, column: 22, scope: !3493, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 513, column: 9, scope: !3604, inlinedAt: !3605)
!3604 = !DILexicalBlockFile(scope: !3495, file: !1176, discriminator: 2)
!3605 = distinct !DILocation(line: 437, column: 14, scope: !3599, inlinedAt: !3600)
!3606 = !DILocation(line: 930, column: 49, scope: !3607, inlinedAt: !3603)
!3607 = distinct !DILexicalBlock(scope: !3493, file: !233, line: 929, column: 9)
!3608 = !DILocation(line: 810, column: 1, scope: !3226, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 437, column: 26, scope: !3599, inlinedAt: !3600)
!3610 = !DILocation(line: 3956, column: 24, scope: !1044, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 3193, column: 26, scope: !1046, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 2814, column: 32, scope: !1040, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 810, column: 1, scope: !1027, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 810, column: 1, scope: !3226, inlinedAt: !3609)
!3616 = !{!3617, !3619, !3621, !3623, !3468}
!3617 = distinct !{!3617, !3618, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3618 = distinct !{!3618, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!3619 = distinct !{!3619, !3620, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3620 = distinct !{!3620, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!3621 = distinct !{!3621, !3622, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3622 = distinct !{!3622, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!3623 = distinct !{!3623, !3624, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!3624 = distinct !{!3624, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy"}
!3625 = !DILocation(line: 2814, column: 12, scope: !1040, inlinedAt: !3613)
!3626 = !DILocation(line: 4387, column: 24, scope: !176, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 64, column: 9, scope: !1040, inlinedAt: !3613)
!3628 = !DILocation(line: 2857, column: 18, scope: !1040, inlinedAt: !3613)
!3629 = !DILocation(line: 437, column: 26, scope: !3599, inlinedAt: !3600)
end_hunk_3
