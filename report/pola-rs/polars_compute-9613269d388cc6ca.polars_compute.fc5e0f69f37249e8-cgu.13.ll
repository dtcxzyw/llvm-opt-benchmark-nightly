inline.NumInlined: 2209
inline.NumDeleted: 1332
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB2_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB4_13TotalEqKernel13tot_eq_kernel0EB6_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !2469
  br label %bb.d, !dbg !2470

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0, !dbg !2471
  br i1 %.not, label %bb.e, label %bb.f, !dbg !2471, !prof !1338

bb.d:                                             ; preds = %bb.l, %bb.b
  ret void, !dbg !2472

bb.e:                                             ; preds = %bb.f, %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #36
          to label %bb.h unwind label %bb.g, !dbg !2473

bb.f:                                             ; preds = %bb.c
  %i.h = urem i64 %i.f, %2, !dbg !2474
  %i.i = udiv i64 %i.f, %2, !dbg !2480
  %i.j = icmp eq i64 %i.h, 0, !dbg !2474
  br i1 %i.j, label %bb.i, label %bb.e, !dbg !2482, !prof !1882

bb.g:                                             ; preds = %bb.j, %bb.k, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit unwind label %bb.m, !dbg !2483

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2486
  %i.m = load i64, ptr %i.l, align 8, !dbg !2486, !noalias !2489, !noundef !12 ; 2 uses
  %i.n = lshr i64 %i.m, 3, !dbg !2486             ; 3 uses
  %i.o = and i64 %i.m, 7, !dbg !2492              ; 2 uses
  %i.p = add i64 %i.o, %i.f, !dbg !2494
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 7), !dbg !2495
  %i.r = lshr i64 %i.q, 3, !dbg !2494             ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !dbg !2498, !noalias !2489, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !2508
  %i.u = load i64, ptr %i.t, align 8, !dbg !2508, !noalias !2489, !noundef !12 ; 2 uses
  %i.v = add nuw nsw i64 %i.r, %i.n, !dbg !2510   ; 2 uses
  %.not.i = icmp ugt i64 %i.v, %i.u, !dbg !2511
  br i1 %.not.i, label %bb.j, label %bb.k, !dbg !2511, !prof !1338

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.v, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #37
          to label %.noexc unwind label %bb.g, !dbg !2517

.noexc:                                           ; preds = %bb.j
  unreachable, !dbg !2517

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !2518
  %i.x = load ptr, ptr %i.w, align 8, !dbg !2518, !noalias !2489, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n, !dbg !2520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2524
  store i64 %i.o, ptr %i.c, align 8, !dbg !2524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2525
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2526
  store i64 0, ptr %i.z, align 8, !dbg !2526
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2526
  store i64 %i.i, ptr %i.aa, align 8, !dbg !2526
  store ptr %i.a, ptr %i.b, align 8, !dbg !2526
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2526
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2526
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2526
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2526
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2526
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2526
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2526
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2526
  invoke void @_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB6_6BitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1c_8adapters3map3MapINtNtNtB1e_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB3h_NtNtNtBa_5array15fixed_size_list18FixedSizeListArrayNtB3j_13TotalEqKernel13tot_eq_kernel0E0EEB3l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.l unwind label %bb.g, !dbg !2540

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2544
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !2545
  br label %bb.d, !dbg !2470

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.k, !dbg !2548

bb.m:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2548
  unreachable, !dbg !2548
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB2_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB4_13TotalEqKernel13tot_ne_kernel0EB6_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2549 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  store ptr %3, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2550
  %i.f = load i64, ptr %i.e, align 8, !dbg !2550, !noundef !12 ; 4 uses
  %i.g = icmp eq i64 %i.f, 1, !dbg !2553
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !2553

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !2554
  br label %bb.d, !dbg !2555

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0, !dbg !2556
  br i1 %.not, label %bb.e, label %bb.f, !dbg !2556, !prof !1338

bb.d:                                             ; preds = %bb.l, %bb.b
  ret void, !dbg !2557

bb.e:                                             ; preds = %bb.f, %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #36
          to label %bb.h unwind label %bb.g, !dbg !2558

bb.f:                                             ; preds = %bb.c
  %i.h = urem i64 %i.f, %2, !dbg !2559
  %i.i = udiv i64 %i.f, %2, !dbg !2562
  %i.j = icmp eq i64 %i.h, 0, !dbg !2559
  br i1 %i.j, label %bb.i, label %bb.e, !dbg !2564, !prof !1882

bb.g:                                             ; preds = %bb.j, %bb.k, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit unwind label %bb.m, !dbg !2565

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2568
  %i.m = load i64, ptr %i.l, align 8, !dbg !2568, !noalias !2570, !noundef !12 ; 2 uses
  %i.n = lshr i64 %i.m, 3, !dbg !2568             ; 3 uses
  %i.o = and i64 %i.m, 7, !dbg !2573              ; 2 uses
  %i.p = add i64 %i.o, %i.f, !dbg !2574
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 7), !dbg !2575
  %i.r = lshr i64 %i.q, 3, !dbg !2574             ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !dbg !2577, !noalias !2570, !nonnull !12, !noundef !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !2580
  %i.u = load i64, ptr %i.t, align 8, !dbg !2580, !noalias !2570, !noundef !12 ; 2 uses
  %i.v = add nuw nsw i64 %i.r, %i.n, !dbg !2581   ; 2 uses
  %.not.i = icmp ugt i64 %i.v, %i.u, !dbg !2582
  br i1 %.not.i, label %bb.j, label %bb.k, !dbg !2582, !prof !1338

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.v, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #37
          to label %.noexc unwind label %bb.g, !dbg !2585

.noexc:                                           ; preds = %bb.j
  unreachable, !dbg !2585

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !2586
  %i.x = load ptr, ptr %i.w, align 8, !dbg !2586, !noalias !2570, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n, !dbg !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2589
  store i64 %i.o, ptr %i.b, align 8, !dbg !2589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2590
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !2591
  store i64 0, ptr %i.z, align 8, !dbg !2591
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !2591
  store i64 %i.i, ptr %i.aa, align 8, !dbg !2591
  store ptr %i.c, ptr %i.a, align 8, !dbg !2591
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2591
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2591
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2591
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2591
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2591
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2591
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2591
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2591
  invoke void @_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB6_6BitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1c_8adapters3map3MapINtNtNtB1e_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB3h_NtNtNtBa_5array15fixed_size_list18FixedSizeListArrayNtB3j_13TotalEqKernel13tot_ne_kernel0E0EEB3l_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.l unwind label %bb.g, !dbg !2596

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2600
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !2601
  br label %bb.d, !dbg !2555

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.k, !dbg !2604

bb.m:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2604
  unreachable, !dbg !2604
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj1_EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2605 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2609
  store i64 0, ptr %i.e, align 8, !dbg !2610
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2610
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !dbg !2610
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2610 ; 2 uses
  store i64 0, ptr %i.h, align 8, !dbg !2610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2616
  invoke void @_RINvMsm_NtCscgRAwXFJnXP_4core5arrayARShj1_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBP_7WrappedB1t_By_NCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKBB_E0EEB2W_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %bb.b unwind label %bb.g, !dbg !2621

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.c, align 16, !dbg !2616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2622
  %i.i = load i64, ptr %i.h, align 8, !dbg !2623, !noundef !12 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !2629
  call void @llvm.assume(i1 %i.j), !dbg !2631
  %.not = icmp eq i64 %i.i, 0, !dbg !2632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2633
  br i1 %.not, label %bb.c, label %bb.f, !dbg !2634

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i unwind label %bb.d, !dbg !2637

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.e, !dbg !2641

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2637
  unreachable, !dbg !2637

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2643
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj1_Es_0EBP_.exit, !dbg !2643

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2645
  %i.m = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !2646
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.m), !dbg !2657
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8, !dbg !2658
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj1_Es_0EBP_.exit, !dbg !2659

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj1_Es_0EBP_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i, %bb.f
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.f ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i ], !dbg !2660
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2661
  store <16 x i8> %.sroa.0.0.copyload, ptr %0, align 8, !dbg !2662
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2662
  store ptr %.sroa.0.0, ptr %i.o, align 8, !dbg !2662
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2664
  ret void, !dbg !2665

.body.thread:                                     ; preds = %bb.d, %bb.g
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body7, !dbg !2666

bb.g:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.e) #34
          to label %.body.thread unwind label %bb.h, !dbg !2664

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2666
  unreachable, !dbg !2666
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj2_EB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2667 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 4                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2668
  store i64 0, ptr %i.e, align 8, !dbg !2669
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2669
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !dbg !2669
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2669 ; 2 uses
  store i64 0, ptr %i.h, align 8, !dbg !2669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2672
  invoke void @_RINvMsm_NtCscgRAwXFJnXP_4core5arrayARShj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBP_7WrappedB1t_By_NCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKBB_E0EEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %bb.b unwind label %bb.g, !dbg !2676

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <32 x i8>, ptr %i.c, align 4, !dbg !2672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2677
  %i.i = load i64, ptr %i.h, align 8, !dbg !2678, !noundef !12 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !2684
  call void @llvm.assume(i1 %i.j), !dbg !2686
  %.not = icmp eq i64 %i.i, 0, !dbg !2687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2688
  br i1 %.not, label %bb.c, label %bb.f, !dbg !2689

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i unwind label %bb.d, !dbg !2692

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.e, !dbg !2696

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2692
  unreachable, !dbg !2692

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !2698
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj2_Es_0EBP_.exit, !dbg !2698

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2700
  %i.m = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !2701
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.m), !dbg !2709
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8, !dbg !2710
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj2_Es_0EBP_.exit, !dbg !2711

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21make_buffer_and_viewsKj2_Es_0EBP_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i, %bb.f
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.f ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit.i ], !dbg !2712
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2713
  store <32 x i8> %.sroa.0.0.copyload, ptr %0, align 8, !dbg !2714
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2714
  store ptr %.sroa.0.0, ptr %i.o, align 8, !dbg !2714
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !dbg !2714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2716
  ret void, !dbg !2717

.body.thread:                                     ; preds = %bb.d, %bb.g
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body7, !dbg !2718

