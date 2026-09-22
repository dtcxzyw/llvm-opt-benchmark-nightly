Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.04?download=true
inline.NumInlined: 782
inline.NumDeleted: 398
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECs2NzvFoTxuAy_2rg:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz, !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull readonly align 1 %i.dy, i64 %gepdiff, i1 false), !dbg !2652
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2520, !alias.scope !2460
  br label %bb.b, !dbg !2653

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread57: ; preds = %.split.us.i.i, %.loopexit18.i, %.split.us.i13.i, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread63
  %.sroa.9.462 = phi i64 [ %i.am, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread63 ], [ %.sink71.i.i128, %.split.us.i.i ], [ %.sink.i.i138, %.split.us.i13.i ], [ %i.bc, %.loopexit18.i ] ; 2 uses
  %.sroa.14.461 = phi i64 [ %i.an, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread63 ], [ %i.cf, %.split.us.i.i ], [ %i.dx, %.split.us.i13.i ], [ %i.bd, %.loopexit18.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0, !dbg !2654
  %gepdiff67 = sub nuw nsw i64 %.sroa.9.462, %.sroa.04.0, !dbg !2655 ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %gepdiff67)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit, !dbg !2656

.noexc32:                                         ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.thread57
  %i.ee = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2657, !alias.scope !2508, !noundef !777 ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, -1, !dbg !2658
  call void @llvm.assume(i1 %i.ef), !dbg !2659
  %.not.i30 = icmp eq i64 %.sroa.9.462, %.sroa.04.0, !dbg !2660
  br i1 %.not.i30, label %bb.z, label %bb.y, !dbg !2660

bb.y:                                             ; preds = %.noexc32
  %i.eg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2661, !alias.scope !2508, !nonnull !777, !noundef !777
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee, !dbg !2662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull readonly align 1 %i.ed, i64 %gepdiff67, i1 false), !dbg !2663
  %.pre.i31 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2664, !alias.scope !2508
  br label %bb.z, !dbg !2665

bb.z:                                             ; preds = %.noexc32, %bb.y
  %i.ei = phi i64 [ %.pre.i31, %bb.y ], [ %i.ee, %.noexc32 ], !dbg !2664
  %i.ej = add i64 %i.ei, %gepdiff67, !dbg !2664
  store i64 %i.ej, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2664, !alias.scope !2508
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %6)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit, !dbg !2666

.noexc36:                                         ; preds = %bb.z
  %i.ek = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2667, !alias.scope !2514, !noundef !777 ; 3 uses
  %i.el = icmp sgt i64 %i.ek, -1, !dbg !2668
  call void @llvm.assume(i1 %i.el), !dbg !2669
  br i1 %.not.i34, label %bb.ab, label %bb.aa, !dbg !2670

bb.aa:                                            ; preds = %.noexc36
  %i.em = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2671, !alias.scope !2514, !nonnull !777, !noundef !777
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek, !dbg !2672
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull readonly align 1 %5, i64 %6, i1 false), !dbg !2673
  %.pre.i35 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2674, !alias.scope !2514
  br label %bb.ab, !dbg !2675

bb.ab:                                            ; preds = %bb.aa, %.noexc36
  %i.eo = phi i64 [ %.pre.i35, %bb.aa ], [ %i.ek, %.noexc36 ], !dbg !2674
  %i.ep = add i64 %i.eo, %6, !dbg !2674
  store i64 %i.ep, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !2674, !alias.scope !2514
  br label %bb.e, !dbg !2536

bb.ac:                                            ; preds = %.loopexit.split-lp
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !2676
  unreachable, !dbg !2676

bb.ad:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %.pn, !dbg !2676
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !2677 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2813
  store ptr %i.d, ptr %i.c, align 8, !dbg !2813
  call void @llvm.experimental.noalias.scope.decl(metadata !2796), !dbg !2814
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2815 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !2815, !alias.scope !2796, !noalias !2797, !noundef !777 ; 2 uses
  %i.h = add i64 %i.g, %1, !dbg !2816             ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g, !dbg !2816
  br i1 %i.i, label %bb.c, label %bb.b, !dbg !2817, !prof !902

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2818
  %i.k = load i64, ptr %i.j, align 8, !dbg !2818, !alias.scope !2796, !noalias !2797, !noundef !777 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8, !dbg !2819
  %i.m = add i64 %i.k, 1, !dbg !2819
  %i.n = lshr i64 %i.m, 3, !dbg !2819
  %i.o = mul nuw i64 %i.n, 7, !dbg !2819
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o, !dbg !2819 ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1, !dbg !2820
  %.not.i = icmp ugt i64 %i.h, %i.p, !dbg !2821
  br i1 %.not.i, label %bb.d, label %bb.k, !dbg !2821

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !dbg !2822, !noalias !2798
  %i.r = extractvalue { i64, i64 } %i.q, 0, !dbg !2822
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !2823

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1, !dbg !2824
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.s, i64 %i.h), !dbg !2825
  call void @llvm.experimental.noalias.scope.decl(metadata !2799), !dbg !2826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2827, !noalias !2800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2828, !noalias !2800
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 33) 32, i64 noundef %..i) #30, !dbg !2828
  %i.t = load ptr, ptr %i.a, align 8, !dbg !2829, !noalias !2800, !noundef !777 ; 9 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !2829
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2830
  %i.w = load i64, ptr %i.v, align 8, !dbg !2830, !noalias !2800 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2830
  %i.y = load i64, ptr %i.x, align 8, !dbg !2830, !noalias !2800 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.g, !dbg !2831

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2832, !noalias !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2833, !noalias !2800
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !2834

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #34, !dbg !2833, !noalias !2801
  resume { ptr, i32 } %i.z, !dbg !2835

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2836
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !2836, !noalias !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2832, !noalias !2800
  store ptr %i.e, ptr %i.b, align 8, !dbg !2837, !noalias !2800
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2837 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2837 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2837 ; 3 uses
  store ptr %i.t, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2837 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2837 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2837 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2837, !noalias !2800
  %i.aa = load i64, ptr %i.f, align 8, !dbg !2838, !alias.scope !2802, !noalias !2803, !noundef !777 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !2839
  br i1 %i.ab, label %._crit_edge28, label %.preheader.lr.ph, !dbg !2839

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !dbg !2840, !alias.scope !2802, !noalias !2803, !nonnull !777, !noundef !777 ; 2 uses
  %.val317 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2841
  %i.ad = icmp sgt <16 x i8> %.val317, splat (i8 -1), !dbg !2842
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2843
  br label %.preheader, !dbg !2839

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.027 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.026 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.025 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.024 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i119 = icmp eq i16 %.sroa.13.024, 0, !dbg !2844
  br i1 %.not.i119, label %.noexc2, label %._crit_edge, !dbg !2845

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.121 = phi ptr [ %i.af, %.noexc2 ], [ %.sroa.0.027, %.preheader ] ; 2 uses
  %.sroa.5.120 = phi i64 [ %i.ai, %.noexc2 ], [ %.sroa.5.026, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.121) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.121, i64 16, !dbg !2846 ; 3 uses
  %.val18 = load <16 x i8>, ptr %i.af, align 16, !dbg !2847
  %i.ag = icmp sgt <16 x i8> %.val18, splat (i8 -1), !dbg !2848
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !2849 ; 2 uses
  %i.ai = add i64 %.sroa.5.120, 16, !dbg !2850    ; 2 uses
  %.not.i1 = icmp eq i16 %i.ah, 0, !dbg !2844
  br i1 %.not.i1, label %.noexc2, label %._crit_edge, !dbg !2845

._crit_edge28.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !2851, !alias.scope !2802, !noalias !2803
  br label %._crit_edge28, !dbg !2851

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre, %._crit_edge28.loopexit ], [ 0, %bb.g ], !dbg !2851 ; 2 uses
  %i.ak = sub i64 %i.y, %i.aj, !dbg !2852
  store i64 %i.ak, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2852, !noalias !2800
  store i64 %i.aj, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2853, !noalias !2800
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !2854, !noalias !2801

bb.h:                                             ; preds = %._crit_edge28
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #35, !dbg !2855, !noalias !2801
  unreachable, !dbg !2855

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit: ; preds = %._crit_edge28
  call void @llvm.experimental.noalias.scope.decl(metadata !2804), !dbg !2833
  call void @llvm.experimental.noalias.scope.decl(metadata !2805), !dbg !2856, !noalias !2801
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2857, !alias.scope !2806, !noalias !2801 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2857, !alias.scope !2806, !noalias !2801 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2857, !alias.scope !2806, !noalias !2801, !noundef !777 ; 3 uses
  %i.am = icmp eq i64 %.val3.i.i, 0, !dbg !2858
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2859

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !2801
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2857, !alias.scope !2806, !noalias !2801
  %i.an = add i64 %.val3.i.i, 1, !dbg !2860
  %i.ao = mul nuw i64 %.val.i.i, %i.an, !dbg !2861 ; 2 uses
  %i.ap = add i64 %.val1.i.i, -1, !dbg !2862
  %i.aq = add i64 %i.ap, %i.ao, !dbg !2863        ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao, !dbg !2863
  call void @llvm.assume(i1 %i.ar), !dbg !2864, !noalias !2801
  %i.as = sub i64 0, %.val1.i.i, !dbg !2865
  %i.at = and i64 %i.aq, %i.as, !dbg !2866        ; 3 uses
  %i.au = add i64 %.val3.i.i, 17, !dbg !2867
  %i.av = add i64 %i.au, %i.at, !dbg !2868        ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at, !dbg !2868
  %i.ax = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ay = icmp ule i64 %i.av, %i.ax
  call void @llvm.assume(i1 %i.aw), !dbg !2869, !noalias !2801
  call void @llvm.assume(i1 %i.ay), !dbg !2869, !noalias !2801
  %i.az = icmp ne i64 %.val1.i.i, 0, !dbg !2870
  call void @llvm.assume(i1 %i.az), !dbg !2871, !noalias !2801
  %i.ba = icmp eq i64 %i.av, 0, !dbg !2872
  br i1 %i.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, label %bb.i, !dbg !2872

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at, !dbg !2873
  %i.bc = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bb, !dbg !2874
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #26, !dbg !2875, !noalias !2807
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, !dbg !2876

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2833, !noalias !2800
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !2834

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.024, %.preheader ], [ %i.ah, %.noexc2 ], !dbg !2877 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.026, %.preheader ], [ %i.ai, %.noexc2 ], !dbg !2877 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.027, %.preheader ], [ %i.af, %.noexc2 ], !dbg !2877
  %i.bd = add i16 %.sroa.13.1.lcssa, -1, !dbg !2878
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2879
  %i.bf = zext nneg i16 %i.be to i64, !dbg !2880
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa, !dbg !2881
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf, !dbg !2882 ; 2 uses
  %i.bi = add i64 %.sroa.9.025, -1, !dbg !2883    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2808), !dbg !2884
  %i.bj = load ptr, ptr %0, align 8, !dbg !2885, !alias.scope !2808, !noalias !2809, !nonnull !777, !noundef !777
  %i.bk = sub nsw i64 0, %i.bh, !dbg !2886
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk, !dbg !2887
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -32, !dbg !2888
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !2889, !noalias !2810, !nonnull !777, !align !991, !noundef !777
  %i.bn = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit unwind label %bb.f, !dbg !2890 ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bn, !dbg !2891 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i, !dbg !2892
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !dbg !2893, !noalias !2811
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2894
  %i.bq = bitcast <16 x i1> %i.bp to i16, !dbg !2894 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0, !dbg !2895
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2896, !prof !995

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ], !dbg !2891
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ], [ %i.ch, %.lr.ph.i ], !dbg !2894
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2897
  %i.bs = zext nneg i16 %i.br to i64, !dbg !2898
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs, !dbg !2899
  %i.bu = and i64 %i.bt, %i.w, !dbg !2899         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bu, !dbg !2900
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !2901, !noundef !777
  %i.bx = icmp sgt i8 %i.bw, -1, !dbg !2902
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2903, !prof !902

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.t, align 16, !dbg !2904
  %i.by = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer, !dbg !2905
  %i.bz = bitcast <16 x i1> %i.by to i16, !dbg !2905 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0, !dbg !2906
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true), !dbg !2907
  %i.cb = zext nneg i16 %i.ca to i64, !dbg !2907
  call void @llvm.assume(i1 %.not.i6.i), !dbg !2908
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2909

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ]
  %i.cd = add i64 %i.cc, 16, !dbg !2910           ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i, !dbg !2911
  %.sroa.0.0.i10 = and i64 %i.ce, %i.w, !dbg !2891 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i10, !dbg !2892
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !dbg !2893, !noalias !2811
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2894
  %i.ch = bitcast <16 x i1> %i.cg to i16, !dbg !2894 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0, !dbg !2895
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2896, !prof !1000

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i, !dbg !2912
  %i.cj = lshr i64 %i.bn, 57, !dbg !2913
  %i.ck = trunc nuw nsw i64 %i.cj to i8, !dbg !2914 ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16, !dbg !2915
  %i.cm = and i64 %i.cl, %i.w, !dbg !2916
  store i8 %i.ck, ptr %i.ci, align 1, !dbg !2917, !noalias !2801
  %i.cn = getelementptr i8, ptr %i.t, i64 %i.cm, !dbg !2918
  %i.co = getelementptr i8, ptr %i.cn, i64 16, !dbg !2918
  store i8 %i.ck, ptr %i.co, align 1, !dbg !2919, !noalias !2801
  %i.cp = load ptr, ptr %0, align 8, !dbg !2920, !alias.scope !2802, !noalias !2803, !nonnull !777, !noundef !777
  %.neg.i.i = xor i64 %i.bh, -1, !dbg !2921
  %.neg62.i.i = shl i64 %.neg.i.i, 5, !dbg !2921
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i, !dbg !2922
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2923
  %.neg64.i.i = shl i64 %.neg63.i.i, 5, !dbg !2923
  %i.cr = getelementptr inbounds i8, ptr %i.t, i64 %.neg64.i.i, !dbg !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cr, ptr noundef nonnull align 1 dereferenceable(32) %i.cq, i64 range(i64 24, 33) 32, i1 false), !dbg !2925, !noalias !2801
  %i.cs = icmp eq i64 %i.bi, 0, !dbg !2839
  br i1 %i.cs, label %._crit_edge28.loopexit, label %.preheader, !dbg !2839

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg) #30, !dbg !2926
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !2927

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.w, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit ], !dbg !2928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2929
  ret i64 %.sroa.0.0.i, !dbg !2930
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2931 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2934
  %i.b = load i64, ptr %i.a, align 8, !dbg !2934, !noundef !777
  %i.c = icmp ugt i64 %1, %i.b, !dbg !2935
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !2936, !prof !902

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) #31, !dbg !2937 ; 0 uses
  br label %bb.c, !dbg !2938

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !2939
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !2940 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3076
  store ptr %i.d, ptr %i.c, align 8, !dbg !3076
  call void @llvm.experimental.noalias.scope.decl(metadata !3059), !dbg !3077
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3078 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !3078, !alias.scope !3059, !noalias !3060, !noundef !777 ; 2 uses
  %i.h = add i64 %i.g, %1, !dbg !3079             ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g, !dbg !3079
  br i1 %i.i, label %bb.c, label %bb.b, !dbg !3080, !prof !902

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3081
  %i.k = load i64, ptr %i.j, align 8, !dbg !3081, !alias.scope !3059, !noalias !3060, !noundef !777 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8, !dbg !3082
  %i.m = add i64 %i.k, 1, !dbg !3082
  %i.n = lshr i64 %i.m, 3, !dbg !3082
  %i.o = mul nuw i64 %i.n, 7, !dbg !3082
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o, !dbg !3082 ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1, !dbg !3083
  %.not.i = icmp ugt i64 %i.h, %i.p, !dbg !3084
  br i1 %.not.i, label %bb.d, label %bb.k, !dbg !3084

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !dbg !3085, !noalias !3061
  %i.r = extractvalue { i64, i64 } %i.q, 0, !dbg !3085
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !3086

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1, !dbg !3087
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.s, i64 %i.h), !dbg !3088
  call void @llvm.experimental.noalias.scope.decl(metadata !3062), !dbg !3089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3090, !noalias !3063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3091, !noalias !3063
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 33) 24, i64 noundef %..i) #30, !dbg !3091
  %i.t = load ptr, ptr %i.a, align 8, !dbg !3092, !noalias !3063, !noundef !777 ; 9 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !3092
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3093
  %i.w = load i64, ptr %i.v, align 8, !dbg !3093, !noalias !3063 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3093
  %i.y = load i64, ptr %i.x, align 8, !dbg !3093, !noalias !3063 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.g, !dbg !3094

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3095, !noalias !3063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3096, !noalias !3063
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !3097

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #34, !dbg !3096, !noalias !3064
  resume { ptr, i32 } %i.z, !dbg !3098

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3099
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !dbg !3099, !noalias !3063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3095, !noalias !3063
  store ptr %i.e, ptr %i.b, align 8, !dbg !3100, !noalias !3063
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3100 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3100 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3100 ; 3 uses
  store ptr %i.t, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !3100 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !3100 ; 2 uses
  store i64 %i.y, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !3100 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3100, !noalias !3063
  %i.aa = load i64, ptr %i.f, align 8, !dbg !3101, !alias.scope !3065, !noalias !3066, !noundef !777 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !3102
  br i1 %i.ab, label %._crit_edge28, label %.preheader.lr.ph, !dbg !3102

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !dbg !3103, !alias.scope !3065, !noalias !3066, !nonnull !777, !noundef !777 ; 2 uses
  %.val317 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3104
  %i.ad = icmp sgt <16 x i8> %.val317, splat (i8 -1), !dbg !3105
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3106
  br label %.preheader, !dbg !3102

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.027 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.026 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.025 = phi i64 [ %i.aa, %.preheader.lr.ph ], [ %i.bi, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.024 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i119 = icmp eq i16 %.sroa.13.024, 0, !dbg !3107
  br i1 %.not.i119, label %.noexc2, label %._crit_edge, !dbg !3108

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.121 = phi ptr [ %i.af, %.noexc2 ], [ %.sroa.0.027, %.preheader ] ; 2 uses
  %.sroa.5.120 = phi i64 [ %i.ai, %.noexc2 ], [ %.sroa.5.026, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.121) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.121, i64 16, !dbg !3109 ; 3 uses
  %.val18 = load <16 x i8>, ptr %i.af, align 16, !dbg !3110
  %i.ag = icmp sgt <16 x i8> %.val18, splat (i8 -1), !dbg !3111
  %i.ah = bitcast <16 x i1> %i.ag to i16, !dbg !3112 ; 2 uses
  %i.ai = add i64 %.sroa.5.120, 16, !dbg !3113    ; 2 uses
  %.not.i1 = icmp eq i16 %i.ah, 0, !dbg !3107
  br i1 %.not.i1, label %.noexc2, label %._crit_edge, !dbg !3108

._crit_edge28.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !dbg !3114, !alias.scope !3065, !noalias !3066
  br label %._crit_edge28, !dbg !3114

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre, %._crit_edge28.loopexit ], [ 0, %bb.g ], !dbg !3114 ; 2 uses
  %i.ak = sub i64 %i.y, %i.aj, !dbg !3115
  store i64 %i.ak, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3115, !noalias !3063
  store i64 %i.aj, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3116, !noalias !3063
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !3117, !noalias !3064

