Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.02?download=true
inline.NumInlined: 217
inline.NumDeleted: 132
begin_hunk_0_@_RNvXs4_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_16HistogramBuilderINtNtB7_6family17MetricConstructorNtB5_13TimeHistogramE10new_metric:bb.a

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram18TimeHistogramStateEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #26
          to label %.body.i unwind label %bb.h, !dbg !2307

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !2308
  unreachable, !dbg !2308

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body14.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body14.i, !dbg !2309

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdINtNtNtB4_4sync6atomic6AtomicyEEEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #26
          to label %.body.i unwind label %bb.j, !dbg !2310

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !2309
  unreachable, !dbg !2309

_RINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB6_13TimeHistogram3newINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1y_5slice4iter4IterdEEEBa_.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !2311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2310
  ret ptr %i.r, !dbg !2314
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtNtNtBO_4iter6traits8iterator8Iterator4nextB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 !dbg !2315 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2317 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2317, !noundef !15 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !2317
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !2317

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2321), !dbg !2324
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !dbg !2325, !alias.scope !2321, !noundef !15 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0, !dbg !2334
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2321 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit, !dbg !2339

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !2321
  br label %bb.c, !dbg !2339

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !dbg !2340, !alias.scope !2321
  store ptr %i.j, ptr %0, align 8, !dbg !2341, !alias.scope !2321
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit, !dbg !2339

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ], !dbg !2342 ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.g, align 16, !dbg !2343, !noalias !2321
  %i.i = icmp sgt <16 x i8> %.val9.i, splat (i8 -1), !dbg !2346
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -1152, !dbg !2353 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2360 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16, !dbg !2325 ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0, !dbg !2334
  br i1 %.not.i, label %bb.c, label %._crit_edge.i, !dbg !2339

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ], !dbg !2363
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ], !dbg !2325 ; 3 uses
  %i.m = add i16 %.lcssa.i, -1, !dbg !2365
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2375
  %i.o = zext nneg i16 %i.n to i64, !dbg !2376
  %i.p = and i16 %i.m, %.lcssa.i, !dbg !2377
  store i16 %i.p, ptr %i.d, align 8, !dbg !2381, !alias.scope !2321
  %i.q = sub nsw i64 0, %i.o, !dbg !2382
  %i.r = getelementptr inbounds [72 x i8], ptr %i.l, i64 %i.q, !dbg !2384 ; 2 uses
  %i.s = add i64 %i.b, -1, !dbg !2385
  store i64 %i.s, ptr %i.a, align 8, !dbg !2385
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -72, !dbg !2387
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -56, !dbg !2395
  br label %bb.d, !dbg !2397

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit
  %.sroa.3.0 = phi ptr [ %i.u, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit ], [ undef, %bb.a ], !dbg !2398
  %.sroa.0.0 = phi ptr [ %i.t, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit ], [ null, %bb.a ], !dbg !2398
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !2399
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.3.0, 1, !dbg !2399
  ret { ptr, ptr } %i.w, !dbg !2399
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB4_9HistogramNtNtB8_5value17EncodeMetricValue19encode_metric_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2400 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403), !dbg !2406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407), !dbg !2406
  %i.c = load ptr, ptr %1, align 8, !dbg !2409, !alias.scope !2407, !noalias !2403, !nonnull !15, !noundef !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2414 ; 6 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1, !dbg !2415, !noalias !2420
  %i.f = extractvalue { i8, i1 } %i.e, 1, !dbg !2415
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !2421, !prof !981

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1), !dbg !2422, !noalias !2420 ; 0 uses
  br label %bb.c, !dbg !2423

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2424
  %i.i = load double, ptr %i.h, align 8, !dbg !2424, !noalias !2420, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !2425
  %i.k = load i64, ptr %i.j, align 8, !dbg !2425, !noalias !2420, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2426, !noalias !2420
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2427
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdyEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.f unwind label %bb.d, !dbg !2430, !noalias !2420

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !dbg !2431, !noalias !2420
  %i.o = extractvalue { i8, i1 } %i.n, 1, !dbg !2431
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram14HistogramStateEEB2e_.exit.i, label %bb.e, !dbg !2437, !prof !981

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram14HistogramStateEEB2e_.exit.i unwind label %bb.h, !dbg !2438, !noalias !2420

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2439
  store double %i.i, ptr %i.p, align 8, !dbg !2439, !alias.scope !2403, !noalias !2407
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2439
  store i64 %i.k, ptr %i.q, align 8, !dbg !2439, !alias.scope !2403, !noalias !2407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !2439, !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2440, !noalias !2420
  %i.r = cmpxchg ptr %i.d, i8 1, i8 0 release monotonic, align 1, !dbg !2441, !noalias !2420
  %i.s = extractvalue { i8, i1 } %i.r, 1, !dbg !2441
  br i1 %i.s, label %_RNvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2_9Histogram8snapshot.exit, label %bb.g, !dbg !2447, !prof !981

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false), !dbg !2448, !noalias !2420
  br label %_RNvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2_9Histogram8snapshot.exit, !dbg !2448

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !2449, !noalias !2420
  unreachable, !dbg !2449

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram14HistogramStateEEB2e_.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.m, !dbg !2449

_RNvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2_9Histogram8snapshot.exit: ; preds = %bb.f, %bb.g
  call void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram15encode_snapshot(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b), !dbg !2450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2451
  ret void, !dbg !2452
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_13TimeHistogramNtNtB9_5value17EncodeMetricValue19encode_metric_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 !dbg !2453 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456), !dbg !2459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460), !dbg !2459
  %i.b = load ptr, ptr %1, align 8, !dbg !2462, !alias.scope !2460, !noalias !2456, !nonnull !15, !noundef !15 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2467
  %i.d = load atomic i64, ptr %i.c monotonic, align 8, !dbg !2471, !noalias !2473
  %i.e = uitofp i64 %i.d to double, !dbg !2474
  %i.f = fmul nnan double %i.e, 1.000000e-09, !dbg !2474
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2476
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !dbg !2480, !noalias !2473
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2482
  %i.j = load ptr, ptr %i.i, align 8, !dbg !2482, !noalias !2473, !nonnull !15, !noundef !15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2489
  %i.l = load i64, ptr %i.k, align 8, !dbg !2489, !noalias !2473, !noundef !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l, !dbg !2490
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTdyEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTdINtNtNtB1L_4sync6atomic6AtomicyEEENCNvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3z_13TimeHistogram8snapshot0EE9from_iterB3D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m), !dbg !2494, !noalias !2460
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2498
  store double %i.f, ptr %i.n, align 8, !dbg !2498, !alias.scope !2456, !noalias !2460
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2498
  store i64 %i.h, ptr %i.o, align 8, !dbg !2498, !alias.scope !2456, !noalias !2460
  call void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram15encode_snapshot(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a), !dbg !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2500
  ret void, !dbg !2501
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEENtNtNtBT_3ops4drop4Drop4dropB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2502 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504), !dbg !2507
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2508
  %i.b = load i64, ptr %i.a, align 8, !dbg !2508, !alias.scope !2504, !noundef !15 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !2508
  br i1 %i.c, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_.exit, label %bb.b, !dbg !2513

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514), !dbg !2517
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2518
  %i.e = load i64, ptr %i.d, align 8, !dbg !2518, !alias.scope !2521, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !2518
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_.exit.i, label %bb.c, !dbg !2518

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !dbg !2522, !alias.scope !2521, !nonnull !15, !noundef !15 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !2527, !noalias !2531
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1), !dbg !2534
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2538
  %i.j = bitcast <16 x i1> %i.h to i16, !dbg !2540
  br label %bb.d, !dbg !2542

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0, !dbg !2547
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit.i.i, !dbg !2551

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ], !dbg !2552 ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !dbg !2553, !noalias !2555
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1), !dbg !2558
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1152, !dbg !2562 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !2565 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16, !dbg !2567 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0, !dbg !2547
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit.i.i, !dbg !2551

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ], !dbg !2568
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ], !dbg !2568 ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ], !dbg !2567 ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true), !dbg !2569
  %i.q = zext nneg i16 %i.p to i64, !dbg !2572
  %i.r = sub nsw i64 0, %i.q, !dbg !2573
  %i.s = getelementptr inbounds [72 x i8], ptr %.sroa.05.1.i.i, i64 %i.r, !dbg !2576
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -56, !dbg !2577 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i unwind label %bb.e, !dbg !2587, !noalias !2521

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEECsim2LhUzKY4R_19foundations_metrics.exit.i.i.i.i.i unwind label %bb.f, !dbg !2592, !noalias !2521

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !2587, !noalias !2521
  unreachable, !dbg !2587

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEECsim2LhUzKY4R_19foundations_metrics.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u, !dbg !2587

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i: ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1, !dbg !2595 ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1, !dbg !2597
  %i.y = and i16 %i.x, %.lcssa.i.i.i, !dbg !2599
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t), !dbg !2601, !noalias !2521
  %i.z = icmp eq i64 %i.w, 0, !dbg !2542
  br i1 %i.z, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_.exit.i, label %bb.d, !dbg !2542

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_.exit.i.i, %bb.b
  %i.aa = mul i64 %i.b, 72, !dbg !2603
  %i.ab = and i64 %i.aa, -16, !dbg !2617          ; 2 uses
  %i.ac = add i64 %i.ab, 80, !dbg !2617           ; 2 uses
  %i.ad = add i64 %i.b, 17, !dbg !2618
  %i.ae = add i64 %i.ad, %i.ac, !dbg !2620        ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac, !dbg !2620
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af), !dbg !2623
  tail call void @llvm.assume(i1 %i.ag), !dbg !2623
  %i.ah = icmp eq i64 %i.ae, 0, !dbg !2627
  br i1 %i.ah, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_.exit, label %bb.g, !dbg !2627