bb.g:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.e) #34
          to label %.body.thread unwind label %bb.h, !dbg !2716

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !2718
  unreachable, !dbg !2718
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCslFlrwjHoTci_14polars_compute6unique8distinct15reset_amortizedINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1c_7float164pf16EEB6_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2719 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2723 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !2723, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2737 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !2737, !noundef !12
  %i.f = add i64 %i.e, %i.c, !dbg !2723           ; 2 uses
  %i.g = shl nuw nsw i64 %1, 2, !dbg !2738
  %i.h = icmp ugt i64 %i.f, %i.g, !dbg !2739
  %i.i = icmp ugt i64 %i.f, 1024
  %or.cond = and i1 %i.h, %i.i, !dbg !2739
  br i1 %or.cond, label %bb.i, label %bb.b, !dbg !2739

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0, !dbg !2740
  br i1 %i.j, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBU_7float164pf16EuEE5clearCslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !2740

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EuEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.d, !dbg !2747

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2749 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2749, !alias.scope !2768, !noundef !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !2771
  br i1 %i.n, label %bb.h, label %bb.e, !dbg !2771

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !dbg !2772, !alias.scope !2768, !nonnull !12, !noundef !12
  %i.p = add i64 %i.m, 17, !dbg !2775
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.p, i1 false), !dbg !2778
  %.pre.i.i.i.i = load i64, ptr %i.l, align 8, !dbg !2795, !alias.scope !2768
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i, !dbg !2796 ; 3 uses
  %i.q = icmp ult i64 %.pre.fr.i.i.i.i, 8, !dbg !2796
  %i.r = add i64 %.pre.fr.i.i.i.i, 1, !dbg !2796
  %i.s = lshr i64 %i.r, 3, !dbg !2796
  %i.t = mul nuw i64 %i.s, 7, !dbg !2796
  %spec.select.i.i.i.i = select i1 %i.q, i64 %.pre.fr.i.i.i.i, i64 %i.t, !dbg !2796
  br label %bb.h, !dbg !2796

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2799 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !2799, !alias.scope !2768, !noundef !12 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0, !dbg !2806
  br i1 %i.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1Z_7float164pf16EuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i, label %bb.g, !dbg !2806

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !dbg !2807, !alias.scope !2768, !nonnull !12, !noundef !12
  %i.y = add i64 %i.v, 17, !dbg !2809
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 -1, i64 %i.y, i1 false), !dbg !2811
  %.pre.i.i.i2.i = load i64, ptr %i.u, align 8, !dbg !2816, !alias.scope !2768
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i, !dbg !2817 ; 3 uses
  %i.z = icmp ult i64 %.pre.fr.i.i.i3.i, 8, !dbg !2817
  %i.aa = add i64 %.pre.fr.i.i.i3.i, 1, !dbg !2817
  %i.ab = lshr i64 %i.aa, 3, !dbg !2817
  %i.ac = mul nuw i64 %i.ab, 7, !dbg !2817
  %spec.select.i.i.i4.i = select i1 %i.z, i64 %.pre.fr.i.i.i3.i, i64 %i.ac, !dbg !2817
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1Z_7float164pf16EuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i, !dbg !2817

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1Z_7float164pf16EuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i: ; preds = %bb.g, %bb.f
  %i.ad = phi i64 [ %spec.select.i.i.i4.i, %bb.g ], [ 0, %bb.f ], !dbg !2817
  store i64 0, ptr %i.b, align 8, !dbg !2819, !alias.scope !2768
  store i64 %i.ad, ptr %i.d, align 8, !dbg !2820, !alias.scope !2768
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBU_7float164pf16EuEE5clearCslFlrwjHoTci_14polars_compute.exit, !dbg !2821

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.ak, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !2822

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ 0, %bb.d ], !dbg !2796
  store i64 0, ptr %i.b, align 8, !dbg !2823, !alias.scope !2768
  store i64 %i.ae, ptr %i.d, align 8, !dbg !2824, !alias.scope !2768
  br label %common.resume, !dbg !2825

bb.i:                                             ; preds = %bb.a
  %i.af = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !2826, !noalias !2844
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !2847, !noalias !2844
  %i.ah = icmp eq i8 %i.ag, 2, !dbg !2858
  br i1 %i.ah, label %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtB7_9total_ord12TotalOrdWrapNtNtB7_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCslFlrwjHoTci_14polars_compute.exit, label %bb.j, !dbg !2858, !prof !1882

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #33, !dbg !2859, !noalias !2844
  br label %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtB7_9total_ord12TotalOrdWrapNtNtB7_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCslFlrwjHoTci_14polars_compute.exit, !dbg !2859

_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtB7_9total_ord12TotalOrdWrapNtNtB7_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.i, %bb.j
  call void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBU_7float164pf16EuEE16with_capacity_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef range(i64 0, 2305843009213693952) %1), !dbg !2860
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2867
  store i64 %i.af, ptr %i.ai, align 8, !dbg !2867
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2868
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1i_7float164pf16EuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 2, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1q_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.k, !dbg !2873

_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBU_7float164pf16EuEE5clearCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1Z_7float164pf16EuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1q_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslFlrwjHoTci_14polars_compute.exit
  ret void, !dbg !2874

bb.k:                                             ; preds = %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtB7_9total_ord12TotalOrdWrapNtNtB7_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCslFlrwjHoTci_14polars_compute.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !2875
  br label %common.resume, !dbg !2876

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1q_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetINtNtB7_9total_ord12TotalOrdWrapNtNtB7_7float164pf16ENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !2875
  br label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBU_7float164pf16EuEE5clearCslFlrwjHoTci_14polars_compute.exit, !dbg !2877
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCslFlrwjHoTci_14polars_compute6unique8distinct15reset_amortizedINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2878 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2879 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !2879, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2886 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !2886, !noundef !12
  %i.f = add i64 %i.e, %i.c, !dbg !2879           ; 2 uses
  %i.g = shl nuw nsw i64 %1, 2, !dbg !2887
  %i.h = icmp ugt i64 %i.f, %i.g, !dbg !2888
  %i.i = icmp ugt i64 %i.f, 1024
  %or.cond = and i1 %i.h, %i.i, !dbg !2888
  br i1 %or.cond, label %bb.i, label %bb.b, !dbg !2888

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 0, !dbg !2889
  br i1 %i.j, label %_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEuEE5clearCslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !2889

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEuEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.d, !dbg !2896

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2898 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !2898, !alias.scope !2911, !noundef !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !2914
  br i1 %i.n, label %bb.h, label %bb.e, !dbg !2914

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !dbg !2915, !alias.scope !2911, !nonnull !12, !noundef !12
  %i.p = add i64 %i.m, 17, !dbg !2918
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 -1, i64 %i.p, i1 false), !dbg !2921
  %.pre.i.i.i.i = load i64, ptr %i.l, align 8, !dbg !2930, !alias.scope !2911
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i, !dbg !2931 ; 3 uses
  %i.q = icmp ult i64 %.pre.fr.i.i.i.i, 8, !dbg !2931
  %i.r = add i64 %.pre.fr.i.i.i.i, 1, !dbg !2931
  %i.s = lshr i64 %i.r, 3, !dbg !2931
  %i.t = mul nuw i64 %i.s, 7, !dbg !2931
  %spec.select.i.i.i.i = select i1 %i.q, i64 %.pre.fr.i.i.i.i, i64 %i.t, !dbg !2931
  br label %bb.h, !dbg !2931

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2934 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !dbg !2934, !alias.scope !2911, !noundef !12 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0, !dbg !2941
  br i1 %i.w, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i, label %bb.g, !dbg !2941

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !dbg !2942, !alias.scope !2911, !nonnull !12, !noundef !12
  %i.y = add i64 %i.v, 17, !dbg !2944
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 -1, i64 %i.y, i1 false), !dbg !2946
  %.pre.i.i.i2.i = load i64, ptr %i.u, align 8, !dbg !2951, !alias.scope !2911
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i, !dbg !2952 ; 3 uses
  %i.z = icmp ult i64 %.pre.fr.i.i.i3.i, 8, !dbg !2952
  %i.aa = add i64 %.pre.fr.i.i.i3.i, 1, !dbg !2952
  %i.ab = lshr i64 %i.aa, 3, !dbg !2952
  %i.ac = mul nuw i64 %i.ab, 7, !dbg !2952
  %spec.select.i.i.i4.i = select i1 %i.z, i64 %.pre.fr.i.i.i3.i, i64 %i.ac, !dbg !2952
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i, !dbg !2952

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapaEuEENCNvMs6_B1B_B1y_5clear0EECslFlrwjHoTci_14polars_compute.exit5.i: ; preds = %bb.g, %bb.f
  %i.ad = phi i64 [ %spec.select.i.i.i4.i, %bb.g ], [ 0, %bb.f ], !dbg !2952
end_hunk_0
begin_hunk_1_@_RNvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view21has_duplicate_buffers:bb.a
  %i.an = zext nneg i16 %i.am to i64, !dbg !17029
  %i.ao = add i64 %.sroa.0.017.i.i.i, %i.an, !dbg !17030
  %i.ap = and i64 %i.ao, %.val7.i.i, !dbg !17030
  br label %.thread.i.i.i, !dbg !17031

.thread.i.i.i:                                    ; preds = %.thread25.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.122.i.i.i = phi i64 [ %i.ap, %.thread25.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, splat (i8 -1), !dbg !17032
  %i.ar = bitcast <16 x i1> %i.aq to i16, !dbg !17036
  %i.as = icmp eq i16 %i.ar, 0, !dbg !17038
  br i1 %i.as, label %bb.h, label %bb.i, !dbg !17038, !prof !1338

bb.h:                                             ; preds = %.thread.i.i.i, %bb.g
  %.sroa.01.123.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.121.i.i.i = phi i64 [ %.sroa.4.122.i.i.i, %.thread.i.i.i ], [ undef, %bb.g ]
  %i.at = add i64 %i.w, 16, !dbg !17040           ; 2 uses
  %i.au = add i64 %i.at, %.sroa.0.017.i.i.i, !dbg !17042
  br label %bb.e, !dbg !16951

bb.i:                                             ; preds = %.thread.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.122.i.i.i, !dbg !17043
  %i.aw = load i8, ptr %i.av, align 1, !dbg !17048, !noalias !17049, !noundef !12 ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -1, !dbg !17050
  br i1 %i.ax, label %bb.j, label %bb.l, !dbg !17050, !prof !1338

bb.j:                                             ; preds = %bb.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !dbg !17052, !noalias !17049
  %i.ay = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer, !dbg !17054
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !17054 ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.az, 0, !dbg !17057
  %i.ba = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true), !dbg !17059
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !17059 ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i), !dbg !17060
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bb
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !dbg !17062, !noalias !17068
  br label %bb.l, !dbg !17071

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTPhuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetPhNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.m, !dbg !17072

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.bd = phi i8 [ %.pre.i, %bb.j ], [ %i.aw, %bb.i ], !dbg !17062
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.bb, %bb.j ], [ %.sroa.4.122.i.i.i, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17068), !dbg !17081
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i, !dbg !17082
  %i.bf = and i8 %i.bd, 1, !dbg !17087
  %i.bg = zext nneg i8 %i.bf to i64, !dbg !17087
  %i.bh = add i64 %.sroa.3.0.i.ph.i.i, -16, !dbg !17093
  %i.bi = and i64 %i.bh, %.val7.i.i, !dbg !17098
  store i8 %i.t, ptr %i.be, align 1, !dbg !17099, !noalias !17068
  %i.bj = getelementptr i8, ptr %.val.i.i, i64 %i.bi, !dbg !17101
  %i.bk = getelementptr i8, ptr %i.bj, i64 16, !dbg !17101
  store i8 %i.t, ptr %i.bk, align 1, !dbg !17105, !noalias !17068
  %i.bl = load <2 x i64>, ptr %i.j, align 8, !dbg !17106, !alias.scope !17107
  %i.bm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bg, i64 0, !dbg !17106
  %i.bn = sub <2 x i64> %i.bl, %i.bm, !dbg !17106
  store <2 x i64> %i.bn, ptr %i.j, align 8, !dbg !17106, !alias.scope !17107
  %i.bo = sub nsw i64 0, %.sroa.3.0.i.ph.i.i, !dbg !17108
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.bo, !dbg !17115
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8, !dbg !17116
  store ptr %i.n, ptr %i.bq, align 8, !dbg !17123, !noalias !17068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17008
  %.not12 = icmp eq ptr %i.l, %i.h, !dbg !16893
  br i1 %.not12, label %.loopexit, label %bb.c, !dbg !16895