bb.h:                                             ; preds = %._crit_edge28
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #35, !dbg !3118, !noalias !3064
  unreachable, !dbg !3118

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit: ; preds = %._crit_edge28
  call void @llvm.experimental.noalias.scope.decl(metadata !3067), !dbg !3096
  call void @llvm.experimental.noalias.scope.decl(metadata !3068), !dbg !3119, !noalias !3064
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3120, !alias.scope !3069, !noalias !3064 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3120, !alias.scope !3069, !noalias !3064 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3120, !alias.scope !3069, !noalias !3064, !noundef !777 ; 3 uses
  %i.am = icmp eq i64 %.val3.i.i, 0, !dbg !3121
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3122

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !3064
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3120, !alias.scope !3069, !noalias !3064
  %i.an = add i64 %.val3.i.i, 1, !dbg !3123
  %i.ao = mul nuw i64 %.val.i.i, %i.an, !dbg !3124 ; 2 uses
  %i.ap = add i64 %.val1.i.i, -1, !dbg !3125
  %i.aq = add i64 %i.ap, %i.ao, !dbg !3126        ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao, !dbg !3126
  call void @llvm.assume(i1 %i.ar), !dbg !3127, !noalias !3064
  %i.as = sub i64 0, %.val1.i.i, !dbg !3128
  %i.at = and i64 %i.aq, %i.as, !dbg !3129        ; 3 uses
  %i.au = add i64 %.val3.i.i, 17, !dbg !3130
  %i.av = add i64 %i.au, %i.at, !dbg !3131        ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at, !dbg !3131
  %i.ax = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.ay = icmp ule i64 %i.av, %i.ax
  call void @llvm.assume(i1 %i.aw), !dbg !3132, !noalias !3064
  call void @llvm.assume(i1 %i.ay), !dbg !3132, !noalias !3064
  %i.az = icmp ne i64 %.val1.i.i, 0, !dbg !3133
  call void @llvm.assume(i1 %i.az), !dbg !3134, !noalias !3064
  %i.ba = icmp eq i64 %i.av, 0, !dbg !3135
  br i1 %i.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, label %bb.i, !dbg !3135

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bb = sub nsw i64 0, %i.at, !dbg !3136
  %i.bc = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bb, !dbg !3137
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #26, !dbg !3138, !noalias !3070
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, !dbg !3139

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs2NzvFoTxuAy_2rg.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3096, !noalias !3063
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !3097

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.024, %.preheader ], [ %i.ah, %.noexc2 ], !dbg !3140 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.026, %.preheader ], [ %i.ai, %.noexc2 ], !dbg !3140 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.027, %.preheader ], [ %i.af, %.noexc2 ], !dbg !3140
  %i.bd = add i16 %.sroa.13.1.lcssa, -1, !dbg !3141
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3142
  %i.bf = zext nneg i16 %i.be to i64, !dbg !3143
  %i.bg = and i16 %i.bd, %.sroa.13.1.lcssa, !dbg !3144
  %i.bh = add i64 %.sroa.5.1.lcssa, %i.bf, !dbg !3145 ; 2 uses
  %i.bi = add i64 %.sroa.9.025, -1, !dbg !3146    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3071), !dbg !3147
  %i.bj = load ptr, ptr %0, align 8, !dbg !3148, !alias.scope !3071, !noalias !3072, !nonnull !777, !noundef !777
  %i.bk = sub nsw i64 0, %i.bh, !dbg !3149
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk, !dbg !3150
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -24, !dbg !3151
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !3152, !noalias !3073, !nonnull !777, !align !991, !noundef !777
  %i.bn = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit unwind label %bb.f, !dbg !3153 ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.w, %i.bn, !dbg !3154 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i, !dbg !3155
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !dbg !3156, !noalias !3074
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3157
  %i.bq = bitcast <16 x i1> %i.bp to i16, !dbg !3157 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0, !dbg !3158
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3159, !prof !995

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ], !dbg !3154
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ], [ %i.ch, %.lr.ph.i ], !dbg !3157
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3160
  %i.bs = zext nneg i16 %i.br to i64, !dbg !3161
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs, !dbg !3162
  %i.bu = and i64 %i.bt, %i.w, !dbg !3162         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bu, !dbg !3163
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !3164, !noundef !777
  %i.bx = icmp sgt i8 %i.bw, -1, !dbg !3165
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3166, !prof !902

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.t, align 16, !dbg !3167
  %i.by = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer, !dbg !3168
  %i.bz = bitcast <16 x i1> %i.by to i16, !dbg !3168 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0, !dbg !3169
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true), !dbg !3170
  %i.cb = zext nneg i16 %i.ca to i64, !dbg !3170
  call void @llvm.assume(i1 %.not.i6.i), !dbg !3171
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3172

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg.exit ]
  %i.cd = add i64 %i.cc, 16, !dbg !3173           ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i, !dbg !3174
  %.sroa.0.0.i10 = and i64 %i.ce, %i.w, !dbg !3154 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i10, !dbg !3155
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !dbg !3156, !noalias !3074
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3157
  %i.ch = bitcast <16 x i1> %i.cg to i16, !dbg !3157 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0, !dbg !3158
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3159, !prof !1000

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i, !dbg !3175
  %i.cj = lshr i64 %i.bn, 57, !dbg !3176
  %i.ck = trunc nuw nsw i64 %i.cj to i8, !dbg !3177 ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16, !dbg !3178
  %i.cm = and i64 %i.cl, %i.w, !dbg !3179
  store i8 %i.ck, ptr %i.ci, align 1, !dbg !3180, !noalias !3064
  %i.cn = getelementptr i8, ptr %i.t, i64 %i.cm, !dbg !3181
  %i.co = getelementptr i8, ptr %i.cn, i64 16, !dbg !3181
  store i8 %i.ck, ptr %i.co, align 1, !dbg !3182, !noalias !3064
  %i.cp = load ptr, ptr %0, align 8, !dbg !3183, !alias.scope !3065, !noalias !3066, !nonnull !777, !noundef !777
  %.neg.i.i = xor i64 %i.bh, -1, !dbg !3184
  %.neg62.i.i = mul i64 %.neg.i.i, 24, !dbg !3184
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i, !dbg !3185
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3186
  %.neg64.i.i = mul i64 %.neg63.i.i, 24, !dbg !3186
  %i.cr = getelementptr inbounds i8, ptr %i.t, i64 %.neg64.i.i, !dbg !3187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cr, ptr noundef nonnull align 1 dereferenceable(24) %i.cq, i64 range(i64 24, 33) 24, i1 false), !dbg !3188, !noalias !3064
  %i.cs = icmp eq i64 %i.bi, 0, !dbg !3102
  br i1 %i.cs, label %._crit_edge28.loopexit, label %.preheader, !dbg !3102

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg, i64 noundef 24, ptr noundef nonnull @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs2NzvFoTxuAy_2rg) #30, !dbg !3189
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit, !dbg !3190

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.w, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg.exit ], !dbg !3191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3192
  ret i64 %.sroa.0.0.i, !dbg !3193
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3194 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3197
  %i.b = load i64, ptr %i.a, align 8, !dbg !3197, !noundef !777
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3198
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3199, !prof !902

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) #31, !dbg !3200 ; 0 uses
  br label %bb.c, !dbg !3201

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3202
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsc0anycpf6TS_6ignore3dir11IgnoreInnerEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1x_NtNtNtBW_4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3203 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3206
  %i.b = load i64, ptr %i.a, align 8, !dbg !3206, !noundef !777
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3207
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3208, !prof !902

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsc0anycpf6TS_6ignore3dir11IgnoreInnerEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1x_NtNtNtBW_4hash6random11RandomStateE0EB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #31, !dbg !3209 ; 0 uses
  br label %bb.c, !dbg !3210

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3211
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsdq8xsXUia3c_10grep_regex7matcherNtB5_19RegexMatcherBuilder10build_manyNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3212 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.557 = alloca [18 x i8], align 2          ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 16               ; 10 uses
  %i.n = alloca [88 x i8], align 8                ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
  %i.q = alloca [88 x i8], align 8                ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.s = alloca [88 x i8], align 8                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3402
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !3344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3344
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !3403
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4, !dbg !3403
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21, !dbg !3403
  %.sroa.453.0.copyload = load i8, ptr %.sroa.453.0..sroa_idx, align 1, !dbg !3403
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22, !dbg !3403 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.557, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.557.0..sroa_idx, i64 18, i1 false), !dbg !3403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 20, i1 false), !dbg !3404
  %.sroa.3.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.d, i64 20, !dbg !3404
  store i8 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx50, align 4, !dbg !3404
  %.sroa.453.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.d, i64 21, !dbg !3404
  store i8 %.sroa.453.0.copyload, ptr %.sroa.453.0..sroa_idx54, align 1, !dbg !3404
  %.sroa.557.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 22, !dbg !3404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.557.0..sroa_idx58, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.557.0..sroa_idx, i64 18, i1 false), !dbg !3404
  call void @_RINvMs0_NtCsdq8xsXUia3c_10grep_regex6configNtB6_13ConfiguredHIR3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3), !dbg !3404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3404
  %i.t = load i64, ptr %i.r, align 8, !dbg !3405, !range !3343, !noundef !777 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1, !dbg !3405
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !dbg !3406
  br i1 %i.u, label %bb.b, label %bb.c, !dbg !3407

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3408
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 99, !dbg !3409
  store i8 2, ptr %i.w, align 1, !dbg !3409
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3410
  br label %bb.an, !dbg !3411

bb.c:                                             ; preds = %bb.a
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !3412
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !3413 ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3878
  unreachable, !dbg !3878

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsgPiXjGfBJkm_14regex_automata6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3878
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !358 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !3883

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !3884

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !3885
  ret void, !dbg !3883

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3883
  unreachable, !dbg !3883

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3883
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !360 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !3888

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !3889

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !3890
  ret void, !dbg !3888

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3888
  unreachable, !dbg !3888

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3888
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !265 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !3893

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !3894

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !3895
  ret void, !dbg !3893

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3893
  unreachable, !dbg !3893

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3893
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !362 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !3898

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !3899

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !3900
  ret void, !dbg !3898

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3898
  unreachable, !dbg !3898

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3898
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3901 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3940 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3933), !dbg !3940
  invoke void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtBZ_2io5error5ErrorEENtNtNtBZ_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b, !dbg !3941

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3934), !dbg !3941
  %i.c = load ptr, ptr %i.a, align 8, !dbg !3942, !alias.scope !3935, !noundef !777 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !3942
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i, label %bb.c, !dbg !3942

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !3943, !noalias !3936
  %i.f = icmp eq i64 %i.e, 1, !dbg !3944
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i, !dbg !3944

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3945
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.i, !dbg !3946

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937), !dbg !3941
  %i.g = load ptr, ptr %i.a, align 8, !dbg !3947, !alias.scope !3938, !noundef !777 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !3947
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs2NzvFoTxuAy_2rg.exit, label %bb.f, !dbg !3947

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3948, !noalias !3939
  %i.j = icmp eq i64 %i.i, 1, !dbg !3949
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs2NzvFoTxuAy_2rg.exit, !dbg !3949

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !3950
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !3951

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.b, %bb.d ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3941
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.i, !dbg !3952

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !3941
  unreachable, !dbg !3941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECs2NzvFoTxuAy_2rg.exit.i
  resume { ptr, i32 } %.pn.i, !dbg !3941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3941
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.n), !dbg !3953
  ret void, !dbg !3940
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !369 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !3972, !invariant.load !777 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !3972
  br i1 %.not, label %bb.c, label %bb.b, !dbg !3972

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d, !dbg !3972

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !3973
  %i.c = load i64, ptr %i.b, align 8, !dbg !3973, !range !1035, !invariant.load !777 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !3974
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i, !dbg !3974

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3973
  %i.f = load i64, ptr %i.e, align 8, !dbg !3975, !range !1036, !invariant.load !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #26, !dbg !3976
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !3977

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void, !dbg !3972

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !3978
  %i.i = load i64, ptr %i.h, align 8, !dbg !3978, !range !1035, !invariant.load !777 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !3979
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, !dbg !3979

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3978
  %i.l = load i64, ptr %i.k, align 8, !dbg !3980, !range !1036, !invariant.load !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #26, !dbg !3981
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5, !dbg !3982

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g, !dbg !3972
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !377 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !3993, !nonnull !777, !noundef !777 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !3993

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #26, !dbg !3994
  ret void, !dbg !3993

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #26, !dbg !3995
  resume { ptr, i32 } %i.b, !dbg !3993
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3996 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !4028, !nonnull !777, !noundef !777 ; 7 uses
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !4029, !inline_history !273

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #34
          to label %bb.d unwind label %bb.f, !dbg !4029, !inline_history !273

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !4029, !inline_history !273

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !4029
  %.val2.i = load ptr, ptr %i.c, align 8, !dbg !4029, !alias.scope !4027, !nonnull !777, !noundef !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #26, !dbg !4030, !inline_history !273
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #26, !dbg !4031
  resume { ptr, i32 } %.pn.i, !dbg !4028

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4029, !inline_history !273
  unreachable, !dbg !4029

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !4029
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !4029, !alias.scope !4027, !nonnull !777, !noundef !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #26, !dbg !4032, !inline_history !273
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #26, !dbg !4033
  ret void, !dbg !4028
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshhHc5tDBDRu_12grep_printer4path11PathPrinterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !381 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !4056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4051), !dbg !4056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4052), !dbg !4057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4053), !dbg !4058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054), !dbg !4059
  %i.b = load ptr, ptr %i.a, align 8, !dbg !4060, !alias.scope !4055, !nonnull !777, !noundef !777
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !4061, !noalias !4055
  %i.d = icmp eq i64 %i.c, 1, !dbg !4062
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit, !dbg !4062

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !4063
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !4064

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #34
          to label %bb.d unwind label %bb.g, !dbg !4056

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(64) %0)
          to label %bb.f unwind label %bb.e, !dbg !4056

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4056
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #34
          to label %bb.h unwind label %bb.g, !dbg !4056

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer4path6ConfigECs2NzvFoTxuAy_2rg.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !4056
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h), !dbg !4056
  ret void, !dbg !4056

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4056
  unreachable, !dbg !4056

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn, !dbg !4056
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 !dbg !165 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4086), !dbg !4087
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4089
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !4089, !alias.scope !4086 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !4089, !alias.scope !4086 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4089
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !4089, !alias.scope !4086, !noundef !777 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !4090
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !4091

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4089
  %.val.i = load i64, ptr %i.e, align 8, !dbg !4089, !alias.scope !4086
  %i.f = add i64 %.val3.i, 1, !dbg !4092
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !4093    ; 2 uses
  %i.h = add i64 %.val1.i, -1, !dbg !4094
  %i.i = add i64 %i.h, %i.g, !dbg !4095           ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !4095
  tail call void @llvm.assume(i1 %i.j), !dbg !4096
  %i.k = sub i64 0, %.val1.i, !dbg !4097
  %i.l = and i64 %i.i, %i.k, !dbg !4098           ; 3 uses
  %i.m = add i64 %.val3.i, 17, !dbg !4099
  %i.n = add i64 %i.m, %i.l, !dbg !4100           ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !4100
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !4101
  tail call void @llvm.assume(i1 %i.q), !dbg !4101
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !4102
  tail call void @llvm.assume(i1 %i.r), !dbg !4103
  %i.s = icmp eq i64 %i.n, 0, !dbg !4104
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4104

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l, !dbg !4105
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t, !dbg !4106
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #26, !dbg !4107, !noalias !4086
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !4108

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !4087
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 !dbg !4109 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4155), !dbg !4159
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4160
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !4160, !alias.scope !4155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4160
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !4160, !alias.scope !4155
  %.val2.i = load ptr, ptr %0, align 8, !dbg !4160, !alias.scope !4155, !nonnull !777, !align !991, !noundef !777 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !4161 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4161, !noalias !4155, !noundef !777 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !4162
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4163

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1, !dbg !4164
  %i.g = load ptr, ptr %.val2.i, align 8, !dbg !4165, !noalias !4155, !nonnull !777, !noundef !777
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i, !dbg !4166 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !4167, !noalias !4155, !noundef !777
  %i.j = icmp eq i8 %i.i, -128, !dbg !4167
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !4168

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16, !dbg !4169
  %i.l = load i64, ptr %i.c, align 8, !dbg !4170, !noalias !4155, !noundef !777
  %i.m = and i64 %i.l, %i.k, !dbg !4171
  store i8 -1, ptr %i.h, align 1, !dbg !4172, !noalias !4155
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !4173, !noalias !4155, !nonnull !777, !noundef !777
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !4174
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !4174
  store i8 -1, ptr %i.p, align 1, !dbg !4175, !noalias !4155
  %i.q = load i64, ptr %i.e, align 8, !dbg !4176, !noalias !4155, !noundef !777
  %i.r = add i64 %i.q, -1, !dbg !4176
  store i64 %i.r, ptr %i.e, align 8, !dbg !4176, !noalias !4155
  br label %bb.c, !dbg !4177

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d, !dbg !4162
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.split.us.i.i, !dbg !4163

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1, !dbg !4164
  %i.t = load ptr, ptr %.val2.i, align 8, !dbg !4165, !noalias !4155, !nonnull !777, !noundef !777
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i, !dbg !4166 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !dbg !4167, !noalias !4155, !noundef !777
  %i.w = icmp eq i8 %i.v, -128, !dbg !4167
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !4168

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d, !dbg !4162
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.split.i.i, !dbg !4163

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1, !dbg !4164
  %i.x = add i64 %.sroa.0.03.i.i, -16, !dbg !4169
  %i.y = load i64, ptr %i.c, align 8, !dbg !4170, !noalias !4155, !noundef !777
  %i.z = and i64 %i.y, %i.x, !dbg !4171
  store i8 -1, ptr %i.u, align 1, !dbg !4172, !noalias !4155
  %i.aa = load ptr, ptr %.val2.i, align 8, !dbg !4173, !noalias !4155, !nonnull !777, !noundef !777
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z, !dbg !4174
  %i.ac = getelementptr i8, ptr %i.ab, i64 16, !dbg !4174
  store i8 -1, ptr %i.ac, align 1, !dbg !4175, !noalias !4155
  %i.ad = load ptr, ptr %.val2.i, align 8, !dbg !4178, !noalias !4155, !nonnull !777, !noundef !777
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !4179
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i, !dbg !4180
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !dbg !4181, !noalias !4155, !inline_history !4152
  %i.af = load i64, ptr %i.e, align 8, !dbg !4176, !noalias !4155, !noundef !777
  %i.ag = add i64 %i.af, -1, !dbg !4176
  store i64 %i.ag, ptr %i.e, align 8, !dbg !4176, !noalias !4155
  br label %bb.d, !dbg !4177

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !dbg !4182, !noalias !4155, !noundef !777 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8, !dbg !4183
  %i.aj = add i64 %i.ah, 1, !dbg !4183
  %i.ak = lshr i64 %i.aj, 3, !dbg !4183
  %i.al = mul nuw i64 %i.ak, 7, !dbg !4183
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al, !dbg !4183
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !4184
  %i.an = load i64, ptr %i.am, align 8, !dbg !4184, !noalias !4155, !noundef !777
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !4185
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an, !dbg !4185
  store i64 %i.ap, ptr %i.ao, align 8, !dbg !4185, !noalias !4155
  ret void, !dbg !4159
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 !dbg !4186 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0, !dbg !4231
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4232

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b, !dbg !4232

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1, !dbg !4233 ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !4234, !nonnull !777, !noundef !777 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i, !dbg !4235
  %i.d = load i8, ptr %i.c, align 1, !dbg !4236, !noundef !777
  %i.e = icmp sgt i8 %i.d, -1, !dbg !4237
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !4238

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i, !dbg !4239
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f, !dbg !4240
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48, !dbg !4241
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h), !dbg !4242
  br label %bb.d, !dbg !4243

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val, !dbg !4231
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4232

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.a
  ret void, !dbg !4244
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1S_jEEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2NzvFoTxuAy_2rg(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 !dbg !4245 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0, !dbg !4290
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %.lr.ph.i.i, !dbg !4291

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b, !dbg !4291

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1, !dbg !4292 ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !dbg !4293, !nonnull !777, !noundef !777 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i, !dbg !4294
  %i.d = load i8, ptr %i.c, align 1, !dbg !4295, !noundef !777
  %i.e = icmp sgt i8 %i.d, -1, !dbg !4296
  br i1 %i.e, label %bb.c, label %bb.d, !dbg !4297

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i, !dbg !4298
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f, !dbg !4299
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48, !dbg !4300
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h), !dbg !4301
  br label %bb.d, !dbg !4302

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val, !dbg !4290
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4291

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1p_jEEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.a
  ret void, !dbg !4303
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !4304 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4361), !dbg !4368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4362), !dbg !4369
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4370
  %i.b = load i64, ptr %i.a, align 8, !dbg !4370, !alias.scope !4363, !noundef !777 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !4370
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4371

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4364), !dbg !4372
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4373
  %i.e = load i64, ptr %i.d, align 8, !dbg !4373, !alias.scope !4365, !noundef !777 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4373
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.c, !dbg !4373

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !4374, !alias.scope !4365, !nonnull !777, !noundef !777 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !4375, !noalias !4366
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1), !dbg !4376
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4377
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !4378
  br label %bb.d, !dbg !4379