bb.g:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_.exit.i
  %i.ai = load ptr, ptr %0, align 8, !dbg !2632, !alias.scope !2504, !nonnull !15, !noundef !15
  %i.aj = sub i64 -80, %i.ab, !dbg !2634
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj, !dbg !2637
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !dbg !2638, !noalias !2504
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_.exit, !dbg !2640

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_.exit.i, %bb.g
  ret void, !dbg !2641
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTdyEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1r_6copied6CopiedINtNtNtB1v_5slice4iter4IterdEENCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB37_9Histogram3newB2a_E0EE9from_iterB3b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEEINtB2_12SpecFromIterBU_INtNtNtNtB13_4iter8adapters3map3MapINtNtB2b_5chain5ChainINtNtB2b_6copied6CopiedINtNtNtB13_5slice4iter4IterdEEINtNtNtB2d_7sources4once4OncedEENCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB4w_13TimeHistogram3newB30_E0EE9from_iterB4A_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2O_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2S_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2h_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2l_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEENtNtNtBO_3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTlyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEENtNtNtBV_3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTlyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEEINtNtNtNtBW_5slice4sort6stable8BufGuardBN_E13with_capacityCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEEINtNtNtNtBW_5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2n_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2r_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTdyEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecTdyEEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1Q_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB1U_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE13with_capacityCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc5sliceINtNtB7_3vec3VecdEINtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable8BufGuarddE19as_uninit_slice_mutCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortdNCINvMNtCs1xwejQucwHj_5alloc5sliceSd7sort_byNvMNtBa_3f64d9total_cmpE0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCs3oUPovFnLWP_4core5sliceSTdyE15partition_pointNCNvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtBV_9Histogram18observe_and_bucket0EBZ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdyEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuarduENCNvMs9_B10_BX_3new0ECsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdyEE8grow_oneCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecTdyEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterTdINtNtNtB1L_4sync6atomic6AtomicyEEENCNvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3z_13TimeHistogram8snapshot0EE9from_iterB3D_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model6BucketEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdyEENCNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram15encode_snapshot0EE9from_iterB47_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs7_NtCs7hp7eIiX3bT_8lock_api5mutexINtB8_5MutexppENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBS_3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram20NativeHistogramStateNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #17

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!2417 = distinct !DILocation(line: 69, column: 14, scope: !1102, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 213, column: 18, scope: !1104, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 99, column: 32, scope: !1089, inlinedAt: !2413)
!2420 = !{!2404, !2408}
!2421 = !DILocation(line: 67, column: 12, scope: !1102, inlinedAt: !2418)
!2422 = !DILocation(line: 72, column: 18, scope: !1102, inlinedAt: !2418)
!2423 = !DILocation(line: 67, column: 9, scope: !1102, inlinedAt: !2418)
!2424 = !DILocation(line: 101, column: 18, scope: !1110, inlinedAt: !2413)
!2425 = !DILocation(line: 102, column: 20, scope: !1110, inlinedAt: !2413)
!2426 = !DILocation(line: 103, column: 22, scope: !1110, inlinedAt: !2413)
!2427 = !DILocation(line: 2437, column: 9, scope: !1114, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 690, column: 36, scope: !1116, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 103, column: 22, scope: !1110, inlinedAt: !2413)
!2430 = !DILocation(line: 103, column: 36, scope: !1110, inlinedAt: !2413)
!2431 = !DILocation(line: 4096, column: 17, scope: !1020, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 3123, column: 26, scope: !1022, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 104, column: 14, scope: !1024, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 706, column: 28, scope: !1026, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 848, column: 1, scope: !1029, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 105, column: 5, scope: !1089, inlinedAt: !2413)
!2437 = !DILocation(line: 102, column: 12, scope: !1024, inlinedAt: !2434)
!2438 = !DILocation(line: 109, column: 14, scope: !1024, inlinedAt: !2434)
!2439 = !DILocation(line: 100, column: 9, scope: !1110, inlinedAt: !2413)
!2440 = !DILocation(line: 104, column: 9, scope: !1110, inlinedAt: !2413)
!2441 = !DILocation(line: 4096, column: 17, scope: !1020, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 3123, column: 26, scope: !1022, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 104, column: 14, scope: !1024, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 706, column: 28, scope: !1026, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 848, column: 1, scope: !1029, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 105, column: 5, scope: !1089, inlinedAt: !2413)
!2447 = !DILocation(line: 102, column: 12, scope: !1024, inlinedAt: !2444)
!2448 = !DILocation(line: 109, column: 14, scope: !1024, inlinedAt: !2444)
!2449 = !DILocation(line: 98, column: 5, scope: !1089, inlinedAt: !2413)
!2450 = !DILocation(line: 110, column: 9, scope: !2400)
!2451 = !DILocation(line: 110, column: 40, scope: !2400)
!2452 = !DILocation(line: 111, column: 6, scope: !2400)
!2453 = distinct !DISubprogram(name: "encode_metric_value", linkageName: "_RNvXsd_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_13TimeHistogramNtNtB9_5value17EncodeMetricValue19encode_metric_value", scope: !2454, file: !381, line: 453, type: !14, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2454 = !DINamespace(name: "{impl#15}", scope: !385)
!2455 = !DILocation(line: 454, column: 25, scope: !2453)
!2456 = !{!2457}
!2457 = distinct !{!2457, !2458, !"_RNvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_13TimeHistogram8snapshot: argument 0"}
!2458 = distinct !{!2458, !"_RNvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_13TimeHistogram8snapshot"}
!2459 = !DILocation(line: 454, column: 30, scope: !2453)
!2460 = !{!2461}
!2461 = distinct !{!2461, !2458, !"_RNvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_13TimeHistogram8snapshot: argument 1"}
!2462 = !DILocation(line: 454, column: 20, scope: !1468, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 2193, column: 27, scope: !1470, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 2514, column: 15, scope: !1472, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 411, column: 27, scope: !1466, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 454, column: 30, scope: !2453)
!2467 = !DILocation(line: 2437, column: 9, scope: !1475, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 3695, column: 24, scope: !1477, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 2920, column: 70, scope: !1479, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 411, column: 42, scope: !1466, inlinedAt: !2466)
!2471 = !DILocation(line: 3998, column: 24, scope: !1482, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 2920, column: 26, scope: !1479, inlinedAt: !2470)
!2473 = !{!2457, !2461}
!2474 = !DILocation(line: 449, column: 5, scope: !1485, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 411, column: 19, scope: !1466, inlinedAt: !2466)
!2476 = !DILocation(line: 2437, column: 9, scope: !1475, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 3695, column: 24, scope: !1489, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 2920, column: 70, scope: !1491, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 412, column: 38, scope: !1493, inlinedAt: !2466)
!2480 = !DILocation(line: 3998, column: 24, scope: !1482, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 2920, column: 26, scope: !1479, inlinedAt: !2479)
!2482 = !DILocation(line: 611, column: 9, scope: !1497, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 606, column: 14, scope: !1499, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 296, column: 20, scope: !1501, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 1969, column: 18, scope: !1503, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1865, column: 76, scope: !1505, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 3855, column: 14, scope: !1507, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 413, column: 23, scope: !1509, inlinedAt: !2466)
!2489 = !DILocation(line: 1865, column: 86, scope: !1505, inlinedAt: !2487)
!2490 = !DILocation(line: 970, column: 18, scope: !1513, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 100, column: 78, scope: !1515, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 1040, column: 9, scope: !1519, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 416, column: 14, scope: !1510, inlinedAt: !2466)
!2494 = !DILocation(line: 33, column: 9, scope: !1522, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 3999, column: 9, scope: !1527, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 2086, column: 9, scope: !1530, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 418, column: 14, scope: !1510, inlinedAt: !2466)
!2498 = !DILocation(line: 420, column: 9, scope: !1533, inlinedAt: !2466)
!2499 = !DILocation(line: 454, column: 9, scope: !2453)
!2500 = !DILocation(line: 454, column: 40, scope: !2453)
!2501 = !DILocation(line: 455, column: 6, scope: !2453)
!2502 = distinct !DISubprogram(name: "drop<(core::any::TypeId, foundations_metrics::info::InfoEntry), alloc::alloc::Global>", linkageName: "_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEENtNtNtBT_3ops4drop4Drop4dropB1r_", scope: !2503, file: !1147, line: 3486, type: !14, scopeLine: 3486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2503 = !DINamespace(name: "{impl#18}", scope: !1149)
!2504 = !{!2505}
!2505 = distinct !{!2505, !2506, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_: argument 0"}
!2506 = distinct !{!2506, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_"}
!2507 = !DILocation(line: 3496, column: 18, scope: !2502)
!2508 = !DILocation(line: 2656, column: 9, scope: !2509, inlinedAt: !2510)
!2509 = distinct !DISubprogram(name: "is_empty_singleton", linkageName: "_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner18is_empty_singleton", scope: !1148, file: !1147, line: 2655, type: !14, scopeLine: 2655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2510 = distinct !DILocation(line: 2271, column: 18, scope: !2511, inlinedAt: !2512)
!2511 = distinct !DISubprogram(name: "drop_inner_table<(core::any::TypeId, foundations_metrics::info::InfoEntry), alloc::alloc::Global>", linkageName: "_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtCs1xwejQucwHj_5alloc5alloc6GlobalEB1P_", scope: !1148, file: !1147, line: 2270, type: !19, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2512 = distinct !DILocation(line: 3496, column: 18, scope: !2502)
!2513 = !DILocation(line: 2271, column: 13, scope: !2511, inlinedAt: !2512)
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_: argument 0"}
!2516 = distinct !{!2516, !"_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_"}
!2517 = !DILocation(line: 2274, column: 22, scope: !2511, inlinedAt: !2512)
!2518 = !DILocation(line: 2212, column: 29, scope: !2519, inlinedAt: !2520)
!2519 = distinct !DISubprogram(name: "drop_elements<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1M_", scope: !1148, file: !1147, line: 2209, type: !14, scopeLine: 2209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2520 = distinct !DILocation(line: 2274, column: 22, scope: !2511, inlinedAt: !2512)
!2521 = !{!2515, !2505}
!2522 = !DILocation(line: 2439, column: 9, scope: !2523, inlinedAt: !2524)
!2523 = distinct !DISubprogram(name: "data_end<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner8data_endTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1G_", scope: !1148, file: !1147, line: 2438, type: !14, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2524 = distinct !DILocation(line: 2167, column: 53, scope: !2525, inlinedAt: !2526)
!2525 = distinct !DISubprogram(name: "iter<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner4iterTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB1C_", scope: !1148, file: !1147, line: 2138, type: !14, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2526 = distinct !DILocation(line: 2217, column: 34, scope: !2519, inlinedAt: !2520)
!2527 = !DILocation(line: 57, column: 24, scope: !1167, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 3586, column: 17, scope: !1174, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 2170, column: 23, scope: !2530, inlinedAt: !2526)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !1147, line: 2167, column: 13)
!2531 = !{!2532, !2515, !2505}
!2532 = distinct !{!2532, !2533, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE3newB1w_: argument 0"}
!2533 = distinct !{!2533, !"_RNvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE3newB1w_"}
!2534 = !DILocation(line: 1570, column: 9, scope: !1179, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 108, column: 21, scope: !1187, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 115, column: 23, scope: !1190, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 3586, column: 50, scope: !1174, inlinedAt: !2529)
!2538 = !DILocation(line: 871, column: 18, scope: !1161, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 3587, column: 22, scope: !1174, inlinedAt: !2529)
!2540 = !DILocation(line: 3591, column: 9, scope: !2541, inlinedAt: !2529)
!2541 = distinct !DILexicalBlock(scope: !1174, file: !1147, line: 3584, column: 9)
!2542 = !DILocation(line: 3853, column: 12, scope: !2543, inlinedAt: !2544)
!2543 = distinct !DISubprogram(name: "next<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RNvXsr_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_7RawIterTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEENtNtNtNtBS_4iter6traits8iterator8Iterator4nextB1q_", scope: !2319, file: !1147, line: 3850, type: !14, scopeLine: 3850, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2544 = distinct !DILocation(line: 2217, column: 29, scope: !2545, inlinedAt: !2520)
!2545 = !DILexicalBlockFile(scope: !2546, file: !1147, discriminator: 2)
!2546 = distinct !DILexicalBlock(scope: !2519, file: !1147, line: 2217, column: 17)
!2547 = !DILocation(line: 40, column: 32, scope: !2335, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 103, column: 26, scope: !2326, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 3649, column: 53, scope: !2331, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 3859, column: 23, scope: !2543, inlinedAt: !2544)
!2551 = !DILocation(line: 40, column: 16, scope: !2335, inlinedAt: !2548)
!2552 = !DILocation(line: 3663, column: 58, scope: !2332, inlinedAt: !2550)
!2553 = !DILocation(line: 57, column: 24, scope: !2344, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 3663, column: 38, scope: !2332, inlinedAt: !2550)
!2555 = !{!2556, !2515, !2505}
!2556 = distinct !{!2556, !2557, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_: argument 0"}
!2557 = distinct !{!2557, !"_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_"}
!2558 = !DILocation(line: 1570, column: 9, scope: !1179, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 108, column: 21, scope: !2348, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 115, column: 23, scope: !2351, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 3664, column: 22, scope: !2332, inlinedAt: !2550)
!2562 = !DILocation(line: 1054, column: 22, scope: !2354, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 466, column: 40, scope: !2356, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 3666, column: 39, scope: !2332, inlinedAt: !2550)
!2565 = !DILocation(line: 871, column: 18, scope: !2361, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 3667, column: 49, scope: !2332, inlinedAt: !2550)
!2567 = !DILocation(line: 103, column: 19, scope: !2326, inlinedAt: !2549)
!2568 = !DILocation(line: 2217, column: 29, scope: !2519, inlinedAt: !2520)
!2569 = !DILocation(line: 628, column: 21, scope: !2371, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 70, column: 21, scope: !2373, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 41, column: 18, scope: !2335, inlinedAt: !2548)
!2572 = !DILocation(line: 70, column: 13, scope: !2373, inlinedAt: !2571)
!2573 = !DILocation(line: 1054, column: 47, scope: !2354, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 466, column: 40, scope: !2357, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 3650, column: 48, scope: !2331, inlinedAt: !2550)
!2576 = !DILocation(line: 1054, column: 22, scope: !2354, inlinedAt: !2574)
!2577 = !DILocation(line: 848, column: 1, scope: !2578, inlinedAt: !2579)
!2578 = distinct !DISubprogram(name: "drop_glue<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEBY_", scope: !33, file: !78, line: 848, type: !14, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2579 = distinct !DILocation(line: 843, column: 14, scope: !2580, inlinedAt: !2581)
!2580 = distinct !DISubprogram(name: "drop_in_place<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEB13_", scope: !33, file: !78, line: 831, type: !14, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2581 = distinct !DILocation(line: 1385, column: 18, scope: !2582, inlinedAt: !2583)
!2582 = distinct !DISubprogram(name: "drop_in_place<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOTNtNtB6_3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryE13drop_in_placeBZ_", scope: !557, file: !556, line: 1380, type: !14, scopeLine: 1380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2583 = distinct !DILocation(line: 487, column: 27, scope: !2584, inlinedAt: !2585)
!2584 = distinct !DISubprogram(name: "drop<(core::any::TypeId, foundations_metrics::info::InfoEntry)>", linkageName: "_RNvMs4_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_6BucketTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE4dropB1p_", scope: !2358, file: !1147, line: 485, type: !14, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2585 = distinct !DILocation(line: 2220, column: 26, scope: !2586, inlinedAt: !2520)
!2586 = distinct !DILexicalBlock(scope: !2546, file: !1147, line: 2217, column: 17)
!2587 = !DILocation(line: 848, column: 1, scope: !2588, inlinedAt: !2589)
!2588 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<foundations_metrics_registry::proto::model::LabelPair, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEECsim2LhUzKY4R_19foundations_metrics", scope: !33, file: !78, line: 848, type: !14, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2589 = distinct !DILocation(line: 848, column: 1, scope: !2590, inlinedAt: !2591)
!2590 = distinct !DISubprogram(name: "drop_glue<foundations_metrics::info::InfoEntry>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEBF_", scope: !33, file: !78, line: 848, type: !14, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2591 = distinct !DILocation(line: 848, column: 1, scope: !2578, inlinedAt: !2579)
!2592 = !DILocation(line: 848, column: 1, scope: !2593, inlinedAt: !2594)
!2593 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<foundations_metrics_registry::proto::model::LabelPair, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEECsim2LhUzKY4R_19foundations_metrics", scope: !33, file: !78, line: 848, type: !14, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2594 = distinct !DILocation(line: 848, column: 1, scope: !2588, inlinedAt: !2589)
!2595 = !DILocation(line: 3863, column: 9, scope: !2596, inlinedAt: !2544)
!2596 = distinct !DILexicalBlock(scope: !2543, file: !1147, line: 3857, column: 9)
!2597 = !DILocation(line: 486, column: 18, scope: !2366, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 628, column: 51, scope: !2371, inlinedAt: !2570)
!2599 = !DILocation(line: 28, column: 17, scope: !2378, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 104, column: 25, scope: !2380, inlinedAt: !2549)
!2601 = !DILocation(line: 848, column: 1, scope: !2593, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 848, column: 1, scope: !2588, inlinedAt: !2589)
!2603 = !DILocation(line: 3242, column: 26, scope: !2604, inlinedAt: !2606)
!2604 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj15overflowing_mul", scope: !2605, file: !61, line: 3241, type: !14, scopeLine: 3241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2605 = !DINamespace(name: "{impl#11}", scope: !63)
!2606 = distinct !DILocation(line: 1360, column: 31, scope: !2607, inlinedAt: !2608)
!2607 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_mul", scope: !2605, file: !61, line: 1359, type: !14, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2608 = distinct !DILocation(line: 222, column: 18, scope: !2609, inlinedAt: !2612)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !1147, line: 219, column: 9)
!2610 = distinct !DISubprogram(name: "calculate_layout_for", linkageName: "_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for", scope: !2611, file: !1147, line: 216, type: !14, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2611 = !DINamespace(name: "TableLayout", scope: !1149)
!2612 = distinct !DILocation(line: 3145, column: 39, scope: !2613, inlinedAt: !2614)
!2613 = distinct !DISubprogram(name: "allocation_info", linkageName: "_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15allocation_info", scope: !1148, file: !1147, line: 3138, type: !14, scopeLine: 3138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2614 = distinct !DILocation(line: 3113, column: 38, scope: !2615, inlinedAt: !2616)
!2615 = distinct !DISubprogram(name: "free_buckets<alloc::alloc::Global>", linkageName: "_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECsim2LhUzKY4R_19foundations_metrics", scope: !1148, file: !1147, line: 3106, type: !14, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2616 = distinct !DILocation(line: 2280, column: 22, scope: !2511, inlinedAt: !2512)
!2617 = !DILocation(line: 222, column: 13, scope: !2609, inlinedAt: !2612)
!2618 = !DILocation(line: 223, column: 43, scope: !2619, inlinedAt: !2612)
!2619 = distinct !DILexicalBlock(scope: !2609, file: !1147, line: 221, column: 9)
!2620 = !DILocation(line: 968, column: 37, scope: !2621, inlinedAt: !2622)
!2621 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_add", scope: !2605, file: !61, line: 960, type: !14, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2622 = distinct !DILocation(line: 223, column: 31, scope: !2619, inlinedAt: !2612)
!2623 = !DILocation(line: 483, column: 8, scope: !2624, inlinedAt: !2625)
!2624 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCs3oUPovFnLWP_4core10intrinsics8unlikely", scope: !2151, file: !29, line: 482, type: !14, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2625 = distinct !DILocation(line: 968, column: 16, scope: !2626, inlinedAt: !2622)
!2626 = !DILexicalBlockFile(scope: !2621, file: !61, discriminator: 2)
!2627 = !DILocation(line: 312, column: 12, scope: !1586, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 436, column: 9, scope: !1589, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 554, column: 23, scope: !1591, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 3114, column: 19, scope: !2631, inlinedAt: !2616)
!2631 = distinct !DILexicalBlock(scope: !2615, file: !1147, line: 3113, column: 13)
!2632 = !DILocation(line: 3150, column: 45, scope: !2633, inlinedAt: !2614)
!2633 = distinct !DILexicalBlock(scope: !2613, file: !1147, line: 3144, column: 9)
!2634 = !DILocation(line: 1054, column: 47, scope: !2635, inlinedAt: !2636)
!2635 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrOh3subCsim2LhUzKY4R_19foundations_metrics", scope: !557, file: !556, line: 1015, type: !14, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, templateParams: !15)
!2636 = distinct !DILocation(line: 3150, column: 64, scope: !2633, inlinedAt: !2614)
!2637 = !DILocation(line: 1054, column: 22, scope: !2635, inlinedAt: !2636)
!2638 = !DILocation(line: 175, column: 14, scope: !1582, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 321, column: 22, scope: !1586, inlinedAt: !2628)
!2640 = !DILocation(line: 312, column: 9, scope: !1586, inlinedAt: !2628)
!2641 = !DILocation(line: 3498, column: 6, scope: !2502)
end_hunk_1