.loopexit:                                        ; preds = %bb.l, %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetPhNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCslFlrwjHoTci_14polars_compute.exit, %.thread
  %i.br = phi i1 [ true, %.thread ], [ false, %_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetPhNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCslFlrwjHoTci_14polars_compute.exit ], [ false, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !17128
  call void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTPhuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 8, i64 noundef 16), !dbg !17133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17134
  ret i1 %i.br, !dbg !17135

bb.m:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17136
  unreachable, !dbg !17136

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetPhNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.k
  resume { ptr, i32 } %i.bc, !dbg !17136
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view22if_then_else_view_rest(i64 noundef %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6, i32 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16785 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.not = icmp samesign ugt i64 %2, %6, !dbg !17137
  br i1 %.not, label %bb.b, label %bb.c, !dbg !17137, !prof !1338

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #37, !dbg !17138
  unreachable, !dbg !17138

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2, !dbg !17139
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %4, !dbg !17143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17147
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEBW_EINtB5_7ZipImplBW_BW_E3newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.c), !dbg !17148
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !17151 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17151
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !dbg !17151 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !17151
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !17151 ; 3 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !17151
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !dbg !17151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17154
  %i.d = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload, !dbg !17155
  br i1 %i.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.lr.ph, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.thread, !dbg !17155

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.lr.ph: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.e = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload, !dbg !17155
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit, !dbg !17155

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.lr.ph, %bb.d
  %.sroa.8.036 = phi i64 [ 0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.lr.ph ], [ %i.f, %bb.d ] ; 4 uses
  %.sroa.525.035 = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.lr.ph ], [ %i.g, %bb.d ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.8.036, %6, !dbg !17159
  br i1 %exitcond.not, label %bb.e, label %bb.d, !dbg !17159

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.d, %bb.c
  ret void, !dbg !17160

bb.d:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit
  %i.f = add nuw nsw i64 %.sroa.8.036, 1, !dbg !17161 ; 2 uses
  %i.g = add nuw i64 %.sroa.525.035, 1, !dbg !17162
  %i.h = and i64 %.sroa.8.036, 63, !dbg !17163
  %i.i = lshr i64 %0, %i.h, !dbg !17163           ; 2 uses
  %i.j = and i64 %i.i, 1, !dbg !17163
  %i.k = icmp eq i64 %i.j, 0, !dbg !17164
  %.sroa.01.0.v = select i1 %i.k, ptr %.sroa.0.sroa.3.0.copyload, ptr %.sroa.0.sroa.0.0.copyload, !dbg !17164
  %.sroa.01.0 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.v, i64 %.sroa.525.035, !dbg !17164 ; 4 uses
  %i.l = trunc i64 %i.i to i1, !dbg !17163
  %.sroa.5.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 12, !dbg !17165
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa.01.0..sroa_idx, align 4, !dbg !17165
  %.sroa.35.0..sroa.01.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8, !dbg !17165
  %.sroa.35.0.copyload = load i32, ptr %.sroa.35.0..sroa.01.0..sroa_idx, align 4, !dbg !17165
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.sroa.8.036, !dbg !17159 ; 3 uses
  %i.n = load <2 x i32>, ptr %.sroa.01.0, align 4, !dbg !17165
  %.sroa.02.0.copyload = load i32, ptr %.sroa.01.0, align 4, !dbg !17165
  %i.o = icmp ult i32 %.sroa.02.0.copyload, 13, !dbg !17166
  %i.p = or i1 %i.o, %i.l, !dbg !17167
  %.sroa.08.0 = select i1 %i.p, i32 0, i32 %7, !dbg !17167
  %i.q = add i32 %.sroa.08.0, %.sroa.35.0.copyload, !dbg !17168
  store <2 x i32> %i.n, ptr %i.m, align 4, !dbg !17159
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !17159
  store i32 %i.q, ptr %.sroa.517.0..sroa_idx, align 4, !dbg !17159
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12, !dbg !17159
  store i32 %.sroa.5.0.copyload, ptr %.sroa.618.0..sroa_idx, align 4, !dbg !17159
  %exitcond38.not = icmp eq i64 %i.f, %i.e, !dbg !17155
  br i1 %exitcond38.not, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.thread, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit, !dbg !17155

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %6, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #37, !dbg !17159
  unreachable, !dbg !17159
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvNtNtCslFlrwjHoTci_14polars_compute12if_then_else4view36if_then_else_broadcast_false_view_64(i64 noundef %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(1024) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(1024) %3) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !17169 {
bb.a:
  br label %bb.c, !dbg !17170

bb.b:                                             ; preds = %bb.c
  ret void, !dbg !17178

bb.c:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.idx12 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.1, %bb.c ] ; 3 uses
  %.sroa.7.011 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ] ; 5 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx12, !dbg !17179
  %i.a = shl nuw i64 1, %.sroa.7.011, !dbg !17182
  %i.b = and i64 %i.a, %0, !dbg !17182
  %i.c = icmp eq i64 %i.b, 0, !dbg !17182
  %spec.store.select = select i1 %i.c, ptr %2, ptr %.sroa.0.0.ptr, !dbg !17182
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.sroa.7.011, !dbg !17184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %spec.store.select, i64 16, i1 false), !dbg !17184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx12, !dbg !17179
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !17179
  %i.f = shl nuw i64 2, %.sroa.7.011, !dbg !17182
  %i.g = and i64 %i.f, %0, !dbg !17182
  %i.h = icmp eq i64 %i.g, 0, !dbg !17182
  %spec.store.select.1 = select i1 %i.h, ptr %2, ptr %.sroa.0.0.ptr.1, !dbg !17182
  %i.i = add nuw nsw i64 %.sroa.7.011, 2, !dbg !17186
  %.sroa.0.0.add.1 = add nuw nsw i64 %.sroa.0.0.idx12, 32, !dbg !17189 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.sroa.7.011, !dbg !17184
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !17184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %spec.store.select.1, i64 16, i1 false), !dbg !17184
  %i.l = icmp eq i64 %.sroa.0.0.add.1, 1024, !dbg !17179
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !17170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal21utf8view_to_timestamp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17192 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.028 = alloca <56 x i8>, align 64         ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 15 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.0 = alloca <56 x i8>, align 64           ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 7 uses
  %i.r = alloca [88 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [2 x i8], align 2                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [88 x i8], align 8               ; 4 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !17195
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 23, !dbg !17196 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !17196, !range !1329, !alias.scope !17214, !noundef !12 ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, -41, !dbg !17217
  br i1 %i.ae, label %bb.c, label %bb.b, !dbg !17217

bb.b:                                             ; preds = %bb.a
  %i.af = add i8 %i.ad, 64, !dbg !17218
  %i.ag = tail call i8 @llvm.umin.i8(i8 %i.af, i8 24), !dbg !17222
  %.sroa.0.0.i.i = zext nneg i8 %i.ag to i64, !dbg !17222
  br label %bb.d, !dbg !17226

bb.c:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %4, align 8, !dbg !17229, !alias.scope !17214, !noundef !12
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !17230
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !17230, !alias.scope !17214, !noundef !12
  br label %bb.d, !dbg !17231

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.aj, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !17232
  %.sroa.0.0.i = phi ptr [ %i.ah, %bb.c ], [ %4, %bb.b ], !dbg !17233
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions12parse_offset(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.e unwind label %bb.at, !dbg !17234

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.ab, align 8, !dbg !17235, !range !6650, !noundef !12
  %.not = icmp eq i64 %i.ak, 18, !dbg !17235
  br i1 %.not, label %bb.ab, label %bb.f, !dbg !17238

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !17239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !dbg !17239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17240), !dbg !17243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17244), !dbg !17243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !17246, !noalias !17249
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !17251
  %i.am = load i8, ptr %i.al, align 1, !dbg !17251, !range !1329, !alias.scope !17260, !noalias !17263, !noundef !12 ; 4 uses
  %i.an = icmp ugt i8 %i.am, -41, !dbg !17264
  br i1 %i.an, label %bb.h, label %bb.g, !dbg !17264

bb.g:                                             ; preds = %bb.f
  %i.ao = add i8 %i.am, 64, !dbg !17265
  %i.ap = tail call i8 @llvm.umin.i8(i8 %i.ao, i8 24), !dbg !17267
  %.sroa.0.0.i.i.i = zext nneg i8 %i.ap to i64, !dbg !17267
  br label %bb.i, !dbg !17270

bb.h:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.y, align 8, !dbg !17271, !alias.scope !17260, !noalias !17263, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !17272
  %i.as = load i64, ptr %i.ar, align 8, !dbg !17272, !alias.scope !17260, !noalias !17263, !noundef !12
  br label %bb.i, !dbg !17273

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.as, %bb.h ], [ %.sroa.0.0.i.i.i, %bb.g ], !dbg !17274
  %.sroa.0.0.i.i3 = phi ptr [ %i.aq, %bb.h ], [ %i.y, %bb.g ], !dbg !17275
  invoke void @_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions15parse_offset_tz(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i3, i64 noundef %.sroa.01.0.i.i)
          to label %bb.j unwind label %bb.y, !dbg !17246, !noalias !17263

bb.j:                                             ; preds = %bb.i
  %i.at = load i64, ptr %i.x, align 8, !dbg !17276, !range !6650, !noalias !17249, !noundef !12 ; 2 uses
  %.not.i = icmp eq i64 %i.at, 18, !dbg !17276
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !17280
  %i.av = load i16, ptr %i.au, align 8, !dbg !17280, !noalias !17249 ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.k, !dbg !17281