end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEEECs2NzvFoTxuAy_2rg:bb.a
  %.sroa.86.014.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i, 0, !dbg !4380
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4381

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ], !dbg !4382 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !4383, !noalias !4367
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1), !dbg !4384
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768, !dbg !4385 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !4386 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !4387 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0, !dbg !4380
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4381

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ], !dbg !4388
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ], !dbg !4388 ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !4387 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i, -1, !dbg !4389
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true), !dbg !4390
  %i.r = zext nneg i16 %i.q to i64, !dbg !4391
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i, !dbg !4392
  %i.t = sub nsw i64 0, %i.r, !dbg !4393
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t, !dbg !4394
  %i.v = add i64 %.sroa.107.013.i.i.i, -1, !dbg !4395 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48, !dbg !4396
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w), !dbg !4397, !noalias !4365
  %i.x = icmp eq i64 %i.v, 0, !dbg !4379
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.d, !dbg !4379

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.b
  %i.y = mul i64 %i.b, 48, !dbg !4398             ; 2 uses
  %i.z = add i64 %i.y, 48, !dbg !4398             ; 2 uses
  %i.aa = add i64 %i.b, 17, !dbg !4399
  %i.ab = add i64 %i.aa, %i.z, !dbg !4400         ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z, !dbg !4400
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac), !dbg !4401
  tail call void @llvm.assume(i1 %i.ad), !dbg !4401
  %i.ae = icmp eq i64 %i.ab, 0, !dbg !4402
  br i1 %i.ae, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !4402

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.af = load ptr, ptr %0, align 8, !dbg !4403, !alias.scope !4363, !nonnull !777, !noundef !777
  %i.ag = sub i64 -48, %i.y, !dbg !4404
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag, !dbg !4405
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !dbg !4406, !noalias !4363
  br label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !4407

_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEECs2NzvFoTxuAy_2rg.exit.i.i, %bb.e
  ret void, !dbg !4368
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1j_jEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 !dbg !4408 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4465), !dbg !4472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4466), !dbg !4473
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4474
  %i.b = load i64, ptr %i.a, align 8, !dbg !4474, !alias.scope !4467, !noundef !777 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !4474
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4475

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4468), !dbg !4476
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4477
  %i.e = load i64, ptr %i.d, align 8, !dbg !4477, !alias.scope !4469, !noundef !777 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4477
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.c, !dbg !4477

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !4478, !alias.scope !4469, !nonnull !777, !noundef !777 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !4479, !noalias !4470
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1), !dbg !4480
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4481
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !4482
  br label %bb.d, !dbg !4483

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i, 0, !dbg !4484
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4485

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ], !dbg !4486 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !4487, !noalias !4471
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1), !dbg !4488
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768, !dbg !4489 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !4490 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !4491 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0, !dbg !4484
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !4485

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ], !dbg !4492
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ], !dbg !4492 ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !4491 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i, -1, !dbg !4493
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true), !dbg !4494
  %i.r = zext nneg i16 %i.q to i64, !dbg !4495
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i, !dbg !4496
  %i.t = sub nsw i64 0, %i.r, !dbg !4497
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t, !dbg !4498
  %i.v = add i64 %.sroa.107.013.i.i.i, -1, !dbg !4499 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48, !dbg !4500
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBD_jEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w), !dbg !4501, !noalias !4469
  %i.x = icmp eq i64 %i.v, 0, !dbg !4483
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i, label %bb.d, !dbg !4483

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBW_jEEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.b
  %i.y = mul i64 %i.b, 48, !dbg !4502             ; 2 uses
  %i.z = add i64 %i.y, 48, !dbg !4502             ; 2 uses
  %i.aa = add i64 %i.b, 17, !dbg !4503
  %i.ab = add i64 %i.aa, %i.z, !dbg !4504         ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z, !dbg !4504
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac), !dbg !4505
  tail call void @llvm.assume(i1 %i.ad), !dbg !4505
  %i.ae = icmp eq i64 %i.ab, 0, !dbg !4506
  br i1 %i.ae, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !4506

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i
  %i.af = load ptr, ptr %0, align 8, !dbg !4507, !alias.scope !4467, !nonnull !777, !noundef !777
  %i.ag = sub i64 -48, %i.y, !dbg !4508
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag, !dbg !4509
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !dbg !4510, !noalias !4467
  br label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit, !dbg !4511

_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIB1b_jEEECs2NzvFoTxuAy_2rg.exit.i.i, %bb.e
  ret void, !dbg !4472
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !4512 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !4526, !nonnull !777, !align !991, !noundef !777 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4526
  %.val1 = load i8, ptr %i.a, align 8, !dbg !4526, !range !896, !noundef !777
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !4527
  %i.c = trunc nuw i8 %.val1 to i1, !dbg !4528
  br i1 %i.c, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b, !dbg !4528

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4529
  %i.e = and i64 %i.d, 9223372036854775807, !dbg !4530
  %i.f = icmp eq i64 %i.e, 0, !dbg !4530
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !dbg !4530, !prof !865

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !4531
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d, !dbg !4532

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4, !dbg !4533
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !4534

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4, !dbg !4535
  %i.i = icmp eq i32 %i.h, 2, !dbg !4536
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, !dbg !4536, !prof !902

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val), !dbg !4537
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, !dbg !4537

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void, !dbg !4526
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3O_4SyncNtB37_10UnwindSafeEL_EEECs2NzvFoTxuAy_2rg(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4538 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4601), !dbg !4604
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !4605
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !4605, !alias.scope !4601 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !4605
  %.val2.i.i = load ptr, ptr %i.b, align 8, !dbg !4605, !alias.scope !4601, !nonnull !777, !align !991, !noundef !777 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !dbg !4606, !invariant.load !777, !noalias !4601 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null, !dbg !4606
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !dbg !4606

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.d, !dbg !4606, !noalias !4601

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !4607
  %i.e = load i64, ptr %i.d, align 8, !dbg !4607, !range !1035, !invariant.load !777, !noalias !4601 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4608
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, !dbg !4608

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16, !dbg !4607
  %i.h = load i64, ptr %i.g, align 8, !dbg !4609, !range !1036, !invariant.load !777, !noalias !4601
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.h) #26, !dbg !4610, !noalias !4601
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i, !dbg !4611

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !4612
  %i.k = load i64, ptr %i.j, align 8, !dbg !4612, !range !1035, !invariant.load !777, !noalias !4601 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !4613
  br i1 %i.l, label %.body.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, !dbg !4613

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16, !dbg !4612
  %i.n = load i64, ptr %i.m, align 8, !dbg !4614, !range !1036, !invariant.load !777, !noalias !4601
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #26, !dbg !4615, !noalias !4601
  br label %.body.i.i, !dbg !4616

.body.i.i:                                        ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val) #34
          to label %.body3.i.i unwind label %bb.k, !dbg !4605

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %bb.f unwind label %bb.e, !dbg !4617

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %.body3.i.i unwind label %bb.g, !dbg !4618

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB3l_4SyncNtB2E_10UnwindSafeEL_EECs2NzvFoTxuAy_2rg.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.i, !dbg !4619

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4617
  unreachable, !dbg !4617

.body3.i.i:                                       ; preds = %bb.i, %bb.e, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.t, %bb.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !4605 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !4620, !range !1056, !alias.scope !4602, !noundef !777
  %i.s = icmp eq i64 %i.r, -1, !dbg !4620
  br i1 %i.s, label %bb.m, label %bb.h, !dbg !4620

bb.h:                                             ; preds = %.body3.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.q)
          to label %bb.m unwind label %bb.k, !dbg !4620

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !4605 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !4621, !range !1056, !alias.scope !4603, !noundef !777
  %i.w = icmp eq i64 %i.v, -1, !dbg !4621
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB41_4SyncNtB3k_10UnwindSafeEL_EEEECs2NzvFoTxuAy_2rg.exit, label %bb.j, !dbg !4621

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB41_4SyncNtB3k_10UnwindSafeEL_EEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.l, !dbg !4621

bb.k:                                             ; preds = %bb.h, %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !4605
  unreachable, !dbg !4605

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !4604

bb.m:                                             ; preds = %bb.l, %bb.h, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn.i.i, %bb.h ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #26, !dbg !4622
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !4604

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner4PoolNtNtNtB1j_4meta5regex5CacheIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB28_NtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtNtB4_6marker4SendNtB41_4SyncNtB3k_10UnwindSafeEL_EEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs2NzvFoTxuAy_2rg.exit.i.i, %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #26, !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1D_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #2 !dbg !483 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4706), !dbg !4721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4707), !dbg !4722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4708), !dbg !4723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709), !dbg !4724
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4725
  %i.b = load i64, ptr %i.a, align 8, !dbg !4725, !alias.scope !4710, !noundef !777 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !4725
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !4726

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711), !dbg !4727
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4728
  %i.e = load i64, ptr %i.d, align 8, !dbg !4728, !alias.scope !4712, !noundef !777 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !4728
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i, label %bb.c, !dbg !4728

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !4729, !alias.scope !4712, !nonnull !777, !noundef !777 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !4730, !noalias !4713
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1), !dbg !4731
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4732
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !4733
  br label %bb.d, !dbg !4734

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i, 0, !dbg !4735
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, !dbg !4736

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ], !dbg !4737 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !4738, !noalias !4714
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1), !dbg !4739
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384, !dbg !4740 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !4741 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !4742 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0, !dbg !4735
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, !dbg !4736

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ], !dbg !4743
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ], !dbg !4743 ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], !dbg !4742 ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1, !dbg !4744
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true), !dbg !4745
  %i.r = zext nneg i16 %i.q to i64, !dbg !4746
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i, !dbg !4747
  %i.t = sub nsw i64 0, %i.r, !dbg !4748
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.t, !dbg !4749
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i, -1, !dbg !4750 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24, !dbg !4751 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4715), !dbg !4752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4716), !dbg !4753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4717), !dbg !4754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4718), !dbg !4755
  %i.x = load ptr, ptr %i.w, align 8, !dbg !4756, !alias.scope !4719, !noalias !4712, !nonnull !777, !noundef !777
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !dbg !4757, !noalias !4720
  %i.z = icmp eq i64 %i.y, 1, !dbg !4758
  br i1 %i.z, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, !dbg !4758

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i
  fence acquire, !dbg !4759
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsgPiXjGfBJkm_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #31, !dbg !4760, !noalias !4712
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, !dbg !4760

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i
  %i.aa = icmp eq i64 %i.v, 0, !dbg !4734
  br i1 %i.aa, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i, label %bb.d, !dbg !4734

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24, !dbg !4761
  %i.ac = icmp slt i64 %i.b, 768614336404564650, !dbg !4762
  tail call void @llvm.assume(i1 %i.ac), !dbg !4763
  %i.ad = and i64 %i.ab, -16, !dbg !4764          ; 2 uses
  %i.ae = add i64 %i.ad, 32, !dbg !4764           ; 2 uses
  %i.af = add nsw i64 %i.b, 17, !dbg !4765
  %i.ag = add i64 %i.af, %i.ae, !dbg !4766        ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae, !dbg !4766
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah), !dbg !4767
  tail call void @llvm.assume(i1 %i.ai), !dbg !4767
  %i.aj = icmp eq i64 %i.ag, 0, !dbg !4768
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECs2NzvFoTxuAy_2rg.exit, label %bb.f, !dbg !4768

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i
  %i.ak = load ptr, ptr %0, align 8, !dbg !4769, !alias.scope !4710, !nonnull !777, !noundef !777
  %i.al = sub i64 -32, %i.ad, !dbg !4770
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al, !dbg !4771
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !dbg !4772, !noalias !4710
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECs2NzvFoTxuAy_2rg.exit, !dbg !4773

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsgPiXjGfBJkm_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs2NzvFoTxuAy_2rg.exit.i.i.i.i, %bb.f
  ret void, !dbg !4721
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg(ptr %.0.val, i8 %.8.val) unnamed_addr #2 !dbg !331 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4, !dbg !4786
  %i.b = trunc nuw i8 %.8.val to i1, !dbg !4787
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b, !dbg !4787

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4788
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamECs2NzvFoTxuAy_2rg:bb.a
bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5241 ; 5 uses
  invoke void @_RNvXs7_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.j unwind label %bb.i, !dbg !5245

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #34
          to label %common.resume.i.i unwind label %bb.m, !dbg !5245

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.sink.split.i.i unwind label %bb.k, !dbg !5246

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %common.resume.i.i unwind label %bb.l, !dbg !5247

bb.l:                                             ; preds = %bb.k
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5246
  unreachable, !dbg !5246

bb.m:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5245
  unreachable, !dbg !5245

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6Ur84ob3I15_9termcolor19LossyStandardStreamINtBE_11WriterInnerNtBE_16IoStandardStreamEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.a, %.sink.split.i.i
  ret void, !dbg !5248
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink12InterpolatorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5249 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5269), !dbg !5273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5270), !dbg !5274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5271), !dbg !5275
  %i.a = load ptr, ptr %0, align 8, !dbg !5276, !alias.scope !5272, !nonnull !777, !noundef !777
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !5277, !noalias !5272
  %i.c = icmp eq i64 %i.b, 1, !dbg !5278
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit, !dbg !5278

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !5279
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !5280

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5273
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #34
          to label %common.resume unwind label %bb.f, !dbg !5273

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5281 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !5282

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.e, !dbg !5283

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5282
  unreachable, !dbg !5282

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !5273

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink15HyperlinkConfigECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !5284
  ret void, !dbg !5273

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5273
  unreachable, !dbg !5273
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !549 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5288, !range !1069, !noundef !777
  %switch1 = icmp slt i64 %i.a, -9223372036854775806, !dbg !5288
  br i1 %switch1, label %bb.e, label %bb.b, !dbg !5288

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !5289

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !5290

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5289
  unreachable, !dbg !5289

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !5289

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5291
  br label %bb.e, !dbg !5288

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit
  ret void, !dbg !5288
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !547 {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !5296

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.c, !dbg !5297

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5296
  unreachable, !dbg !5296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !5296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5298
  ret void, !dbg !5299
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5300 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5337), !dbg !5342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5338), !dbg !5343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5339), !dbg !5344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5340), !dbg !5345
  %i.a = load ptr, ptr %0, align 8, !dbg !5346, !alias.scope !5341, !nonnull !777, !noundef !777
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !dbg !5347, !noalias !5341
  %i.c = icmp eq i64 %i.b, 1, !dbg !5348
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit, !dbg !5348

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !5349
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !5350

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5342
  %.val2 = load ptr, ptr %i.e, align 8, !dbg !5342
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5342
  %.val3 = load ptr, ptr %i.f, align 8, !dbg !5342, !nonnull !777, !align !991, !noundef !777
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg(ptr %.val2, ptr nonnull %.val3) #34
          to label %common.resume unwind label %bb.g, !dbg !5342

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5342
  %.val = load ptr, ptr %i.g, align 8, !dbg !5342 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5342
  %.val1 = load ptr, ptr %i.h, align 8, !dbg !5342, !nonnull !777, !align !991, !noundef !777 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !dbg !5351, !invariant.load !777 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null, !dbg !5351
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !5351

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f, !dbg !5351