bb.k:                                             ; preds = %bb.j
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 10, !dbg !17282
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18, !dbg !17283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.313.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.610.0..sroa_idx.i, i64 62, i1 false), !dbg !17282, !noalias !17291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !17292, !noalias !17249
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17283
  store i64 %i.at, ptr %i.aw, align 8, !dbg !17283, !alias.scope !17240, !noalias !17291
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17283
  store i16 %i.av, ptr %.sroa.212.0..sroa_idx.i, align 8, !dbg !17283, !alias.scope !17240, !noalias !17291
  store i8 42, ptr %0, align 8, !dbg !17283, !alias.scope !17240, !noalias !17291
  %i.ax = icmp eq i8 %i.am, -40, !dbg !17293
  br i1 %i.ax, label %bb.l, label %_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26chrono_tz_utf_to_timestamp.exit, !dbg !17293, !prof !1338

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26chrono_tz_utf_to_timestamp.exit unwind label %bb.an, !dbg !17298

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !17292, !noalias !17249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !17299, !noalias !17249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !17299, !noalias !17263
  call void @llvm.experimental.noalias.scope.decl(metadata !17301), !dbg !17304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17249
  store i16 %i.av, ptr %i.v, align 2, !noalias !17305
  store i8 %5, ptr %i.u, align 1, !noalias !17305
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17308
  %i.az = load i64, ptr %i.ay, align 8, !dbg !17308, !noalias !17305, !noundef !12 ; 6 uses
  %i.ba = ptrtoint ptr %1 to i64, !dbg !17321     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17322 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !17322, !noalias !17305, !noundef !12
  %.not.i.i = icmp eq ptr %i.bc, null, !dbg !17322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !17325, !noalias !17305
  br i1 %.not.i.i, label %bb.q, label %bb.n, !dbg !17325

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.bb)
          to label %.noexc.i.i unwind label %.body.thread32.i.i, !dbg !17328, !noalias !17330

.noexc.i.i:                                       ; preds = %bb.n
  %.not4.i.i.i = icmp eq i64 %i.bd, 0, !dbg !17331
  br i1 %.not4.i.i.i, label %bb.q, label %bb.o, !dbg !17332

bb.o:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.q, ptr noundef nonnull align 8 %i.bb)
          to label %.noexc6.i.i unwind label %.body.thread32.i.i, !dbg !17334, !noalias !17330

.noexc6.i.i:                                      ; preds = %bb.o
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !17336
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !17336, !noalias !17337 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !17336
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !17336, !noalias !17337 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !17341, !noalias !17337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !17341, !noalias !17337
  store i64 %i.az, ptr %i.p, align 8, !dbg !17343, !alias.scope !17345, !noalias !17348
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !17343
  store i64 1, ptr %i.be, align 8, !dbg !17343, !alias.scope !17345, !noalias !17348
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !17343
  store i64 %i.az, ptr %i.bf, align 8, !dbg !17343, !alias.scope !17345, !noalias !17348
  %i.bg = add i64 %.sroa.5.0.copyload.i.i.i, %.sroa.4.0.copyload.i.i.i, !dbg !17353 ; 3 uses
  store i64 %i.bg, ptr %i.o, align 8, !dbg !17356, !alias.scope !17357, !noalias !17348
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !17356
  store i64 1, ptr %i.bh, align 8, !dbg !17356, !alias.scope !17357, !noalias !17348
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !17356
  store i64 %i.bg, ptr %i.bi, align 8, !dbg !17356, !alias.scope !17357, !noalias !17348
  %i.bj = icmp eq i64 %i.az, %i.bg, !dbg !17360
  br i1 %i.bj, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i, label %bb.p, !dbg !17363, !prof !1882

bb.p:                                             ; preds = %.noexc6.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #36
          to label %.noexc7.i.i unwind label %.body.thread32.i.i, !dbg !17364, !noalias !17330

.noexc7.i.i:                                      ; preds = %bb.p
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %.noexc6.i.i
  %.sroa.1021.24.copyload.i.i = load i64, ptr %i.q, align 8, !dbg !17365, !noalias !17366
  %.sroa.12.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !17365
  %.sroa.12.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.12.24..sroa_idx.i.i, align 8, !dbg !17365, !noalias !17305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !17367, !noalias !17337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !17367, !noalias !17337
  br label %bb.q, !dbg !17368

.body.thread32.i.i:                               ; preds = %bb.u, %bb.p, %bb.o, %bb.n
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i, !dbg !17369

bb.q:                                             ; preds = %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i, %.noexc.i.i, %bb.m
  %.sroa.12.i.i.sroa.0.0 = phi <16 x i8> [ undef, %bb.m ], [ undef, %.noexc.i.i ], [ %.sroa.12.i.i.sroa.0.0.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %.sroa.018.0.i.i = phi ptr [ null, %bb.m ], [ null, %.noexc.i.i ], [ %1, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !17370 ; 2 uses
  %.sroa.519.0.i.i = phi i64 [ %i.ba, %bb.m ], [ %i.ba, %.noexc.i.i ], [ 0, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !17370 ; 2 uses
  %.sroa.820.0.i.i = phi i64 [ 0, %bb.m ], [ 0, %.noexc.i.i ], [ %i.az, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !17370 ; 3 uses
  %.sroa.1021.0.i.i = phi i64 [ %i.az, %bb.m ], [ %i.az, %.noexc.i.i ], [ %.sroa.1021.24.copyload.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !17370 ; 2 uses
  %.sroa.13.0.i.i = phi i64 [ undef, %bb.m ], [ undef, %.noexc.i.i ], [ %.sroa.4.0.copyload.i.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %.sroa.14.0.i.i = phi i64 [ undef, %bb.m ], [ undef, %.noexc.i.i ], [ %.sroa.5.0.copyload.i.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !17371, !noalias !17305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !17372, !noalias !17305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !17374, !noalias !17305
  call void @llvm.experimental.noalias.scope.decl(metadata !17377), !dbg !17380
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !17386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !17389, !noalias !17392
  store i64 0, ptr %i.n, align 8, !dbg !17397, !noalias !17392
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !17397
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !17397, !noalias !17392
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !17397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !17397, !noalias !17392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !17403, !noalias !17392
  store i64 0, ptr %i.m, align 8, !dbg !17405, !noalias !17392
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !17405
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8, !dbg !17405, !noalias !17392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !17405
  store i64 0, ptr %i.bl, align 8, !dbg !17405, !noalias !17392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !17408, !noalias !17392
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.018.0.i.i, null, !dbg !17414 ; 2 uses
  %.val.i.i.i.i.i.sroa.speculated.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.820.0.i.i, i64 %.sroa.519.0.i.i, !dbg !17417
  %.val1.i.i.i.i.i.sroa.speculated.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %.sroa.1021.0.i.i, i64 %.sroa.820.0.i.i, !dbg !17417
  %i.bm = sub i64 %.val1.i.i.i.i.i.sroa.speculated.i.i, %.val.i.i.i.i.i.sroa.speculated.i.i, !dbg !17417
  %i.bn = call i64 @llvm.uadd.sat.i64(i64 %i.bm, i64 7), !dbg !17418
  %i.bo = lshr i64 %i.bn, 3, !dbg !17425
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.bo)
          to label %.noexc.i.i.i.i unwind label %bb.r, !dbg !17426, !noalias !17427

.noexc.i.i.i.i:                                   ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !17428), !dbg !17431
  store ptr %2, ptr %i.l, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17432
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !17432
  store ptr %i.v, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.4.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !17432
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx12.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.5.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !17432
  store ptr %.sroa.018.0.i.i, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !17432
  store i64 %.sroa.519.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !17432
  store i64 %.sroa.820.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56, !dbg !17432
  store i64 %.sroa.1021.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64, !dbg !17432
  store <16 x i8> %.sroa.12.i.i.sroa.0.0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !17432, !noalias !17305
  %.sroa.11.sroa.2.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80, !dbg !17432
  store i64 %.sroa.13.0.i.i, ptr %.sroa.11.sroa.2.0..sroa.11.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %.sroa.11.sroa.3.0..sroa.11.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88, !dbg !17432
  store i64 %.sroa.14.0.i.i, ptr %.sroa.11.sroa.3.0..sroa.11.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17432, !alias.scope !17437, !noalias !17439
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 96, !dbg !17432
  store ptr %i.n, ptr %i.bp, align 8, !dbg !17432, !alias.scope !17444, !noalias !17445
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1d_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB2e_5array8iterator15ArrayValuesIterINtNtB3r_7binview22BinaryViewArrayGenericeEENtNtB2a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26utf8view_to_timestamp_implNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzE0ENCINvNtNtB3r_9primitive7mutable24extend_trusted_len_unzipB20_xxE0EE11spec_extendB5o_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.l)
          to label %bb.u unwind label %bb.r, !dbg !17447, !noalias !17452

bb.r:                                             ; preds = %.noexc.i.i.i.i, %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.m) #34
          to label %bb.t unwind label %bb.s, !dbg !17453, !noalias !17452

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17454, !noalias !17452
  unreachable, !dbg !17454

bb.t:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.n) #34
          to label %.body.thread.i.i unwind label %bb.s, !dbg !17455, !noalias !17452

bb.u:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !17456, !noalias !17392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !17457, !noalias !17458
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !17459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !17459, !noalias !17458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !17453, !noalias !17392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !17455, !noalias !17392
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 56, !dbg !17461
  store i8 5, ptr %i.bs, align 8, !dbg !17461, !alias.scope !17377, !noalias !17463
  %.sroa.0.32..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !17461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 32 dereferenceable(24) %.sroa.0.32..sroa_idx26, i64 24, i1 false), !dbg !17461, !noalias !17463
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !17461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 64 dereferenceable(32) %.sroa.0, i64 32, i1 false), !dbg !17461, !noalias !17463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !17464
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayxEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayxEE4fromCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.r)
          to label %bb.v unwind label %.body.thread32.i.i, !dbg !17465, !noalias !17468

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !17469, !noalias !17305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !17470, !noalias !17305
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !17470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !17471, !noalias !17472
  %i.bv = load i8, ptr %i.u, align 1, !dbg !17470, !range !17473, !noalias !17305, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !17470
  store i8 %i.bv, ptr %i.bw, align 1, !dbg !17470, !noalias !17305
  store i8 15, ptr %i.s, align 8, !dbg !17470, !noalias !17305
  invoke fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE2toCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.s)
          to label %.noexc4 unwind label %bb.an, !dbg !17474

.noexc4:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !17475, !noalias !17305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !17475, !noalias !17305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !17476, !noalias !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !17476, !noalias !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !17477, !noalias !17249
  br label %_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26chrono_tz_utf_to_timestamp.exit, !dbg !17478