bb.e:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECs2NzvFoTxuAy_2rg.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !5352
  %i.k = load i64, ptr %i.j, align 8, !dbg !5352, !range !1035, !invariant.load !777 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !5353
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, !dbg !5353

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !5352
  %i.n = load i64, ptr %i.m, align 8, !dbg !5354, !range !1036, !invariant.load !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #26, !dbg !5355
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg.exit, !dbg !5356

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !5357
  %i.q = load i64, ptr %i.p, align 8, !dbg !5357, !range !1035, !invariant.load !777 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !5358
  br i1 %i.r, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, !dbg !5358

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !5357
  %i.t = load i64, ptr %i.s, align 8, !dbg !5359, !range !1036, !invariant.load !777
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #26, !dbg !5360
  br label %common.resume, !dbg !5361

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !5342

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void, !dbg !5342

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5342
  unreachable, !dbg !5342
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5362 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5405 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b, !dbg !5406

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5399), !dbg !5406
  %i.c = load ptr, ptr %i.a, align 8, !dbg !5407, !alias.scope !5400, !noundef !777 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !5407
  br i1 %i.d, label %.body, label %bb.c, !dbg !5407

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !5408, !noalias !5401
  %i.f = icmp eq i64 %i.e, 1, !dbg !5409
  br i1 %i.f, label %bb.d, label %.body, !dbg !5409

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !5410
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.body unwind label %bb.h, !dbg !5411

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5402), !dbg !5406
  %i.g = load ptr, ptr %i.a, align 8, !dbg !5412, !alias.scope !5403, !noundef !777 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !5412
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit, label %bb.f, !dbg !5412

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !5413, !noalias !5404
  %i.j = icmp eq i64 %i.i, 1, !dbg !5414
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit, !dbg !5414

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !5415
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !5416

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5406
  unreachable, !dbg !5406

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !5405

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.l, !dbg !5405

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs2NzvFoTxuAy_2rg.exit unwind label %bb.j, !dbg !5417

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k, !dbg !5418

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5417
  unreachable, !dbg !5417

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !5405

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECs2NzvFoTxuAy_2rg.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !5419
  ret void, !dbg !5405

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5405
  unreachable, !dbg !5405
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !5420 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !5489 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5480), !dbg !5489
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !5490 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5481), !dbg !5490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5482), !dbg !5491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5483), !dbg !5492
  %i.c = load ptr, ptr %i.b, align 8, !dbg !5493, !alias.scope !5484, !nonnull !777, !noundef !777
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !5494, !noalias !5484
  %i.e = icmp eq i64 %i.d, 1, !dbg !5495
  br i1 %i.e, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures9GroupInfoECs2NzvFoTxuAy_2rg.exit.i, !dbg !5495

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !5496
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures9GroupInfoECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.c, !dbg !5497

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #34
          to label %.body unwind label %bb.f, !dbg !5490

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures9GroupInfoECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.d, !dbg !5498

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures9GroupInfoECs2NzvFoTxuAy_2rg.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body unwind label %bb.e, !dbg !5499

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5498
  unreachable, !dbg !5498

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures9GroupInfoECs2NzvFoTxuAy_2rg.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures8CapturesECs2NzvFoTxuAy_2rg.exit unwind label %bb.g, !dbg !5500

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !5490
  unreachable, !dbg !5490

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !5489

.body:                                            ; preds = %bb.c, %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !5489
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8wrappers11PikeVMCacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(216) %i.k) #34
          to label %bb.h unwind label %bb.x, !dbg !5489

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures8CapturesECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsgPiXjGfBJkm_14regex_automata4util10primitives11NonMaxUsizeEEECs2NzvFoTxuAy_2rg.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !5489
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8wrappers11PikeVMCacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(216) %i.l)
          to label %bb.j unwind label %bb.i, !dbg !5489

bb.h:                                             ; preds = %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %i.n, %bb.i ], [ %eh.lpad-body, %.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !5489
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #34
          to label %bb.k unwind label %bb.x, !dbg !5489

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures8CapturesECs2NzvFoTxuAy_2rg.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures8CapturesECs2NzvFoTxuAy_2rg.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !5489
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o)
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB18_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECs2NzvFoTxuAy_2rg
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB18_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECs2NzvFoTxuAy_2rg(ptr noundef %0) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !6375 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6423 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !dbg !6424, !range !875, !noundef !777
  store i8 2, ptr %i.a, align 1, !dbg !6425
  %i.c = icmp eq i8 %i.b, 1, !dbg !6426
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1C_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs2NzvFoTxuAy_2rg.exit, !dbg !6426

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6418), !dbg !6427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6419), !dbg !6428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6420), !dbg !6429
  %i.d = load ptr, ptr %0, align 8, !dbg !6430, !alias.scope !6421, !noundef !777 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !6430
  br i1 %i.e, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1C_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !6430

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !6431, !noalias !6422
  %i.g = icmp eq i64 %i.f, 1, !dbg !6432
  br i1 %i.g, label %bb.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1C_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs2NzvFoTxuAy_2rg.exit, !dbg !6432

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !6433
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #31
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1C_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs2NzvFoTxuAy_2rg.exit unwind label %bb.e, !dbg !6434

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #30
          to label %.noexc1.i unwind label %bb.f, !dbg !6435

.noexc1.i:                                        ; preds = %bb.e
  unreachable, !dbg !6435

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6436
  unreachable, !dbg !6436

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1C_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !6437
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtCshqpdr3wwzuw_13grep_searcher4sinkNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_9SinkError13error_messageNtCs7LWxN68iDgu_12grep_matcher7NoErrorECs2NzvFoTxuAy_2rg() unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6438 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6460, !noalias !6456
  store i64 0, ptr %i.c, align 8, !dbg !6461, !noalias !6456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6461
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6461, !noalias !6456
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6461
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6461, !noalias !6456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6462, !noalias !6456
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6463
  store i64 1610612768, ptr %i.e, align 8, !dbg !6463, !noalias !6456
  store ptr %i.c, ptr %i.b, align 8, !dbg !6463, !noalias !6456
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6463
  store ptr @480, ptr %i.f, align 8, !dbg !6463, !noalias !6456
  %i.g = invoke noundef zeroext i1 @_RNvXs9_Cs7LWxN68iDgu_12grep_matcherNtB5_7NoErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !6464, !noalias !6457

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %bb.f unwind label %bb.e, !dbg !6465, !noalias !6457

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCs7LWxN68iDgu_12grep_matcher7NoErrorNtB5_8ToString9to_stringCs2NzvFoTxuAy_2rg.exit, !dbg !6466, !prof !902

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @481, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #33
          to label %.noexc.i.i unwind label %bb.b, !dbg !6467, !noalias !6457

.noexc.i.i:                                       ; preds = %bb.d
  unreachable, !dbg !6467

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6468, !noalias !6457
  unreachable, !dbg !6468

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h, !dbg !6468

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCs7LWxN68iDgu_12grep_matcher7NoErrorNtB5_8ToString9to_stringCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !6469, !noalias !6458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6470, !noalias !6456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6465, !noalias !6456
  %i.j = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsc0anycpf6TS_6ignore(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) #31, !dbg !6471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6472
  ret ptr %i.j, !dbg !6473
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtCshqpdr3wwzuw_13grep_searcher4sinkNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_9SinkError13error_messageNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6474 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6524
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6525
  %.val = load ptr, ptr %i.c, align 8, !dbg !6525, !nonnull !777, !noundef !777
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6525
  %.val1 = load i64, ptr %i.d, align 8, !dbg !6525, !noundef !777 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6518), !dbg !6525
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6519), !dbg !6526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6527, !noalias !6520
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d, !dbg !6527

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !dbg !6527, !range !876, !noalias !6520, !noundef !777
  %i.f = trunc nuw i64 %i.e to i1, !dbg !6528
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6529
  %i.h = load i64, ptr %i.g, align 8, !dbg !6529, !range !915, !noalias !6520, !noundef !777 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6529 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !6528, !prof !902

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8, !dbg !6530, !noalias !6520
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #32
          to label %.noexc2 unwind label %bb.d, !dbg !6531

.noexc2:                                          ; preds = %bb.b
  unreachable, !dbg !6531

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !dbg !6532, !noalias !6520, !nonnull !777, !noundef !777 ; 2 uses
  %i.l = icmp ule i64 %.val1, %i.h, !dbg !6533
  tail call void @llvm.assume(i1 %i.l), !dbg !6534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6535, !noalias !6520
  %.not.i.i.i = icmp eq i64 %.val1, 0, !dbg !6536
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !dbg !6536

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !dbg !6537, !noalias !6522
  br label %bb.e, !dbg !6538

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #34
          to label %common.resume unwind label %bb.i, !dbg !6539

bb.e:                                             ; preds = %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !dbg !6540, !alias.scope !6523
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6540
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6540, !alias.scope !6523
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6540
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6540, !alias.scope !6523
  %i.n = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsc0anycpf6TS_6ignore(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d, !dbg !6541

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6542
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit unwind label %bb.g, !dbg !6543

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h, !dbg !6544

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6543
  unreachable, !dbg !6543

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !6545

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !6546
  ret ptr %i.n, !dbg !6547

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6548
  unreachable, !dbg !6548
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1a_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0INtNtCskKLDkoKarTP_4core6result6ResultB1z_NtNtB9_4mpsc16RecvTimeoutErrorEEs0_0B1D_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !6549 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6596
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !6596 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %i.c, ptr %i.b, align 8, !dbg !6596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6597
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !6598 ; 2 uses
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6598 ; 2 uses
  store i8 2, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6599
  %.not = icmp eq i8 %.sroa.4.0.copyload, 2, !dbg !6600
  br i1 %.not, label %bb.c, label %bb.b, !dbg !6601, !prof !902

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 33, !dbg !6598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.0.val, i64 32, i1 false), !dbg !6602
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6602
  store i8 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx1, align 8, !dbg !6602
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 33, !dbg !6602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false), !dbg !6602
  invoke fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0B11_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d, !dbg !6603

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
          to label %bb.f unwind label %bb.d, !dbg !6604

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588), !dbg !6605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589), !dbg !6606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590), !dbg !6607
  %i.e = load ptr, ptr %i.b, align 8, !dbg !6608, !alias.scope !6591, !nonnull !777, !noundef !777
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !6609, !noalias !6591
  %i.g = icmp eq i64 %i.f, 1, !dbg !6610
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit, !dbg !6610

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !6611
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !6612

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6613
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6592), !dbg !6605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6593), !dbg !6614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6594), !dbg !6615
  %i.h = load ptr, ptr %i.b, align 8, !dbg !6616, !alias.scope !6595, !nonnull !777, !noundef !777
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !6617, !noalias !6595
  %i.j = icmp eq i64 %i.i, 1, !dbg !6618
  br i1 %i.j, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit8, !dbg !6618

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !6619
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31, !dbg !6620
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit8, !dbg !6620

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit8: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6605
  ret void, !dbg !6621

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6622
  unreachable, !dbg !6622

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d, !dbg !6622
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1a_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0INtNtCskKLDkoKarTP_4core6result6ResultuINtNtB7_5error16SendTimeoutErrorB1z_EEEs0_0B1D_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !6623 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6670
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !6670 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %i.c, ptr %i.b, align 8, !dbg !6670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6671
  %.sroa.0.0.copyload = load i64, ptr %.0.val, align 8, !dbg !6672 ; 2 uses
  store i64 -1, ptr %.0.val, align 8, !dbg !6673
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !6674
  br i1 %.not, label %bb.c, label %bb.b, !dbg !6675, !prof !902

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !6672
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !dbg !6676
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5.0..sroa_idx, i64 152, i1 false), !dbg !6676
  invoke fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0B11_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(160) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d, !dbg !6677

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
          to label %bb.f unwind label %bb.d, !dbg !6678

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6662), !dbg !6679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6663), !dbg !6680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6664), !dbg !6681
  %i.e = load ptr, ptr %i.b, align 8, !dbg !6682, !alias.scope !6665, !nonnull !777, !noundef !777
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !6683, !noalias !6665
  %i.g = icmp eq i64 %i.f, 1, !dbg !6684
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit, !dbg !6684

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !6685
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !6686

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6666), !dbg !6679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6667), !dbg !6688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6668), !dbg !6689
  %i.h = load ptr, ptr %i.b, align 8, !dbg !6690, !alias.scope !6669, !nonnull !777, !noundef !777
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !6691, !noalias !6669
  %i.j = icmp eq i64 %i.i, 1, !dbg !6692
  br i1 %i.j, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !6692

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !6693
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31, !dbg !6694
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6, !dbg !6694

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6679
  ret void, !dbg !6695

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6696
  unreachable, !dbg !6696

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d, !dbg !6696
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtBc_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1K_2io5error5ErrorEEE10initializeNCINvB19_11get_or_initNCNvB19_10try_insert0E0zE0E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !575 {
bb.a:
  %.sroa.48.i = alloca [16 x i8], align 8         ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !6718, !nonnull !777, !align !991, !noundef !777 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !6719 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6719
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6719 ; 3 uses
  store ptr null, ptr %i.a, align 8, !dbg !6720
  %.not = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !6721
  br i1 %.not, label %bb.d, label %bb.b, !dbg !6722, !prof !902

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6713), !dbg !6723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6714), !dbg !6724
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.0.copyload, align 8, !dbg !6725, !alias.scope !6715, !noalias !6716 ; 2 uses
  store i64 -2, ptr %.sroa.0.0.copyload, align 8, !dbg !6726, !alias.scope !6715, !noalias !6716
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -2, !dbg !6727
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs2NzvFoTxuAy_2rg.exit, !dbg !6728, !prof !902

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #33, !dbg !6729, !noalias !6717
  unreachable, !dbg !6729

_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtB9_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBZ_2io5error5ErrorEEE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8, !dbg !6725
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i), !dbg !6730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !dbg !6731
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5.sroa.0.0.copyload, align 8, !dbg !6732
  %.sroa.48.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8, !dbg !6732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i, i64 16, i1 false), !dbg !6732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i), !dbg !6733
  ret void, !dbg !6734

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33, !dbg !6735
  unreachable, !dbg !6735
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtNtNtCs2NzvFoTxuAy_2rg5flags5parse6ParserE10initializeNCINvB19_11get_or_initNCNvMs_B1H_B1F_3new0E0zE0E0B1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !6736 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 17 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !dbg !6895, !nonnull !777, !align !991, !noundef !777 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !6896, !align !991, !noundef !777 ; 2 uses
  store ptr null, ptr %i.d, align 8, !dbg !6897
  %.not = icmp eq ptr %i.e, null, !dbg !6898
  br i1 %.not, label %bb.y, label %bb.b, !dbg !6899, !prof !902

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6900, !noalias !6880
  store i64 0, ptr %i.b, align 8, !dbg !6901, !noalias !6880
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6901 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !dbg !6901, !noalias !6880
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6901 ; 10 uses
  store i64 0, ptr %i.g, align 8, !dbg !6901, !noalias !6880
  br label %bb.c, !dbg !6902

bb.c:                                             ; preds = %bb.w, %bb.b
  %.sroa.0.0.idx51.i.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.0.0.add.i.i.i, %bb.w ] ; 2 uses
  %.sroa.0.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr @139, i64 %.sroa.0.0.idx51.i.i.i, !dbg !6903 ; 2 uses
  %.sroa.0.0.add.i.i.i = add nuw nsw i64 %.sroa.0.0.idx51.i.i.i, 16, !dbg !6904 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.ptr.i.i.i, align 8, !dbg !6905, !noalias !6880, !nonnull !777, !noundef !777 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr.i.i.i, i64 8, !dbg !6905
  %i.j = load ptr, ptr %i.i, align 8, !dbg !6905, !noalias !6880, !nonnull !777, !align !991, !noundef !777 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !6906
  %i.l = load ptr, ptr %i.k, align 8, !dbg !6906, !invariant.load !777, !noalias !6880, !nonnull !777
  %i.m = invoke { ptr, i64 } %i.l(ptr noundef nonnull %i.h)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6907, !noalias !6880 ; 2 uses

bb.d:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6908, !noalias !6880
  %i.n = load ptr, ptr %i.f, align 8, !dbg !6909, !noalias !6880, !nonnull !777, !noundef !777
  %i.o = load i64, ptr %i.g, align 8, !dbg !6910, !noalias !6880, !noundef !777
  invoke void @_RNvMs1_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB5_7FlagMap3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.o)
          to label %_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs2NzvFoTxuAy_2rg5flags5parse6ParserE10initializeNCINvB4_11get_or_initNCNvMs_BW_BU_3new0E0zE0B10_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !dbg !6911, !noalias !6880

.loopexit.i.i.i:                                  ; preds = %bb.l
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.u, %bb.r, %bb.p, %._crit_edge.i.i.i, %bb.j, %bb.i, %bb.c
  %lpad.loopexit47.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.d
  %lpad.loopexit.split-lp48.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit47.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp48.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e, !dbg !6912, !noalias !6880

bb.e:                                             ; preds = %.loopexit.split-lp.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.g, !dbg !6913, !noalias !6880

bb.f:                                             ; preds = %.loopexit.split-lp.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoEEB1e_.exit.i unwind label %bb.x, !dbg !6914

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6912, !noalias !6880
  unreachable, !dbg !6912

bb.h:                                             ; preds = %bb.c
  %i.r = extractvalue { ptr, i64 } %i.m, 0, !dbg !6906
  %i.s = extractvalue { ptr, i64 } %i.m, 1, !dbg !6906
  %i.t = load i64, ptr %i.g, align 8, !dbg !6915, !alias.scope !6882, !noalias !6883, !noundef !777 ; 3 uses
  %i.u = load i64, ptr %i.b, align 8, !dbg !6916, !range !1035, !alias.scope !6882, !noalias !6883, !noundef !777
  %i.v = icmp eq i64 %i.t, %i.u, !dbg !6917
  br i1 %i.v, label %bb.i, label %bb.j, !dbg !6917

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6918, !noalias !6880

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = load ptr, ptr %i.f, align 8, !dbg !6919, !alias.scope !6882, !noalias !6883, !nonnull !777, !noundef !777
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.t, !dbg !6920 ; 5 uses
  store ptr %i.h, ptr %i.x, align 8, !dbg !6921, !noalias !6880
  %.sroa.4.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !6921
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx27.i.i.i, align 8, !dbg !6921, !noalias !6880
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !6921
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !6921, !noalias !6880
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !6921
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !6921, !noalias !6880
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !6921
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !dbg !6921, !noalias !6880
  %i.y = add i64 %i.t, 1, !dbg !6922
  store i64 %i.y, ptr %i.g, align 8, !dbg !6922, !alias.scope !6882, !noalias !6883
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 56, !dbg !6923
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !6923, !invariant.load !777, !noalias !6880, !nonnull !777
  %i.ab = invoke { ptr, i64 } %i.aa(ptr noundef nonnull %i.h)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6924, !noalias !6880 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !6923 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ], !dbg !6925
  %2 = extractvalue { ptr, i64 } %i.ab, 1, !dbg !6923 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %2, 4, !dbg !6926
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i, !dbg !6926
  %i.ae = icmp eq i64 %2, 0, !dbg !6927
  br i1 %i.ae, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i, !dbg !6928

.lr.ph.preheader.i.i.i:                           ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !dbg !6929, !alias.scope !6889, !noalias !6890
  br label %.lr.ph.i.i.i, !dbg !6930

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.preheader.i.i.i
  %i.af = phi i64 [ %i.aq, %bb.m ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], !dbg !6929 ; 3 uses
  %.sroa.03.050.i.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.ac, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ag = load ptr, ptr %.sroa.03.050.i.i.i, align 8, !dbg !6931, !noalias !6880, !nonnull !777, !noundef !777
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.050.i.i.i, i64 8, !dbg !6931
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !6931, !noalias !6880, !noundef !777
  %i.aj = load i64, ptr %i.b, align 8, !dbg !6932, !range !1035, !alias.scope !6889, !noalias !6890, !noundef !777
  %i.ak = icmp eq i64 %i.af, %i.aj, !dbg !6930
  br i1 %i.ak, label %bb.l, label %bb.m, !dbg !6930

bb.l:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %bb.m unwind label %.loopexit.i.i.i, !dbg !6933, !noalias !6880

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !6934
  %i.am = load ptr, ptr %i.al, align 8, !dbg !6934, !invariant.load !777, !noalias !6880, !nonnull !777
  %i.an = invoke { i1, i8 } %i.am(ptr noundef nonnull %i.h)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6935, !noalias !6880 ; 2 uses

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ao = load ptr, ptr %i.f, align 8, !dbg !6936, !alias.scope !6889, !noalias !6890, !nonnull !777, !noundef !777
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.af, !dbg !6937 ; 5 uses
  store ptr %i.h, ptr %i.ap, align 8, !dbg !6938, !noalias !6880
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !6938
  store ptr %i.j, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !dbg !6938, !noalias !6880
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !6938
  store ptr %i.ag, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !dbg !6938, !noalias !6880
  %.sroa.631.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !6938
  store i64 %i.ai, ptr %.sroa.631.0..sroa_idx.i.i.i, align 8, !dbg !6938, !noalias !6880
  %.sroa.732.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !6938
  store i8 2, ptr %.sroa.732.0..sroa_idx.i.i.i, align 8, !dbg !6938, !noalias !6880
  %i.aq = add i64 %i.af, 1, !dbg !6939            ; 2 uses
  store i64 %i.aq, ptr %i.g, align 8, !dbg !6939, !alias.scope !6889, !noalias !6890
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.050.i.i.i, i64 16, !dbg !6940 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad, !dbg !6927
  br i1 %i.as, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !6928

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.at = extractvalue { i1, i8 } %i.an, 0, !dbg !6934
  br i1 %i.at, label %bb.o, label %bb.r, !dbg !6941

bb.o:                                             ; preds = %bb.n
  %i.au = extractvalue { i1, i8 } %i.an, 1, !dbg !6934
  %i.av = load i64, ptr %i.g, align 8, !dbg !6942, !alias.scope !6891, !noalias !6892, !noundef !777 ; 3 uses
  %i.aw = load i64, ptr %i.b, align 8, !dbg !6943, !range !1035, !alias.scope !6891, !noalias !6892, !noundef !777
  %i.ax = icmp eq i64 %i.av, %i.aw, !dbg !6944
  br i1 %i.ax, label %bb.p, label %bb.q, !dbg !6944

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6945, !noalias !6880

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = load ptr, ptr %i.f, align 8, !dbg !6946, !alias.scope !6891, !noalias !6892, !nonnull !777, !noundef !777
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.av, !dbg !6947 ; 5 uses
  store ptr %i.h, ptr %i.az, align 8, !dbg !6948, !noalias !6880
  %.sroa.435.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !6948
  store ptr %i.j, ptr %.sroa.435.0..sroa_idx.i.i.i, align 8, !dbg !6948, !noalias !6880
  %.sroa.536.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !6948
  store ptr null, ptr %.sroa.536.0..sroa_idx.i.i.i, align 8, !dbg !6948, !noalias !6880
  %.sroa.637.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24, !dbg !6948
  store i8 %i.au, ptr %.sroa.637.0..sroa_idx.i.i.i, align 8, !dbg !6948, !noalias !6880
  %.sroa.739.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !6948
  store i8 0, ptr %.sroa.739.0..sroa_idx.i.i.i, align 8, !dbg !6948, !noalias !6880
  %i.ba = add i64 %i.av, 1, !dbg !6949
  store i64 %i.ba, ptr %i.g, align 8, !dbg !6949, !alias.scope !6891, !noalias !6892
  br label %bb.r, !dbg !6950

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 64, !dbg !6951
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !6951, !invariant.load !777, !noalias !6880, !nonnull !777
  %i.bd = invoke { ptr, i64 } %i.bc(ptr noundef nonnull %i.h)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6952, !noalias !6880 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.be = extractvalue { ptr, i64 } %i.bd, 0, !dbg !6951 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null, !dbg !6951
  br i1 %.not.i.i.i, label %bb.w, label %bb.t, !dbg !6953

bb.t:                                             ; preds = %bb.s
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1, !dbg !6951
  %i.bg = load i64, ptr %i.g, align 8, !dbg !6954, !alias.scope !6893, !noalias !6894, !noundef !777 ; 3 uses
  %i.bh = load i64, ptr %i.b, align 8, !dbg !6955, !range !1035, !alias.scope !6893, !noalias !6894, !noundef !777
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !6956
  br i1 %i.bi, label %bb.u, label %bb.v, !dbg !6956

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.i.i.i, !dbg !6957, !noalias !6880

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bj = load ptr, ptr %i.f, align 8, !dbg !6958, !alias.scope !6893, !noalias !6894, !nonnull !777, !noundef !777
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bg, !dbg !6959 ; 5 uses
  store ptr %i.h, ptr %i.bk, align 8, !dbg !6960, !noalias !6880
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !6960
  store ptr %i.j, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !dbg !6960, !noalias !6880
  %.sroa.543.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16, !dbg !6960
  store ptr %i.be, ptr %.sroa.543.0..sroa_idx.i.i.i, align 8, !dbg !6960, !noalias !6880
  %.sroa.644.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24, !dbg !6960
  store i64 %i.bf, ptr %.sroa.644.0..sroa_idx.i.i.i, align 8, !dbg !6960, !noalias !6880
  %.sroa.745.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32, !dbg !6960
  store i8 1, ptr %.sroa.745.0..sroa_idx.i.i.i, align 8, !dbg !6960, !noalias !6880
  %i.bl = add i64 %i.bg, 1, !dbg !6961
  store i64 %i.bl, ptr %i.g, align 8, !dbg !6961, !alias.scope !6893, !noalias !6894
  br label %bb.w, !dbg !6962

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.bm = icmp eq i64 %.sroa.0.0.add.i.i.i, 1664, !dbg !6903
  br i1 %i.bm, label %bb.d, label %bb.c, !dbg !6902

bb.x:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i, !dbg !6963

.body.i:                                          ; preds = %bb.x, %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !6963, !noalias !6880
  unreachable, !dbg !6963

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs2NzvFoTxuAy_2rg5flags5parse8FlagInfoEEB1e_.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi.i.i.i, !dbg !6963

_RNCINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs2NzvFoTxuAy_2rg5flags5parse6ParserE10initializeNCINvB4_11get_or_initNCNvMs_BW_BU_3new0E0zE0B10_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !6964
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !6965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6966, !noalias !6880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6967, !noalias !6880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !6968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6969
  ret void, !dbg !6970

bb.y:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33, !dbg !6971
  unreachable, !dbg !6971
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #5 !dbg !197 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !6981, !nonnull !777, !align !991, !noundef !777
  %i.b = load ptr, ptr %1, align 8, !dbg !6982, !nonnull !777, !noundef !777
  %i.c = sub nsw i64 0, %2, !dbg !6983
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c, !dbg !6984
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32, !dbg !6985
  %.val = load ptr, ptr %i.a, align 8, !dbg !6981, !nonnull !777, !align !991, !noundef !777
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e), !dbg !6986
  ret i64 %i.f, !dbg !6987
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #5 !dbg !255 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !6997, !nonnull !777, !align !991, !noundef !777
  %i.b = load ptr, ptr %1, align 8, !dbg !6998, !nonnull !777, !noundef !777
  %i.c = sub nsw i64 0, %2, !dbg !6999
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c, !dbg !7000
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24, !dbg !7001
  %.val = load ptr, ptr %i.a, align 8, !dbg !6997, !nonnull !777, !align !991, !noundef !777
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e), !dbg !7002
  ret i64 %i.f, !dbg !7003
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0B11_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !7004 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = load ptr, ptr %1, align 8, !dbg !7295, !nonnull !777, !align !991, !noundef !777
  %i.l = ptrtoint ptr %i.k to i64, !dbg !7296     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7297
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 121, !dbg !7298
  store i8 1, ptr %i.m, align 1, !dbg !7298
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 120, !dbg !7298 ; 3 uses
  store i8 0, ptr %i.n, align 8, !dbg !7298
  store i64 -1, ptr %i.j, align 8, !dbg !7298
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !7298
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !7299
  %i.p = load ptr, ptr %i.o, align 8, !dbg !7299, !nonnull !777, !align !991, !noundef !777 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7300
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !dbg !7301
  %i.r = icmp slt i64 %i.q, 0, !dbg !7302
  br i1 %i.r, label %bb.h, label %bb.c, !dbg !7302

.noexc:                                           ; preds = %bb.i, %.body
  br i1 %.sroa.04.2, label %bb.bh, label %bb.bg, !dbg !7303

bb.b:                                             ; preds = %bb.bf, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56, !dbg !7304 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7300
  store i64 %i.l, ptr %i.t, align 8, !dbg !7300
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7300
  store ptr %i.j, ptr %i.u, align 8, !dbg !7300
  store ptr %.0.val, ptr %i.c, align 8, !dbg !7300
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 72, !dbg !7305 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !7305, !alias.scope !7255, !noalias !7256, !noundef !777 ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !dbg !7306, !range !1035, !alias.scope !7255, !noalias !7256, !noundef !777
  %i.y = icmp eq i64 %i.w, %i.x, !dbg !7307
  br i1 %i.y, label %bb.d, label %bb.j, !dbg !7307

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.j unwind label %bb.e, !dbg !7308, !noalias !7256

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !dbg !7309, !noalias !7257
  %i.ab = icmp eq i64 %i.aa, 1, !dbg !7310
  br i1 %i.ab, label %bb.f, label %.body, !dbg !7310

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !7311
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %.body unwind label %bb.g, !dbg !7312

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7313
  unreachable, !dbg !7313

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !7314
  unreachable, !dbg !7314

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ar, %bb.z, %bb.f, %bb.e, %bb.af, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ax ], [ %i.cz, %bb.af ], [ %i.ce, %bb.z ], [ %i.z, %bb.e ], [ %i.dv, %bb.ar ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ax ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.ar ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !7315
  %i.ad = load i64, ptr %i.j, align 8, !dbg !7316, !range !1056, !alias.scope !7258, !noundef !777
  %i.ae = icmp eq i64 %i.ad, -1, !dbg !7316
  br i1 %i.ae, label %.noexc, label %bb.i, !dbg !7316

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %.noexc unwind label %bb.ao, !dbg !7316

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bf, %bb.m, %bb.o, %bb.aj, %bb.al, %bb.bb, %bb.bd
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.aj ], [ false, %bb.bb ], [ false, %bb.bf ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bd ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64, !dbg !7317
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !7317, !alias.scope !7255, !noalias !7256, !nonnull !777, !noundef !777
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w, !dbg !7318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !7319
  %i.ai = add i64 %i.w, 1, !dbg !7320
  store i64 %i.ai, ptr %i.v, align 8, !dbg !7320, !alias.scope !7255, !noalias !7256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7321
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !7322
  invoke fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7323

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !7315
  %i.al = load i8, ptr %i.ak, align 8, !dbg !7315, !range !896, !noundef !777
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !7324
  %i.an = trunc nuw i8 %i.al to i1, !dbg !7325
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !7325

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !7326
  %i.ap = and i64 %i.ao, 9223372036854775807, !dbg !7327
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !7327
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !7327, !prof !865

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7328

.noexc35:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !7329

bb.n:                                             ; preds = %.noexc35
  store atomic i8 1, ptr %i.am monotonic, align 4, !dbg !7330
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !7331

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc35, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4, !dbg !7332
  %i.at = icmp eq i32 %i.as, 2, !dbg !7333
  br i1 %i.at, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, !dbg !7333, !prof !902

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7334

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7335
  %i.av = load ptr, ptr %i.au, align 8, !dbg !7335, !nonnull !777, !align !991, !noundef !777 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !dbg !7335 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !7335
  %i.ay = load i32, ptr %i.ax, align 8, !dbg !7335, !range !1116, !noundef !777 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.az acquire, align 8, !dbg !7336 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !7337

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !7338

.split.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, %.noexc39
  %i.bc = load atomic i64, ptr %i.az acquire, align 8, !dbg !7336 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !7337

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7339 ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0, !dbg !7339 ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1, !dbg !7339 ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.aw, !dbg !7340
  %i.bh = icmp slt i64 %i.be, %i.aw, !dbg !7341
  %i.bi = icmp samesign ult i32 %i.bf, %i.ay
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh, !dbg !7340
  br i1 %spec.select.i, label %bb.s, label %bb.r, !dbg !7342

bb.r:                                             ; preds = %.noexc38
  %i.bj = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8, !dbg !7343 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1, !dbg !7344
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0, !dbg !7345
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !7345
  br i1 %.sroa.18.0.in.i.i.i, label %.thread15, label %.split7.us.i, !dbg !7346

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 -1, 1000000000) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7347 ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0, !dbg !7347
  %i.bm = extractvalue { i64, i32 } %i.bk, 1, !dbg !7347
  invoke void @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7348

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ], !dbg !7349
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !dbg !7350, !prof !1132

bb.t:                                             ; preds = %.split7.us.i
  unreachable, !dbg !7351

bb.u:                                             ; preds = %.split7.us.i
end_hunk_4
begin_hunk_5_@_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0B11_:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7412
  store i8 0, ptr %i.dk, align 8, !dbg !7412
  br label %bb.am, !dbg !7413

bb.am:                                            ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit60, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.be ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit60 ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !7414
  %i.dl = load i64, ptr %i.j, align 8, !dbg !7415, !range !1056, !alias.scope !7277, !noundef !777
  %i.dm = icmp eq i64 %i.dl, -1, !dbg !7415
  br i1 %i.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit51, label %bb.an, !dbg !7415

bb.an:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.j), !dbg !7415
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit51, !dbg !7415

bb.ao:                                            ; preds = %bb.i, %bb.af, %bb.ax, %bb.bh
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7416
  unreachable, !dbg !7416

bb.ap:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !7278), !dbg !7417
  %i.do = load i64, ptr %i.d, align 8, !dbg !7418, !range !876, !alias.scope !7278, !noalias !7279, !noundef !777
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !7419
  br i1 %i.dp, label %bb.aq, label %bb.au, !dbg !7419, !prof !902

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7420, !noalias !7280
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7420
  %i.dr = load ptr, ptr %i.dq, align 8, !dbg !7420, !alias.scope !7278, !noalias !7279, !nonnull !777, !align !991, !noundef !777
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7420
  %i.dt = load i8, ptr %i.ds, align 8, !dbg !7420, !range !896, !alias.scope !7278, !noalias !7279, !noundef !777
  store ptr %i.dr, ptr %i.b, align 8, !dbg !7420, !noalias !7280
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7420
  store i8 %i.dt, ptr %i.du, align 8, !dbg !7420, !noalias !7280
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32
          to label %bb.as unwind label %bb.ar, !dbg !7421, !noalias !7278

bb.ar:                                            ; preds = %bb.aq
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
          to label %.body unwind label %bb.at, !dbg !7422, !noalias !7278

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7423, !noalias !7278
  unreachable, !dbg !7423

bb.au:                                            ; preds = %bb.ap
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7424
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !7424, !alias.scope !7278, !noalias !7279, !nonnull !777, !align !991, !noundef !777 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7424
  %i.ea = load i8, ptr %i.dz, align 8, !dbg !7424, !range !896, !alias.scope !7278, !noalias !7279, !noundef !777 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1, !dbg !7424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7425
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 56, !dbg !7355
  call void @llvm.experimental.noalias.scope.decl(metadata !7281), !dbg !7426
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 64, !dbg !7427
  %i.ee = load ptr, ptr %i.ed, align 8, !dbg !7427, !alias.scope !7281, !noalias !7282, !nonnull !777, !noundef !777 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 72, !dbg !7428
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !7428, !alias.scope !7281, !noalias !7282, !noundef !777 ; 2 uses
  %.idx = mul nuw nsw i64 %i.eg, 24, !dbg !7429
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx, !dbg !7429
  %i.ei = icmp eq i64 %i.eg, 0, !dbg !7430
  br i1 %i.ei, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread, label %.lr.ph, !dbg !7431