.body.thread.i.i:                                 ; preds = %bb.t, %.body.thread32.i.i
  %eh.lpad-body31.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread32.i.i ], [ %i.bq, %bb.t ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 23, !dbg !17479
  %i.by = load i8, ptr %i.bx, align 1, !dbg !17479, !range !1329, !alias.scope !17486, !noalias !17472, !noundef !12
  %i.bz = icmp eq i8 %i.by, -40, !dbg !17495
  br i1 %i.bz, label %bb.w, label %.body, !dbg !17495, !prof !1338

bb.w:                                             ; preds = %.body.thread.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.x, !dbg !17496, !noalias !17497

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17498, !noalias !17497
  unreachable, !dbg !17498

bb.y:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = icmp eq i8 %i.am, -40, !dbg !17499
  br i1 %i.cc, label %bb.z, label %.body, !dbg !17499, !prof !1338

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.aa, !dbg !17504, !noalias !17263

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17505, !noalias !17263
  unreachable, !dbg !17505

bb.ab:                                            ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !17506
  %i.cf = load i32, ptr %i.ce, align 8, !dbg !17506, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !17507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !17508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !dbg !17508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17509), !dbg !17507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %i.cf, ptr %i.k, align 4, !noalias !17512
  store i8 %5, ptr %i.j, align 1, !noalias !17512
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17515
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !17515, !noalias !17512, !noundef !12 ; 6 uses
  %i.ci = ptrtoint ptr %1 to i64, !dbg !17528     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17529 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !17529, !noalias !17512, !noundef !12
  %.not.i5 = icmp eq ptr %i.ck, null, !dbg !17529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17532, !noalias !17512
  br i1 %.not.i5, label %bb.af, label %bb.ac, !dbg !17532

bb.ac:                                            ; preds = %bb.ab
  %i.cl = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.cj)
          to label %.noexc.i unwind label %.body.thread32.i, !dbg !17535, !noalias !17512

.noexc.i:                                         ; preds = %bb.ac
  %.not4.i.i = icmp eq i64 %i.cl, 0, !dbg !17537
  br i1 %.not4.i.i, label %bb.af, label %bb.ad, !dbg !17538

bb.ad:                                            ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 8 %i.cj)
          to label %.noexc6.i unwind label %.body.thread32.i, !dbg !17540, !noalias !17512

.noexc6.i:                                        ; preds = %bb.ad
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !17542
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17542, !noalias !17543 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !17542
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17542, !noalias !17543 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17547, !noalias !17543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17547, !noalias !17543
  store i64 %i.ch, ptr %i.e, align 8, !dbg !17549, !alias.scope !17551, !noalias !17554
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !17549
  store i64 1, ptr %i.cm, align 8, !dbg !17549, !alias.scope !17551, !noalias !17554
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !17549
  store i64 %i.ch, ptr %i.cn, align 8, !dbg !17549, !alias.scope !17551, !noalias !17554
  %i.co = add i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i, !dbg !17559 ; 3 uses
  store i64 %i.co, ptr %i.d, align 8, !dbg !17562, !alias.scope !17563, !noalias !17554
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17562
  store i64 1, ptr %i.cp, align 8, !dbg !17562, !alias.scope !17563, !noalias !17554
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17562
  store i64 %i.co, ptr %i.cq, align 8, !dbg !17562, !alias.scope !17563, !noalias !17554
  %i.cr = icmp eq i64 %i.ch, %i.co, !dbg !17566
  br i1 %i.cr, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i, label %bb.ae, !dbg !17569, !prof !1882

bb.ae:                                            ; preds = %.noexc6.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #36
          to label %.noexc7.i unwind label %.body.thread32.i, !dbg !17570, !noalias !17512

.noexc7.i:                                        ; preds = %bb.ae
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %.noexc6.i
  %.sroa.1021.24.copyload.i = load i64, ptr %i.f, align 8, !dbg !17571, !noalias !17572
  %.sroa.12.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17571
  %.sroa.12.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.12.24..sroa_idx.i, align 8, !dbg !17571, !noalias !17512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17573, !noalias !17543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17573, !noalias !17543
  br label %bb.af, !dbg !17574

.body.thread32.i:                                 ; preds = %bb.aj, %bb.ae, %bb.ad, %bb.ac
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i6, !dbg !17575

bb.af:                                            ; preds = %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i, %.noexc.i, %bb.ab
  %.sroa.12.i.sroa.0.0 = phi <16 x i8> [ undef, %bb.ab ], [ undef, %.noexc.i ], [ %.sroa.12.i.sroa.0.0.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.018.0.i = phi ptr [ null, %bb.ab ], [ null, %.noexc.i ], [ %1, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !17576 ; 2 uses
  %.sroa.519.0.i = phi i64 [ %i.ci, %bb.ab ], [ %i.ci, %.noexc.i ], [ 0, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !17576 ; 2 uses
  %.sroa.820.0.i = phi i64 [ 0, %bb.ab ], [ 0, %.noexc.i ], [ %i.ch, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !17576 ; 3 uses
  %.sroa.1021.0.i = phi i64 [ %i.ch, %bb.ab ], [ %i.ch, %.noexc.i ], [ %.sroa.1021.24.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !17576 ; 2 uses
  %.sroa.13.0.i = phi i64 [ undef, %bb.ab ], [ undef, %.noexc.i ], [ %.sroa.4.0.copyload.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.14.0.i = phi i64 [ undef, %bb.ab ], [ undef, %.noexc.i ], [ %.sroa.5.0.copyload.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17577, !noalias !17512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17578, !noalias !17512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17580, !noalias !17512
  call void @llvm.experimental.noalias.scope.decl(metadata !17583), !dbg !17586
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028), !dbg !17589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17592, !noalias !17595
  store i64 0, ptr %i.c, align 8, !dbg !17600, !noalias !17595
  %.sroa.4.0..sroa_idx.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17600
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i7, align 8, !dbg !17600, !noalias !17595
  %.sroa.5.0..sroa_idx.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i8, i8 0, i64 16, i1 false), !dbg !17600, !noalias !17595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17603, !noalias !17595
  store i64 0, ptr %i.b, align 8, !dbg !17605, !noalias !17595
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17605
  store ptr inttoptr (i64 8 to ptr), ptr %i.cs, align 8, !dbg !17605, !noalias !17595
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17605
  store i64 0, ptr %i.ct, align 8, !dbg !17605, !noalias !17595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17608, !noalias !17595
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.018.0.i, null, !dbg !17614 ; 2 uses
  %.val.i.i.i.i.i.sroa.speculated.i = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.820.0.i, i64 %.sroa.519.0.i, !dbg !17616
  %.val1.i.i.i.i.i.sroa.speculated.i = select i1 %.not.i.i.i.i.i.i, i64 %.sroa.1021.0.i, i64 %.sroa.820.0.i, !dbg !17616
  %i.cu = sub i64 %.val1.i.i.i.i.i.sroa.speculated.i, %.val.i.i.i.i.i.sroa.speculated.i, !dbg !17616
  %i.cv = call i64 @llvm.uadd.sat.i64(i64 %i.cu, i64 7), !dbg !17617
  %i.cw = lshr i64 %i.cv, 3, !dbg !17624
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.cw)
          to label %.noexc.i.i.i unwind label %bb.ag, !dbg !17625, !noalias !17595

.noexc.i.i.i:                                     ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !17626), !dbg !17629
  store ptr %2, ptr %i.a, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17630
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17630
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.4.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17630
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx12.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.5.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !17630
  store ptr %.sroa.018.0.i, ptr %.sroa.5.0..sroa_idx13.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !17630
  store i64 %.sroa.519.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17630
  store i64 %.sroa.820.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17630
  store i64 %.sroa.1021.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !17630
  store <16 x i8> %.sroa.12.i.sroa.0.0, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !17630, !noalias !17512
  %.sroa.11.sroa.2.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !17630
  store i64 %.sroa.13.0.i, ptr %.sroa.11.sroa.2.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %.sroa.11.sroa.3.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !17630
  store i64 %.sroa.14.0.i, ptr %.sroa.11.sroa.3.0..sroa.11.0..sroa_idx.sroa_idx.i, align 8, !dbg !17630, !alias.scope !17635, !noalias !17637
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !17630
  store ptr %i.c, ptr %i.cx, align 8, !dbg !17630, !alias.scope !17642, !noalias !17643
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1d_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB2e_5array8iterator15ArrayValuesIterINtNtB3r_7binview22BinaryViewArrayGenericeEENtNtB2a_8iterator10BitmapIterENCINvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26utf8view_to_timestamp_implNtNtNtCs9o5SvTbM2BP_6chrono6offset5fixed11FixedOffsetE0ENCINvNtNtB3r_9primitive7mutable24extend_trusted_len_unzipB20_xxE0EE11spec_extendB5o_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %bb.aj unwind label %bb.ag, !dbg !17645, !noalias !17649

bb.ag:                                            ; preds = %.noexc.i.i.i, %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.ai unwind label %bb.ah, !dbg !17650, !noalias !17649

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17651, !noalias !17649
  unreachable, !dbg !17651

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %.body.thread.i6 unwind label %bb.ah, !dbg !17652, !noalias !17649

bb.aj:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17653, !noalias !17595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %.sroa.028, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !17654, !noalias !17655
  %.sroa.028.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.028, i64 32, !dbg !17656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %.sroa.028.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !17656, !noalias !17655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17650, !noalias !17595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17652, !noalias !17595
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !17658
  store i8 5, ptr %i.da, align 8, !dbg !17658, !alias.scope !17583, !noalias !17660
  %.sroa.028.32..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.028, i64 32, !dbg !17658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 32 dereferenceable(24) %.sroa.028.32..sroa_idx29, i64 24, i1 false), !dbg !17658, !noalias !17660
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !17658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 64 dereferenceable(32) %.sroa.028, i64 32, i1 false), !dbg !17658, !noalias !17660
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028), !dbg !17661
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayxEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayxEE4fromCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
          to label %bb.ak unwind label %.body.thread32.i, !dbg !17662, !noalias !17665

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17666, !noalias !17512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17667, !noalias !17512
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !17668, !noalias !17669
  %i.dd = load i8, ptr %i.j, align 1, !dbg !17667, !range !17473, !noalias !17512, !noundef !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !17667
  store i8 %i.dd, ptr %i.de, align 1, !dbg !17667, !noalias !17512
  store i8 15, ptr %i.h, align 8, !dbg !17667, !noalias !17512
  invoke fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE2toCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(88) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ap unwind label %bb.an, !dbg !17670