bb.av:                                            ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %i.em, i64 24, !dbg !7432 ; 2 uses
  %i.ek = add nuw nsw i64 %i.en, 1, !dbg !7433
  %i.el = icmp eq ptr %i.ej, %i.eh, !dbg !7430
  br i1 %i.el, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread, label %.lr.ph, !dbg !7431

.lr.ph:                                           ; preds = %bb.au, %bb.av
  %i.em = phi ptr [ %i.ej, %bb.av ], [ %i.ee, %bb.au ] ; 2 uses
  %i.en = phi i64 [ %i.ek, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8, !dbg !7434
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !7434, !alias.scope !7283, !noalias !7284, !noundef !777
  %.not.i.i52 = icmp eq i64 %i.ep, %i.l, !dbg !7434
  br i1 %.not.i.i52, label %bb.aw, label %bb.av, !dbg !7435

bb.aw:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE6removeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ec, i64 noundef %i.en, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146)
          to label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54 unwind label %bb.ax, !dbg !7436

bb.ax:                                            ; preds = %bb.az, %bb.aw, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg(ptr nonnull %i.dy, i8 %i.ea) #34
          to label %.body unwind label %bb.ao, !dbg !7437

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54: ; preds = %bb.aw
  %.pr19 = load ptr, ptr %i.e, align 8, !dbg !7438
  %.not12 = icmp eq ptr %.pr19, null, !dbg !7438
  br i1 %.not12, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread, label %bb.ay, !dbg !7439, !prof !1153

bb.ay:                                            ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !7440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7441
  call void @llvm.experimental.noalias.scope.decl(metadata !7286), !dbg !7437
  call void @llvm.experimental.noalias.scope.decl(metadata !7287), !dbg !7442
  call void @llvm.experimental.noalias.scope.decl(metadata !7288), !dbg !7443
  call void @llvm.experimental.noalias.scope.decl(metadata !7289), !dbg !7444
  %i.er = load ptr, ptr %i.f, align 8, !dbg !7445, !alias.scope !7290, !nonnull !777, !noundef !777
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !dbg !7446, !noalias !7290
  %i.et = icmp eq i64 %i.es, 1, !dbg !7447
  br i1 %i.et, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit56, !dbg !7447

bb.az:                                            ; preds = %bb.ay
  fence acquire, !dbg !7448
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit56 unwind label %bb.ax, !dbg !7449

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54.thread: ; preds = %bb.av, %bb.au, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit54
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #32
          to label %bb.b unwind label %bb.ax, !dbg !7450

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit56: ; preds = %bb.ay, %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 4, !dbg !7451
  br i1 %i.eb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ba, !dbg !7452

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit56
  %i.ev = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !7453
  %i.ew = and i64 %i.ev, 9223372036854775807, !dbg !7454
  %i.ex = icmp eq i64 %i.ew, 0, !dbg !7454
  br i1 %i.ex, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.bb, !dbg !7454, !prof !865

bb.bb:                                            ; preds = %bb.ba
  %i.ey = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7455

.noexc58:                                         ; preds = %bb.bb
  br i1 %i.ey, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.bc, !dbg !7456

bb.bc:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.eu monotonic, align 4, !dbg !7457
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, !dbg !7458

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.bc, %.noexc58, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit56
  %i.ez = atomicrmw xchg ptr %i.dy, i32 0 release, align 4, !dbg !7459
  %i.fa = icmp eq i32 %i.ez, 2, !dbg !7460
  br i1 %i.fa, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit60, !dbg !7460, !prof !902

bb.bd:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7461

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit60: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7437
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7462
  store i8 1, ptr %i.fb, align 8, !dbg !7462
  br label %bb.am, !dbg !7463

_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB5_6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_readyBY_.exit: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread12
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !dbg !7464 ; 2 uses
  store i64 -1, ptr %i.j, align 8, !dbg !7465
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1, !dbg !7466
  br i1 %.not, label %bb.bf, label %bb.be, !dbg !7467, !prof !902

bb.be:                                            ; preds = %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB5_6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_readyBY_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.410.0..sroa_idx, i64 112, i1 false), !dbg !7469
  br label %bb.am, !dbg !7470

bb.bf:                                            ; preds = %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB5_6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_readyBY_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #32
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7471

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit51: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7472
  ret void, !dbg !7473

bb.bg:                                            ; preds = %bb.bh, %.noexc
  resume { ptr, i32 } %.pn, !dbg !7416

bb.bh:                                            ; preds = %.noexc
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !7303
  %.val20 = load i8, ptr %i.fc, align 8, !dbg !7303, !range !896, !noundef !777
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg(ptr nonnull %i.p, i8 %.val20) #34
          to label %bb.bg unwind label %bb.ao, !dbg !7303
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0B11_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(160) %1, ptr %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !7474 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !7779
  %i.l = load ptr, ptr %i.k, align 8, !dbg !7779, !nonnull !777, !align !991, !noundef !777
  %i.m = ptrtoint ptr %i.l to i64, !dbg !7780     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !7781
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 121, !dbg !7782
  store i8 1, ptr %i.n, align 1, !dbg !7782
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 120, !dbg !7782 ; 3 uses
  store i8 0, ptr %i.o, align 8, !dbg !7782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !dbg !7782
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !7783
  %i.q = load ptr, ptr %i.p, align 8, !dbg !7783, !nonnull !777, !align !991, !noundef !777 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7784
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !dbg !7785
  %i.s = icmp slt i64 %i.r, 0, !dbg !7786
  br i1 %i.s, label %bb.h, label %bb.c, !dbg !7786

bb.b:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !7787 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7784
  store i64 %i.m, ptr %i.u, align 8, !dbg !7784
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7784
  store ptr %i.j, ptr %i.v, align 8, !dbg !7784
  store ptr %.0.val, ptr %i.c, align 8, !dbg !7784
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !7788 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !7788, !alias.scope !7729, !noalias !7730, !noundef !777 ; 3 uses
  %i.y = load i64, ptr %i.t, align 8, !dbg !7789, !range !1035, !alias.scope !7729, !noalias !7730, !noundef !777
  %i.z = icmp eq i64 %i.x, %i.y, !dbg !7790
  br i1 %i.z, label %bb.d, label %bb.j, !dbg !7790

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.j unwind label %bb.e, !dbg !7791, !noalias !7730

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !dbg !7792, !noalias !7731
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !7793
  br i1 %i.ac, label %bb.f, label %.body, !dbg !7793

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !7794
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %.body unwind label %bb.g, !dbg !7795

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7796
  unreachable, !dbg !7796

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !7797
  unreachable, !dbg !7797

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ar, %bb.z, %bb.f, %bb.e, %bb.af, %bb.ax
  %.sroa.020.2 = phi i1 [ false, %bb.ax ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.ar ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.020.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], !dbg !7798
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ax ], [ %i.da, %bb.af ], [ %i.cf, %bb.z ], [ %i.aa, %bb.e ], [ %i.dv, %bb.ar ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit20, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit25, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i64, ptr %i.j, align 8, !dbg !7799, !range !1056, !alias.scope !7732, !noundef !777
  %i.af = icmp eq i64 %i.ae, -1, !dbg !7799
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit, label %bb.i, !dbg !7799

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit unwind label %bb.ao, !dbg !7799

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit20 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread11, %bb.v, %bb.m, %bb.o, %bb.aj, %bb.al, %bb.bb, %bb.bd
  %.sroa.020.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.aj ], [ false, %bb.bb ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bd ], [ false, %.invoke ], [ false, %.thread11 ], [ true, %bb.j ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !7800
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !7800, !alias.scope !7729, !noalias !7730, !nonnull !777, !noundef !777
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x, !dbg !7801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !7802
  %i.aj = add i64 %i.x, 1, !dbg !7803
  store i64 %i.aj, ptr %i.w, align 8, !dbg !7803, !alias.scope !7729, !noalias !7730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7804
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56, !dbg !7805
  invoke fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7806

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !7798
  %i.am = load i8, ptr %i.al, align 8, !dbg !7798, !range !896, !noundef !777
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4, !dbg !7807
  %i.ao = trunc nuw i8 %i.am to i1, !dbg !7808
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !7808

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !7809
  %i.aq = and i64 %i.ap, 9223372036854775807, !dbg !7810
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !7810
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !7810, !prof !865

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7811

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !7812

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4, !dbg !7813
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !7814

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4, !dbg !7815
  %i.au = icmp eq i32 %i.at, 2, !dbg !7816
  br i1 %i.au, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, !dbg !7816, !prof !902

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7817

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !7818
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !7818, !nonnull !777, !align !991, !noundef !777 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !7818 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !7818
  %i.az = load i32, ptr %i.ay, align 8, !dbg !7818, !range !1116, !noundef !777 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, %bb.p
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8, !dbg !7819 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !7820

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !7821

.split.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit, %.noexc52
  %i.bd = load atomic i64, ptr %i.ba acquire, align 8, !dbg !7819 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !7820

bb.q:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7822 ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0, !dbg !7822 ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1, !dbg !7822 ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax, !dbg !7823
  %i.bi = icmp slt i64 %i.bf, %i.ax, !dbg !7824
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi, !dbg !7823
  br i1 %spec.select.i, label %bb.s, label %bb.r, !dbg !7825

bb.r:                                             ; preds = %.noexc51
  %i.bk = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8, !dbg !7826 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bk, 1, !dbg !7827
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bk, 0, !dbg !7828
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !7828
  br i1 %.sroa.18.0.in.i.i.i, label %.thread11, label %.split7.us.i, !dbg !7829

bb.s:                                             ; preds = %.noexc51
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCsG258MDvU3F_3std4timeNtB5_7InstantNtNtNtCskKLDkoKarTP_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 -1, 1000000000) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7830 ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bm = extractvalue { i64, i32 } %i.bl, 0, !dbg !7830
  %i.bn = extractvalue { i64, i32 } %i.bl, 1, !dbg !7830
  invoke void @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !7831

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ], !dbg !7832
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread11
    i64 2, label %bb.v
    i64 3, label %.thread
  ], !dbg !7833, !prof !1132

bb.t:                                             ; preds = %.split7.us.i
  unreachable, !dbg !7834

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #32
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7835

end_hunk_5
begin_hunk_6_@_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4send0B11_:bb.a
bb.ao:                                            ; preds = %bb.i, %bb.af, %bb.ax, %bb.bg
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7904
  unreachable, !dbg !7904

bb.ap:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !7757), !dbg !7905
  %i.do = load i64, ptr %i.d, align 8, !dbg !7906, !range !876, !alias.scope !7757, !noalias !7758, !noundef !777
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !7907
  br i1 %i.dp, label %bb.aq, label %bb.au, !dbg !7907, !prof !902

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7908, !noalias !7759
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7908
  %i.dr = load ptr, ptr %i.dq, align 8, !dbg !7908, !alias.scope !7757, !noalias !7758, !nonnull !777, !align !991, !noundef !777
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7908
  %i.dt = load i8, ptr %i.ds, align 8, !dbg !7908, !range !896, !alias.scope !7757, !noalias !7758, !noundef !777
  store ptr %i.dr, ptr %i.b, align 8, !dbg !7908, !noalias !7759
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7908
  store i8 %i.dt, ptr %i.du, align 8, !dbg !7908, !noalias !7759
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32
          to label %bb.as unwind label %bb.ar, !dbg !7909, !noalias !7757

bb.ar:                                            ; preds = %bb.aq
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #34
          to label %.body unwind label %bb.at, !dbg !7910, !noalias !7757

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !7911, !noalias !7757
  unreachable, !dbg !7911

bb.au:                                            ; preds = %bb.ap
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7912
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !7912, !alias.scope !7757, !noalias !7758, !nonnull !777, !align !991, !noundef !777 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !7912
  %i.ea = load i8, ptr %i.dz, align 8, !dbg !7912, !range !896, !alias.scope !7757, !noalias !7758, !noundef !777 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1, !dbg !7912
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8, !dbg !7913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !7914
  call void @llvm.experimental.noalias.scope.decl(metadata !7763), !dbg !7915
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16, !dbg !7916
  %i.ee = load ptr, ptr %i.ed, align 8, !dbg !7916, !alias.scope !7763, !noalias !7764, !nonnull !777, !noundef !777 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 24, !dbg !7917
  %i.eg = load i64, ptr %i.ef, align 8, !dbg !7917, !alias.scope !7763, !noalias !7764, !noundef !777 ; 2 uses
  %.idx = mul nuw nsw i64 %i.eg, 24, !dbg !7918
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx, !dbg !7918
  %i.ei = icmp eq i64 %i.eg, 0, !dbg !7919
  br i1 %i.ei, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %.lr.ph, !dbg !7920

bb.av:                                            ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %i.em, i64 24, !dbg !7921 ; 2 uses
  %i.ek = add nuw nsw i64 %i.en, 1, !dbg !7922
  %i.el = icmp eq ptr %i.ej, %i.eh, !dbg !7919
  br i1 %i.el, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %.lr.ph, !dbg !7920

.lr.ph:                                           ; preds = %bb.au, %bb.av
  %i.em = phi ptr [ %i.ej, %bb.av ], [ %i.ee, %bb.au ] ; 2 uses
  %i.en = phi i64 [ %i.ek, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8, !dbg !7923
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !7923, !alias.scope !7765, !noalias !7766, !noundef !777
  %.not.i.i65 = icmp eq i64 %i.ep, %i.m, !dbg !7923
  br i1 %.not.i.i65, label %bb.aw, label %bb.av, !dbg !7924

bb.aw:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE6removeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ec, i64 noundef %i.en, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146)
          to label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67 unwind label %bb.ax, !dbg !7925

bb.ax:                                            ; preds = %bb.az, %bb.aw, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg(ptr nonnull %i.dy, i8 %i.ea) #34
          to label %.body unwind label %bb.ao, !dbg !7926

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67: ; preds = %bb.aw
  %.pr15 = load ptr, ptr %i.e, align 8, !dbg !7927
  %.not = icmp eq ptr %.pr15, null, !dbg !7927
  br i1 %.not, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread, label %bb.ay, !dbg !7928, !prof !1153

bb.ay:                                            ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !7929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7930
  call void @llvm.experimental.noalias.scope.decl(metadata !7768), !dbg !7926
  call void @llvm.experimental.noalias.scope.decl(metadata !7769), !dbg !7931
  call void @llvm.experimental.noalias.scope.decl(metadata !7770), !dbg !7932
  call void @llvm.experimental.noalias.scope.decl(metadata !7771), !dbg !7933
  %i.er = load ptr, ptr %i.f, align 8, !dbg !7934, !alias.scope !7772, !nonnull !777, !noundef !777
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !dbg !7935, !noalias !7772
  %i.et = icmp eq i64 %i.es, 1, !dbg !7936
  br i1 %i.et, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit69, !dbg !7936

bb.az:                                            ; preds = %bb.ay
  fence acquire, !dbg !7937
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit69 unwind label %bb.ax, !dbg !7938

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67.thread: ; preds = %bb.av, %bb.au, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit67
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #32
          to label %bb.b unwind label %bb.ax, !dbg !7939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit69: ; preds = %bb.ay, %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 4, !dbg !7940
  br i1 %i.eb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ba, !dbg !7941

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit69
  %i.ev = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !7942
  %i.ew = and i64 %i.ev, 9223372036854775807, !dbg !7943
  %i.ex = icmp eq i64 %i.ew, 0, !dbg !7943
  br i1 %i.ex, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bb, !dbg !7943, !prof !865

bb.bb:                                            ; preds = %bb.ba
  %i.ey = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7944

.noexc71:                                         ; preds = %bb.bb
  br i1 %i.ey, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bc, !dbg !7945

bb.bc:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.eu monotonic, align 4, !dbg !7946
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, !dbg !7947

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.bc, %.noexc71, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit69
  %i.ez = atomicrmw xchg ptr %i.dy, i32 0 release, align 4, !dbg !7948
  %i.fa = icmp eq i32 %i.ez, 2, !dbg !7949
  br i1 %i.fa, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit73, !dbg !7949, !prof !902

bb.bd:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7950

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit73: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7926
  %.sroa.09.0.copyload = load i64, ptr %i.j, align 8, !dbg !7951 ; 2 uses
  store i64 -1, ptr %i.j, align 8, !dbg !7952
  %.not24 = icmp eq i64 %.sroa.09.0.copyload, -1, !dbg !7953
  br i1 %.not24, label %.invoke, label %bb.be, !dbg !7954, !prof !902

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg.exit73
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !7951
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.511.0..sroa_idx, i64 112, i1 false), !dbg !7956
  store i64 1, ptr %0, align 8, !dbg !7955
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7955
  store i64 %.sroa.09.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !7955
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit64, !dbg !7957

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit64: ; preds = %bb.am, %bb.be, %bb.an, %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc4zeroINtB5_6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_readyBY_.exit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !7958
  ret void, !dbg !7959

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit: ; preds = %.body, %bb.i
  br i1 %.sroa.020.2, label %bb.bg, label %bb.bf, !dbg !7960

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit
  resume { ptr, i32 } %.pn, !dbg !7904

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4zero6PacketNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEB1r_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !7960
  %.val33 = load i8, ptr %i.fb, align 8, !dbg !7960, !range !896, !noundef !777
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs2NzvFoTxuAy_2rg(ptr nonnull %i.q, i8 %.val33) #34
          to label %bb.bf unwind label %bb.ao, !dbg !7960
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtBh_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1P_2io5error5ErrorEEE10initializeNCINvB1e_11get_or_initNCNvB1e_10try_insert0E0zE0E0INtNtNtB1P_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2NzvFoTxuAy_2rg(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !7961 {
bb.a:
  %.sroa.48.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !7993, !nonnull !777, !align !991, !noundef !777 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7985), !dbg !7993
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !dbg !7994, !alias.scope !7985, !noalias !7986 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7994
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7994, !alias.scope !7985, !noalias !7986 ; 3 uses
  store ptr null, ptr %i.a, align 8, !dbg !7995, !alias.scope !7985, !noalias !7986
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null, !dbg !7996
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !7997, !prof !902

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7987), !dbg !7998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7988), !dbg !7999
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !dbg !8000, !alias.scope !7989, !noalias !7990 ; 2 uses
  store i64 -2, ptr %.sroa.0.0.copyload.i.i, align 8, !dbg !8001, !alias.scope !7989, !noalias !7990
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, -2, !dbg !8002
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtBf_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1N_2io5error5ErrorEEE10initializeNCINvB1c_11get_or_initNCNvB1c_10try_insert0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit, !dbg !8003, !prof !902

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #33, !dbg !8004, !noalias !7991
  unreachable, !dbg !8004

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #33, !dbg !8005, !noalias !7992
  unreachable, !dbg !8005

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1d_8OnceLockINtNtCskKLDkoKarTP_4core6result6ResultNtNtBf_4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1N_2io5error5ErrorEEE10initializeNCINvB1c_11get_or_initNCNvB1c_10try_insert0E0zE0E0INtNtNtB1N_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8, !dbg !8000
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i), !dbg !8006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !dbg !8007, !noalias !7992
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !dbg !8008, !noalias !7992
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8, !dbg !8008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, i64 16, i1 false), !dbg !8008, !noalias !7992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i), !dbg !8009
  ret void, !dbg !7993
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1f_8OnceLockNtNtNtCs2NzvFoTxuAy_2rg5flags5parse6ParserE10initializeNCINvB1e_11get_or_initNCNvMs_B1M_B1K_3new0E0zE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8010 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !8016, !nonnull !777, !align !991, !noundef !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !8015
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1a_8OnceLockNtNtNtCs2NzvFoTxuAy_2rg5flags5parse6ParserE10initializeNCINvB19_11get_or_initNCNvMs_B1H_B1F_3new0E0zE0E0B1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #30, !dbg !8017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8017
  ret void, !dbg !8016
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1J_2io5error5ErrorEEs_0INtNtNtB1J_3ops8function6FnOnceuE9call_once6vtableB16_(ptr noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8018 {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [240 x i8], align 8               ; 6 uses
  %.sroa.535.i = alloca [224 x i8], align 8       ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8071), !dbg !8077
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.535.i), !dbg !8078
  %.sroa.036.0.copyload.i = load ptr, ptr %0, align 8, !dbg !8078, !alias.scope !8071 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8078
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !8078, !alias.scope !8071 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8078 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.535.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.3.0..sroa_idx.i, i64 192, i1 false), !dbg !8078
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !8079 ; 2 uses
  %.sroa.535.208..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.535.i, i64 192, !dbg !8079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.208..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !8079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8080, !noalias !8072
  store ptr %.sroa.036.0.copyload.i, ptr %i.c, align 8, !dbg !8080, !noalias !8071
  %.sroa.9.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8080
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.9.0..sroa_idx21.i, align 8, !dbg !8080, !noalias !8071
  %.sroa.11.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.11.0..sroa_idx24.i, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.535.i, i64 224, i1 false), !dbg !8080, !noalias !8071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8081, !noalias !8073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !8081
  invoke void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB2B_2io5error5ErrorEEs_000uEB1Y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtB9_6result6ResultuNtNtNtB9_2io5error5ErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2d_.exit.i.i unwind label %bb.b, !dbg !8082, !noalias !8073

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCs2NzvFoTxuAy_2rg14files_parallel0EBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.c) #34
          to label %.body.i unwind label %bb.c, !dbg !8083, !noalias !8072

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !8084, !noalias !8072
  unreachable, !dbg !8084

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtB9_6result6ResultuNtNtNtB9_2io5error5ErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2d_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8085, !noalias !8073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8086, !noalias !8073
  store ptr %.sroa.036.0.copyload.i, ptr %i.a, align 8, !dbg !8086, !noalias !8071
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8086
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !8086, !noalias !8071
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.539.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.3.0..sroa_idx.i, i64 192, i1 false), !dbg !8086
  %i.h = invoke noundef ptr @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1N_2io5error5ErrorEEB1a_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.a)
          to label %bb.f unwind label %bb.d, !dbg !8087, !noalias !8071

bb.d:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtB9_6result6ResultuNtNtNtB9_2io5error5ErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2d_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null, !dbg !8088
  br label %.body.i, !dbg !8088

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.f, %bb.b ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body.i, 0, !dbg !8088
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.g unwind label %bb.e, !dbg !8089, !noalias !8071 ; 2 uses

bb.e:                                             ; preds = %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #35, !dbg !8090, !noalias !8071
  unreachable, !dbg !8090

bb.f:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtB9_6result6ResultuNtNtNtB9_2io5error5ErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2d_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8091, !noalias !8073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8092, !noalias !8072
  br label %bb.h, !dbg !8088

bb.g:                                             ; preds = %.body.i
  %i.m = extractvalue { ptr, ptr } %i.k, 0, !dbg !8089
  %i.n = extractvalue { ptr, ptr } %i.k, 1, !dbg !8089
  br label %bb.h, !dbg !8088

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ %i.h, %bb.f ] ; 2 uses
  %i.p = phi ptr [ %i.m, %bb.g ], [ null, %bb.f ], !dbg !8088 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !8093 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !dbg !8093, !alias.scope !8071, !nonnull !777, !noundef !777 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !8094 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtNtNtB4_2io5error5ErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %bb.i unwind label %bb.k, !dbg !8095, !noalias !8071

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %i.s, align 8, !dbg !8095, !noalias !8071
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !8095
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx3.i, align 8, !dbg !8095, !noalias !8071
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !8095
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx5.i, align 8, !dbg !8095, !noalias !8071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8096, !noalias !8071
  store ptr %i.r, ptr %i.d, align 8, !dbg !8096, !noalias !8071
  %i.t = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !8097, !noalias !8075
  %i.u = icmp eq i64 %i.t, 1, !dbg !8098
  br i1 %i.u, label %bb.j, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1E_2io5error5ErrorEEs_0B11_.exit, !dbg !8098

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !8099
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1x_2io5error5ErrorEEE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #31, !dbg !8100, !noalias !8071
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1E_2io5error5ErrorEEs_0B11_.exit, !dbg !8100

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs2NzvFoTxuAy_2rg.exit14.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.v, !dbg !8101

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.s, align 8, !dbg !8095, !noalias !8071
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !8095
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !8095, !noalias !8071
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !8095
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8095, !noalias !8071
  %i.w = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !8102, !noalias !8076
  %i.x = icmp eq i64 %i.w, 1, !dbg !8103
  br i1 %i.x, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs2NzvFoTxuAy_2rg.exit14.i, !dbg !8103

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !8104
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1x_2io5error5ErrorEEE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECs2NzvFoTxuAy_2rg.exit14.i unwind label %bb.m, !dbg !8105

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !8101
  unreachable, !dbg !8101

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvCs2NzvFoTxuAy_2rg14files_parallel0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1E_2io5error5ErrorEEs_0B11_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8106, !noalias !8071
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i), !dbg !8107
  ret void, !dbg !8077
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !8108 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8215
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !8216
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8217
  %i.f = load ptr, ptr %i.c, align 8, !dbg !8218, !nonnull !777, !noundef !777 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !dbg !8219, !nonnull !777, !noundef !777
  %i.h = icmp eq ptr %i.f, %i.g, !dbg !8220
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !8183

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d, !dbg !8183

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8221
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !8222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8223
  ret void, !dbg !8224

bb.b:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8184), !dbg !8221
  call void @llvm.experimental.noalias.scope.decl(metadata !8185), !dbg !8225
  call void @llvm.experimental.noalias.scope.decl(metadata !8186), !dbg !8226
  call void @llvm.experimental.noalias.scope.decl(metadata !8187), !dbg !8227
  %i.k = load ptr, ptr %i.a, align 8, !dbg !8228, !alias.scope !8188, !nonnull !777, !noundef !777
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !dbg !8229, !noalias !8188
  %i.m = icmp eq i64 %i.l, 1, !dbg !8230
  br i1 %i.m, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit, !dbg !8230

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !8231
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg.exit unwind label %bb.j, !dbg !8232

end_hunk_6
begin_hunk_7_@_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs2NzvFoTxuAy_2rg:bb.a
  store ptr %i.cf, ptr %i.x, align 8, !dbg !10273
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10273
  store i8 1, ptr %i.y, align 8, !dbg !10273
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit22, !dbg !10266

bb.k:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10274
  %i.ab = urem i64 %2, %i.i, !dbg !10256
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !10275, !nonnull !777, !noundef !777
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.ab, !dbg !10276
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEE8try_lockCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ae), !dbg !10277
  %i.af = load i64, ptr %i.c, align 8, !dbg !10274, !range !876, !noundef !777
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !10278
  br i1 %i.ag, label %bb.z, label %bb.l, !dbg !10278

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.z, align 8, !dbg !10279, !nonnull !777, !align !991, !noundef !777 ; 9 uses
  %i.ai = load i8, ptr %i.aa, align 8, !dbg !10279, !range !896, !noundef !777 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10280
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !10281 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !10281, !noundef !777 ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0, !dbg !10281
  br i1 %i.al, label %bb.m, label %bb.q, !dbg !10281

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !10282
  %i.an = trunc nuw i8 %i.ai to i1, !dbg !10283
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !10283

bb.n:                                             ; preds = %bb.m
  %i.ao = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10284
  %i.ap = and i64 %i.ao, 9223372036854775807, !dbg !10285
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !10285
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !dbg !10285, !prof !865

.noexc19:                                         ; preds = %bb.n
  %i.ar = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !10286
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !dbg !10287

bb.o:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.am monotonic, align 4, !dbg !10288
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !10289

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc19, %bb.n, %bb.m
  %i.as = atomicrmw xchg ptr %i.ah, i32 0 release, align 4, !dbg !10290
  %i.at = icmp eq i32 %i.as, 2, !dbg !10291
  br i1 %i.at, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit, !dbg !10291, !prof !902

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ah), !dbg !10292
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit, !dbg !10292

bb.q:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !10293
  %i.av = add nsw i64 %i.ak, -1, !dbg !10294      ; 3 uses
  store i64 %i.av, ptr %i.aj, align 8, !dbg !10294
  %i.aw = load i64, ptr %i.au, align 8, !dbg !10295, !range !1035, !noundef !777
  %i.ax = icmp samesign ult i64 %i.av, %i.aw, !dbg !10296
  tail call void @llvm.assume(i1 %i.ax), !dbg !10297
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !10298
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !10298, !nonnull !777, !noundef !777
  %i.ba = icmp ult i64 %i.ak, 1152921504606846977, !dbg !10299
  tail call void @llvm.assume(i1 %i.ba), !dbg !10300
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.av, !dbg !10301
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !10302, !nonnull !777, !align !991, !noundef !777
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10303
  store ptr %1, ptr %i.bd, align 8, !dbg !10303
  store i64 0, ptr %0, align 8, !dbg !10303
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10303
  store ptr %i.bc, ptr %i.be, align 8, !dbg !10303
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10303
  store i8 0, ptr %i.bf, align 8, !dbg !10303
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !10304
  %i.bh = trunc nuw i8 %i.ai to i1, !dbg !10305
  br i1 %i.bh, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.r, !dbg !10305

bb.r:                                             ; preds = %bb.q
  %i.bi = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10306
  %i.bj = and i64 %i.bi, 9223372036854775807, !dbg !10307
  %i.bk = icmp eq i64 %i.bj, 0, !dbg !10307
  br i1 %i.bk, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.s, !dbg !10307, !prof !865

bb.s:                                             ; preds = %bb.r
  %i.bl = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !10308
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.t, !dbg !10309

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.bg monotonic, align 4, !dbg !10310
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, !dbg !10311

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bm = atomicrmw xchg ptr %i.ah, i32 0 release, align 4, !dbg !10312
  %i.bn = icmp eq i32 %i.bm, 2, !dbg !10313
  br i1 %i.bn, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit22, !dbg !10313, !prof !902

bb.u:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ah), !dbg !10314
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit22, !dbg !10314

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10315
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10315
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo), !dbg !10315
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !10316, !noalias !10243
  %i.bp = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #26, !dbg !10317, !noalias !10243 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null, !dbg !10318
  br i1 %i.bq, label %bb.v, label %bb.y, !dbg !10319, !prof !902

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #32
          to label %.noexc23 unwind label %bb.w, !dbg !10320

.noexc23:                                         ; preds = %bb.v
  unreachable, !dbg !10320

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #34
          to label %common.resume unwind label %bb.x, !dbg !10321

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !10322
  unreachable, !dbg !10322

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bp, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false), !dbg !10323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10324
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10325
  store ptr %1, ptr %i.bt, align 8, !dbg !10325
  store i64 0, ptr %0, align 8, !dbg !10325
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10325
  store ptr %i.bp, ptr %i.bu, align 8, !dbg !10325
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10325
  store i8 0, ptr %i.bv, align 8, !dbg !10325
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit22, !dbg !10326

bb.z:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10246), !dbg !10280
  %.val.i25 = load ptr, ptr %i.z, align 8, !dbg !10327, !alias.scope !10246 ; 4 uses
  %.val3.i26 = load i8, ptr %i.aa, align 8, !dbg !10327, !range !875, !alias.scope !10246, !noundef !777 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2, !dbg !10328
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit32, label %bb.aa, !dbg !10328

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4, !dbg !10329
  %i.bx = trunc nuw i8 %.val3.i26 to i1, !dbg !10330
  br i1 %i.bx, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ab, !dbg !10330

bb.ab:                                            ; preds = %bb.aa
  %i.by = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10331, !noalias !10246
  %i.bz = and i64 %i.by, 9223372036854775807, !dbg !10332
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !10332
  br i1 %i.ca, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ac, !dbg !10332, !prof !865

bb.ac:                                            ; preds = %bb.ab
  %i.cb = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !10333, !noalias !10246
  br i1 %i.cb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.ad, !dbg !10334

bb.ad:                                            ; preds = %bb.ac
  store atomic i8 1, ptr %i.bw monotonic, align 1, !dbg !10335, !noalias !10246
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, !dbg !10336

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.cc = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !dbg !10337, !noalias !10246
  %i.cd = icmp eq i32 %i.cc, 2, !dbg !10338
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit32, !dbg !10338, !prof !902

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !dbg !10327, !noalias !10246
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit32, !dbg !10327

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2NzvFoTxuAy_2rg.exit32: ; preds = %bb.z, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEEECs2NzvFoTxuAy_2rg.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10339
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10339
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce), !dbg !10339
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !10340, !noalias !10247
  %i.cf = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #26, !dbg !10341, !noalias !10247 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null, !dbg !10342
  br i1 %i.cg, label %bb.h, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheE3newCs2NzvFoTxuAy_2rg.exit9, !dbg !10343, !prof !902
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE16with_capacity_inCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10344 {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 32, i64 noundef %1) #30, !dbg !10347
  ret void, !dbg !10348
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 33) %2, ptr noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !10349 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8, !dbg !10551, !nonnull !777, !noundef !777 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10551 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !dbg !10551, !noundef !777 ; 2 uses
  %i.c = add i64 %.val16, 1, !dbg !10552          ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !10553
  br i1 %.not6.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !10553

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16, !dbg !10554
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false), !dbg !10555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10556
  br label %._crit_edge, !dbg !10550

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !10557
  %i.f = and i64 %i.c, 15, !dbg !10558
  %.not10.i.i.i = icmp ne i64 %i.f, 0, !dbg !10559
  %i.g = zext i1 %.not10.i.i.i to i64, !dbg !10559
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !10559 ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !10553
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !10553
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !10553

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !10553
  br label %bb.b, !dbg !10553

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !10553
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader, !dbg !10553

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !10553
  tail call void @llvm.assume(i1 %lcmp.mod38), !dbg !10553
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init, !dbg !10560 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16, !dbg !10561
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !10562
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !10563
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472), !dbg !10563
  store <2 x i64> %i.k, ptr %i.i, align 16, !dbg !10564
  br label %._crit_edge.i, !dbg !10565

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10565
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10565
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16), !dbg !10550
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16), !dbg !10550
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %., !dbg !10554
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false), !dbg !10555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10556
  store ptr %3, ptr %i.l, align 8, !dbg !10565
  store i64 %2, ptr %i.m, align 8, !dbg !10565
  store ptr %0, ptr %i.a, align 8, !dbg !10565
  br label %.lr.ph, !dbg !10492

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i, !dbg !10560 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16, !dbg !10561
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !10562
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !10563
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472), !dbg !10563
  store <2 x i64> %i.q, ptr %i.o, align 16, !dbg !10564
  %i.r = add i64 %.sroa.0.08.i, 32, !dbg !10566   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i, !dbg !10560
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !10560 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16, !dbg !10561
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !10562
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !10563
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472), !dbg !10563
  store <2 x i64> %i.v, ptr %i.t, align 16, !dbg !10564
  %niter.next.1 = add i64 %niter, 2, !dbg !10553  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !10553
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b, !dbg !10553

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8, !dbg !10567 ; 2 uses
  %.pre13 = add i64 %.pre, 1, !dbg !10568
  %i.w = lshr i64 %.pre13, 3, !dbg !10568
  %i.x = mul nuw i64 %i.w, 7, !dbg !10568
  br label %._crit_edge, !dbg !10567