.body.thread.i6:                                  ; preds = %bb.ai, %.body.thread32.i
  %eh.lpad-body31.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread32.i ], [ %i.cy, %bb.ai ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 23, !dbg !17671
  %i.dg = load i8, ptr %i.df, align 1, !dbg !17671, !range !1329, !alias.scope !17678, !noalias !17669, !noundef !12
  %i.dh = icmp eq i8 %i.dg, -40, !dbg !17687
  br i1 %i.dh, label %bb.al, label %.body, !dbg !17687, !prof !1338

bb.al:                                            ; preds = %.body.thread.i6
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body unwind label %bb.am, !dbg !17688, !noalias !17689

bb.am:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17690, !noalias !17689
  unreachable, !dbg !17690

bb.an:                                            ; preds = %bb.ak, %bb.v, %bb.l
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !17691

.body:                                            ; preds = %bb.an, %bb.al, %.body.thread.i6, %.body.thread.i.i, %bb.w, %bb.y, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.z ], [ %i.cb, %bb.y ], [ %eh.lpad-body31.i.i, %bb.w ], [ %eh.lpad-body31.i.i, %.body.thread.i.i ], [ %i.dj, %bb.an ], [ %eh.lpad-body31.i, %bb.al ], [ %eh.lpad-body31.i, %.body.thread.i6 ] ; 2 uses
  %i.dk = load i64, ptr %i.ab, align 8, !dbg !17692, !range !6650, !alias.scope !17695, !noundef !12
  %i.dl = icmp eq i64 %i.dk, 18, !dbg !17692
  br i1 %i.dl, label %.thread, label %bb.ao, !dbg !17692

bb.ao:                                            ; preds = %.body
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %.thread unwind label %bb.as, !dbg !17692

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17698, !noalias !17512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17698, !noalias !17512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !17700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false), !dbg !17701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !17702
  br label %bb.aq, !dbg !17703

bb.aq:                                            ; preds = %_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26chrono_tz_utf_to_timestamp.exit, %bb.ap
  %i.dm = load i64, ptr %i.ab, align 8, !dbg !17704, !range !6650, !alias.scope !17706, !noundef !12
  %i.dn = icmp eq i64 %i.dm, 18, !dbg !17704
  br i1 %i.dn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs9o5SvTbM2BP_6chrono6offset5fixed11FixedOffsetNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit14, label %bb.ar, !dbg !17704

bb.ar:                                            ; preds = %bb.aq
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ab), !dbg !17704
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs9o5SvTbM2BP_6chrono6offset5fixed11FixedOffsetNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit14, !dbg !17704

_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal26chrono_tz_utf_to_timestamp.exit: ; preds = %.noexc4, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !17709
  br label %bb.aq, !dbg !17703

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs9o5SvTbM2BP_6chrono6offset5fixed11FixedOffsetNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslFlrwjHoTci_14polars_compute.exit14: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !17691
  ret void, !dbg !17710

bb.as:                                            ; preds = %bb.au, %bb.ao
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17711
  unreachable, !dbg !17711

.thread:                                          ; preds = %bb.at, %bb.au, %bb.ao, %.body
  %.pn18 = phi { ptr, i32 } [ %i.dp, %bb.at ], [ %eh.lpad-body, %bb.ao ], [ %eh.lpad-body, %.body ], [ %i.dp, %bb.au ]
  resume { ptr, i32 } %.pn18, !dbg !17711

bb.at:                                            ; preds = %bb.d
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load i8, ptr %i.ac, align 1, !dbg !17712, !range !1329, !alias.scope !17719, !noundef !12
  %i.dr = icmp eq i8 %i.dq, -40, !dbg !17728
  br i1 %i.dr, label %bb.au, label %.thread, !dbg !17728, !prof !1338

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.thread unwind label %bb.as, !dbg !17729
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal27utf8view_to_naive_timestamp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef range(i8 0, 4) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17730 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.0 = alloca <56 x i8>, align 64           ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  store i8 %4, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17731
  %i.l = load i64, ptr %i.k, align 8, !dbg !17731, !noundef !12 ; 6 uses
  %i.m = ptrtoint ptr %1 to i64, !dbg !17742      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !17743 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17743, !noundef !12
  %.not = icmp eq ptr %i.o, null, !dbg !17743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17746
  br i1 %.not, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !17746

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.n), !dbg !17749, !noalias !17751
  %.not4.i = icmp eq i64 %i.p, 0, !dbg !17755
  br i1 %.not4.i, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !17756

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 8 %i.n), !dbg !17758, !noalias !17751
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !17760
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !17760, !noalias !17751 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !17760
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !17760, !noalias !17751 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17761, !noalias !17751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17761, !noalias !17751
  store i64 %i.l, ptr %i.e, align 8, !dbg !17763, !alias.scope !17765, !noalias !17768
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !17763
  store i64 1, ptr %i.q, align 8, !dbg !17763, !alias.scope !17765, !noalias !17768
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !17763
  store i64 %i.l, ptr %i.r, align 8, !dbg !17763, !alias.scope !17765, !noalias !17768
  %i.s = add i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i, !dbg !17773 ; 3 uses
  store i64 %i.s, ptr %i.d, align 8, !dbg !17776, !alias.scope !17777, !noalias !17768
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17776
  store i64 1, ptr %i.t, align 8, !dbg !17776, !alias.scope !17777, !noalias !17768
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17776
  store i64 %i.s, ptr %i.u, align 8, !dbg !17776, !alias.scope !17777, !noalias !17768
  %i.v = icmp eq i64 %i.l, %i.s, !dbg !17780
  br i1 %i.v, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i, label %bb.d, !dbg !17783, !prof !1882

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #36, !dbg !17784, !noalias !17768
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.c
  %.sroa.1013.24.copyload = load i64, ptr %i.f, align 8, !dbg !17785, !noalias !17786
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17785
  %.sroa.12.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.12.24..sroa_idx, align 8, !dbg !17785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17787, !noalias !17751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17787, !noalias !17751
  br label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit, !dbg !17788

_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.a, %bb.b, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.12.sroa.0.0 = phi <16 x i8> [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.12.sroa.0.0.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ]
  %.sroa.012.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %1, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ], !dbg !17789 ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.m, %bb.a ], [ %i.m, %bb.b ], [ 0, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ], !dbg !17789 ; 2 uses
  %.sroa.8.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.l, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ], !dbg !17789 ; 3 uses
  %.sroa.1013.0 = phi i64 [ %i.l, %bb.a ], [ %i.l, %bb.b ], [ %.sroa.1013.24.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ], !dbg !17789 ; 2 uses
  %.sroa.13.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.4.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ]
  %.sroa.14.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.5.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterReINtNtNtB8_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericeEENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17793
  call void @llvm.experimental.noalias.scope.decl(metadata !17795), !dbg !17798
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !17800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17803, !noalias !17806
  store i64 0, ptr %i.c, align 8, !dbg !17811, !noalias !17806
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17811
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17811, !noalias !17806
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !17811, !noalias !17806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17814, !noalias !17806
  store i64 0, ptr %i.b, align 8, !dbg !17816, !noalias !17806
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17816
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !dbg !17816, !noalias !17806
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17816
  store i64 0, ptr %i.x, align 8, !dbg !17816, !noalias !17806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17819, !noalias !17806
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.012.0, null, !dbg !17825 ; 2 uses
  %.val.i.i.i.i.i.sroa.speculated = select i1 %.not.i.i.i.i.i, i64 %.sroa.8.0, i64 %.sroa.5.0, !dbg !17827
  %.val1.i.i.i.i.i.sroa.speculated = select i1 %.not.i.i.i.i.i, i64 %.sroa.1013.0, i64 %.sroa.8.0, !dbg !17827
  %i.y = sub i64 %.val1.i.i.i.i.i.sroa.speculated, %.val.i.i.i.i.i.sroa.speculated, !dbg !17827
  %i.z = call i64 @llvm.uadd.sat.i64(i64 %i.y, i64 7), !dbg !17828
  %i.aa = lshr i64 %i.z, 3, !dbg !17835
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.aa)
          to label %.noexc.i.i unwind label %bb.e, !dbg !17836, !noalias !17806

.noexc.i.i:                                       ; preds = %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17837), !dbg !17840
  store ptr %2, ptr %i.a, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17841
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17841
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx6, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17841
  store ptr %.sroa.012.0, ptr %.sroa.4.0..sroa_idx7, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !17841
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !17841
  store i64 %.sroa.8.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !17841
  store i64 %.sroa.1013.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !17841
  store <16 x i8> %.sroa.12.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !17841
  %.sroa.10.sroa.2.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !17841
  store i64 %.sroa.13.0, ptr %.sroa.10.sroa.2.0..sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !17841
  store i64 %.sroa.14.0, ptr %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx.sroa_idx, align 8, !dbg !17841, !alias.scope !17846, !noalias !17848
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !17841
  store ptr %i.c, ptr %i.ab, align 8, !dbg !17841, !alias.scope !17853, !noalias !17854
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1d_INtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB2e_5array8iterator15ArrayValuesIterINtNtB3r_7binview22BinaryViewArrayGenericeEENtNtB2a_8iterator10BitmapIterENCNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal27utf8view_to_naive_timestamp0ENCINvNtNtB3r_9primitive7mutable24extend_trusted_len_unzipB20_xxE0EE11spec_extendB5n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %_RINvMsa_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6_21MutablePrimitiveArrayxE31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtBc_6bitmap5utils12zip_validity11ZipValidityReINtNtBa_8iterator15ArrayValuesIterINtNtBa_7binview22BinaryViewArrayGenericeEENtNtB2X_8iterator10BitmapIterENCNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal27utf8view_to_naive_timestamp0ExEB5B_.exit unwind label %bb.e, !dbg !17856, !noalias !17806

bb.e:                                             ; preds = %.noexc.i.i, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.g unwind label %bb.f, !dbg !17860, !noalias !17806

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17861, !noalias !17806
  unreachable, !dbg !17861

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #34
          to label %bb.h unwind label %bb.f, !dbg !17862, !noalias !17806

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ac, !dbg !17861