._crit_edge:                                      ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !10568
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !10567 ; 2 uses
  %i.z = icmp ult i64 %i.y, 8, !dbg !10568
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi, !dbg !10568
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10569
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !10569, !noundef !777
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10570
  %i.ad = sub i64 %.sroa.04.0, %i.ab, !dbg !10570
  store i64 %i.ad, ptr %i.ac, align 8, !dbg !10570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10571
  ret void, !dbg !10572

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1, !dbg !10573
  %i.af = load ptr, ptr %0, align 8, !dbg !10574, !nonnull !777, !noundef !777 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06, !dbg !10575
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !10576, !noundef !777
  %.not = icmp eq i8 %i.ah, -128, !dbg !10576
  br i1 %.not, label %bb.c, label %bb.l, !dbg !10492

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1, !dbg !10573
  %.neg11 = mul i64 %2, %.neg, !dbg !10577
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11, !dbg !10578 ; 2 uses
  br label %bb.d, !dbg !10579

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e, !dbg !10580 ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %bb.n unwind label %bb.m, !dbg !10571

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !dbg !10581, !nonnull !777, !noundef !777 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !dbg !10581, !noundef !777 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj, !dbg !10582 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i, !dbg !10583
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !dbg !10584, !noalias !10497
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !10585
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !10585 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0, !dbg !10586
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !dbg !10587, !prof !995

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ], !dbg !10582
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ], !dbg !10585
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !10588
  %i.ap = zext nneg i16 %i.ao to i64, !dbg !10589
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap, !dbg !10590
  %i.ar = and i64 %i.aq, %.val14, !dbg !10590     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar, !dbg !10591
  %i.at = load i8, ptr %i.as, align 1, !dbg !10592, !noundef !777
  %i.au = icmp sgt i8 %i.at, -1, !dbg !10593
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10594, !prof !902

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16, !dbg !10595
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !10596
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !10596 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0, !dbg !10597
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !10598
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !10598
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !10599
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !10600

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16, !dbg !10601          ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i, !dbg !10602
  %.sroa.0.0.i = and i64 %i.bb, %.val14, !dbg !10582 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i, !dbg !10583
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !dbg !10584, !noalias !10497
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !10585
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !10585 ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0, !dbg !10586
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !dbg !10587, !prof !1000

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i, !dbg !10603
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i, !dbg !10604
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !10499
  %.unshifted = and i64 %i.bh, %.val14, !dbg !10499
  %i.bi = icmp ult i64 %.unshifted, 16, !dbg !10499
  br i1 %i.bi, label %bb.i, label %bb.h, !dbg !10605, !prof !865

bb.h:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1, !dbg !10606
  %.neg13 = mul i64 %2, %.neg12, !dbg !10606
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13, !dbg !10607 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i, !dbg !10608 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !10609, !noundef !777
  %i.bm = lshr i64 %i.aj, 57, !dbg !10610
  %i.bn = trunc nuw nsw i64 %i.bm to i8, !dbg !10611 ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16, !dbg !10612
  %i.bp = and i64 %i.bo, %.val14, !dbg !10613
  store i8 %i.bn, ptr %i.bk, align 1, !dbg !10614
  %i.bq = load ptr, ptr %0, align 8, !dbg !10615, !nonnull !777, !noundef !777
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp, !dbg !10616
  %i.bs = getelementptr i8, ptr %i.br, i64 16, !dbg !10616
  store i8 %i.bn, ptr %i.bs, align 1, !dbg !10617
  %i.bt = icmp eq i8 %i.bl, -1, !dbg !10618
  br i1 %i.bt, label %bb.j, label %bb.k, !dbg !10523

bb.i:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57, !dbg !10619
  %i.bv = trunc nuw nsw i64 %i.bu to i8, !dbg !10620 ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16, !dbg !10621
  %i.bx = and i64 %.val14, %i.bw, !dbg !10622
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06, !dbg !10623
  store i8 %i.bv, ptr %i.by, align 1, !dbg !10624
  %i.bz = load ptr, ptr %0, align 8, !dbg !10625, !nonnull !777, !noundef !777
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx, !dbg !10626
  %i.cb = getelementptr i8, ptr %i.ca, i64 16, !dbg !10626
  store i8 %i.bv, ptr %i.cb, align 1, !dbg !10627
  br label %bb.l, !dbg !10628

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16, !dbg !10629
  %i.cd = load i64, ptr %i.b, align 8, !dbg !10630, !noundef !777
  %i.ce = and i64 %i.cd, %i.cc, !dbg !10631
  %i.cf = load ptr, ptr %0, align 8, !dbg !10632, !nonnull !777, !noundef !777
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06, !dbg !10633
  store i8 -1, ptr %i.cg, align 1, !dbg !10634
  %i.ch = load ptr, ptr %0, align 8, !dbg !10635, !nonnull !777, !noundef !777
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce, !dbg !10636
  %i.cj = getelementptr i8, ptr %i.ci, i64 16, !dbg !10636
  store i8 -1, ptr %i.cj, align 1, !dbg !10637
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false), !dbg !10638
  br label %bb.l, !dbg !10628

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e, !dbg !10639

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16, !dbg !10640
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !dbg !10550

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !dbg !10641
  unreachable, !dbg !10641

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak, !dbg !10641
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 24, 33) %2) unnamed_addr #5 !dbg !153 {
bb.a:
  %i.a = and i64 %2, 7, !dbg !10686               ; 2 uses
  %i.b = lshr i64 %2, 3, !dbg !10687
  tail call void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2NzvFoTxuAy_2rg(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.b), !dbg !10688
  %.not = icmp eq i64 %i.a, 0, !dbg !10689
  br i1 %.not, label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.b, !dbg !10690

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %2, 56, !dbg !10691              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c, !dbg !10692 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c, !dbg !10693 ; 4 uses
  %i.f = icmp samesign ult i64 %i.a, 4, !dbg !10694
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !10694

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10678), !dbg !10695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10679), !dbg !10695
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 1, !dbg !10696, !alias.scope !10678, !noalias !10679
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.e, align 1, !dbg !10697, !alias.scope !10679, !noalias !10678
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.d, align 1, !dbg !10698, !alias.scope !10678, !noalias !10679
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.e, align 1, !dbg !10699, !alias.scope !10679, !noalias !10678
  br label %bb.d, !dbg !10700

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ], !dbg !10701 ; 4 uses
  %i.g = and i64 %2, 2, !dbg !10694
  %i.h = icmp eq i64 %i.g, 0, !dbg !10694
  br i1 %i.h, label %bb.f, label %bb.e, !dbg !10694

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.i, !dbg !10702 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.0.i, !dbg !10703 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10681), !dbg !10695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10682), !dbg !10695
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.i, align 1, !dbg !10704, !alias.scope !10681, !noalias !10682
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.j, align 1, !dbg !10705, !alias.scope !10682, !noalias !10681
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.i, align 1, !dbg !10706, !alias.scope !10681, !noalias !10682
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.j, align 1, !dbg !10707, !alias.scope !10682, !noalias !10681
  %i.k = or disjoint i64 %.sroa.0.0.i, 2, !dbg !10708
  br label %bb.f, !dbg !10700

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.k, %bb.e ], !dbg !10701 ; 2 uses
  %i.l = and i64 %2, 1, !dbg !10694
  %i.m = icmp eq i64 %i.l, 0, !dbg !10694
  br i1 %i.m, label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.g, !dbg !10694

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1.i, !dbg !10709 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.1.i, !dbg !10710 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10684), !dbg !10695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10685), !dbg !10695
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.n, align 1, !dbg !10711, !alias.scope !10684, !noalias !10685
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.o, align 1, !dbg !10712, !alias.scope !10685, !noalias !10684
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.n, align 1, !dbg !10713, !alias.scope !10684, !noalias !10685
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.o, align 1, !dbg !10714, !alias.scope !10685, !noalias !10684
  br label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, !dbg !10700

_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.g, %bb.f, %bb.a
  ret void, !dbg !10715
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags8complete4bash8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10716 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !11329
  store i64 0, ptr %i.x, align 8, !dbg !11330
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !11330 ; 13 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11330
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !11330 ; 23 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11330
  br label %bb.b, !dbg !11050

bb.b:                                             ; preds = %bb.a, %bb.u
  %.sroa.0.0.idx182 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %bb.u ] ; 2 uses
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx182, 16, !dbg !11331 ; 2 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 2)
          to label %bb.d unwind label %.loopexit177, !dbg !11332

bb.c:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 19)
          to label %bb.v unwind label %.loopexit.split-lp178, !dbg !11333

.body166:                                         ; preds = %.loopexit177, %.loopexit.split-lp178, %bb.cn, %.body
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %.body ], [ %i.im, %bb.cn ], [ %lpad.loopexit179, %.loopexit177 ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp178 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #34
          to label %common.resume unwind label %bb.ai, !dbg !11334

.loopexit177:                                     ; preds = %bb.d, %bb.h, %bb.o, %bb.b, %bb.e, %bb.g, %bb.j, %bb.l, %bb.m, %bb.n, %bb.q, %bb.r, %bb.t
  %lpad.loopexit179 = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.loopexit.split-lp178:                            ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i165
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.body166

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.ptr183 = getelementptr inbounds nuw i8, ptr @139, i64 %.sroa.0.0.idx182, !dbg !11331 ; 2 uses
  %i.y = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11335, !alias.scope !11022, !noundef !777 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1, !dbg !11336
  call void @llvm.assume(i1 %i.z), !dbg !11337
  %i.aa = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11338, !alias.scope !11022, !nonnull !777, !noundef !777
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y, !dbg !11339
  store i16 11565, ptr %i.ab, align 1, !dbg !11340
  %.pre.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11341, !alias.scope !11022
  %i.ac = add i64 %.pre.i, 2, !dbg !11341
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11341, !alias.scope !11022
  %i.ad = load ptr, ptr %.sroa.0.0.ptr183, align 8, !dbg !11342, !nonnull !777, !noundef !777 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ptr183, i64 8, !dbg !11342
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !11342, !nonnull !777, !align !991, !noundef !777 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !11342
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !11342, !invariant.load !777, !nonnull !777
  %i.ai = invoke { ptr, i64 } %i.ah(ptr noundef nonnull %i.ad)
          to label %bb.e unwind label %.loopexit177, !dbg !11343 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0, !dbg !11342 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ], !dbg !11344
  %1 = extractvalue { ptr, i64 } %i.ai, 1, !dbg !11342 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %1)
          to label %.noexc unwind label %.loopexit177, !dbg !11345

.noexc:                                           ; preds = %bb.e
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11346, !alias.scope !11032, !noundef !777 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1, !dbg !11347
  call void @llvm.assume(i1 %i.al), !dbg !11348
  %.not.i = icmp eq i64 %1, 0, !dbg !11349
  br i1 %.not.i, label %bb.g, label %bb.f, !dbg !11349

bb.f:                                             ; preds = %.noexc
  %i.am = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11350, !alias.scope !11032, !nonnull !777, !noundef !777
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak, !dbg !11351
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.aj, i64 %1, i1 false), !dbg !11352
  %.pre.i71 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11353, !alias.scope !11032
  br label %bb.g, !dbg !11354

bb.g:                                             ; preds = %bb.f, %.noexc
  %i.ao = phi i64 [ %.pre.i71, %bb.f ], [ %i.ak, %.noexc ], !dbg !11353
  %i.ap = add i64 %i.ao, %1, !dbg !11353          ; 4 uses
  store i64 %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11353, !alias.scope !11032
  %i.aq = icmp sgt i64 %i.ap, -1, !dbg !11355
  call void @llvm.assume(i1 %i.aq), !dbg !11356
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %bb.h unwind label %.loopexit177, !dbg !11357

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11358, !alias.scope !11033, !nonnull !777, !noundef !777
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap, !dbg !11359
  store i8 32, ptr %i.as, align 1, !dbg !11360
  %i.at = add nuw i64 %i.ap, 1, !dbg !11361
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11362, !alias.scope !11033
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !11363
  %i.av = load ptr, ptr %i.au, align 8, !dbg !11363, !invariant.load !777, !nonnull !777
  %i.aw = invoke { i1, i8 } %i.av(ptr noundef nonnull %i.ad)
          to label %bb.i unwind label %.loopexit177, !dbg !11364 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ax = extractvalue { i1, i8 } %i.aw, 0, !dbg !11363
  %i.ay = extractvalue { i1, i8 } %i.aw, 1, !dbg !11363 ; 4 uses
  br i1 %i.ax, label %bb.j, label %bb.o, !dbg !11365

bb.j:                                             ; preds = %bb.i
  %i.az = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11366, !alias.scope !11034, !noundef !777 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1, !dbg !11367
  call void @llvm.assume(i1 %i.ba), !dbg !11368
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %bb.k unwind label %.loopexit177, !dbg !11369

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11370, !alias.scope !11034, !nonnull !777, !noundef !777
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az, !dbg !11371
  store i8 45, ptr %i.bc, align 1, !dbg !11372
  %i.bd = add nuw nsw i64 %i.az, 1, !dbg !11373   ; 4 uses
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11374, !alias.scope !11034
  %i.be = icmp sgt i8 %i.ay, -1, !dbg !11375
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !11375

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 2)
          to label %.noexc76 unwind label %.loopexit177, !dbg !11376

.noexc76:                                         ; preds = %bb.l
  %i.bf = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11377, !alias.scope !11035, !nonnull !777, !noundef !777
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd, !dbg !11378 ; 2 uses
  %i.bh = and i8 %i.ay, -65, !dbg !11379
  %i.bi = lshr i8 %i.ay, 6, !dbg !11380
  %i.bj = or disjoint i8 %i.bi, -64, !dbg !11381
  store i8 %i.bj, ptr %i.bg, align 1, !dbg !11381
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1, !dbg !11382
  store i8 %i.bh, ptr %i.bk, align 1, !dbg !11383
  br label %bb.n, !dbg !11384

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %.noexc77 unwind label %.loopexit177, !dbg !11376

.noexc77:                                         ; preds = %bb.m
  %i.bl = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11377, !alias.scope !11035, !nonnull !777, !noundef !777
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd, !dbg !11378
  store i8 %i.ay, ptr %i.bm, align 1, !dbg !11385
  br label %bb.n, !dbg !11386

bb.n:                                             ; preds = %.noexc76, %.noexc77
  %.sroa.0.03.i = phi i64 [ 1, %.noexc77 ], [ 2, %.noexc76 ]
  %i.bn = add nuw i64 %.sroa.0.03.i, %i.bd, !dbg !11387 ; 4 uses
  store i64 %i.bn, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11388, !alias.scope !11035
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !11389
  call void @llvm.assume(i1 %i.bo), !dbg !11390
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit81 unwind label %.loopexit177, !dbg !11391

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit81: ; preds = %bb.n
  %i.bp = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11392, !alias.scope !11036, !nonnull !777, !noundef !777
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn, !dbg !11393
  store i8 32, ptr %i.bq, align 1, !dbg !11394
  %i.br = add nuw i64 %i.bn, 1, !dbg !11395
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11396, !alias.scope !11036
  br label %bb.o, !dbg !11397

bb.o:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit81, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 64, !dbg !11398
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !11398, !invariant.load !777, !nonnull !777
  %i.bu = invoke { ptr, i64 } %i.bt(ptr noundef nonnull %i.ad)
          to label %bb.p unwind label %.loopexit177, !dbg !11399 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0, !dbg !11398 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1, !dbg !11398 ; 4 uses
  %.not = icmp eq ptr %i.bv, null, !dbg !11398
  br i1 %.not, label %bb.u, label %bb.q, !dbg !11400

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 2)
          to label %bb.r unwind label %.loopexit177, !dbg !11401

bb.r:                                             ; preds = %bb.q
  %i.bx = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11402, !alias.scope !11042, !noundef !777 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, -1, !dbg !11403
  call void @llvm.assume(i1 %i.by), !dbg !11404
  %i.bz = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11405, !alias.scope !11042, !nonnull !777, !noundef !777
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx, !dbg !11406
  store i16 11565, ptr %i.ca, align 1, !dbg !11407
  %.pre.i82 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11408, !alias.scope !11042
  %i.cb = add i64 %.pre.i82, 2, !dbg !11408
  store i64 %i.cb, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11408, !alias.scope !11042
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.bw)
          to label %.noexc87 unwind label %.loopexit177, !dbg !11409

.noexc87:                                         ; preds = %bb.r
  %i.cc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11410, !alias.scope !11048, !noundef !777 ; 3 uses
  %i.cd = icmp sgt i64 %i.cc, -1, !dbg !11411
  call void @llvm.assume(i1 %i.cd), !dbg !11412
  %.not.i85 = icmp eq i64 %i.bw, 0, !dbg !11413
  br i1 %.not.i85, label %bb.t, label %bb.s, !dbg !11413

bb.s:                                             ; preds = %.noexc87
  %i.ce = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11414, !alias.scope !11048, !nonnull !777, !noundef !777
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc, !dbg !11415
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %i.bv, i64 %i.bw, i1 false), !dbg !11416
  %.pre.i86 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11417, !alias.scope !11048
  br label %bb.t, !dbg !11418

bb.t:                                             ; preds = %bb.s, %.noexc87
  %i.cg = phi i64 [ %.pre.i86, %bb.s ], [ %i.cc, %.noexc87 ], !dbg !11417
  %i.ch = add i64 %i.cg, %i.bw, !dbg !11417       ; 4 uses
  store i64 %i.ch, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11417, !alias.scope !11048
  %i.ci = icmp sgt i64 %i.ch, -1, !dbg !11419
  call void @llvm.assume(i1 %i.ci), !dbg !11420
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit91 unwind label %.loopexit177, !dbg !11421

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit91: ; preds = %bb.t
  %i.cj = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11422, !alias.scope !11049, !nonnull !777, !noundef !777
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch, !dbg !11423
  store i8 32, ptr %i.ck, align 1, !dbg !11424
  %i.cl = add nuw i64 %i.ch, 1, !dbg !11425
  store i64 %i.cl, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11426, !alias.scope !11049
  br label %bb.u, !dbg !11427

bb.u:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit91, %bb.p
  %i.cm = icmp eq i64 %.sroa.0.0.add, 1664, !dbg !11428
  br i1 %i.cm, label %bb.c, label %bb.b, !dbg !11050

bb.v:                                             ; preds = %bb.c
  %i.cn = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11429, !alias.scope !11051, !noundef !777 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1, !dbg !11430
  call void @llvm.assume(i1 %i.co), !dbg !11431
  %i.cp = load ptr, ptr %.sroa.319.0..sroa_idx, align 8, !dbg !11432, !alias.scope !11051, !nonnull !777, !noundef !777
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn, !dbg !11433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cq, ptr noundef nonnull align 1 dereferenceable(19) @159, i64 19, i1 false), !dbg !11434
  %.pre.i69 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11435, !alias.scope !11051
  %i.cr = add i64 %.pre.i69, 19, !dbg !11435
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11435, !alias.scope !11051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !11436
  store i64 0, ptr %i.w, align 8, !dbg !11437
  %.sroa.319.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !11437 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.319.0..sroa_idx20, align 8, !dbg !11437
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !11437 ; 11 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx22, align 8, !dbg !11437
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
end_hunk_7