_RINvMsa_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6_21MutablePrimitiveArrayxE31from_trusted_len_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtBc_6bitmap5utils12zip_validity11ZipValidityReINtNtBa_8iterator15ArrayValuesIterINtNtBa_7binview22BinaryViewArrayGenericeEENtNtB2X_8iterator10BitmapIterENCNvNtNtCslFlrwjHoTci_14polars_compute4cast8temporal27utf8view_to_naive_timestamp0ExEB5B_.exit: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17863, !noalias !17806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !17864, !noalias !17865
  %.sroa.0.32..sroa_idx21 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !17866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %.sroa.0.32..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !17866, !noalias !17865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17860, !noalias !17806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17862, !noalias !17806
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !17868
  store i8 5, ptr %i.ae, align 8, !dbg !17868, !alias.scope !17795, !noalias !17870
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32, !dbg !17868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 32 dereferenceable(24) %.sroa.0.32..sroa_idx, i64 24, i1 false), !dbg !17868, !noalias !17870
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !17868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 64 dereferenceable(32) %.sroa.0, i64 32, i1 false), !dbg !17868, !noalias !17870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !17871
  call void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayxEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayxEE4fromCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g), !dbg !17872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17876
  %i.ag = load i8, ptr %i.j, align 1, !dbg !17876, !range !17473, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !17876
  store i8 %i.ag, ptr %i.ah, align 1, !dbg !17876
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 31, !dbg !17876
  store i8 -38, ptr %.sroa.3.0..sroa_idx, align 1, !dbg !17876
  store i8 15, ptr %i.h, align 8, !dbg !17876
  call fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayxE2toCslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h) #35, !dbg !17877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17878
  ret void, !dbg !17879
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCslFlrwjHoTci_14polars_compute6unique8distinct27amortized_unique_from_dtype(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17880 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 5 uses
  %i.l = alloca [80 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 5 uses
  %i.n = alloca [80 x i8], align 8                ; 5 uses
  %i.o = alloca [80 x i8], align 8                ; 5 uses
  %i.p = alloca [80 x i8], align 8                ; 5 uses
  %i.q = alloca [80 x i8], align 8                ; 5 uses
  %i.r = tail call { i8, i8 } @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType16to_physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !dbg !17881 ; 2 uses
  %i.s = extractvalue { i8, i8 } %i.r, 0, !dbg !17881
  switch i8 %i.s, label %bb.b [
    i8 0, label %bb.ag
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.o
    i8 7, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 10, label %bb.s
    i8 11, label %bb.t
    i8 12, label %bb.u
    i8 13, label %bb.v
    i8 14, label %bb.w
    i8 15, label %bb.x
    i8 16, label %bb.af
  ], !dbg !17882, !prof !17883

bb.b:                                             ; preds = %bb.d, %bb.a
  unreachable, !dbg !17884

bb.c:                                             ; preds = %bb.a
  br label %bb.ag, !dbg !17886

bb.d:                                             ; preds = %bb.a
  %i.t = extractvalue { i8, i8 } %i.r, 1, !dbg !17881
  switch i8 %i.t, label %bb.b [
    i8 0, label %bb.ah
    i8 1, label %bb.ak
    i8 2, label %bb.an
    i8 3, label %bb.aq
    i8 4, label %bb.at
    i8 5, label %bb.aw
    i8 6, label %bb.ax
    i8 7, label %bb.ba
    i8 8, label %bb.bd
    i8 9, label %bb.bg
    i8 10, label %bb.bj
    i8 11, label %bb.bm
    i8 12, label %bb.bp
    i8 13, label %bb.bs
    i8 14, label %bb.bv
    i8 15, label %bb.bw
    i8 16, label %bb.bx
  ], !dbg !17887, !prof !17889

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #37, !dbg !17890
  unreachable, !dbg !17890

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #37, !dbg !17891
  unreachable, !dbg !17891

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17893), !dbg !17892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17896, !noalias !17893
  %i.u = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !17900, !noalias !17911
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !17914, !noalias !17911
  %i.w = icmp eq i8 %i.v, 2, !dbg !17920
  br i1 %i.w, label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRShuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCslFlrwjHoTci_14polars_compute.exit.i, label %bb.h, !dbg !17920, !prof !1882

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #33, !dbg !17921, !noalias !17911
  br label %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRShuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCslFlrwjHoTci_14polars_compute.exit.i, !dbg !17921

_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRShuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @201, i64 32, i1 false), !dbg !17922, !noalias !17893
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !17922 ; 2 uses
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !17922, !noalias !17893
  %i.x = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i unwind label %bb.j, !dbg !17923, !noalias !17893

.noexc.i:                                         ; preds = %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRShuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCslFlrwjHoTci_14polars_compute.exit.i
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !17930, !noalias !17934
  %i.z = icmp eq i8 %i.y, 2, !dbg !17937
  br i1 %i.z, label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB5_12BinaryUniqueNtNtCscgRAwXFJnXP_4core7default7Default7default.exit, label %bb.i, !dbg !17937, !prof !1882

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #33
          to label %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB5_12BinaryUniqueNtNtCscgRAwXFJnXP_4core7default7Default7default.exit unwind label %bb.j, !dbg !17938, !noalias !17893

bb.j:                                             ; preds = %bb.i, %_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRShuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core7default7Default7defaultCslFlrwjHoTci_14polars_compute.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRShuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i, i64 noundef 16, i64 noundef 16)
          to label %common.resume unwind label %bb.k, !dbg !17939, !noalias !17893

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17944, !noalias !17893
  unreachable, !dbg !17944

common.resume:                                    ; preds = %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.bb, %bb.ay, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ad, %bb.aa, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.bq ], [ %i.aa, %bb.j ], [ %i.af, %bb.m ], [ %i.an, %bb.aa ], [ %i.as, %bb.ad ], [ %i.ax, %bb.ai ], [ %i.ba, %bb.al ], [ %i.bd, %bb.ao ], [ %i.bg, %bb.ar ], [ %i.bj, %bb.au ], [ %i.bm, %bb.ay ], [ %i.bp, %bb.bb ], [ %i.bs, %bb.be ], [ %i.bv, %bb.bh ], [ %i.by, %bb.bk ], [ %i.cb, %bb.bn ], [ %i.ch, %bb.bt ]
  resume { ptr, i32 } %common.resume.op, !dbg !17945

_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB5_12BinaryUniqueNtNtCscgRAwXFJnXP_4core7default7Default7default.exit: ; preds = %.noexc.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !17944
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !17944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) @201, i64 32, i1 false), !dbg !17944
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !17944
  store i64 %i.x, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !17944, !alias.scope !17893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17946, !noalias !17893
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !17947, !noalias !17955
  %i.ad = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 80, i64 noundef range(i64 1, 9) 8) #32, !dbg !17958, !noalias !17955 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !17959
  br i1 %i.ae, label %bb.l, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct12BinaryUniqueE3newBK_.exit, !dbg !17960, !prof !6697

bb.l:                                             ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB5_12BinaryUniqueNtNtCscgRAwXFJnXP_4core7default7Default7default.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #36
          to label %.noexc unwind label %bb.m, !dbg !17961

.noexc:                                           ; preds = %bb.l
  unreachable, !dbg !17961

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct12BinaryUniqueEBM_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #34
          to label %common.resume unwind label %bb.n, !dbg !17962

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !17963
  unreachable, !dbg !17963

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct12BinaryUniqueE3newBK_.exit: ; preds = %_RNvXs5_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB5_12BinaryUniqueNtNtCscgRAwXFJnXP_4core7default7Default7default.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !17964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17966
  br label %bb.ag, !dbg !17967

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #37, !dbg !17968
  unreachable, !dbg !17968

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #37, !dbg !17969
  unreachable, !dbg !17969

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #37, !dbg !17970
  unreachable, !dbg !17970

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #37, !dbg !17971
  unreachable, !dbg !17971

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #37, !dbg !17972
  unreachable, !dbg !17972

bb.t:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #37, !dbg !17973
  unreachable, !dbg !17973

bb.u:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #37, !dbg !17974
end_hunk_1
begin_hunk_2_@_RNvNtNtCslFlrwjHoTci_14polars_compute6unique8distinct27amortized_unique_from_dtype:bb.a
  %i.bl = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquehEE3newBL_.exit unwind label %bb.ay, !dbg !18113, !noalias !18116 ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquehEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l) #34
          to label %common.resume unwind label %bb.az, !dbg !18119

bb.az:                                            ; preds = %bb.ay
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18120
  unreachable, !dbg !18120

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquehEE3newBL_.exit: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !dbg !18121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !18123
  br label %bb.ag, !dbg !18124

bb.ba:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !18125
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniquetENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.k) #35, !dbg !18125
  %i.bo = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquetEE3newBL_.exit unwind label %bb.bb, !dbg !18126, !noalias !18129 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquetEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k) #34
          to label %common.resume unwind label %bb.bc, !dbg !18132

bb.bc:                                            ; preds = %bb.bb
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18133
  unreachable, !dbg !18133

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquetEE3newBL_.exit: ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false), !dbg !18134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18136
  br label %bb.ag, !dbg !18137

bb.bd:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18138
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniquemENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.j) #35, !dbg !18138
  %i.br = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquemEE3newBL_.exit unwind label %bb.be, !dbg !18139, !noalias !18142 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquemEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j) #34
          to label %common.resume unwind label %bb.bf, !dbg !18145

bb.bf:                                            ; preds = %bb.be
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18146
  unreachable, !dbg !18146

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquemEE3newBL_.exit: ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.br, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !18147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18149
  br label %bb.ag, !dbg !18150

bb.bg:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18151
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniqueyENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.i) #35, !dbg !18151
  %i.bu = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueyEE3newBL_.exit unwind label %bb.bh, !dbg !18152, !noalias !18155 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueyEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i) #34
          to label %common.resume unwind label %bb.bi, !dbg !18158

bb.bi:                                            ; preds = %bb.bh
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18159
  unreachable, !dbg !18159

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueyEE3newBL_.exit: ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !18160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18162
  br label %bb.ag, !dbg !18163

bb.bj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18164
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniqueoENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.h) #35, !dbg !18164
  %i.bx = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueoEE3newBL_.exit unwind label %bb.bk, !dbg !18165, !noalias !18168 ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueoEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.h) #34
          to label %common.resume unwind label %bb.bl, !dbg !18171

bb.bl:                                            ; preds = %bb.bk
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18172
  unreachable, !dbg !18172

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueoEE3newBL_.exit: ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !18173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18175
  br label %bb.ag, !dbg !18176

bb.bm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18177
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniqueNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.g) #35, !dbg !18177
  %i.ca = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueNtNtCs2mZqlW55729_12polars_utils7float164pf16EE3newBL_.exit unwind label %bb.bn, !dbg !18178, !noalias !18181 ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g) #34
          to label %common.resume unwind label %bb.bo, !dbg !18184

bb.bo:                                            ; preds = %bb.bn
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18185
  unreachable, !dbg !18185

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniqueNtNtCs2mZqlW55729_12polars_utils7float164pf16EE3newBL_.exit: ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !18186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18188
  br label %bb.ag, !dbg !18189

bb.bp:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18190
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniquefENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.f) #35, !dbg !18190
  %i.cd = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquefEE3newBL_.exit unwind label %bb.bq, !dbg !18191, !noalias !18194 ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquefEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.f) #34
          to label %common.resume unwind label %bb.br, !dbg !18197

bb.br:                                            ; preds = %bb.bq
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18198
  unreachable, !dbg !18198

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquefEE3newBL_.exit: ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !18199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18201
  br label %bb.ag, !dbg !18202

bb.bs:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18203
  call fastcc void @_RNvXs3_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctINtB5_18PrimitiveArgUniquedENtNtCscgRAwXFJnXP_4core7default7Default7defaultB9_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.e) #35, !dbg !18203
  %i.cg = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 80)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquedEE3newBL_.exit unwind label %bb.bt, !dbg !18204, !noalias !18207 ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquedEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #34
          to label %common.resume unwind label %bb.bu, !dbg !18210

bb.bu:                                            ; preds = %bb.bt
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18211
  unreachable, !dbg !18211

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCslFlrwjHoTci_14polars_compute6unique8distinct18PrimitiveArgUniquedEE3newBL_.exit: ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !dbg !18212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18214
  br label %bb.ag, !dbg !18215

bb.bv:                                            ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #37, !dbg !18216
  unreachable, !dbg !18216

bb.bw:                                            ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #37, !dbg !18217
  unreachable, !dbg !18217

bb.bx:                                            ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #37, !dbg !18218
  unreachable, !dbg !18218
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list23sub_fixed_size_list_get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noundef nonnull align 8 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18219 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18224
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18225
  %i.h = load i64, ptr %i.g, align 8, !dbg !18225, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.h, ptr %i.e, align 8, !noalias !18231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18234, !noalias !18231
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !18237
  %i.j = load ptr, ptr %i.i, align 8, !dbg !18237, !noalias !18231, !nonnull !12, !noundef !12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !18244
  %i.l = load i64, ptr %i.k, align 8, !dbg !18244, !noalias !18231, !noundef !12 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !18245 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !18245, !noalias !18231, !noundef !12
  %.not.i = icmp eq ptr %i.n, null, !dbg !18245
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l, !dbg !18250 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18259, !noalias !18231
  br i1 %.not.i, label %_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit, label %bb.b, !dbg !18259

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.m), !dbg !18262, !noalias !18264
  %.not4.i.i = icmp eq i64 %i.p, 0, !dbg !18267
  br i1 %.not4.i.i, label %_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit, label %bb.c, !dbg !18268

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.m), !dbg !18270, !noalias !18264
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18272
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18272, !noalias !18264 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !18272
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18272, !noalias !18264 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18264
  store i64 %i.l, ptr %i.b, align 8, !dbg !18273, !alias.scope !18276, !noalias !18279
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18273
  store i64 1, ptr %i.q, align 8, !dbg !18273, !alias.scope !18276, !noalias !18279
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18273
  store i64 %i.l, ptr %i.r, align 8, !dbg !18273, !alias.scope !18276, !noalias !18279
  %i.s = add i64 %.sroa.5.0.copyload.i.i, %.sroa.4.0.copyload.i.i, !dbg !18283 ; 3 uses
  store i64 %i.s, ptr %i.a, align 8, !dbg !18286, !alias.scope !18287, !noalias !18279
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18286
  store i64 1, ptr %i.t, align 8, !dbg !18286, !alias.scope !18287, !noalias !18279
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18286
  store i64 %i.s, ptr %i.u, align 8, !dbg !18286, !alias.scope !18287, !noalias !18279
  %i.v = icmp eq i64 %i.l, %i.s, !dbg !18290
  br i1 %i.v, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i, label %bb.d, !dbg !18293, !prof !1882

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #36, !dbg !18294, !noalias !18279
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.c
  %.sroa.7.16.copyload.i = load ptr, ptr %i.c, align 8, !dbg !18295, !noalias !18231
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18295
  %.sroa.9.i.sroa.0.0.copyload = load <16 x i8>, ptr %.sroa.9.16..sroa_idx.i, align 8, !dbg !18295, !noalias !18231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18296, !noalias !18264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18296, !noalias !18264
  br label %_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit, !dbg !18297

_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit: ; preds = %bb.a, %bb.b, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i
  %.sroa.9.i.sroa.0.0 = phi <16 x i8> [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.9.i.sroa.0.0.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.10.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.5.0.copyload.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.93.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.4.0.copyload.i.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.o, %bb.a ], [ %i.o, %bb.b ], [ %.sroa.7.16.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !18298
  %.sroa.5.0.i = phi ptr [ %i.j, %bb.a ], [ %i.j, %bb.b ], [ %i.o, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !18298
  %.sroa.02.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRxINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtB4_8iterator10BitmapIterE3newCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !18298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18299, !noalias !18231
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18300
  store ptr %.sroa.02.0.i, ptr %i.w, align 8, !dbg !18300, !noalias !18231
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18300
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !18300
  store ptr %.sroa.7.0.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !18300
  store <16 x i8> %.sroa.9.i.sroa.0.0, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !18300
  store i64 %.sroa.93.0.i, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !18300
  store i64 %.sroa.10.0.i, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !18300
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !18300, !noalias !18231
  store ptr %i.e, ptr %i.d, align 8, !dbg !18300, !noalias !18231
  call void @_RINvXs0_NtNtCs8774dFTUdNv_12polars_arrow6legacy5utilsINtNtNtBa_5array9primitive14PrimitiveArraymEINtB6_22FromTrustedLenIteratorINtNtCscgRAwXFJnXP_4core6option6OptionmEE24from_iter_trusted_lengthINtNtNtNtB26_4iter8adapters3map3MapINtNtB3b_9enumerate9EnumerateINtNtNtNtBa_6bitmap5utils12zip_validity11ZipValidityRxINtNtNtB26_5slice4iter4IterxENtNtB4d_8iterator10BitmapIterEENCNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes0EEB68_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d), !dbg !18305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18308, !noalias !18231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18309
  br i1 %3, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.e, !dbg !18310

bb.e:                                             ; preds = %_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit
  %i.x = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @262) #35
          to label %.noexc unwind label %bb.i, !dbg !18312

.noexc:                                           ; preds = %bb.e
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !18320

bb.f:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18321 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !18321, !noundef !12
  %.not.i.i = icmp eq ptr %i.z, null, !dbg !18321
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.h, !dbg !18327

bb.g:                                             ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !18330
  %.val.i = load i64, ptr %i.aa, align 8, !dbg !18330, !noundef !12
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !18331

bb.h:                                             ; preds = %bb.f
  %i.ab = invoke noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.y)
          to label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit unwind label %bb.i, !dbg !18332

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.f, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, %_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_indexes.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18338
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !18338, !nonnull !12, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !18338
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !18338, !nonnull !12, !align !892, !noundef !12
  %i.ag = invoke { ptr, ptr } @_RNvNtCslFlrwjHoTci_14polars_compute6gather14take_unchecked(ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.af, ptr noundef nonnull align 8 %i.f)
          to label %bb.p unwind label %bb.i, !dbg !18340 ; 2 uses

bb.i:                                             ; preds = %bb.h, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(88) %i.f) #34
          to label %common.resume unwind label %bb.v, !dbg !18341

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.1.i = phi i64 [ %.val.i, %bb.g ], [ %i.ab, %bb.h ], !dbg !18342
  %.not = icmp eq i64 %.sroa.0.1.i, 0, !dbg !18343
  br i1 %.not, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.j, !dbg !18343

bb.j:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @92, i64 72, i1 false), !dbg !18344
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.l unwind label %bb.k, !dbg !18345

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18345
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i unwind label %bb.o, !dbg !18347

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18345
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i unwind label %bb.n, !dbg !18350

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.n, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.ai, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18345 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !dbg !18353, !alias.scope !18355, !noundef !12
  %i.an = icmp eq ptr %i.am, null, !dbg !18353
  br i1 %i.an, label %common.resume, label %bb.m, !dbg !18353

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %common.resume unwind label %bb.o, !dbg !18360

bb.n:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18345 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !18363, !alias.scope !18365, !noundef !12
  %i.ar = icmp eq ptr %i.aq, null, !dbg !18363
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6.sink.split, !dbg !18363

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18345
  unreachable, !dbg !18345

common.resume:                                    ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2, %bb.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn.i3, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2 ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i ], [ %.pn.i, %bb.m ], [ %.pn.i3, %bb.s ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !18368

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6.sink.split: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i5
  %.sink = phi ptr [ %i.be, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i5 ], [ %i.ap, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i ]
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sink), !dbg !18369
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6, !dbg !18341

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6.sink.split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18341
  ret void, !dbg !18373

bb.p:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.at = extractvalue { ptr, ptr } %i.ag, 0, !dbg !18340
  %i.au = extractvalue { ptr, ptr } %i.ag, 1, !dbg !18340
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18374
  store ptr %i.at, ptr %i.av, align 8, !dbg !18374
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18374
  store ptr %i.au, ptr %i.aw, align 8, !dbg !18374
  store i64 18, ptr %0, align 8, !dbg !18374
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.r unwind label %bb.q, !dbg !18375

bb.q:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18375
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2 unwind label %bb.u, !dbg !18377

bb.r:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18375
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i5 unwind label %bb.t, !dbg !18380

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2: ; preds = %bb.t, %bb.q
  %.pn.i3 = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.ax, %bb.q ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18375 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !18383, !alias.scope !18385, !noundef !12
  %i.bc = icmp eq ptr %i.bb, null, !dbg !18383
  br i1 %i.bc, label %common.resume, label %bb.s, !dbg !18383

bb.s:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %common.resume unwind label %bb.u, !dbg !18390

bb.t:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit.i2

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECslFlrwjHoTci_14polars_compute.exit2.i5: ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18375 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !18393, !alias.scope !18395, !noundef !12
  %i.bg = icmp eq ptr %i.bf, null, !dbg !18393
  br i1 %i.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECslFlrwjHoTci_14polars_compute.exit6.sink.split, !dbg !18393

bb.u:                                             ; preds = %bb.s, %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18375
  unreachable, !dbg !18375

bb.v:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !18398
  unreachable, !dbg !18398
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list31sub_fixed_size_list_get_literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18399 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18400
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18401
  %i.f = load i64, ptr %i.e, align 8, !dbg !18401, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18404
  %i.h = load i64, ptr %i.g, align 8, !dbg !18404, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.f, ptr %i.c, align 8, !noalias !18407
  store i64 %2, ptr %i.b, align 8, !noalias !18407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18410, !noalias !18407
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18413
  store i64 0, ptr %i.i, align 8, !dbg !18413, !noalias !18407
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18413
  store i64 %i.h, ptr %i.j, align 8, !dbg !18413, !noalias !18407
  store ptr %i.b, ptr %i.a, align 8, !dbg !18413, !noalias !18407
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18413
  store ptr %i.c, ptr %i.k, align 8, !dbg !18413, !noalias !18407
  call void @_RINvXs0_NtNtCs8774dFTUdNv_12polars_arrow6legacy5utilsINtNtNtBa_5array9primitive14PrimitiveArraymEINtB6_22FromTrustedLenIteratorINtNtCscgRAwXFJnXP_4core6option6OptionmEE24from_iter_trusted_lengthINtNtNtNtB26_4iter8adapters3map3MapINtNtNtB26_3ops5range5RangejENCNvNtNtNtCslFlrwjHoTci_14polars_compute6gather7sublist15fixed_size_list39sub_fixed_size_list_get_indexes_literal0EEB4i_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !18418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18421, !noalias !18407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18422
  br i1 %3, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.b, !dbg !18423

bb.b:                                             ; preds = %bb.a
  %i.l = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @262) #35
          to label %.noexc unwind label %bb.f, !dbg !18425

.noexc:                                           ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %bb.c, !dbg !18430

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !18431 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !18431, !noundef !12
end_hunk_2
