Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.09?download=true
inline.NumInlined: 3128
inline.NumDeleted: 1644
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration15truncate_weeklyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_usEBa_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2388
  br label %bb.r, !dbg !2389

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !2317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2388
  %i.au = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_us(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e), !dbg !2391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2392
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2393
  store i64 %i.au, ptr %i.av, align 8, !dbg !2393
  store i64 18, ptr %0, align 8, !dbg !2393
  br label %bb.r, !dbg !2394

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.p
  ret void, !dbg !2395
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration16truncate_monthlyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_msEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2396 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 2 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %.not = icmp eq ptr %3, null, !dbg !2531        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !2532

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr %3, align 2, !dbg !2533, !range !894, !noundef !768
  %.not72 = icmp eq i16 %i.m, 592, !dbg !2534
  br i1 %.not72, label %bb.c, label %bb.d, !dbg !2493

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2535, !noalias !2496
  %i.n = icmp eq i64 %2, -9223372036854775808, !dbg !2536
  br i1 %i.n, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i, !dbg !2536

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i: ; preds = %bb.c
  %i.o = sdiv i64 %2, 1000, !dbg !2537
  %i.p = srem i64 %2, 1000, !dbg !2538            ; 3 uses
  %.lobit.i.i.i.i = ashr i64 %i.p, 63, !dbg !2538
  %.sroa.0.0.i.i.i.i = add nsw i64 %.lobit.i.i.i.i, %i.o, !dbg !2538
  %i.q = icmp slt i64 %i.p, 0, !dbg !2539
  %i.r = select i1 %i.q, i64 1000, i64 0, !dbg !2539
  %spec.select.i.i.i.i = add nsw i64 %i.r, %i.p, !dbg !2539
  %i.s = trunc nuw nsw i64 %spec.select.i.i.i.i to i32, !dbg !2540
  %i.t = mul nuw nsw i32 %i.s, 1000000, !dbg !2540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2541, !noalias !2497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2542, !noalias !2497
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i64 noundef %.sroa.0.0.i.i.i.i, i32 noundef %i.t), !dbg !2543, !noalias !2496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2544, !noalias !2497
  %.pr.i.i = load i32, ptr %i.f, align 4, !dbg !2545, !noalias !2496
  %.not.i.i = icmp eq i32 %.pr.i.i, 0, !dbg !2545
  br i1 %.not.i.i, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, !dbg !2546, !prof !913

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i, %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30, !dbg !2547, !noalias !2496
  unreachable, !dbg !2547

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !dbg !2548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2549, !noalias !2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !2550
  br label %bb.e, !dbg !2551

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2552, !noalias !2498
  %i.u = icmp eq i64 %2, -9223372036854775808, !dbg !2553
  br i1 %i.u, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i84, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i78, !dbg !2553

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i78: ; preds = %bb.d
  %i.v = sdiv i64 %2, 1000, !dbg !2554
  %i.w = srem i64 %2, 1000, !dbg !2555            ; 3 uses
  %.lobit.i.i.i.i79 = ashr i64 %i.w, 63, !dbg !2555
  %.sroa.0.0.i.i.i.i80 = add nsw i64 %.lobit.i.i.i.i79, %i.v, !dbg !2555
  %i.x = icmp slt i64 %i.w, 0, !dbg !2556
  %i.y = select i1 %i.x, i64 1000, i64 0, !dbg !2556
  %spec.select.i.i.i.i81 = add nsw i64 %i.y, %i.w, !dbg !2556
  %i.z = trunc nuw nsw i64 %spec.select.i.i.i.i81 to i32, !dbg !2557
  %i.aa = mul nuw nsw i32 %i.z, 1000000, !dbg !2557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2558, !noalias !2499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2559, !noalias !2499
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i64 noundef %.sroa.0.0.i.i.i.i80, i32 noundef %i.aa), !dbg !2560, !noalias !2498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2561, !noalias !2499
  %.pr.i.i82 = load i32, ptr %i.d, align 4, !dbg !2562, !noalias !2498
  %.not.i.i83 = icmp eq i32 %.pr.i.i82, 0, !dbg !2562
  br i1 %.not.i.i83, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i84, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit85, !dbg !2563, !prof !913

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i84: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i78, %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30, !dbg !2564, !noalias !2498
  unreachable, !dbg !2564

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit85: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !dbg !2565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2566, !noalias !2498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !2567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !2567
  call void @_RNvNtCs2Aa799EbAFJ_11polars_time5utils19unlocalize_datetime(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !2568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2569
  br label %bb.e, !dbg !2570

bb.e:                                             ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit85
  %.sink177 = phi ptr [ %i.j, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit ], [ %i.k, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit85 ]
  %i.ab = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_ms(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %.sink177), !dbg !2571 ; 3 uses
  %i.ac = icmp eq i64 %4, 0, !dbg !2572
  br i1 %i.ac, label %bb.g, label %bb.f, !dbg !2572

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %4, -1, !dbg !2572
  %i.ae = icmp eq i64 %i.ab, -9223372036854775808, !dbg !2572
  %i.af = and i1 %i.ad, %i.ae, !dbg !2572
  br i1 %i.af, label %bb.i, label %bb.h, !dbg !2572

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !2572
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = srem i64 %i.ab, %4, !dbg !2572          ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0, !dbg !2573
  %i.ai = select i1 %i.ah, i64 %4, i64 0, !dbg !2573
  %i.aj = add i64 %i.ag, %i.ai, !dbg !2574
  %i.ak = sub i64 %i.ab, %i.aj, !dbg !2574        ; 2 uses
  %i.al = load i32, ptr %i.k, align 4, !dbg !2575, !range !812, !noundef !768 ; 3 uses
  %i.am = ashr i32 %i.al, 13, !dbg !2576          ; 3 uses
  %i.an = sext i32 %i.am to i64, !dbg !2577       ; 4 uses
  %i.ao = lshr i32 %i.al, 3, !dbg !2578           ; 2 uses
  %i.ap = and i32 %i.ao, 1023, !dbg !2578         ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64, !dbg !2579  ; 2 uses
  %i.ar = icmp samesign ult i32 %i.ap, 733, !dbg !2580
  br i1 %i.ar, label %bb.j, label %bb.k, !dbg !2580

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !2572
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @7, i64 %i.aq, !dbg !2580
  %i.at = load i8, ptr %i.as, align 1, !dbg !2580, !noundef !768
  %i.au = zext i8 %i.at to i32, !dbg !2580        ; 2 uses
  %i.av = add nuw nsw i32 %i.ap, %i.au, !dbg !2581 ; 3 uses
  %i.aw = lshr i32 %i.av, 6, !dbg !2582
  %i.ax = zext nneg i32 %i.aw to i64, !dbg !2583  ; 2 uses
  %i.ay = load i64, ptr %1, align 8, !dbg !2584, !noundef !768 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0, !dbg !2585
  br i1 %i.az, label %bb.l, label %bb.m, !dbg !2585

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27, !dbg !2580
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27, !dbg !2585
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ba = mul nsw i64 %i.an, 12, !dbg !2586
  %i.bb = add nsw i64 %i.ba, -23641, !dbg !2586
  %i.bc = add nsw i64 %i.bb, %i.ax, !dbg !2586
  %i.bd = srem i64 %i.bc, %i.ay, !dbg !2585       ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0, !dbg !2587
  %i.bf = select i1 %i.be, i64 %i.ay, i64 0, !dbg !2587
  %spec.select75 = add i64 %i.bf, %i.bd, !dbg !2587 ; 4 uses
  %i.bg = and i32 %i.al, 24576, !dbg !2588
  %i.bh = icmp eq i32 %i.bg, 0, !dbg !2588
  br i1 %i.bh, label %bb.n, label %bb.p, !dbg !2588

bb.n:                                             ; preds = %bb.m
  %i.bi = srem i32 %i.am, 100, !dbg !2589
  %i.bj = icmp eq i32 %i.bi, 0, !dbg !2589
  br i1 %i.bj, label %bb.o, label %bb.p, !dbg !2589

bb.o:                                             ; preds = %bb.n
  %i.bk = srem i32 %i.am, 400, !dbg !2590
  %i.bl = icmp eq i32 %i.bk, 0, !dbg !2590
  %i.bm = zext i1 %i.bl to i8, !dbg !2590
  br label %bb.p, !dbg !2591

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.n
  %.sroa.041.0 = phi i8 [ %i.bm, %bb.o ], [ 0, %bb.m ], [ 1, %bb.n ], !dbg !2592 ; 3 uses
  %i.bn = add nuw nsw i32 %i.ao, %i.au, !dbg !2593
  %i.bo = lshr i32 %i.bn, 1, !dbg !2594
  %i.bp = and i32 %i.bo, 31, !dbg !2594
  %i.bq = add nsw i32 %i.bp, -1, !dbg !2595
  %i.br = zext i32 %i.bq to i64, !dbg !2595       ; 3 uses
  %i.bs = icmp sgt i64 %spec.select75, 12, !dbg !2596
  br i1 %i.bs, label %.lr.ph, label %.preheader, !dbg !2596

.lr.ph:                                           ; preds = %bb.p
  %i.bt = icmp samesign ugt i32 %i.av, 191        ; 2 uses
  %spec.select76 = select i1 %i.bt, i64 366, i64 365 ; 2 uses
  %i.bu = icmp samesign ult i32 %i.av, 192        ; 3 uses
  %.mux = select i1 %i.bu, i64 365, i64 366       ; 2 uses
  %i.bv = select i1 %i.bu, i64 366, i64 365       ; 2 uses
  br i1 %i.bt, label %.lr.ph.split.split.us, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.v
  %.sroa.08.0106.us = phi i64 [ %i.bw, %bb.v ], [ %i.an, %.lr.ph ]
  %.sroa.022.1105.us = phi i64 [ %i.ch, %bb.v ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.0104.us = phi i64 [ %i.cg, %bb.v ], [ %i.br, %.lr.ph ]
  %.sroa.041.1103.us = phi i8 [ %.sroa.032.3.us, %bb.v ], [ %.sroa.041.0, %.lr.ph ] ; 2 uses
  %i.bw = add nsw i64 %.sroa.08.0106.us, -1, !dbg !2597 ; 3 uses
  %i.bx = trunc i64 %i.bw to i32, !dbg !2597      ; 3 uses
  %i.by = and i32 %i.bx, 3, !dbg !2598
  %i.bz = icmp eq i32 %i.by, 0, !dbg !2598
  br i1 %i.bz, label %bb.q, label %5, !dbg !2598

5:                                                ; preds = %.lr.ph.split.us
  %6 = trunc nuw i8 %.sroa.041.1103.us to i1, !dbg !2599
  %spec.select = select i1 %6, i64 %spec.select76, i64 365, !dbg !2599
  br label %bb.v, !dbg !2599

bb.q:                                             ; preds = %.lr.ph.split.us
  %i.ca = srem i32 %i.bx, 100, !dbg !2600
  %i.cb = icmp eq i32 %i.ca, 0, !dbg !2600
  br i1 %i.cb, label %bb.r, label %bb.u, !dbg !2600

bb.r:                                             ; preds = %bb.q
  %i.cc = srem i32 %i.bx, 400, !dbg !2601
  %i.cd = icmp eq i32 %i.cc, 0, !dbg !2601        ; 3 uses
  %i.ce = trunc nuw i8 %.sroa.041.1103.us to i1, !dbg !2599
  br i1 %i.ce, label %bb.t, label %bb.s, !dbg !2599

bb.s:                                             ; preds = %bb.r
  br i1 %i.cd, label %bb.u, label %bb.v, !dbg !2602

bb.t:                                             ; preds = %bb.r
  %i.cf = zext i1 %i.cd to i8, !dbg !2601         ; 2 uses
  %brmerge.not.us = and i1 %i.bu, %i.cd, !dbg !2603
  br i1 %brmerge.not.us, label %bb.u, label %bb.v, !dbg !2603

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s
  %.sroa.032.2.us = phi i8 [ 1, %bb.s ], [ %i.cf, %bb.t ], [ 1, %bb.q ], !dbg !2604
  br label %bb.v, !dbg !2605

bb.v:                                             ; preds = %5, %bb.u, %bb.t, %bb.s
  %.sroa.034.0.us = phi i64 [ %.mux, %bb.t ], [ %i.bv, %bb.u ], [ %spec.select, %5 ], [ 365, %bb.s ], !dbg !2606
  %.sroa.032.3.us = phi i8 [ %i.cf, %bb.t ], [ %.sroa.032.2.us, %bb.u ], [ 0, %5 ], [ 0, %bb.s ], !dbg !2601 ; 2 uses
  %i.cg = add i64 %.sroa.034.0.us, %.sroa.028.0104.us, !dbg !2607 ; 2 uses
  %i.ch = add nsw i64 %.sroa.022.1105.us, -12, !dbg !2608 ; 2 uses
  %i.ci = icmp sgt i64 %.sroa.022.1105.us, 24, !dbg !2596
  br i1 %i.ci, label %.lr.ph.split.us, label %.preheader, !dbg !2596

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.ad
  %.sroa.08.0106.us113 = phi i64 [ %i.cj, %bb.ad ], [ %i.an, %.lr.ph ]
  %.sroa.022.1105.us114 = phi i64 [ %i.cw, %bb.ad ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.0104.us115 = phi i64 [ %i.cv, %bb.ad ], [ %i.br, %.lr.ph ]
  %.sroa.041.1103.us116 = phi i8 [ %.sroa.032.3.us120, %bb.ad ], [ %.sroa.041.0, %.lr.ph ] ; 3 uses
  %i.cj = add nsw i64 %.sroa.08.0106.us113, -1, !dbg !2597 ; 3 uses
  %i.ck = trunc i64 %i.cj to i32, !dbg !2597      ; 3 uses
  %i.cl = and i32 %i.ck, 3, !dbg !2598
  %i.cm = icmp eq i32 %i.cl, 0, !dbg !2598
  br i1 %i.cm, label %bb.x, label %bb.w, !dbg !2598

bb.w:                                             ; preds = %.lr.ph.split.split.us
  %i.cn = trunc nuw i8 %.sroa.041.1103.us116 to i1, !dbg !2599
  %spec.select137 = select i1 %i.cn, i64 %spec.select76, i64 365, !dbg !2599
  br label %bb.ad, !dbg !2599

bb.x:                                             ; preds = %.lr.ph.split.split.us
  %i.co = srem i32 %i.ck, 100, !dbg !2600
  %i.cp = icmp eq i32 %i.co, 0, !dbg !2600
  br i1 %i.cp, label %bb.z, label %bb.y, !dbg !2600

bb.y:                                             ; preds = %bb.x
  %i.cq = trunc nuw i8 %.sroa.041.1103.us116 to i1, !dbg !2599
  br i1 %i.cq, label %bb.ad, label %bb.ac, !dbg !2599

bb.z:                                             ; preds = %bb.x
  %i.cr = srem i32 %i.ck, 400, !dbg !2601
  %i.cs = icmp eq i32 %i.cr, 0, !dbg !2601        ; 2 uses
  %i.ct = trunc nuw i8 %.sroa.041.1103.us116 to i1, !dbg !2599
  br i1 %i.ct, label %bb.ab, label %bb.aa, !dbg !2599

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cs, label %bb.ac, label %bb.ad, !dbg !2602

bb.ab:                                            ; preds = %bb.z
  %i.cu = zext i1 %i.cs to i8, !dbg !2601
  br label %bb.ad, !dbg !2603

bb.ac:                                            ; preds = %bb.aa, %bb.y
  br label %bb.ad, !dbg !2605

bb.ad:                                            ; preds = %bb.w, %bb.ab, %bb.ac, %bb.aa, %bb.y
  %.sroa.034.0.us119 = phi i64 [ %.mux, %bb.ab ], [ %i.bv, %bb.ac ], [ 365, %bb.aa ], [ 366, %bb.y ], [ %spec.select137, %bb.w ], !dbg !2606
  %.sroa.032.3.us120 = phi i8 [ %i.cu, %bb.ab ], [ 1, %bb.ac ], [ 0, %bb.aa ], [ 1, %bb.y ], [ 0, %bb.w ], !dbg !2601 ; 2 uses
  %i.cv = add i64 %.sroa.034.0.us119, %.sroa.028.0104.us115, !dbg !2607 ; 2 uses
  %i.cw = add nsw i64 %.sroa.022.1105.us114, -12, !dbg !2608 ; 2 uses
  %i.cx = icmp sgt i64 %.sroa.022.1105.us114, 24, !dbg !2596
  br i1 %i.cx, label %.lr.ph.split.split.us, label %.preheader, !dbg !2596

.preheader:                                       ; preds = %bb.v, %bb.ad, %bb.p
  %.sroa.041.1.lcssa = phi i8 [ %.sroa.041.0, %bb.p ], [ %.sroa.032.3.us120, %bb.ad ], [ %.sroa.032.3.us, %bb.v ], !dbg !2609
  %.sroa.028.0.lcssa = phi i64 [ %i.br, %bb.p ], [ %i.cv, %bb.ad ], [ %i.cg, %bb.v ], !dbg !2610 ; 2 uses
  %.sroa.022.1.lcssa = phi i64 [ %spec.select75, %bb.p ], [ %i.cw, %bb.ad ], [ %i.ch, %bb.v ], !dbg !2609 ; 2 uses
  %.sroa.08.0.lcssa = phi i64 [ %i.an, %bb.p ], [ %i.cj, %bb.ad ], [ %i.bw, %bb.v ], !dbg !2611
  %i.cy = icmp sgt i64 %.sroa.022.1.lcssa, 0, !dbg !2612
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge, !dbg !2612

._crit_edge:                                      ; preds = %.thread, %.preheader
  %.sroa.028.1.lcssa = phi i64 [ %.sroa.028.0.lcssa, %.preheader ], [ %i.eg, %.thread ], !dbg !2610 ; 2 uses
  br i1 %.not, label %bb.af, label %bb.ae, !dbg !2613

.lr.ph135:                                        ; preds = %.preheader, %.thread
  %.sroa.08.1134 = phi i64 [ %.sroa.08.299, %.thread ], [ %.sroa.08.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.014.0133 = phi i64 [ %.sroa.014.198, %.thread ], [ %i.ax, %.preheader ] ; 2 uses
  %.sroa.022.2132 = phi i64 [ %i.eh, %.thread ], [ %.sroa.022.1.lcssa, %.preheader ] ; 2 uses
  %.sroa.028.1131 = phi i64 [ %i.eg, %.thread ], [ %.sroa.028.0.lcssa, %.preheader ]
  %.sroa.041.2130 = phi i8 [ %.sroa.041.497, %.thread ], [ %.sroa.041.1.lcssa, %.preheader ]
  %i.cz = add nsw i64 %.sroa.014.0133, -1, !dbg !2614 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0, !dbg !2615
  br i1 %i.da, label %bb.al, label %bb.ao, !dbg !2615

bb.ae:                                            ; preds = %._crit_edge
  %i.db = load i16, ptr %3, align 2, !dbg !2616, !range !894, !noundef !768
  %.not73 = icmp eq i16 %i.db, 592, !dbg !2617
  br i1 %.not73, label %bb.af, label %bb.ag, !dbg !2522

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.dc = mul i64 %.sroa.028.1.lcssa, %4, !dbg !2618
  %i.dd = sub i64 %i.ak, %i.dc, !dbg !2619
  br label %bb.aj, !dbg !2620

bb.ag:                                            ; preds = %bb.ae
  %i.de = mul i64 %.sroa.028.1.lcssa, %4, !dbg !2621
  %i.df = sub i64 %i.ak, %i.de, !dbg !2622        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2623, !noalias !2525
  %i.dg = icmp eq i64 %i.df, -9223372036854775808, !dbg !2624
  br i1 %i.dg, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i92, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i86, !dbg !2624

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i86: ; preds = %bb.ag
  %i.dh = sdiv i64 %i.df, 1000, !dbg !2625
  %i.di = srem i64 %i.df, 1000, !dbg !2626        ; 3 uses
  %.lobit.i.i.i.i87 = ashr i64 %i.di, 63, !dbg !2626
  %.sroa.0.0.i.i.i.i88 = add nsw i64 %.lobit.i.i.i.i87, %i.dh, !dbg !2626
  %i.dj = icmp slt i64 %i.di, 0, !dbg !2627
  %i.dk = select i1 %i.dj, i64 1000, i64 0, !dbg !2627
  %spec.select.i.i.i.i89 = add nsw i64 %i.dk, %i.di, !dbg !2627
  %i.dl = trunc nuw nsw i64 %spec.select.i.i.i.i89 to i32, !dbg !2628
  %i.dm = mul nuw nsw i32 %i.dl, 1000000, !dbg !2628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2629, !noalias !2526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2630, !noalias !2526
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %.sroa.0.0.i.i.i.i88, i32 noundef %i.dm), !dbg !2631, !noalias !2525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2632, !noalias !2526
  %.pr.i.i90 = load i32, ptr %i.b, align 4, !dbg !2633, !noalias !2525
  %.not.i.i91 = icmp eq i32 %.pr.i.i90, 0, !dbg !2633
  br i1 %.not.i.i91, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i92, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit93, !dbg !2634, !prof !913

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i92: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i86, %bb.ag
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30, !dbg !2635, !noalias !2525
  unreachable, !dbg !2635

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit93: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !dbg !2636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2637, !noalias !2525
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !2527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2527
  call void @_RNvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB5_8Duration24localize_result_rfc_5545(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !2638
  %i.dn = load i64, ptr %i.h, align 8, !dbg !2639, !range !844, !noundef !768 ; 2 uses
  %.not74 = icmp eq i64 %i.dn, 18, !dbg !2639
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(12) %i.do, i64 12, i1 false), !dbg !2640
  br i1 %.not74, label %bb.ai, label %bb.ah, !dbg !2641

bb.ah:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit93
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20, !dbg !2642
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !2643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.357.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.654.0..sroa_idx, i64 52, i1 false), !dbg !2642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2644
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !2644
  store i64 %i.dn, ptr %0, align 8, !dbg !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2645
  br label %bb.ak, !dbg !2646

bb.ai:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !2527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2645
  %i.dp = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_ms(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g), !dbg !2648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2649
  br label %bb.aj, !dbg !2650

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.sink = phi i64 [ %i.dp, %bb.ai ], [ %i.dd, %bb.af ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2651
  store i64 %.sink, ptr %i.dq, align 8, !dbg !2651
  store i64 18, ptr %0, align 8, !dbg !2651
  br label %bb.ak, !dbg !2646

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  ret void, !dbg !2652

bb.al:                                            ; preds = %.lr.ph135
  %i.dr = add i64 %.sroa.08.1134, -1, !dbg !2653  ; 4 uses
  %i.ds = trunc i64 %i.dr to i32, !dbg !2654      ; 3 uses
  %i.dt = and i32 %i.ds, 3, !dbg !2655
  %i.du = icmp eq i32 %i.dt, 0, !dbg !2655
  br i1 %i.du, label %bb.am, label %.thread, !dbg !2655

bb.am:                                            ; preds = %bb.al
  %i.dv = srem i32 %i.ds, 100, !dbg !2656
  %i.dw = icmp eq i32 %i.dv, 0, !dbg !2656
  br i1 %i.dw, label %bb.an, label %.thread, !dbg !2656

bb.an:                                            ; preds = %bb.am
  %i.dx = srem i32 %i.ds, 400, !dbg !2657
  %i.dy = icmp eq i32 %i.dx, 0, !dbg !2657
  %i.dz = zext i1 %i.dy to i8, !dbg !2657
  br label %.thread, !dbg !2658

bb.ao:                                            ; preds = %.lr.ph135
  %i.ea = add nsw i64 %.sroa.014.0133, -2, !dbg !2659 ; 2 uses
  %i.eb = icmp ult i64 %i.cz, 13, !dbg !2660
  br i1 %i.eb, label %.thread, label %bb.ap, !dbg !2660

.thread:                                          ; preds = %bb.an, %bb.al, %bb.am, %bb.ao
  %i.ec = phi i64 [ %i.ea, %bb.ao ], [ 11, %bb.am ], [ 11, %bb.al ], [ 11, %bb.an ]
  %.sroa.08.299 = phi i64 [ %.sroa.08.1134, %bb.ao ], [ %i.dr, %bb.am ], [ %i.dr, %bb.al ], [ %i.dr, %bb.an ]
  %.sroa.014.198 = phi i64 [ %i.cz, %bb.ao ], [ 12, %bb.am ], [ 12, %bb.al ], [ 12, %bb.an ]
  %.sroa.041.497 = phi i8 [ %.sroa.041.2130, %bb.ao ], [ 1, %bb.am ], [ 0, %bb.al ], [ %i.dz, %bb.an ] ; 2 uses
  %i.ed = trunc nuw i8 %.sroa.041.497 to i1, !dbg !2661
  %.sroa.sel = select i1 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @11, i64 96), ptr @11, !dbg !2660
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.sel, i64 %i.ec, !dbg !2660
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !2660, !noundef !768
  %i.eg = add i64 %i.ef, %.sroa.028.1131, !dbg !2662 ; 2 uses
  %i.eh = add nsw i64 %.sroa.022.2132, -1, !dbg !2663
  %i.ei = icmp sgt i64 %.sroa.022.2132, 1, !dbg !2612
  br i1 %i.ei, label %.lr.ph135, label %._crit_edge, !dbg !2612

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !dbg !2660
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration16truncate_monthlyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_nsEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2664 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 2 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %.not = icmp eq ptr %3, null, !dbg !2790        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !2791

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr %3, align 2, !dbg !2792, !range !894, !noundef !768
  %.not72 = icmp eq i16 %i.m, 592, !dbg !2793
  br i1 %.not72, label %bb.c, label %bb.e, !dbg !2755

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2794, !noalias !2758
  %i.n = sdiv i64 %2, 1000000000, !dbg !2795
  %i.o = srem i64 %2, 1000000000, !dbg !2796      ; 3 uses
  %.lobit.i.i.i = ashr i64 %i.o, 63, !dbg !2796
  %.sroa.0.0.i.i.i = add nsw i64 %.lobit.i.i.i, %i.n, !dbg !2796
  %i.p = icmp slt i64 %i.o, 0, !dbg !2797
  %i.q = select i1 %i.p, i64 1000000000, i64 0, !dbg !2797
  %spec.select.i.i.i = add nsw i64 %i.q, %i.o, !dbg !2797
  %i.r = trunc nuw nsw i64 %spec.select.i.i.i to i32, !dbg !2798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2799, !noalias !2758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2800, !noalias !2758
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i64 noundef %.sroa.0.0.i.i.i, i32 noundef %i.r), !dbg !2801, !noalias !2758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2802, !noalias !2758
  %i.s = load i32, ptr %i.f, align 4, !dbg !2803, !noalias !2758, !noundef !768
  %.not.i.i = icmp eq i32 %i.s, 0, !dbg !2803
  br i1 %.not.i.i, label %bb.d, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, !dbg !2804, !prof !777

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30, !dbg !2805, !noalias !2758
  unreachable, !dbg !2805

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !dbg !2806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2807, !noalias !2758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !2808
  br label %bb.g, !dbg !2809

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2810, !noalias !2759
  %i.t = sdiv i64 %2, 1000000000, !dbg !2811
  %i.u = srem i64 %2, 1000000000, !dbg !2812      ; 3 uses
  %.lobit.i.i.i78 = ashr i64 %i.u, 63, !dbg !2812
  %.sroa.0.0.i.i.i79 = add nsw i64 %.lobit.i.i.i78, %i.t, !dbg !2812
  %i.v = icmp slt i64 %i.u, 0, !dbg !2813
  %i.w = select i1 %i.v, i64 1000000000, i64 0, !dbg !2813
  %spec.select.i.i.i80 = add nsw i64 %i.w, %i.u, !dbg !2813
  %i.x = trunc nuw nsw i64 %spec.select.i.i.i80 to i32, !dbg !2814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2815, !noalias !2759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2816, !noalias !2759
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i64 noundef %.sroa.0.0.i.i.i79, i32 noundef %i.x), !dbg !2817, !noalias !2759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2818, !noalias !2759
  %i.y = load i32, ptr %i.d, align 4, !dbg !2819, !noalias !2759, !noundef !768
  %.not.i.i81 = icmp eq i32 %i.y, 0, !dbg !2819
  br i1 %.not.i.i81, label %bb.f, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82, !dbg !2820, !prof !777

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30, !dbg !2821, !noalias !2759
  unreachable, !dbg !2821

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !dbg !2822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2823, !noalias !2759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !2824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !2824
  call void @_RNvNtCs2Aa799EbAFJ_11polars_time5utils19unlocalize_datetime(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2826
  br label %bb.g, !dbg !2827

bb.g:                                             ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82
  %.sink168 = phi ptr [ %i.j, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit ], [ %i.k, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82 ]
  %i.z = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_ns(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %.sink168), !dbg !2828 ; 3 uses
  %i.aa = icmp eq i64 %4, 0, !dbg !2829
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !2829

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %4, -1, !dbg !2829
  %i.ac = icmp eq i64 %i.z, -9223372036854775808, !dbg !2829
  %i.ad = and i1 %i.ab, %i.ac, !dbg !2829
  br i1 %i.ad, label %bb.k, label %bb.j, !dbg !2829

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !2829
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = srem i64 %i.z, %4, !dbg !2829           ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0, !dbg !2830
  %i.ag = select i1 %i.af, i64 %4, i64 0, !dbg !2830
  %i.ah = add i64 %i.ae, %i.ag, !dbg !2831
  %i.ai = sub i64 %i.z, %i.ah, !dbg !2831         ; 2 uses
  %i.aj = load i32, ptr %i.k, align 4, !dbg !2832, !range !812, !noundef !768 ; 3 uses
  %i.ak = ashr i32 %i.aj, 13, !dbg !2833          ; 3 uses
  %i.al = sext i32 %i.ak to i64, !dbg !2834       ; 4 uses
  %i.am = lshr i32 %i.aj, 3, !dbg !2835           ; 2 uses
  %i.an = and i32 %i.am, 1023, !dbg !2835         ; 3 uses
  %i.ao = zext nneg i32 %i.an to i64, !dbg !2836  ; 2 uses
  %i.ap = icmp samesign ult i32 %i.an, 733, !dbg !2837
  br i1 %i.ap, label %bb.l, label %bb.m, !dbg !2837

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !2829
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr @7, i64 %i.ao, !dbg !2837
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !2837, !noundef !768
  %i.as = zext i8 %i.ar to i32, !dbg !2837        ; 2 uses
  %i.at = add nuw nsw i32 %i.an, %i.as, !dbg !2838 ; 3 uses
  %i.au = lshr i32 %i.at, 6, !dbg !2839
  %i.av = zext nneg i32 %i.au to i64, !dbg !2840  ; 2 uses
  %i.aw = load i64, ptr %1, align 8, !dbg !2841, !noundef !768 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !2842
  br i1 %i.ax, label %bb.n, label %bb.o, !dbg !2842

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27, !dbg !2837
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27, !dbg !2842
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ay = mul nsw i64 %i.al, 12, !dbg !2843
  %i.az = add nsw i64 %i.ay, -23641, !dbg !2843
  %i.ba = add nsw i64 %i.az, %i.av, !dbg !2843
  %i.bb = srem i64 %i.ba, %i.aw, !dbg !2842       ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0, !dbg !2844
  %i.bd = select i1 %i.bc, i64 %i.aw, i64 0, !dbg !2844
  %spec.select75 = add i64 %i.bd, %i.bb, !dbg !2844 ; 4 uses
  %i.be = and i32 %i.aj, 24576, !dbg !2845
  %i.bf = icmp eq i32 %i.be, 0, !dbg !2845
  br i1 %i.bf, label %bb.p, label %bb.r, !dbg !2845

bb.p:                                             ; preds = %bb.o
  %i.bg = srem i32 %i.ak, 100, !dbg !2846
  %i.bh = icmp eq i32 %i.bg, 0, !dbg !2846
  br i1 %i.bh, label %bb.q, label %bb.r, !dbg !2846

bb.q:                                             ; preds = %bb.p
  %i.bi = srem i32 %i.ak, 400, !dbg !2847
  %i.bj = icmp eq i32 %i.bi, 0, !dbg !2847
  %i.bk = zext i1 %i.bj to i8, !dbg !2847
  br label %bb.r, !dbg !2848

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.p
  %.sroa.041.0 = phi i8 [ %i.bk, %bb.q ], [ 0, %bb.o ], [ 1, %bb.p ], !dbg !2849 ; 3 uses
  %i.bl = add nuw nsw i32 %i.am, %i.as, !dbg !2850
  %i.bm = lshr i32 %i.bl, 1, !dbg !2851
  %i.bn = and i32 %i.bm, 31, !dbg !2851
  %i.bo = add nsw i32 %i.bn, -1, !dbg !2852
  %i.bp = zext i32 %i.bo to i64, !dbg !2852       ; 3 uses
  %i.bq = icmp sgt i64 %spec.select75, 12, !dbg !2853
  br i1 %i.bq, label %.lr.ph, label %.preheader, !dbg !2853

.lr.ph:                                           ; preds = %bb.r
  %i.br = icmp samesign ugt i32 %i.at, 191        ; 2 uses
  %spec.select76 = select i1 %i.br, i64 366, i64 365 ; 2 uses
  %i.bs = icmp samesign ult i32 %i.at, 192        ; 3 uses
  %.mux = select i1 %i.bs, i64 365, i64 366       ; 2 uses
  %i.bt = select i1 %i.bs, i64 366, i64 365       ; 2 uses
  br i1 %i.br, label %.lr.ph.split.split.us, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.x
  %.sroa.08.0100.us = phi i64 [ %i.bu, %bb.x ], [ %i.al, %.lr.ph ]
  %.sroa.022.199.us = phi i64 [ %i.cf, %bb.x ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.098.us = phi i64 [ %i.ce, %bb.x ], [ %i.bp, %.lr.ph ]
  %.sroa.041.197.us = phi i8 [ %.sroa.032.3.us, %bb.x ], [ %.sroa.041.0, %.lr.ph ] ; 2 uses
  %i.bu = add nsw i64 %.sroa.08.0100.us, -1, !dbg !2854 ; 3 uses
  %i.bv = trunc i64 %i.bu to i32, !dbg !2854      ; 3 uses
  %i.bw = and i32 %i.bv, 3, !dbg !2855
  %i.bx = icmp eq i32 %i.bw, 0, !dbg !2855
  br i1 %i.bx, label %bb.s, label %5, !dbg !2855

5:                                                ; preds = %.lr.ph.split.us
  %6 = trunc nuw i8 %.sroa.041.197.us to i1, !dbg !2856
  %spec.select = select i1 %6, i64 %spec.select76, i64 365, !dbg !2856
  br label %bb.x, !dbg !2856

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.by = srem i32 %i.bv, 100, !dbg !2857
  %i.bz = icmp eq i32 %i.by, 0, !dbg !2857
  br i1 %i.bz, label %bb.t, label %bb.w, !dbg !2857

bb.t:                                             ; preds = %bb.s
  %i.ca = srem i32 %i.bv, 400, !dbg !2858
  %i.cb = icmp eq i32 %i.ca, 0, !dbg !2858        ; 3 uses
  %i.cc = trunc nuw i8 %.sroa.041.197.us to i1, !dbg !2856
  br i1 %i.cc, label %bb.v, label %bb.u, !dbg !2856

bb.u:                                             ; preds = %bb.t
  br i1 %i.cb, label %bb.w, label %bb.x, !dbg !2859

bb.v:                                             ; preds = %bb.t
  %i.cd = zext i1 %i.cb to i8, !dbg !2858         ; 2 uses
  %brmerge.not.us = and i1 %i.bs, %i.cb, !dbg !2860
  br i1 %brmerge.not.us, label %bb.w, label %bb.x, !dbg !2860

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u
  %.sroa.032.2.us = phi i8 [ 1, %bb.u ], [ %i.cd, %bb.v ], [ 1, %bb.s ], !dbg !2861
  br label %bb.x, !dbg !2862

bb.x:                                             ; preds = %5, %bb.w, %bb.v, %bb.u
  %.sroa.034.0.us = phi i64 [ %.mux, %bb.v ], [ %i.bt, %bb.w ], [ %spec.select, %5 ], [ 365, %bb.u ], !dbg !2863
  %.sroa.032.3.us = phi i8 [ %i.cd, %bb.v ], [ %.sroa.032.2.us, %bb.w ], [ 0, %5 ], [ 0, %bb.u ], !dbg !2858 ; 2 uses
  %i.ce = add i64 %.sroa.034.0.us, %.sroa.028.098.us, !dbg !2864 ; 2 uses
  %i.cf = add nsw i64 %.sroa.022.199.us, -12, !dbg !2865 ; 2 uses
  %i.cg = icmp sgt i64 %.sroa.022.199.us, 24, !dbg !2853
  br i1 %i.cg, label %.lr.ph.split.us, label %.preheader, !dbg !2853

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.af
  %.sroa.08.0100.us107 = phi i64 [ %i.ch, %bb.af ], [ %i.al, %.lr.ph ]
  %.sroa.022.199.us108 = phi i64 [ %i.cu, %bb.af ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.098.us109 = phi i64 [ %i.ct, %bb.af ], [ %i.bp, %.lr.ph ]
  %.sroa.041.197.us110 = phi i8 [ %.sroa.032.3.us114, %bb.af ], [ %.sroa.041.0, %.lr.ph ] ; 3 uses
  %i.ch = add nsw i64 %.sroa.08.0100.us107, -1, !dbg !2854 ; 3 uses
  %i.ci = trunc i64 %i.ch to i32, !dbg !2854      ; 3 uses
  %i.cj = and i32 %i.ci, 3, !dbg !2855
  %i.ck = icmp eq i32 %i.cj, 0, !dbg !2855
  br i1 %i.ck, label %bb.z, label %bb.y, !dbg !2855

bb.y:                                             ; preds = %.lr.ph.split.split.us
  %i.cl = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !2856
  %spec.select131 = select i1 %i.cl, i64 %spec.select76, i64 365, !dbg !2856
  br label %bb.af, !dbg !2856

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = srem i32 %i.ci, 100, !dbg !2857
  %i.cn = icmp eq i32 %i.cm, 0, !dbg !2857
  br i1 %i.cn, label %bb.ab, label %bb.aa, !dbg !2857

bb.aa:                                            ; preds = %bb.z
  %i.co = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !2856
  br i1 %i.co, label %bb.af, label %bb.ae, !dbg !2856

bb.ab:                                            ; preds = %bb.z
  %i.cp = srem i32 %i.ci, 400, !dbg !2858
  %i.cq = icmp eq i32 %i.cp, 0, !dbg !2858        ; 2 uses
  %i.cr = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !2856
  br i1 %i.cr, label %bb.ad, label %bb.ac, !dbg !2856

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cq, label %bb.ae, label %bb.af, !dbg !2859

bb.ad:                                            ; preds = %bb.ab
  %i.cs = zext i1 %i.cq to i8, !dbg !2858
  br label %bb.af, !dbg !2860

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  br label %bb.af, !dbg !2862

bb.af:                                            ; preds = %bb.y, %bb.ad, %bb.ae, %bb.ac, %bb.aa
  %.sroa.034.0.us113 = phi i64 [ %.mux, %bb.ad ], [ %i.bt, %bb.ae ], [ 365, %bb.ac ], [ 366, %bb.aa ], [ %spec.select131, %bb.y ], !dbg !2863
  %.sroa.032.3.us114 = phi i8 [ %i.cs, %bb.ad ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.aa ], [ 0, %bb.y ], !dbg !2858 ; 2 uses
  %i.ct = add i64 %.sroa.034.0.us113, %.sroa.028.098.us109, !dbg !2864 ; 2 uses
  %i.cu = add nsw i64 %.sroa.022.199.us108, -12, !dbg !2865 ; 2 uses
  %i.cv = icmp sgt i64 %.sroa.022.199.us108, 24, !dbg !2853
  br i1 %i.cv, label %.lr.ph.split.split.us, label %.preheader, !dbg !2853

.preheader:                                       ; preds = %bb.x, %bb.af, %bb.r
  %.sroa.041.1.lcssa = phi i8 [ %.sroa.041.0, %bb.r ], [ %.sroa.032.3.us114, %bb.af ], [ %.sroa.032.3.us, %bb.x ], !dbg !2866
  %.sroa.028.0.lcssa = phi i64 [ %i.bp, %bb.r ], [ %i.ct, %bb.af ], [ %i.ce, %bb.x ], !dbg !2867 ; 2 uses
  %.sroa.022.1.lcssa = phi i64 [ %spec.select75, %bb.r ], [ %i.cu, %bb.af ], [ %i.cf, %bb.x ], !dbg !2866 ; 2 uses
  %.sroa.08.0.lcssa = phi i64 [ %i.al, %bb.r ], [ %i.ch, %bb.af ], [ %i.bu, %bb.x ], !dbg !2868
  %i.cw = icmp sgt i64 %.sroa.022.1.lcssa, 0, !dbg !2869
  br i1 %i.cw, label %.lr.ph129, label %._crit_edge, !dbg !2869

._crit_edge:                                      ; preds = %.thread, %.preheader
  %.sroa.028.1.lcssa = phi i64 [ %.sroa.028.0.lcssa, %.preheader ], [ %i.ed, %.thread ], !dbg !2867 ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ag, !dbg !2870

.lr.ph129:                                        ; preds = %.preheader, %.thread
  %.sroa.08.1128 = phi i64 [ %.sroa.08.293, %.thread ], [ %.sroa.08.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.014.0127 = phi i64 [ %.sroa.014.192, %.thread ], [ %i.av, %.preheader ] ; 2 uses
  %.sroa.022.2126 = phi i64 [ %i.ee, %.thread ], [ %.sroa.022.1.lcssa, %.preheader ] ; 2 uses
  %.sroa.028.1125 = phi i64 [ %i.ed, %.thread ], [ %.sroa.028.0.lcssa, %.preheader ]
  %.sroa.041.2124 = phi i8 [ %.sroa.041.491, %.thread ], [ %.sroa.041.1.lcssa, %.preheader ]
  %i.cx = add nsw i64 %.sroa.014.0127, -1, !dbg !2871 ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 0, !dbg !2872
  br i1 %i.cy, label %bb.ao, label %bb.ar, !dbg !2872

bb.ag:                                            ; preds = %._crit_edge
  %i.cz = load i16, ptr %3, align 2, !dbg !2873, !range !894, !noundef !768
  %.not73 = icmp eq i16 %i.cz, 592, !dbg !2874
  br i1 %.not73, label %bb.ah, label %bb.ai, !dbg !2782

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.da = mul i64 %.sroa.028.1.lcssa, %4, !dbg !2875
  %i.db = sub i64 %i.ai, %i.da, !dbg !2876
  br label %bb.am, !dbg !2877

bb.ai:                                            ; preds = %bb.ag
  %i.dc = mul i64 %.sroa.028.1.lcssa, %4, !dbg !2878
  %i.dd = sub i64 %i.ai, %i.dc, !dbg !2879        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2880, !noalias !2785
  %i.de = sdiv i64 %i.dd, 1000000000, !dbg !2881
  %i.df = srem i64 %i.dd, 1000000000, !dbg !2882  ; 3 uses
  %.lobit.i.i.i83 = ashr i64 %i.df, 63, !dbg !2882
  %.sroa.0.0.i.i.i84 = add nsw i64 %.lobit.i.i.i83, %i.de, !dbg !2882
  %i.dg = icmp slt i64 %i.df, 0, !dbg !2883
  %i.dh = select i1 %i.dg, i64 1000000000, i64 0, !dbg !2883
  %spec.select.i.i.i85 = add nsw i64 %i.dh, %i.df, !dbg !2883
  %i.di = trunc nuw nsw i64 %spec.select.i.i.i85 to i32, !dbg !2884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2885, !noalias !2785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !2886, !noalias !2785
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %.sroa.0.0.i.i.i84, i32 noundef %i.di), !dbg !2887, !noalias !2785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2888, !noalias !2785
  %i.dj = load i32, ptr %i.b, align 4, !dbg !2889, !noalias !2785, !noundef !768
  %.not.i.i86 = icmp eq i32 %i.dj, 0, !dbg !2889
  br i1 %.not.i.i86, label %bb.aj, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87, !dbg !2890, !prof !777

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30, !dbg !2891, !noalias !2785
  unreachable, !dbg !2891

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !dbg !2892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2893, !noalias !2785
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !2786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2786
  call void @_RNvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB5_8Duration24localize_result_rfc_5545(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !2894
  %i.dk = load i64, ptr %i.h, align 8, !dbg !2895, !range !844, !noundef !768 ; 2 uses
  %.not74 = icmp eq i64 %i.dk, 18, !dbg !2895
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(12) %i.dl, i64 12, i1 false), !dbg !2896
  br i1 %.not74, label %bb.al, label %bb.ak, !dbg !2897

bb.ak:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20, !dbg !2898
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !2899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.357.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.654.0..sroa_idx, i64 52, i1 false), !dbg !2898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2900
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !2900
  store i64 %i.dk, ptr %0, align 8, !dbg !2899
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2901
  br label %bb.an, !dbg !2902

bb.al:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !2901
  %i.dm = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_ns(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g), !dbg !2904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2905
  br label %bb.am, !dbg !2906

bb.am:                                            ; preds = %bb.al, %bb.ah
  %.sink = phi i64 [ %i.dm, %bb.al ], [ %i.db, %bb.ah ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2907
  store i64 %.sink, ptr %i.dn, align 8, !dbg !2907
  store i64 18, ptr %0, align 8, !dbg !2907
  br label %bb.an, !dbg !2902

bb.an:                                            ; preds = %bb.am, %bb.ak
  ret void, !dbg !2908

bb.ao:                                            ; preds = %.lr.ph129
  %i.do = add i64 %.sroa.08.1128, -1, !dbg !2909  ; 4 uses
  %i.dp = trunc i64 %i.do to i32, !dbg !2910      ; 3 uses
  %i.dq = and i32 %i.dp, 3, !dbg !2911
  %i.dr = icmp eq i32 %i.dq, 0, !dbg !2911
  br i1 %i.dr, label %bb.ap, label %.thread, !dbg !2911

bb.ap:                                            ; preds = %bb.ao
  %i.ds = srem i32 %i.dp, 100, !dbg !2912
  %i.dt = icmp eq i32 %i.ds, 0, !dbg !2912
  br i1 %i.dt, label %bb.aq, label %.thread, !dbg !2912

bb.aq:                                            ; preds = %bb.ap
  %i.du = srem i32 %i.dp, 400, !dbg !2913
  %i.dv = icmp eq i32 %i.du, 0, !dbg !2913
  %i.dw = zext i1 %i.dv to i8, !dbg !2913
  br label %.thread, !dbg !2914

bb.ar:                                            ; preds = %.lr.ph129
  %i.dx = add nsw i64 %.sroa.014.0127, -2, !dbg !2915 ; 2 uses
  %i.dy = icmp ult i64 %i.cx, 13, !dbg !2916
  br i1 %i.dy, label %.thread, label %bb.as, !dbg !2916

.thread:                                          ; preds = %bb.aq, %bb.ao, %bb.ap, %bb.ar
  %i.dz = phi i64 [ %i.dx, %bb.ar ], [ 11, %bb.ap ], [ 11, %bb.ao ], [ 11, %bb.aq ]
  %.sroa.08.293 = phi i64 [ %.sroa.08.1128, %bb.ar ], [ %i.do, %bb.ap ], [ %i.do, %bb.ao ], [ %i.do, %bb.aq ]
  %.sroa.014.192 = phi i64 [ %i.cx, %bb.ar ], [ 12, %bb.ap ], [ 12, %bb.ao ], [ 12, %bb.aq ]
  %.sroa.041.491 = phi i8 [ %.sroa.041.2124, %bb.ar ], [ 1, %bb.ap ], [ 0, %bb.ao ], [ %i.dw, %bb.aq ] ; 2 uses
  %i.ea = trunc nuw i8 %.sroa.041.491 to i1, !dbg !2917
  %.sroa.sel = select i1 %i.ea, ptr getelementptr inbounds nuw (i8, ptr @11, i64 96), ptr @11, !dbg !2916
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.sel, i64 %i.dz, !dbg !2916
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !2916, !noundef !768
  %i.ed = add i64 %i.ec, %.sroa.028.1125, !dbg !2918 ; 2 uses
  %i.ee = add nsw i64 %.sroa.022.2126, -1, !dbg !2919
  %i.ef = icmp sgt i64 %.sroa.022.2126, 1, !dbg !2869
  br i1 %i.ef, label %.lr.ph129, label %._crit_edge, !dbg !2869

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !dbg !2916
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration16truncate_monthlyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_usEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2920 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 5 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 2 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %.not = icmp eq ptr %3, null, !dbg !3046        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !3047

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr %3, align 2, !dbg !3048, !range !894, !noundef !768
  %.not72 = icmp eq i16 %i.m, 592, !dbg !3049
  br i1 %.not72, label %bb.c, label %bb.e, !dbg !3011

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3050, !noalias !3014
  %i.n = sdiv i64 %2, 1000000, !dbg !3051
  %i.o = srem i64 %2, 1000000, !dbg !3052         ; 3 uses
  %.lobit.i.i.i = ashr i64 %i.o, 63, !dbg !3052
  %.sroa.0.0.i.i.i = add nsw i64 %.lobit.i.i.i, %i.n, !dbg !3052
  %i.p = icmp slt i64 %i.o, 0, !dbg !3053
  %i.q = select i1 %i.p, i64 1000000, i64 0, !dbg !3053
  %spec.select.i.i.i = add nsw i64 %i.q, %i.o, !dbg !3053
  %i.r = trunc nuw nsw i64 %spec.select.i.i.i to i32, !dbg !3054
  %i.s = mul nuw nsw i32 %i.r, 1000, !dbg !3054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3055, !noalias !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !3056, !noalias !3014
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i64 noundef %.sroa.0.0.i.i.i, i32 noundef %i.s), !dbg !3057, !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3058, !noalias !3014
  %i.t = load i32, ptr %i.f, align 4, !dbg !3059, !noalias !3014, !noundef !768
  %.not.i.i = icmp eq i32 %i.t, 0, !dbg !3059
  br i1 %.not.i.i, label %bb.d, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, !dbg !3060, !prof !777

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #30, !dbg !3061, !noalias !3014
  unreachable, !dbg !3061

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !dbg !3062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3063, !noalias !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !3064
  br label %bb.g, !dbg !3065

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3066, !noalias !3015
  %i.u = sdiv i64 %2, 1000000, !dbg !3067
  %i.v = srem i64 %2, 1000000, !dbg !3068         ; 3 uses
  %.lobit.i.i.i78 = ashr i64 %i.v, 63, !dbg !3068
  %.sroa.0.0.i.i.i79 = add nsw i64 %.lobit.i.i.i78, %i.u, !dbg !3068
  %i.w = icmp slt i64 %i.v, 0, !dbg !3069
  %i.x = select i1 %i.w, i64 1000000, i64 0, !dbg !3069
  %spec.select.i.i.i80 = add nsw i64 %i.x, %i.v, !dbg !3069
  %i.y = trunc nuw nsw i64 %spec.select.i.i.i80 to i32, !dbg !3070
  %i.z = mul nuw nsw i32 %i.y, 1000, !dbg !3070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3071, !noalias !3015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !3072, !noalias !3015
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i64 noundef %.sroa.0.0.i.i.i79, i32 noundef %i.z), !dbg !3073, !noalias !3015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3074, !noalias !3015
  %i.aa = load i32, ptr %i.d, align 4, !dbg !3075, !noalias !3015, !noundef !768
  %.not.i.i81 = icmp eq i32 %i.aa, 0, !dbg !3075
  br i1 %.not.i.i81, label %bb.f, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82, !dbg !3076, !prof !777

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #30, !dbg !3077, !noalias !3015
  unreachable, !dbg !3077

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !dbg !3078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3079, !noalias !3015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !3080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false), !dbg !3080
  call void @_RNvNtCs2Aa799EbAFJ_11polars_time5utils19unlocalize_datetime(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !3081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !3082
  br label %bb.g, !dbg !3083

bb.g:                                             ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82
  %.sink168 = phi ptr [ %i.j, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit ], [ %i.k, %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit82 ]
  %i.ab = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_us(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %.sink168), !dbg !3084 ; 3 uses
  %i.ac = icmp eq i64 %4, 0, !dbg !3085
  br i1 %i.ac, label %bb.i, label %bb.h, !dbg !3085

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %4, -1, !dbg !3085
  %i.ae = icmp eq i64 %i.ab, -9223372036854775808, !dbg !3085
  %i.af = and i1 %i.ad, %i.ae, !dbg !3085
  br i1 %i.af, label %bb.k, label %bb.j, !dbg !3085

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !3085
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = srem i64 %i.ab, %4, !dbg !3085          ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0, !dbg !3086
  %i.ai = select i1 %i.ah, i64 %4, i64 0, !dbg !3086
  %i.aj = add i64 %i.ag, %i.ai, !dbg !3087
  %i.ak = sub i64 %i.ab, %i.aj, !dbg !3087        ; 2 uses
  %i.al = load i32, ptr %i.k, align 4, !dbg !3088, !range !812, !noundef !768 ; 3 uses
  %i.am = ashr i32 %i.al, 13, !dbg !3089          ; 3 uses
  %i.an = sext i32 %i.am to i64, !dbg !3090       ; 4 uses
  %i.ao = lshr i32 %i.al, 3, !dbg !3091           ; 2 uses
  %i.ap = and i32 %i.ao, 1023, !dbg !3091         ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64, !dbg !3092  ; 2 uses
  %i.ar = icmp samesign ult i32 %i.ap, 733, !dbg !3093
  br i1 %i.ar, label %bb.l, label %bb.m, !dbg !3093

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !dbg !3085
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr @7, i64 %i.aq, !dbg !3093
  %i.at = load i8, ptr %i.as, align 1, !dbg !3093, !noundef !768
  %i.au = zext i8 %i.at to i32, !dbg !3093        ; 2 uses
  %i.av = add nuw nsw i32 %i.ap, %i.au, !dbg !3094 ; 3 uses
  %i.aw = lshr i32 %i.av, 6, !dbg !3095
  %i.ax = zext nneg i32 %i.aw to i64, !dbg !3096  ; 2 uses
  %i.ay = load i64, ptr %1, align 8, !dbg !3097, !noundef !768 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0, !dbg !3098
  br i1 %i.az, label %bb.n, label %bb.o, !dbg !3098

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27, !dbg !3093
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27, !dbg !3098
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ba = mul nsw i64 %i.an, 12, !dbg !3099
  %i.bb = add nsw i64 %i.ba, -23641, !dbg !3099
  %i.bc = add nsw i64 %i.bb, %i.ax, !dbg !3099
  %i.bd = srem i64 %i.bc, %i.ay, !dbg !3098       ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0, !dbg !3100
  %i.bf = select i1 %i.be, i64 %i.ay, i64 0, !dbg !3100
  %spec.select75 = add i64 %i.bf, %i.bd, !dbg !3100 ; 4 uses
  %i.bg = and i32 %i.al, 24576, !dbg !3101
  %i.bh = icmp eq i32 %i.bg, 0, !dbg !3101
  br i1 %i.bh, label %bb.p, label %bb.r, !dbg !3101

bb.p:                                             ; preds = %bb.o
  %i.bi = srem i32 %i.am, 100, !dbg !3102
  %i.bj = icmp eq i32 %i.bi, 0, !dbg !3102
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !3102

bb.q:                                             ; preds = %bb.p
  %i.bk = srem i32 %i.am, 400, !dbg !3103
  %i.bl = icmp eq i32 %i.bk, 0, !dbg !3103
  %i.bm = zext i1 %i.bl to i8, !dbg !3103
  br label %bb.r, !dbg !3104

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.p
  %.sroa.041.0 = phi i8 [ %i.bm, %bb.q ], [ 0, %bb.o ], [ 1, %bb.p ], !dbg !3105 ; 3 uses
  %i.bn = add nuw nsw i32 %i.ao, %i.au, !dbg !3106
  %i.bo = lshr i32 %i.bn, 1, !dbg !3107
  %i.bp = and i32 %i.bo, 31, !dbg !3107
  %i.bq = add nsw i32 %i.bp, -1, !dbg !3108
  %i.br = zext i32 %i.bq to i64, !dbg !3108       ; 3 uses
  %i.bs = icmp sgt i64 %spec.select75, 12, !dbg !3109
  br i1 %i.bs, label %.lr.ph, label %.preheader, !dbg !3109

.lr.ph:                                           ; preds = %bb.r
  %i.bt = icmp samesign ugt i32 %i.av, 191        ; 2 uses
  %spec.select76 = select i1 %i.bt, i64 366, i64 365 ; 2 uses
  %i.bu = icmp samesign ult i32 %i.av, 192        ; 3 uses
  %.mux = select i1 %i.bu, i64 365, i64 366       ; 2 uses
  %i.bv = select i1 %i.bu, i64 366, i64 365       ; 2 uses
  br i1 %i.bt, label %.lr.ph.split.split.us, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.x
  %.sroa.08.0100.us = phi i64 [ %i.bw, %bb.x ], [ %i.an, %.lr.ph ]
  %.sroa.022.199.us = phi i64 [ %i.ch, %bb.x ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.098.us = phi i64 [ %i.cg, %bb.x ], [ %i.br, %.lr.ph ]
  %.sroa.041.197.us = phi i8 [ %.sroa.032.3.us, %bb.x ], [ %.sroa.041.0, %.lr.ph ] ; 2 uses
  %i.bw = add nsw i64 %.sroa.08.0100.us, -1, !dbg !3110 ; 3 uses
  %i.bx = trunc i64 %i.bw to i32, !dbg !3110      ; 3 uses
  %i.by = and i32 %i.bx, 3, !dbg !3111
  %i.bz = icmp eq i32 %i.by, 0, !dbg !3111
  br i1 %i.bz, label %bb.s, label %5, !dbg !3111

5:                                                ; preds = %.lr.ph.split.us
  %6 = trunc nuw i8 %.sroa.041.197.us to i1, !dbg !3112
  %spec.select = select i1 %6, i64 %spec.select76, i64 365, !dbg !3112
  br label %bb.x, !dbg !3112

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.ca = srem i32 %i.bx, 100, !dbg !3113
  %i.cb = icmp eq i32 %i.ca, 0, !dbg !3113
  br i1 %i.cb, label %bb.t, label %bb.w, !dbg !3113

bb.t:                                             ; preds = %bb.s
  %i.cc = srem i32 %i.bx, 400, !dbg !3114
  %i.cd = icmp eq i32 %i.cc, 0, !dbg !3114        ; 3 uses
  %i.ce = trunc nuw i8 %.sroa.041.197.us to i1, !dbg !3112
  br i1 %i.ce, label %bb.v, label %bb.u, !dbg !3112

bb.u:                                             ; preds = %bb.t
  br i1 %i.cd, label %bb.w, label %bb.x, !dbg !3115

bb.v:                                             ; preds = %bb.t
  %i.cf = zext i1 %i.cd to i8, !dbg !3114         ; 2 uses
  %brmerge.not.us = and i1 %i.bu, %i.cd, !dbg !3116
  br i1 %brmerge.not.us, label %bb.w, label %bb.x, !dbg !3116

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u
  %.sroa.032.2.us = phi i8 [ 1, %bb.u ], [ %i.cf, %bb.v ], [ 1, %bb.s ], !dbg !3117
  br label %bb.x, !dbg !3118

bb.x:                                             ; preds = %5, %bb.w, %bb.v, %bb.u
  %.sroa.034.0.us = phi i64 [ %.mux, %bb.v ], [ %i.bv, %bb.w ], [ %spec.select, %5 ], [ 365, %bb.u ], !dbg !3119
  %.sroa.032.3.us = phi i8 [ %i.cf, %bb.v ], [ %.sroa.032.2.us, %bb.w ], [ 0, %5 ], [ 0, %bb.u ], !dbg !3114 ; 2 uses
  %i.cg = add i64 %.sroa.034.0.us, %.sroa.028.098.us, !dbg !3120 ; 2 uses
  %i.ch = add nsw i64 %.sroa.022.199.us, -12, !dbg !3121 ; 2 uses
  %i.ci = icmp sgt i64 %.sroa.022.199.us, 24, !dbg !3109
  br i1 %i.ci, label %.lr.ph.split.us, label %.preheader, !dbg !3109

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.af
  %.sroa.08.0100.us107 = phi i64 [ %i.cj, %bb.af ], [ %i.an, %.lr.ph ]
  %.sroa.022.199.us108 = phi i64 [ %i.cw, %bb.af ], [ %spec.select75, %.lr.ph ] ; 2 uses
  %.sroa.028.098.us109 = phi i64 [ %i.cv, %bb.af ], [ %i.br, %.lr.ph ]
  %.sroa.041.197.us110 = phi i8 [ %.sroa.032.3.us114, %bb.af ], [ %.sroa.041.0, %.lr.ph ] ; 3 uses
  %i.cj = add nsw i64 %.sroa.08.0100.us107, -1, !dbg !3110 ; 3 uses
  %i.ck = trunc i64 %i.cj to i32, !dbg !3110      ; 3 uses
  %i.cl = and i32 %i.ck, 3, !dbg !3111
  %i.cm = icmp eq i32 %i.cl, 0, !dbg !3111
  br i1 %i.cm, label %bb.z, label %bb.y, !dbg !3111

bb.y:                                             ; preds = %.lr.ph.split.split.us
  %i.cn = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !3112
  %spec.select131 = select i1 %i.cn, i64 %spec.select76, i64 365, !dbg !3112
  br label %bb.af, !dbg !3112

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.co = srem i32 %i.ck, 100, !dbg !3113
  %i.cp = icmp eq i32 %i.co, 0, !dbg !3113
  br i1 %i.cp, label %bb.ab, label %bb.aa, !dbg !3113

bb.aa:                                            ; preds = %bb.z
  %i.cq = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !3112
  br i1 %i.cq, label %bb.af, label %bb.ae, !dbg !3112

bb.ab:                                            ; preds = %bb.z
  %i.cr = srem i32 %i.ck, 400, !dbg !3114
  %i.cs = icmp eq i32 %i.cr, 0, !dbg !3114        ; 2 uses
  %i.ct = trunc nuw i8 %.sroa.041.197.us110 to i1, !dbg !3112
  br i1 %i.ct, label %bb.ad, label %bb.ac, !dbg !3112

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cs, label %bb.ae, label %bb.af, !dbg !3115

bb.ad:                                            ; preds = %bb.ab
  %i.cu = zext i1 %i.cs to i8, !dbg !3114
  br label %bb.af, !dbg !3116

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  br label %bb.af, !dbg !3118

bb.af:                                            ; preds = %bb.y, %bb.ad, %bb.ae, %bb.ac, %bb.aa
  %.sroa.034.0.us113 = phi i64 [ %.mux, %bb.ad ], [ %i.bv, %bb.ae ], [ 365, %bb.ac ], [ 366, %bb.aa ], [ %spec.select131, %bb.y ], !dbg !3119
  %.sroa.032.3.us114 = phi i8 [ %i.cu, %bb.ad ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.aa ], [ 0, %bb.y ], !dbg !3114 ; 2 uses
  %i.cv = add i64 %.sroa.034.0.us113, %.sroa.028.098.us109, !dbg !3120 ; 2 uses
  %i.cw = add nsw i64 %.sroa.022.199.us108, -12, !dbg !3121 ; 2 uses
  %i.cx = icmp sgt i64 %.sroa.022.199.us108, 24, !dbg !3109
  br i1 %i.cx, label %.lr.ph.split.split.us, label %.preheader, !dbg !3109

.preheader:                                       ; preds = %bb.x, %bb.af, %bb.r
  %.sroa.041.1.lcssa = phi i8 [ %.sroa.041.0, %bb.r ], [ %.sroa.032.3.us114, %bb.af ], [ %.sroa.032.3.us, %bb.x ], !dbg !3122
  %.sroa.028.0.lcssa = phi i64 [ %i.br, %bb.r ], [ %i.cv, %bb.af ], [ %i.cg, %bb.x ], !dbg !3123 ; 2 uses
  %.sroa.022.1.lcssa = phi i64 [ %spec.select75, %bb.r ], [ %i.cw, %bb.af ], [ %i.ch, %bb.x ], !dbg !3122 ; 2 uses
  %.sroa.08.0.lcssa = phi i64 [ %i.an, %bb.r ], [ %i.cj, %bb.af ], [ %i.bw, %bb.x ], !dbg !3124
  %i.cy = icmp sgt i64 %.sroa.022.1.lcssa, 0, !dbg !3125
  br i1 %i.cy, label %.lr.ph129, label %._crit_edge, !dbg !3125

._crit_edge:                                      ; preds = %.thread, %.preheader
  %.sroa.028.1.lcssa = phi i64 [ %.sroa.028.0.lcssa, %.preheader ], [ %i.eg, %.thread ], !dbg !3123 ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ag, !dbg !3126

.lr.ph129:                                        ; preds = %.preheader, %.thread
  %.sroa.08.1128 = phi i64 [ %.sroa.08.293, %.thread ], [ %.sroa.08.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.014.0127 = phi i64 [ %.sroa.014.192, %.thread ], [ %i.ax, %.preheader ] ; 2 uses
  %.sroa.022.2126 = phi i64 [ %i.eh, %.thread ], [ %.sroa.022.1.lcssa, %.preheader ] ; 2 uses
  %.sroa.028.1125 = phi i64 [ %i.eg, %.thread ], [ %.sroa.028.0.lcssa, %.preheader ]
  %.sroa.041.2124 = phi i8 [ %.sroa.041.491, %.thread ], [ %.sroa.041.1.lcssa, %.preheader ]
  %i.cz = add nsw i64 %.sroa.014.0127, -1, !dbg !3127 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0, !dbg !3128
  br i1 %i.da, label %bb.ao, label %bb.ar, !dbg !3128

bb.ag:                                            ; preds = %._crit_edge
  %i.db = load i16, ptr %3, align 2, !dbg !3129, !range !894, !noundef !768
  %.not73 = icmp eq i16 %i.db, 592, !dbg !3130
  br i1 %.not73, label %bb.ah, label %bb.ai, !dbg !3038

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.dc = mul i64 %.sroa.028.1.lcssa, %4, !dbg !3131
  %i.dd = sub i64 %i.ak, %i.dc, !dbg !3132
  br label %bb.am, !dbg !3133

bb.ai:                                            ; preds = %bb.ag
  %i.de = mul i64 %.sroa.028.1.lcssa, %4, !dbg !3134
  %i.df = sub i64 %i.ak, %i.de, !dbg !3135        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3136, !noalias !3041
  %i.dg = sdiv i64 %i.df, 1000000, !dbg !3137
  %i.dh = srem i64 %i.df, 1000000, !dbg !3138     ; 3 uses
  %.lobit.i.i.i83 = ashr i64 %i.dh, 63, !dbg !3138
  %.sroa.0.0.i.i.i84 = add nsw i64 %.lobit.i.i.i83, %i.dg, !dbg !3138
  %i.di = icmp slt i64 %i.dh, 0, !dbg !3139
  %i.dj = select i1 %i.di, i64 1000000, i64 0, !dbg !3139
  %spec.select.i.i.i85 = add nsw i64 %i.dj, %i.dh, !dbg !3139
  %i.dk = trunc nuw nsw i64 %spec.select.i.i.i85 to i32, !dbg !3140
  %i.dl = mul nuw nsw i32 %i.dk, 1000, !dbg !3140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3141, !noalias !3041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !3142, !noalias !3041
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %.sroa.0.0.i.i.i84, i32 noundef %i.dl), !dbg !3143, !noalias !3041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3144, !noalias !3041
  %i.dm = load i32, ptr %i.b, align 4, !dbg !3145, !noalias !3041, !noundef !768
  %.not.i.i86 = icmp eq i32 %i.dm, 0, !dbg !3145
  br i1 %.not.i.i86, label %bb.aj, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87, !dbg !3146, !prof !777

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #30, !dbg !3147, !noalias !3041
  unreachable, !dbg !3147

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87: ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !dbg !3148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3149, !noalias !3041
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !3042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3042
  call void @_RNvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB5_8Duration24localize_result_rfc_5545(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %3), !dbg !3150
  %i.dn = load i64, ptr %i.h, align 8, !dbg !3151, !range !844, !noundef !768 ; 2 uses
  %.not74 = icmp eq i64 %i.dn, 18, !dbg !3151
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !3152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(12) %i.do, i64 12, i1 false), !dbg !3152
  br i1 %.not74, label %bb.al, label %bb.ak, !dbg !3153

bb.ak:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20, !dbg !3154
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !3155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.357.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.654.0..sroa_idx, i64 52, i1 false), !dbg !3154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3156
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !3156
  store i64 %i.dn, ptr %0, align 8, !dbg !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3157
  br label %bb.an, !dbg !3158

bb.al:                                            ; preds = %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false), !dbg !3042
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3157
  %i.dp = call noundef i64 @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_us(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g), !dbg !3160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3161
  br label %bb.am, !dbg !3162

bb.am:                                            ; preds = %bb.al, %bb.ah
  %.sink = phi i64 [ %i.dp, %bb.al ], [ %i.dd, %bb.ah ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3163
  store i64 %.sink, ptr %i.dq, align 8, !dbg !3163
  store i64 18, ptr %0, align 8, !dbg !3163
  br label %bb.an, !dbg !3158

bb.an:                                            ; preds = %bb.am, %bb.ak
  ret void, !dbg !3164

bb.ao:                                            ; preds = %.lr.ph129
  %i.dr = add i64 %.sroa.08.1128, -1, !dbg !3165  ; 4 uses
  %i.ds = trunc i64 %i.dr to i32, !dbg !3166      ; 3 uses
  %i.dt = and i32 %i.ds, 3, !dbg !3167
  %i.du = icmp eq i32 %i.dt, 0, !dbg !3167
  br i1 %i.du, label %bb.ap, label %.thread, !dbg !3167

bb.ap:                                            ; preds = %bb.ao
  %i.dv = srem i32 %i.ds, 100, !dbg !3168
  %i.dw = icmp eq i32 %i.dv, 0, !dbg !3168
  br i1 %i.dw, label %bb.aq, label %.thread, !dbg !3168

bb.aq:                                            ; preds = %bb.ap
  %i.dx = srem i32 %i.ds, 400, !dbg !3169
  %i.dy = icmp eq i32 %i.dx, 0, !dbg !3169
  %i.dz = zext i1 %i.dy to i8, !dbg !3169
  br label %.thread, !dbg !3170

bb.ar:                                            ; preds = %.lr.ph129
  %i.ea = add nsw i64 %.sroa.014.0127, -2, !dbg !3171 ; 2 uses
  %i.eb = icmp ult i64 %i.cz, 13, !dbg !3172
  br i1 %i.eb, label %.thread, label %bb.as, !dbg !3172

.thread:                                          ; preds = %bb.aq, %bb.ao, %bb.ap, %bb.ar
  %i.ec = phi i64 [ %i.ea, %bb.ar ], [ 11, %bb.ap ], [ 11, %bb.ao ], [ 11, %bb.aq ]
  %.sroa.08.293 = phi i64 [ %.sroa.08.1128, %bb.ar ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.aq ]
  %.sroa.014.192 = phi i64 [ %i.cz, %bb.ar ], [ 12, %bb.ap ], [ 12, %bb.ao ], [ 12, %bb.aq ]
  %.sroa.041.491 = phi i8 [ %.sroa.041.2124, %bb.ar ], [ 1, %bb.ap ], [ 0, %bb.ao ], [ %i.dz, %bb.aq ] ; 2 uses
  %i.ed = trunc nuw i8 %.sroa.041.491 to i1, !dbg !3173
  %.sroa.sel = select i1 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @11, i64 96), ptr @11, !dbg !3172
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.sel, i64 %i.ec, !dbg !3172
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !3172, !noundef !768
  %i.eg = add i64 %i.ef, %.sroa.028.1125, !dbg !3174 ; 2 uses
  %i.eh = add nsw i64 %.sroa.022.2126, -1, !dbg !3175
  %i.ei = icmp sgt i64 %.sroa.022.2126, 1, !dbg !3125
  br i1 %i.ei, label %.lr.ph129, label %._crit_edge, !dbg !3125

bb.as:                                            ; preds = %bb.ar
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !dbg !3172
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration18truncate_subweeklyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_msEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3176 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 2 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [12 x i8], align 4                ; 3 uses
  %.not = icmp eq ptr %3, null, !dbg !3240
  br i1 %.not, label %bb.c, label %bb.b, !dbg !3241

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %3, align 2, !dbg !3242, !range !894, !noundef !768
  %.not27 = icmp eq i16 %i.k, 592, !dbg !3243
  br i1 %.not27, label %bb.c, label %bb.d, !dbg !3230

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = icmp eq i64 %4, 0, !dbg !3244
  br i1 %i.l, label %bb.m, label %bb.l, !dbg !3244

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3245, !noalias !3233
  %i.m = icmp eq i64 %2, -9223372036854775808, !dbg !3246
  br i1 %i.m, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i, !dbg !3246

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i: ; preds = %bb.d
  %i.n = sdiv i64 %2, 1000, !dbg !3247
  %i.o = srem i64 %2, 1000, !dbg !3248            ; 3 uses
  %.lobit.i.i.i.i = ashr i64 %i.o, 63, !dbg !3248
  %.sroa.0.0.i.i.i.i = add nsw i64 %.lobit.i.i.i.i, %i.n, !dbg !3248
  %i.p = icmp slt i64 %i.o, 0, !dbg !3249
  %i.q = select i1 %i.p, i64 1000, i64 0, !dbg !3249
  %spec.select.i.i.i.i = add nsw i64 %i.q, %i.o, !dbg !3249
  %i.r = trunc nuw nsw i64 %spec.select.i.i.i.i to i32, !dbg !3250
  %i.s = mul nuw nsw i32 %i.r, 1000000, !dbg !3250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3251, !noalias !3234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @103, i64 12, i1 false), !dbg !3252, !noalias !3234
  call void @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_signed(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i64 noundef %.sroa.0.0.i.i.i.i, i32 noundef %i.s), !dbg !3253, !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3254, !noalias !3234
  %.pr.i.i = load i32, ptr %i.d, align 4, !dbg !3255, !noalias !3233
  %.not.i.i = icmp eq i32 %.pr.i.i, 0, !dbg !3255
  br i1 %.not.i.i, label %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i, label %_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit, !dbg !3256, !prof !913

_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.thread.i.i: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i, %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30, !dbg !3257, !noalias !3233
  unreachable, !dbg !3257

_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt.exit.i.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!2399 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs9_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !899, file: !895, line: 11, type: !769, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2400 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtB7_9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !822, file: !819, line: 2127, type: !769, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2401 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !852, file: !819, line: 264, type: !769, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !895, line: 11, column: 23)
!2403 = distinct !DILexicalBlock(scope: !2402, file: !895, line: 11, column: 23)
!2404 = distinct !{!2404, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2405 = distinct !{!2405, !2404, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2406 = distinct !{!2406, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime"}
!2407 = distinct !{!2407, !2406, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime: argument 0"}
!2408 = distinct !DILocation(line: 763, column: 35, scope: !2398)
!2409 = distinct !DILocation(line: 79, column: 5, scope: !117, inlinedAt: !2408)
!2410 = distinct !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2409)
!2411 = distinct !DILocation(line: 168, column: 17, scope: !119, inlinedAt: !2410)
!2412 = distinct !DILocation(line: 256, column: 30, scope: !118, inlinedAt: !2411)
!2413 = distinct !DILocation(line: 660, column: 11, scope: !121, inlinedAt: !2412)
!2414 = distinct !DILocation(line: 660, column: 35, scope: !121, inlinedAt: !2412)
!2415 = distinct !{!2415, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt"}
!2416 = distinct !{!2416, !2415, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt: argument 0"}
!2417 = distinct !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2410)
!2418 = distinct !DILocation(line: 28, column: 26, scope: !128, inlinedAt: !2417)
!2419 = distinct !DILocation(line: 162, column: 37, scope: !116, inlinedAt: !2409)
!2420 = distinct !{!2420, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2421 = distinct !{!2421, !2420, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2422 = distinct !{!2422, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime"}
!2423 = distinct !{!2423, !2422, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime: argument 0"}
!2424 = distinct !DILexicalBlock(scope: !2398, file: !835, line: 757, column: 13)
!2425 = distinct !DILocation(line: 758, column: 35, scope: !2424)
!2426 = distinct !DILocation(line: 79, column: 5, scope: !117, inlinedAt: !2425)
!2427 = distinct !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2426)
!2428 = distinct !DILocation(line: 168, column: 17, scope: !119, inlinedAt: !2427)
!2429 = distinct !DILocation(line: 256, column: 30, scope: !118, inlinedAt: !2428)
!2430 = distinct !DILocation(line: 660, column: 11, scope: !121, inlinedAt: !2429)
!2431 = distinct !DILocation(line: 660, column: 35, scope: !121, inlinedAt: !2429)
!2432 = distinct !{!2432, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt"}
!2433 = distinct !{!2433, !2432, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt: argument 0"}
!2434 = distinct !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2427)
!2435 = distinct !DILocation(line: 28, column: 26, scope: !128, inlinedAt: !2434)
!2436 = distinct !DILocation(line: 162, column: 37, scope: !116, inlinedAt: !2426)
!2437 = distinct !DILexicalBlock(scope: !2398, file: !835, line: 754, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2437, file: !835, line: 771, column: 9)
!2439 = distinct !DISubprogram(name: "yof", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3yof", scope: !917, file: !914, line: 1501, type: !769, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !835, line: 775, column: 9)
!2441 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike4year", scope: !920, file: !918, line: 987, type: !769, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2442 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike4year", scope: !921, file: !914, line: 1531, type: !769, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2443 = distinct !DISubprogram(name: "year", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate4year", scope: !917, file: !914, line: 1409, type: !769, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2444 = distinct !DISubprogram(name: "mdf", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3mdf", scope: !917, file: !914, line: 951, type: !769, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2445 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike5month", scope: !920, file: !918, line: 1007, type: !769, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2446 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike5month", scope: !921, file: !914, line: 1548, type: !769, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2447 = distinct !DISubprogram(name: "month", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate5month", scope: !917, file: !914, line: 1422, type: !769, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2448 = distinct !DISubprogram(name: "from_ol", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf7from_ol", scope: !924, file: !922, line: 261, type: !769, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2449 = distinct !DILexicalBlock(scope: !2448, file: !922, line: 261, column: 78)
!2450 = distinct !DISubprogram(name: "month", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf5month", scope: !924, file: !922, line: 269, type: !769, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2451 = distinct !DILexicalBlock(scope: !2450, file: !922, line: 270, column: 9)
!2452 = distinct !DILexicalBlock(scope: !2440, file: !835, line: 778, column: 9)
!2453 = distinct !DILexicalBlock(scope: !2452, file: !835, line: 782, column: 9)
!2454 = distinct !DILexicalBlock(scope: !2453, file: !835, line: 783, column: 9)
!2455 = distinct !DISubprogram(name: "is_leap_year", linkageName: "_RNvNtNtCs2Aa799EbAFJ_11polars_time7windows8calendar12is_leap_year", scope: !926, file: !925, line: 7, type: !769, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2456 = distinct !DILexicalBlock(scope: !2448, file: !922, line: 261, column: 78)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !835, line: 789, column: 9)
!2458 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike3day", scope: !920, file: !918, line: 1047, type: !769, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2459 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike3day", scope: !921, file: !914, line: 1605, type: !769, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2460 = distinct !DISubprogram(name: "day", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3day", scope: !917, file: !914, line: 1428, type: !769, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2461 = distinct !DISubprogram(name: "day", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf3day", scope: !924, file: !922, line: 291, type: !769, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2462 = distinct !DILexicalBlock(scope: !2461, file: !922, line: 292, column: 9)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !835, line: 790, column: 9)
!2464 = distinct !DILexicalBlock(scope: !2463, file: !835, line: 792, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2464, file: !835, line: 793, column: 13)
!2466 = distinct !DILexicalBlock(scope: !2399, file: !895, line: 11, column: 23)
!2467 = distinct !DILexicalBlock(scope: !2466, file: !895, line: 11, column: 23)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !835, line: 814, column: 13)
!2469 = distinct !{!2469, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2470 = distinct !{!2470, !2469, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2471 = distinct !{!2471, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime"}
!2472 = distinct !{!2472, !2471, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime: argument 0"}
!2473 = distinct !DILocation(line: 815, column: 39, scope: !2468)
!2474 = distinct !DILocation(line: 79, column: 5, scope: !117, inlinedAt: !2473)
!2475 = distinct !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2474)
!2476 = distinct !DILocation(line: 168, column: 17, scope: !119, inlinedAt: !2475)
!2477 = distinct !DILocation(line: 256, column: 30, scope: !118, inlinedAt: !2476)
!2478 = distinct !DILocation(line: 660, column: 11, scope: !121, inlinedAt: !2477)
!2479 = distinct !DILocation(line: 660, column: 35, scope: !121, inlinedAt: !2477)
!2480 = distinct !{!2480, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt"}
!2481 = distinct !{!2481, !2480, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt: argument 0"}
!2482 = distinct !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2475)
!2483 = distinct !DILocation(line: 28, column: 26, scope: !128, inlinedAt: !2482)
!2484 = distinct !DILocation(line: 162, column: 37, scope: !116, inlinedAt: !2474)
!2485 = distinct !DILexicalBlock(scope: !2468, file: !835, line: 815, column: 17)
!2486 = distinct !DISubprogram(name: "branch<chrono::naive::datetime::NaiveDateTime, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs9o5SvTbM2BP_6chrono5naive8datetime13NaiveDateTimeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCs2Aa799EbAFJ_11polars_time", scope: !847, file: !845, line: 2172, type: !769, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2487 = distinct !DISubprogram(name: "from_residual<i64, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2Aa799EbAFJ_11polars_time", scope: !856, file: !845, line: 2187, type: !769, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2488 = distinct !DILexicalBlock(scope: !2487, file: !845, line: 2189, column: 13)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !835, line: 817, column: 88)
!2490 = distinct !DILexicalBlock(scope: !2489, file: !835, line: 817, column: 88)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !835, line: 816, column: 17)
!2492 = distinct !DILocation(line: 818, column: 20, scope: !2491)
!2493 = !DILocation(line: 757, column: 25, scope: !2398)
!2494 = !DILocation(line: 2128, column: 13, scope: !2400, inlinedAt: !2493)
!2495 = !DILocation(line: 265, column: 15, scope: !2401, inlinedAt: !2494)
!2496 = !{!2407, !2405}
!2497 = !{!2416, !2407, !2405}
!2498 = !{!2423, !2421}
!2499 = !{!2433, !2423, !2421}
!2500 = !DILocation(line: 0, scope: !2398)
!2501 = !DILocation(line: 779, column: 31, scope: !2440)
!2502 = !DILocation(line: 988, column: 19, scope: !2441, inlinedAt: !2501)
!2503 = !DILocation(line: 1532, column: 14, scope: !2442, inlinedAt: !2502)
!2504 = !DILocation(line: 1410, column: 14, scope: !2443, inlinedAt: !2503)
!2505 = !DILocation(line: 780, column: 31, scope: !2440)
!2506 = !DILocation(line: 1008, column: 19, scope: !2445, inlinedAt: !2505)
!2507 = !DILocation(line: 1549, column: 14, scope: !2446, inlinedAt: !2506)
!2508 = !DILocation(line: 1423, column: 14, scope: !2447, inlinedAt: !2507)
!2509 = !DILocation(line: 952, column: 9, scope: !2444, inlinedAt: !2508)
!2510 = !DILocation(line: 1423, column: 20, scope: !2447, inlinedAt: !2507)
!2511 = !DILocation(line: 789, column: 33, scope: !2454)
!2512 = !DILexicalBlockFile(scope: !2444, file: !914, discriminator: 2)
!2513 = !DILocation(line: 790, column: 53, scope: !2457)
!2514 = !DILocation(line: 1048, column: 19, scope: !2458, inlinedAt: !2513)
!2515 = !DILocation(line: 1606, column: 14, scope: !2459, inlinedAt: !2514)
!2516 = !DILocation(line: 1429, column: 14, scope: !2460, inlinedAt: !2515)
!2517 = !DILocation(line: 952, column: 9, scope: !2512, inlinedAt: !2516)
!2518 = !DILocation(line: 1429, column: 20, scope: !2460, inlinedAt: !2515)
!2519 = !DILocation(line: 792, column: 42, scope: !2463)
!2520 = !DILexicalBlockFile(scope: !2401, file: !819, discriminator: 2)
!2521 = !DILexicalBlockFile(scope: !2400, file: !819, discriminator: 2)
!2522 = !DILocation(line: 814, column: 25, scope: !2463)
!2523 = !DILocation(line: 2128, column: 13, scope: !2521, inlinedAt: !2522)
!2524 = !DILocation(line: 265, column: 15, scope: !2520, inlinedAt: !2523)
!2525 = !{!2472, !2470}
!2526 = !{!2481, !2472, !2470}
!2527 = !DILocation(line: 817, column: 21, scope: !2485)
!2528 = !DILexicalBlockFile(scope: !2490, file: !835, discriminator: 2)
!2529 = !DILocation(line: 817, column: 21, scope: !2528)
!2530 = !DILocation(line: 804, column: 33, scope: !2463)
!2531 = !DILocation(line: 754, column: 23, scope: !2398)
!2532 = !DILocation(line: 754, column: 17, scope: !2398)
!2533 = !DILocation(line: 11, column: 23, scope: !2399, inlinedAt: !2495)
!2534 = !DILocation(line: 11, column: 23, scope: !2403, inlinedAt: !2495)
!2535 = !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2409)
!2536 = !DILocation(line: 253, column: 12, scope: !118, inlinedAt: !2411)
!2537 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2413)
!2538 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2413)
!2539 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2414)
!2540 = !DILocation(line: 257, column: 42, scope: !125, inlinedAt: !2411)
!2541 = !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2410)
!2542 = !DILocation(line: 564, column: 9, scope: !127, inlinedAt: !2418)
!2543 = !DILocation(line: 169, column: 18, scope: !126, inlinedAt: !2410)
!2544 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !2410)
!2545 = !DILocation(line: 969, column: 15, scope: !129, inlinedAt: !2419)
!2546 = !DILocation(line: 969, column: 9, scope: !129, inlinedAt: !2419)
!2547 = !DILocation(line: 971, column: 21, scope: !129, inlinedAt: !2419)
!2548 = !DILocation(line: 970, column: 18, scope: !129, inlinedAt: !2419)
!2549 = !DILocation(line: 162, column: 78, scope: !116, inlinedAt: !2409)
!2550 = !DILocation(line: 764, column: 37, scope: !2398)
!2551 = !DILocation(line: 765, column: 56, scope: !2398)
!2552 = !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2426)
!2553 = !DILocation(line: 253, column: 12, scope: !118, inlinedAt: !2428)
!2554 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2430)
!2555 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2430)
!2556 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2431)
!2557 = !DILocation(line: 257, column: 42, scope: !125, inlinedAt: !2428)
!2558 = !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2427)
!2559 = !DILocation(line: 564, column: 9, scope: !127, inlinedAt: !2435)
!2560 = !DILocation(line: 169, column: 18, scope: !126, inlinedAt: !2427)
!2561 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !2427)
!2562 = !DILocation(line: 969, column: 15, scope: !129, inlinedAt: !2436)
!2563 = !DILocation(line: 969, column: 9, scope: !129, inlinedAt: !2436)
!2564 = !DILocation(line: 971, column: 21, scope: !129, inlinedAt: !2436)
!2565 = !DILocation(line: 970, column: 18, scope: !129, inlinedAt: !2436)
!2566 = !DILocation(line: 162, column: 78, scope: !116, inlinedAt: !2426)
!2567 = !DILocation(line: 759, column: 57, scope: !2424)
!2568 = !DILocation(line: 759, column: 37, scope: !2424)
!2569 = !DILocation(line: 759, column: 76, scope: !2424)
!2570 = !DILocation(line: 761, column: 13, scope: !2398)
!2571 = !DILocation(line: 79, column: 5, scope: !130, inlinedAt: !2500)
!2572 = !DILocation(line: 771, column: 34, scope: !2437)
!2573 = !DILocation(line: 772, column: 12, scope: !2438)
!2574 = !DILocation(line: 775, column: 17, scope: !2438)
!2575 = !DILocation(line: 1502, column: 9, scope: !2439, inlinedAt: !2504)
!2576 = !DILocation(line: 1410, column: 9, scope: !2443, inlinedAt: !2503)
!2577 = !DILocation(line: 779, column: 13, scope: !2440)
!2578 = !DILocation(line: 952, column: 22, scope: !2444, inlinedAt: !2508)
!2579 = !DILocation(line: 264, column: 37, scope: !2449, inlinedAt: !2509)
!2580 = !DILocation(line: 264, column: 27, scope: !2449, inlinedAt: !2509)
!2581 = !DILocation(line: 264, column: 14, scope: !2449, inlinedAt: !2509)
!2582 = !DILocation(line: 271, column: 9, scope: !2451, inlinedAt: !2510)
!2583 = !DILocation(line: 780, column: 13, scope: !2440)
!2584 = !DILocation(line: 783, column: 44, scope: !2453)
!2585 = !DILocation(line: 783, column: 36, scope: !2453)
!2586 = !DILocation(line: 782, column: 21, scope: !2452)
!2587 = !DILocation(line: 784, column: 12, scope: !2454)
!2588 = !DILocation(line: 8, column: 5, scope: !2455, inlinedAt: !2511)
!2589 = !DILocation(line: 8, column: 23, scope: !2455, inlinedAt: !2511)
!2590 = !DILocation(line: 8, column: 42, scope: !2455, inlinedAt: !2511)
!2591 = !DILocation(line: 8, column: 22, scope: !2455, inlinedAt: !2511)
!2592 = !DILocation(line: 8, scope: !2455, inlinedAt: !2511)
!2593 = !DILocation(line: 264, column: 14, scope: !2456, inlinedAt: !2517)
!2594 = !DILocation(line: 293, column: 9, scope: !2462, inlinedAt: !2518)
!2595 = !DILocation(line: 790, column: 34, scope: !2457)
!2596 = !DILocation(line: 791, column: 15, scope: !2463)
!2597 = !DILocation(line: 792, column: 55, scope: !2463)
!2598 = !DILocation(line: 8, column: 5, scope: !2455, inlinedAt: !2519)
!2599 = !DILocation(line: 794, column: 18, scope: !2464)
!2600 = !DILocation(line: 8, column: 23, scope: !2455, inlinedAt: !2519)
!2601 = !DILocation(line: 8, column: 42, scope: !2455, inlinedAt: !2519)
!2602 = !DILocation(line: 794, column: 50, scope: !2464)
!2603 = !DILocation(line: 794, column: 35, scope: !2464)
!2604 = !DILocation(line: 8, scope: !2455, inlinedAt: !2519)
!2605 = !DILocation(line: 794, column: 49, scope: !2464)
!2606 = !DILocation(line: 794, scope: !2464)
!2607 = !DILocation(line: 795, column: 13, scope: !2465)
!2608 = !DILocation(line: 796, column: 13, scope: !2465)
!2609 = !DILocation(line: 0, scope: !2454)
!2610 = !DILocation(line: 0, scope: !2457)
!2611 = !DILocation(line: 0, scope: !2440)
!2612 = !DILocation(line: 800, column: 15, scope: !2463)
!2613 = !DILocation(line: 811, column: 9, scope: !2463)
!2614 = !DILocation(line: 801, column: 13, scope: !2463)
!2615 = !DILocation(line: 802, column: 16, scope: !2463)
!2616 = !DILocation(line: 11, column: 23, scope: !2399, inlinedAt: !2524)
!2617 = !DILocation(line: 11, column: 23, scope: !2467, inlinedAt: !2524)
!2618 = !DILocation(line: 820, column: 25, scope: !2463)
!2619 = !DILocation(line: 820, column: 21, scope: !2463)
!2620 = !DILocation(line: 820, column: 56, scope: !2463)
!2621 = !DILocation(line: 815, column: 65, scope: !2468)
!2622 = !DILocation(line: 815, column: 61, scope: !2468)
!2623 = !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !2474)
!2624 = !DILocation(line: 253, column: 12, scope: !118, inlinedAt: !2476)
!2625 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2478)
!2626 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2478)
!2627 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2479)
!2628 = !DILocation(line: 257, column: 42, scope: !125, inlinedAt: !2476)
!2629 = !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !2475)
!2630 = !DILocation(line: 564, column: 9, scope: !127, inlinedAt: !2483)
!2631 = !DILocation(line: 169, column: 18, scope: !126, inlinedAt: !2475)
!2632 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !2475)
!2633 = !DILocation(line: 969, column: 15, scope: !129, inlinedAt: !2484)
!2634 = !DILocation(line: 969, column: 9, scope: !129, inlinedAt: !2484)
!2635 = !DILocation(line: 971, column: 21, scope: !129, inlinedAt: !2484)
!2636 = !DILocation(line: 970, column: 18, scope: !129, inlinedAt: !2484)
!2637 = !DILocation(line: 162, column: 78, scope: !116, inlinedAt: !2474)
!2638 = !DILocation(line: 817, column: 26, scope: !2485)
!2639 = !DILocation(line: 2173, column: 15, scope: !2486, inlinedAt: !2527)
!2640 = !DILocation(line: 0, scope: !2486, inlinedAt: !2527)
!2641 = !DILocation(line: 2173, column: 9, scope: !2486, inlinedAt: !2527)
!2642 = !DILocation(line: 2175, column: 17, scope: !2486, inlinedAt: !2527)
!2643 = !DILocation(line: 2189, column: 23, scope: !2488, inlinedAt: !2529)
!2644 = !DILocation(line: 817, column: 88, scope: !2485)
!2645 = !DILocation(line: 817, column: 89, scope: !2485)
!2646 = !DILocation(line: 822, column: 5, scope: !2396)
!2647 = !DILocation(line: 818, column: 20, scope: !2491)
!2648 = !DILocation(line: 79, column: 5, scope: !130, inlinedAt: !2492)
!2649 = !DILocation(line: 818, column: 55, scope: !2491)
!2650 = !DILocation(line: 819, column: 13, scope: !2463)
!2651 = !DILocation(line: 0, scope: !2463)
!2652 = !DILocation(line: 822, column: 6, scope: !2396)
!2653 = !DILocation(line: 803, column: 17, scope: !2463)
!2654 = !DILocation(line: 804, column: 46, scope: !2463)
!2655 = !DILocation(line: 8, column: 5, scope: !2455, inlinedAt: !2530)
!2656 = !DILocation(line: 8, column: 23, scope: !2455, inlinedAt: !2530)
!2657 = !DILocation(line: 8, column: 42, scope: !2455, inlinedAt: !2530)
!2658 = !DILocation(line: 8, column: 22, scope: !2455, inlinedAt: !2530)
!2659 = !DILocation(line: 807, column: 70, scope: !2463)
!2660 = !DILocation(line: 807, column: 31, scope: !2463)
!2661 = !DILocation(line: 807, column: 46, scope: !2463)
!2662 = !DILocation(line: 807, column: 13, scope: !2463)
!2663 = !DILocation(line: 808, column: 13, scope: !2463)
!2664 = distinct !DISubprogram(name: "truncate_monthly<fn(i64) -> chrono::naive::datetime::NaiveDateTime, fn(chrono::naive::datetime::NaiveDateTime) -> i64>", linkageName: "_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration16truncate_monthlyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_nsEBa_", scope: !839, file: !835, line: 740, type: !769, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2665 = distinct !DILexicalBlock(scope: !2664, file: !835, line: 752, column: 9)
!2666 = distinct !DILexicalBlock(scope: !2665, file: !835, line: 753, column: 9)
!2667 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs9_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !899, file: !895, line: 11, type: !769, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2668 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtB7_9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !822, file: !819, line: 2127, type: !769, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2669 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !852, file: !819, line: 264, type: !769, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !895, line: 11, column: 23)
!2671 = distinct !DILexicalBlock(scope: !2670, file: !895, line: 11, column: 23)
!2672 = distinct !{!2672, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2673 = distinct !{!2673, !2672, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2674 = distinct !{!2674, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime"}
!2675 = distinct !{!2675, !2674, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime: argument 0"}
!2676 = distinct !DILocation(line: 763, column: 35, scope: !2666)
!2677 = distinct !DILocation(line: 79, column: 5, scope: !132, inlinedAt: !2676)
!2678 = distinct !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2677)
!2679 = distinct !DILocation(line: 194, column: 17, scope: !135, inlinedAt: !2678)
!2680 = distinct !DILocation(line: 282, column: 29, scope: !134, inlinedAt: !2679)
!2681 = distinct !DILocation(line: 660, column: 11, scope: !133, inlinedAt: !2680)
!2682 = distinct !DILocation(line: 660, column: 35, scope: !133, inlinedAt: !2680)
!2683 = distinct !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2678)
!2684 = distinct !DILocation(line: 28, column: 26, scope: !139, inlinedAt: !2683)
!2685 = distinct !DILocation(line: 188, column: 37, scope: !131, inlinedAt: !2677)
!2686 = distinct !{!2686, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2687 = distinct !{!2687, !2686, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2688 = distinct !{!2688, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime"}
!2689 = distinct !{!2689, !2688, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime: argument 0"}
!2690 = distinct !DILexicalBlock(scope: !2666, file: !835, line: 757, column: 13)
!2691 = distinct !DILocation(line: 758, column: 35, scope: !2690)
!2692 = distinct !DILocation(line: 79, column: 5, scope: !132, inlinedAt: !2691)
!2693 = distinct !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2692)
!2694 = distinct !DILocation(line: 194, column: 17, scope: !135, inlinedAt: !2693)
!2695 = distinct !DILocation(line: 282, column: 29, scope: !134, inlinedAt: !2694)
!2696 = distinct !DILocation(line: 660, column: 11, scope: !133, inlinedAt: !2695)
!2697 = distinct !DILocation(line: 660, column: 35, scope: !133, inlinedAt: !2695)
!2698 = distinct !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2693)
!2699 = distinct !DILocation(line: 28, column: 26, scope: !139, inlinedAt: !2698)
!2700 = distinct !DILocation(line: 188, column: 37, scope: !131, inlinedAt: !2692)
!2701 = distinct !DILexicalBlock(scope: !2666, file: !835, line: 754, column: 9)
!2702 = distinct !DILexicalBlock(scope: !2701, file: !835, line: 771, column: 9)
!2703 = distinct !DISubprogram(name: "yof", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3yof", scope: !917, file: !914, line: 1501, type: !769, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2704 = distinct !DILexicalBlock(scope: !2702, file: !835, line: 775, column: 9)
!2705 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike4year", scope: !920, file: !918, line: 987, type: !769, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2706 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike4year", scope: !921, file: !914, line: 1531, type: !769, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2707 = distinct !DISubprogram(name: "year", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate4year", scope: !917, file: !914, line: 1409, type: !769, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2708 = distinct !DISubprogram(name: "mdf", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3mdf", scope: !917, file: !914, line: 951, type: !769, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2709 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike5month", scope: !920, file: !918, line: 1007, type: !769, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2710 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike5month", scope: !921, file: !914, line: 1548, type: !769, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2711 = distinct !DISubprogram(name: "month", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate5month", scope: !917, file: !914, line: 1422, type: !769, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2712 = distinct !DISubprogram(name: "from_ol", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf7from_ol", scope: !924, file: !922, line: 261, type: !769, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2713 = distinct !DILexicalBlock(scope: !2712, file: !922, line: 261, column: 78)
!2714 = distinct !DISubprogram(name: "month", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf5month", scope: !924, file: !922, line: 269, type: !769, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2715 = distinct !DILexicalBlock(scope: !2714, file: !922, line: 270, column: 9)
!2716 = distinct !DILexicalBlock(scope: !2704, file: !835, line: 778, column: 9)
!2717 = distinct !DILexicalBlock(scope: !2716, file: !835, line: 782, column: 9)
!2718 = distinct !DILexicalBlock(scope: !2717, file: !835, line: 783, column: 9)
!2719 = distinct !DISubprogram(name: "is_leap_year", linkageName: "_RNvNtNtCs2Aa799EbAFJ_11polars_time7windows8calendar12is_leap_year", scope: !926, file: !925, line: 7, type: !769, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2720 = distinct !DILexicalBlock(scope: !2712, file: !922, line: 261, column: 78)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !835, line: 789, column: 9)
!2722 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike3day", scope: !920, file: !918, line: 1047, type: !769, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2723 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike3day", scope: !921, file: !914, line: 1605, type: !769, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2724 = distinct !DISubprogram(name: "day", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3day", scope: !917, file: !914, line: 1428, type: !769, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2725 = distinct !DISubprogram(name: "day", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf3day", scope: !924, file: !922, line: 291, type: !769, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2726 = distinct !DILexicalBlock(scope: !2725, file: !922, line: 292, column: 9)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !835, line: 790, column: 9)
!2728 = distinct !DILexicalBlock(scope: !2727, file: !835, line: 792, column: 13)
!2729 = distinct !DILexicalBlock(scope: !2728, file: !835, line: 793, column: 13)
!2730 = distinct !DILexicalBlock(scope: !2667, file: !895, line: 11, column: 23)
!2731 = distinct !DILexicalBlock(scope: !2730, file: !895, line: 11, column: 23)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !835, line: 814, column: 13)
!2733 = distinct !{!2733, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2734 = distinct !{!2734, !2733, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2735 = distinct !{!2735, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime"}
!2736 = distinct !{!2736, !2735, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime: argument 0"}
!2737 = distinct !DILocation(line: 815, column: 39, scope: !2732)
!2738 = distinct !DILocation(line: 79, column: 5, scope: !132, inlinedAt: !2737)
!2739 = distinct !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2738)
!2740 = distinct !DILocation(line: 194, column: 17, scope: !135, inlinedAt: !2739)
!2741 = distinct !DILocation(line: 282, column: 29, scope: !134, inlinedAt: !2740)
!2742 = distinct !DILocation(line: 660, column: 11, scope: !133, inlinedAt: !2741)
!2743 = distinct !DILocation(line: 660, column: 35, scope: !133, inlinedAt: !2741)
!2744 = distinct !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2739)
!2745 = distinct !DILocation(line: 28, column: 26, scope: !139, inlinedAt: !2744)
!2746 = distinct !DILocation(line: 188, column: 37, scope: !131, inlinedAt: !2738)
!2747 = distinct !DILexicalBlock(scope: !2732, file: !835, line: 815, column: 17)
!2748 = distinct !DISubprogram(name: "branch<chrono::naive::datetime::NaiveDateTime, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs9o5SvTbM2BP_6chrono5naive8datetime13NaiveDateTimeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCs2Aa799EbAFJ_11polars_time", scope: !847, file: !845, line: 2172, type: !769, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2749 = distinct !DISubprogram(name: "from_residual<i64, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2Aa799EbAFJ_11polars_time", scope: !856, file: !845, line: 2187, type: !769, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2750 = distinct !DILexicalBlock(scope: !2749, file: !845, line: 2189, column: 13)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !835, line: 817, column: 88)
!2752 = distinct !DILexicalBlock(scope: !2751, file: !835, line: 817, column: 88)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !835, line: 816, column: 17)
!2754 = distinct !DILocation(line: 818, column: 20, scope: !2753)
!2755 = !DILocation(line: 757, column: 25, scope: !2666)
!2756 = !DILocation(line: 2128, column: 13, scope: !2668, inlinedAt: !2755)
!2757 = !DILocation(line: 265, column: 15, scope: !2669, inlinedAt: !2756)
!2758 = !{!2675, !2673}
!2759 = !{!2689, !2687}
!2760 = !DILocation(line: 0, scope: !2666)
!2761 = !DILocation(line: 779, column: 31, scope: !2704)
!2762 = !DILocation(line: 988, column: 19, scope: !2705, inlinedAt: !2761)
!2763 = !DILocation(line: 1532, column: 14, scope: !2706, inlinedAt: !2762)
!2764 = !DILocation(line: 1410, column: 14, scope: !2707, inlinedAt: !2763)
!2765 = !DILocation(line: 780, column: 31, scope: !2704)
!2766 = !DILocation(line: 1008, column: 19, scope: !2709, inlinedAt: !2765)
!2767 = !DILocation(line: 1549, column: 14, scope: !2710, inlinedAt: !2766)
!2768 = !DILocation(line: 1423, column: 14, scope: !2711, inlinedAt: !2767)
!2769 = !DILocation(line: 952, column: 9, scope: !2708, inlinedAt: !2768)
!2770 = !DILocation(line: 1423, column: 20, scope: !2711, inlinedAt: !2767)
!2771 = !DILocation(line: 789, column: 33, scope: !2718)
!2772 = !DILexicalBlockFile(scope: !2708, file: !914, discriminator: 2)
!2773 = !DILocation(line: 790, column: 53, scope: !2721)
!2774 = !DILocation(line: 1048, column: 19, scope: !2722, inlinedAt: !2773)
!2775 = !DILocation(line: 1606, column: 14, scope: !2723, inlinedAt: !2774)
!2776 = !DILocation(line: 1429, column: 14, scope: !2724, inlinedAt: !2775)
!2777 = !DILocation(line: 952, column: 9, scope: !2772, inlinedAt: !2776)
!2778 = !DILocation(line: 1429, column: 20, scope: !2724, inlinedAt: !2775)
!2779 = !DILocation(line: 792, column: 42, scope: !2727)
!2780 = !DILexicalBlockFile(scope: !2669, file: !819, discriminator: 2)
!2781 = !DILexicalBlockFile(scope: !2668, file: !819, discriminator: 2)
!2782 = !DILocation(line: 814, column: 25, scope: !2727)
!2783 = !DILocation(line: 2128, column: 13, scope: !2781, inlinedAt: !2782)
!2784 = !DILocation(line: 265, column: 15, scope: !2780, inlinedAt: !2783)
!2785 = !{!2736, !2734}
!2786 = !DILocation(line: 817, column: 21, scope: !2747)
!2787 = !DILexicalBlockFile(scope: !2752, file: !835, discriminator: 2)
!2788 = !DILocation(line: 817, column: 21, scope: !2787)
!2789 = !DILocation(line: 804, column: 33, scope: !2727)
!2790 = !DILocation(line: 754, column: 23, scope: !2666)
!2791 = !DILocation(line: 754, column: 17, scope: !2666)
!2792 = !DILocation(line: 11, column: 23, scope: !2667, inlinedAt: !2757)
!2793 = !DILocation(line: 11, column: 23, scope: !2671, inlinedAt: !2757)
!2794 = !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2677)
!2795 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2681)
!2796 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2681)
!2797 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2682)
!2798 = !DILocation(line: 283, column: 34, scope: !136, inlinedAt: !2679)
!2799 = !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2678)
!2800 = !DILocation(line: 564, column: 9, scope: !138, inlinedAt: !2684)
!2801 = !DILocation(line: 195, column: 18, scope: !137, inlinedAt: !2678)
!2802 = !DILocation(line: 195, column: 42, scope: !137, inlinedAt: !2678)
!2803 = !DILocation(line: 969, column: 15, scope: !140, inlinedAt: !2685)
!2804 = !DILocation(line: 969, column: 9, scope: !140, inlinedAt: !2685)
!2805 = !DILocation(line: 971, column: 21, scope: !140, inlinedAt: !2685)
!2806 = !DILocation(line: 970, column: 18, scope: !140, inlinedAt: !2685)
!2807 = !DILocation(line: 188, column: 78, scope: !131, inlinedAt: !2677)
!2808 = !DILocation(line: 764, column: 37, scope: !2666)
!2809 = !DILocation(line: 765, column: 56, scope: !2666)
!2810 = !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2692)
!2811 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2696)
!2812 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2696)
!2813 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2697)
!2814 = !DILocation(line: 283, column: 34, scope: !136, inlinedAt: !2694)
!2815 = !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2693)
!2816 = !DILocation(line: 564, column: 9, scope: !138, inlinedAt: !2699)
!2817 = !DILocation(line: 195, column: 18, scope: !137, inlinedAt: !2693)
!2818 = !DILocation(line: 195, column: 42, scope: !137, inlinedAt: !2693)
!2819 = !DILocation(line: 969, column: 15, scope: !140, inlinedAt: !2700)
!2820 = !DILocation(line: 969, column: 9, scope: !140, inlinedAt: !2700)
!2821 = !DILocation(line: 971, column: 21, scope: !140, inlinedAt: !2700)
!2822 = !DILocation(line: 970, column: 18, scope: !140, inlinedAt: !2700)
!2823 = !DILocation(line: 188, column: 78, scope: !131, inlinedAt: !2692)
!2824 = !DILocation(line: 759, column: 57, scope: !2690)
!2825 = !DILocation(line: 759, column: 37, scope: !2690)
!2826 = !DILocation(line: 759, column: 76, scope: !2690)
!2827 = !DILocation(line: 761, column: 13, scope: !2666)
!2828 = !DILocation(line: 79, column: 5, scope: !141, inlinedAt: !2760)
!2829 = !DILocation(line: 771, column: 34, scope: !2701)
!2830 = !DILocation(line: 772, column: 12, scope: !2702)
!2831 = !DILocation(line: 775, column: 17, scope: !2702)
!2832 = !DILocation(line: 1502, column: 9, scope: !2703, inlinedAt: !2764)
!2833 = !DILocation(line: 1410, column: 9, scope: !2707, inlinedAt: !2763)
!2834 = !DILocation(line: 779, column: 13, scope: !2704)
!2835 = !DILocation(line: 952, column: 22, scope: !2708, inlinedAt: !2768)
!2836 = !DILocation(line: 264, column: 37, scope: !2713, inlinedAt: !2769)
!2837 = !DILocation(line: 264, column: 27, scope: !2713, inlinedAt: !2769)
!2838 = !DILocation(line: 264, column: 14, scope: !2713, inlinedAt: !2769)
!2839 = !DILocation(line: 271, column: 9, scope: !2715, inlinedAt: !2770)
!2840 = !DILocation(line: 780, column: 13, scope: !2704)
!2841 = !DILocation(line: 783, column: 44, scope: !2717)
!2842 = !DILocation(line: 783, column: 36, scope: !2717)
!2843 = !DILocation(line: 782, column: 21, scope: !2716)
!2844 = !DILocation(line: 784, column: 12, scope: !2718)
!2845 = !DILocation(line: 8, column: 5, scope: !2719, inlinedAt: !2771)
!2846 = !DILocation(line: 8, column: 23, scope: !2719, inlinedAt: !2771)
!2847 = !DILocation(line: 8, column: 42, scope: !2719, inlinedAt: !2771)
!2848 = !DILocation(line: 8, column: 22, scope: !2719, inlinedAt: !2771)
!2849 = !DILocation(line: 8, scope: !2719, inlinedAt: !2771)
!2850 = !DILocation(line: 264, column: 14, scope: !2720, inlinedAt: !2777)
!2851 = !DILocation(line: 293, column: 9, scope: !2726, inlinedAt: !2778)
!2852 = !DILocation(line: 790, column: 34, scope: !2721)
!2853 = !DILocation(line: 791, column: 15, scope: !2727)
!2854 = !DILocation(line: 792, column: 55, scope: !2727)
!2855 = !DILocation(line: 8, column: 5, scope: !2719, inlinedAt: !2779)
!2856 = !DILocation(line: 794, column: 18, scope: !2728)
!2857 = !DILocation(line: 8, column: 23, scope: !2719, inlinedAt: !2779)
!2858 = !DILocation(line: 8, column: 42, scope: !2719, inlinedAt: !2779)
!2859 = !DILocation(line: 794, column: 50, scope: !2728)
!2860 = !DILocation(line: 794, column: 35, scope: !2728)
!2861 = !DILocation(line: 8, scope: !2719, inlinedAt: !2779)
!2862 = !DILocation(line: 794, column: 49, scope: !2728)
!2863 = !DILocation(line: 794, scope: !2728)
!2864 = !DILocation(line: 795, column: 13, scope: !2729)
!2865 = !DILocation(line: 796, column: 13, scope: !2729)
!2866 = !DILocation(line: 0, scope: !2718)
!2867 = !DILocation(line: 0, scope: !2721)
!2868 = !DILocation(line: 0, scope: !2704)
!2869 = !DILocation(line: 800, column: 15, scope: !2727)
!2870 = !DILocation(line: 811, column: 9, scope: !2727)
!2871 = !DILocation(line: 801, column: 13, scope: !2727)
!2872 = !DILocation(line: 802, column: 16, scope: !2727)
!2873 = !DILocation(line: 11, column: 23, scope: !2667, inlinedAt: !2784)
!2874 = !DILocation(line: 11, column: 23, scope: !2731, inlinedAt: !2784)
!2875 = !DILocation(line: 820, column: 25, scope: !2727)
!2876 = !DILocation(line: 820, column: 21, scope: !2727)
!2877 = !DILocation(line: 820, column: 56, scope: !2727)
!2878 = !DILocation(line: 815, column: 65, scope: !2732)
!2879 = !DILocation(line: 815, column: 61, scope: !2732)
!2880 = !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !2738)
!2881 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2742)
!2882 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2742)
!2883 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2743)
!2884 = !DILocation(line: 283, column: 34, scope: !136, inlinedAt: !2740)
!2885 = !DILocation(line: 195, column: 5, scope: !137, inlinedAt: !2739)
!2886 = !DILocation(line: 564, column: 9, scope: !138, inlinedAt: !2745)
!2887 = !DILocation(line: 195, column: 18, scope: !137, inlinedAt: !2739)
!2888 = !DILocation(line: 195, column: 42, scope: !137, inlinedAt: !2739)
!2889 = !DILocation(line: 969, column: 15, scope: !140, inlinedAt: !2746)
!2890 = !DILocation(line: 969, column: 9, scope: !140, inlinedAt: !2746)
!2891 = !DILocation(line: 971, column: 21, scope: !140, inlinedAt: !2746)
!2892 = !DILocation(line: 970, column: 18, scope: !140, inlinedAt: !2746)
!2893 = !DILocation(line: 188, column: 78, scope: !131, inlinedAt: !2738)
!2894 = !DILocation(line: 817, column: 26, scope: !2747)
!2895 = !DILocation(line: 2173, column: 15, scope: !2748, inlinedAt: !2786)
!2896 = !DILocation(line: 0, scope: !2748, inlinedAt: !2786)
!2897 = !DILocation(line: 2173, column: 9, scope: !2748, inlinedAt: !2786)
!2898 = !DILocation(line: 2175, column: 17, scope: !2748, inlinedAt: !2786)
!2899 = !DILocation(line: 2189, column: 23, scope: !2750, inlinedAt: !2788)
!2900 = !DILocation(line: 817, column: 88, scope: !2747)
!2901 = !DILocation(line: 817, column: 89, scope: !2747)
!2902 = !DILocation(line: 822, column: 5, scope: !2664)
!2903 = !DILocation(line: 818, column: 20, scope: !2753)
!2904 = !DILocation(line: 79, column: 5, scope: !141, inlinedAt: !2754)
!2905 = !DILocation(line: 818, column: 55, scope: !2753)
!2906 = !DILocation(line: 819, column: 13, scope: !2727)
!2907 = !DILocation(line: 0, scope: !2727)
!2908 = !DILocation(line: 822, column: 6, scope: !2664)
!2909 = !DILocation(line: 803, column: 17, scope: !2727)
!2910 = !DILocation(line: 804, column: 46, scope: !2727)
!2911 = !DILocation(line: 8, column: 5, scope: !2719, inlinedAt: !2789)
!2912 = !DILocation(line: 8, column: 23, scope: !2719, inlinedAt: !2789)
!2913 = !DILocation(line: 8, column: 42, scope: !2719, inlinedAt: !2789)
!2914 = !DILocation(line: 8, column: 22, scope: !2719, inlinedAt: !2789)
!2915 = !DILocation(line: 807, column: 70, scope: !2727)
!2916 = !DILocation(line: 807, column: 31, scope: !2727)
!2917 = !DILocation(line: 807, column: 46, scope: !2727)
!2918 = !DILocation(line: 807, column: 13, scope: !2727)
!2919 = !DILocation(line: 808, column: 13, scope: !2727)
!2920 = distinct !DISubprogram(name: "truncate_monthly<fn(i64) -> chrono::naive::datetime::NaiveDateTime, fn(chrono::naive::datetime::NaiveDateTime) -> i64>", linkageName: "_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration16truncate_monthlyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_usEBa_", scope: !839, file: !835, line: 740, type: !769, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2921 = distinct !DILexicalBlock(scope: !2920, file: !835, line: 752, column: 9)
!2922 = distinct !DILexicalBlock(scope: !2921, file: !835, line: 753, column: 9)
!2923 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs9_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !899, file: !895, line: 11, type: !769, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2924 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtB7_9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !822, file: !819, line: 2127, type: !769, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2925 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !852, file: !819, line: 264, type: !769, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2926 = distinct !DILexicalBlock(scope: !2923, file: !895, line: 11, column: 23)
!2927 = distinct !DILexicalBlock(scope: !2926, file: !895, line: 11, column: 23)
!2928 = distinct !{!2928, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2929 = distinct !{!2929, !2928, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2930 = distinct !{!2930, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime"}
!2931 = distinct !{!2931, !2930, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime: argument 0"}
!2932 = distinct !DILocation(line: 763, column: 35, scope: !2922)
!2933 = distinct !DILocation(line: 79, column: 5, scope: !143, inlinedAt: !2932)
!2934 = distinct !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2933)
!2935 = distinct !DILocation(line: 181, column: 17, scope: !146, inlinedAt: !2934)
!2936 = distinct !DILocation(line: 269, column: 30, scope: !145, inlinedAt: !2935)
!2937 = distinct !DILocation(line: 660, column: 11, scope: !144, inlinedAt: !2936)
!2938 = distinct !DILocation(line: 660, column: 35, scope: !144, inlinedAt: !2936)
!2939 = distinct !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2934)
!2940 = distinct !DILocation(line: 28, column: 26, scope: !150, inlinedAt: !2939)
!2941 = distinct !DILocation(line: 175, column: 37, scope: !142, inlinedAt: !2933)
!2942 = distinct !{!2942, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2943 = distinct !{!2943, !2942, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2944 = distinct !{!2944, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime"}
!2945 = distinct !{!2945, !2944, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime: argument 0"}
!2946 = distinct !DILexicalBlock(scope: !2922, file: !835, line: 757, column: 13)
!2947 = distinct !DILocation(line: 758, column: 35, scope: !2946)
!2948 = distinct !DILocation(line: 79, column: 5, scope: !143, inlinedAt: !2947)
!2949 = distinct !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2948)
!2950 = distinct !DILocation(line: 181, column: 17, scope: !146, inlinedAt: !2949)
!2951 = distinct !DILocation(line: 269, column: 30, scope: !145, inlinedAt: !2950)
!2952 = distinct !DILocation(line: 660, column: 11, scope: !144, inlinedAt: !2951)
!2953 = distinct !DILocation(line: 660, column: 35, scope: !144, inlinedAt: !2951)
!2954 = distinct !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2949)
!2955 = distinct !DILocation(line: 28, column: 26, scope: !150, inlinedAt: !2954)
!2956 = distinct !DILocation(line: 175, column: 37, scope: !142, inlinedAt: !2948)
!2957 = distinct !DILexicalBlock(scope: !2922, file: !835, line: 754, column: 9)
!2958 = distinct !DILexicalBlock(scope: !2957, file: !835, line: 771, column: 9)
!2959 = distinct !DISubprogram(name: "yof", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3yof", scope: !917, file: !914, line: 1501, type: !769, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !835, line: 775, column: 9)
!2961 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike4year", scope: !920, file: !918, line: 987, type: !769, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2962 = distinct !DISubprogram(name: "year", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike4year", scope: !921, file: !914, line: 1531, type: !769, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2963 = distinct !DISubprogram(name: "year", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate4year", scope: !917, file: !914, line: 1409, type: !769, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2964 = distinct !DISubprogram(name: "mdf", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3mdf", scope: !917, file: !914, line: 951, type: !769, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2965 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike5month", scope: !920, file: !918, line: 1007, type: !769, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2966 = distinct !DISubprogram(name: "month", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike5month", scope: !921, file: !914, line: 1548, type: !769, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2967 = distinct !DISubprogram(name: "month", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate5month", scope: !917, file: !914, line: 1422, type: !769, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2968 = distinct !DISubprogram(name: "from_ol", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf7from_ol", scope: !924, file: !922, line: 261, type: !769, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2969 = distinct !DILexicalBlock(scope: !2968, file: !922, line: 261, column: 78)
!2970 = distinct !DISubprogram(name: "month", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf5month", scope: !924, file: !922, line: 269, type: !769, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2971 = distinct !DILexicalBlock(scope: !2970, file: !922, line: 270, column: 9)
!2972 = distinct !DILexicalBlock(scope: !2960, file: !835, line: 778, column: 9)
!2973 = distinct !DILexicalBlock(scope: !2972, file: !835, line: 782, column: 9)
!2974 = distinct !DILexicalBlock(scope: !2973, file: !835, line: 783, column: 9)
!2975 = distinct !DISubprogram(name: "is_leap_year", linkageName: "_RNvNtNtCs2Aa799EbAFJ_11polars_time7windows8calendar12is_leap_year", scope: !926, file: !925, line: 7, type: !769, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2976 = distinct !DILexicalBlock(scope: !2968, file: !922, line: 261, column: 78)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !835, line: 789, column: 9)
!2978 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs0_NtNtCs9o5SvTbM2BP_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtB9_6traits8Datelike3day", scope: !920, file: !918, line: 1047, type: !769, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2979 = distinct !DISubprogram(name: "day", linkageName: "_RNvXs_NtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB4_9NaiveDateNtNtB8_6traits8Datelike3day", scope: !921, file: !914, line: 1605, type: !769, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2980 = distinct !DISubprogram(name: "day", linkageName: "_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate3day", scope: !917, file: !914, line: 1428, type: !769, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2981 = distinct !DISubprogram(name: "day", linkageName: "_RNvMs0_NtNtCs9o5SvTbM2BP_6chrono5naive9internalsNtB5_3Mdf3day", scope: !924, file: !922, line: 291, type: !769, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!2982 = distinct !DILexicalBlock(scope: !2981, file: !922, line: 292, column: 9)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !835, line: 790, column: 9)
!2984 = distinct !DILexicalBlock(scope: !2983, file: !835, line: 792, column: 13)
!2985 = distinct !DILexicalBlock(scope: !2984, file: !835, line: 793, column: 13)
!2986 = distinct !DILexicalBlock(scope: !2923, file: !895, line: 11, column: 23)
!2987 = distinct !DILexicalBlock(scope: !2986, file: !895, line: 11, column: 23)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !835, line: 814, column: 13)
!2989 = distinct !{!2989, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!2990 = distinct !{!2990, !2989, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!2991 = distinct !{!2991, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime"}
!2992 = distinct !{!2992, !2991, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_us_to_datetime: argument 0"}
!2993 = distinct !DILocation(line: 815, column: 39, scope: !2988)
!2994 = distinct !DILocation(line: 79, column: 5, scope: !143, inlinedAt: !2993)
!2995 = distinct !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2994)
!2996 = distinct !DILocation(line: 181, column: 17, scope: !146, inlinedAt: !2995)
!2997 = distinct !DILocation(line: 269, column: 30, scope: !145, inlinedAt: !2996)
!2998 = distinct !DILocation(line: 660, column: 11, scope: !144, inlinedAt: !2997)
!2999 = distinct !DILocation(line: 660, column: 35, scope: !144, inlinedAt: !2997)
!3000 = distinct !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2995)
!3001 = distinct !DILocation(line: 28, column: 26, scope: !150, inlinedAt: !3000)
!3002 = distinct !DILocation(line: 175, column: 37, scope: !142, inlinedAt: !2994)
!3003 = distinct !DILexicalBlock(scope: !2988, file: !835, line: 815, column: 17)
!3004 = distinct !DISubprogram(name: "branch<chrono::naive::datetime::NaiveDateTime, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs9o5SvTbM2BP_6chrono5naive8datetime13NaiveDateTimeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCs2Aa799EbAFJ_11polars_time", scope: !847, file: !845, line: 2172, type: !769, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3005 = distinct !DISubprogram(name: "from_residual<i64, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2Aa799EbAFJ_11polars_time", scope: !856, file: !845, line: 2187, type: !769, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3006 = distinct !DILexicalBlock(scope: !3005, file: !845, line: 2189, column: 13)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !835, line: 817, column: 88)
!3008 = distinct !DILexicalBlock(scope: !3007, file: !835, line: 817, column: 88)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !835, line: 816, column: 17)
!3010 = distinct !DILocation(line: 818, column: 20, scope: !3009)
!3011 = !DILocation(line: 757, column: 25, scope: !2922)
!3012 = !DILocation(line: 2128, column: 13, scope: !2924, inlinedAt: !3011)
!3013 = !DILocation(line: 265, column: 15, scope: !2925, inlinedAt: !3012)
!3014 = !{!2931, !2929}
!3015 = !{!2945, !2943}
!3016 = !DILocation(line: 0, scope: !2922)
!3017 = !DILocation(line: 779, column: 31, scope: !2960)
!3018 = !DILocation(line: 988, column: 19, scope: !2961, inlinedAt: !3017)
!3019 = !DILocation(line: 1532, column: 14, scope: !2962, inlinedAt: !3018)
!3020 = !DILocation(line: 1410, column: 14, scope: !2963, inlinedAt: !3019)
!3021 = !DILocation(line: 780, column: 31, scope: !2960)
!3022 = !DILocation(line: 1008, column: 19, scope: !2965, inlinedAt: !3021)
!3023 = !DILocation(line: 1549, column: 14, scope: !2966, inlinedAt: !3022)
!3024 = !DILocation(line: 1423, column: 14, scope: !2967, inlinedAt: !3023)
!3025 = !DILocation(line: 952, column: 9, scope: !2964, inlinedAt: !3024)
!3026 = !DILocation(line: 1423, column: 20, scope: !2967, inlinedAt: !3023)
!3027 = !DILocation(line: 789, column: 33, scope: !2974)
!3028 = !DILexicalBlockFile(scope: !2964, file: !914, discriminator: 2)
!3029 = !DILocation(line: 790, column: 53, scope: !2977)
!3030 = !DILocation(line: 1048, column: 19, scope: !2978, inlinedAt: !3029)
!3031 = !DILocation(line: 1606, column: 14, scope: !2979, inlinedAt: !3030)
!3032 = !DILocation(line: 1429, column: 14, scope: !2980, inlinedAt: !3031)
!3033 = !DILocation(line: 952, column: 9, scope: !3028, inlinedAt: !3032)
!3034 = !DILocation(line: 1429, column: 20, scope: !2980, inlinedAt: !3031)
!3035 = !DILocation(line: 792, column: 42, scope: !2983)
!3036 = !DILexicalBlockFile(scope: !2925, file: !819, discriminator: 2)
!3037 = !DILexicalBlockFile(scope: !2924, file: !819, discriminator: 2)
!3038 = !DILocation(line: 814, column: 25, scope: !2983)
!3039 = !DILocation(line: 2128, column: 13, scope: !3037, inlinedAt: !3038)
!3040 = !DILocation(line: 265, column: 15, scope: !3036, inlinedAt: !3039)
!3041 = !{!2992, !2990}
!3042 = !DILocation(line: 817, column: 21, scope: !3003)
!3043 = !DILexicalBlockFile(scope: !3008, file: !835, discriminator: 2)
!3044 = !DILocation(line: 817, column: 21, scope: !3043)
!3045 = !DILocation(line: 804, column: 33, scope: !2983)
!3046 = !DILocation(line: 754, column: 23, scope: !2922)
!3047 = !DILocation(line: 754, column: 17, scope: !2922)
!3048 = !DILocation(line: 11, column: 23, scope: !2923, inlinedAt: !3013)
!3049 = !DILocation(line: 11, column: 23, scope: !2927, inlinedAt: !3013)
!3050 = !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2933)
!3051 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2937)
!3052 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2937)
!3053 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2938)
!3054 = !DILocation(line: 270, column: 21, scope: !147, inlinedAt: !2935)
!3055 = !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2934)
!3056 = !DILocation(line: 564, column: 9, scope: !149, inlinedAt: !2940)
!3057 = !DILocation(line: 182, column: 18, scope: !148, inlinedAt: !2934)
!3058 = !DILocation(line: 182, column: 42, scope: !148, inlinedAt: !2934)
!3059 = !DILocation(line: 969, column: 15, scope: !151, inlinedAt: !2941)
!3060 = !DILocation(line: 969, column: 9, scope: !151, inlinedAt: !2941)
!3061 = !DILocation(line: 971, column: 21, scope: !151, inlinedAt: !2941)
!3062 = !DILocation(line: 970, column: 18, scope: !151, inlinedAt: !2941)
!3063 = !DILocation(line: 175, column: 78, scope: !142, inlinedAt: !2933)
!3064 = !DILocation(line: 764, column: 37, scope: !2922)
!3065 = !DILocation(line: 765, column: 56, scope: !2922)
!3066 = !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2948)
!3067 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2952)
!3068 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2952)
!3069 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2953)
!3070 = !DILocation(line: 270, column: 21, scope: !147, inlinedAt: !2950)
!3071 = !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2949)
!3072 = !DILocation(line: 564, column: 9, scope: !149, inlinedAt: !2955)
!3073 = !DILocation(line: 182, column: 18, scope: !148, inlinedAt: !2949)
!3074 = !DILocation(line: 182, column: 42, scope: !148, inlinedAt: !2949)
!3075 = !DILocation(line: 969, column: 15, scope: !151, inlinedAt: !2956)
!3076 = !DILocation(line: 969, column: 9, scope: !151, inlinedAt: !2956)
!3077 = !DILocation(line: 971, column: 21, scope: !151, inlinedAt: !2956)
!3078 = !DILocation(line: 970, column: 18, scope: !151, inlinedAt: !2956)
!3079 = !DILocation(line: 175, column: 78, scope: !142, inlinedAt: !2948)
!3080 = !DILocation(line: 759, column: 57, scope: !2946)
!3081 = !DILocation(line: 759, column: 37, scope: !2946)
!3082 = !DILocation(line: 759, column: 76, scope: !2946)
!3083 = !DILocation(line: 761, column: 13, scope: !2922)
!3084 = !DILocation(line: 79, column: 5, scope: !152, inlinedAt: !3016)
!3085 = !DILocation(line: 771, column: 34, scope: !2957)
!3086 = !DILocation(line: 772, column: 12, scope: !2958)
!3087 = !DILocation(line: 775, column: 17, scope: !2958)
!3088 = !DILocation(line: 1502, column: 9, scope: !2959, inlinedAt: !3020)
!3089 = !DILocation(line: 1410, column: 9, scope: !2963, inlinedAt: !3019)
!3090 = !DILocation(line: 779, column: 13, scope: !2960)
!3091 = !DILocation(line: 952, column: 22, scope: !2964, inlinedAt: !3024)
!3092 = !DILocation(line: 264, column: 37, scope: !2969, inlinedAt: !3025)
!3093 = !DILocation(line: 264, column: 27, scope: !2969, inlinedAt: !3025)
!3094 = !DILocation(line: 264, column: 14, scope: !2969, inlinedAt: !3025)
!3095 = !DILocation(line: 271, column: 9, scope: !2971, inlinedAt: !3026)
!3096 = !DILocation(line: 780, column: 13, scope: !2960)
!3097 = !DILocation(line: 783, column: 44, scope: !2973)
!3098 = !DILocation(line: 783, column: 36, scope: !2973)
!3099 = !DILocation(line: 782, column: 21, scope: !2972)
!3100 = !DILocation(line: 784, column: 12, scope: !2974)
!3101 = !DILocation(line: 8, column: 5, scope: !2975, inlinedAt: !3027)
!3102 = !DILocation(line: 8, column: 23, scope: !2975, inlinedAt: !3027)
!3103 = !DILocation(line: 8, column: 42, scope: !2975, inlinedAt: !3027)
!3104 = !DILocation(line: 8, column: 22, scope: !2975, inlinedAt: !3027)
!3105 = !DILocation(line: 8, scope: !2975, inlinedAt: !3027)
!3106 = !DILocation(line: 264, column: 14, scope: !2976, inlinedAt: !3033)
!3107 = !DILocation(line: 293, column: 9, scope: !2982, inlinedAt: !3034)
!3108 = !DILocation(line: 790, column: 34, scope: !2977)
!3109 = !DILocation(line: 791, column: 15, scope: !2983)
!3110 = !DILocation(line: 792, column: 55, scope: !2983)
!3111 = !DILocation(line: 8, column: 5, scope: !2975, inlinedAt: !3035)
!3112 = !DILocation(line: 794, column: 18, scope: !2984)
!3113 = !DILocation(line: 8, column: 23, scope: !2975, inlinedAt: !3035)
!3114 = !DILocation(line: 8, column: 42, scope: !2975, inlinedAt: !3035)
!3115 = !DILocation(line: 794, column: 50, scope: !2984)
!3116 = !DILocation(line: 794, column: 35, scope: !2984)
!3117 = !DILocation(line: 8, scope: !2975, inlinedAt: !3035)
!3118 = !DILocation(line: 794, column: 49, scope: !2984)
!3119 = !DILocation(line: 794, scope: !2984)
!3120 = !DILocation(line: 795, column: 13, scope: !2985)
!3121 = !DILocation(line: 796, column: 13, scope: !2985)
!3122 = !DILocation(line: 0, scope: !2974)
!3123 = !DILocation(line: 0, scope: !2977)
!3124 = !DILocation(line: 0, scope: !2960)
!3125 = !DILocation(line: 800, column: 15, scope: !2983)
!3126 = !DILocation(line: 811, column: 9, scope: !2983)
!3127 = !DILocation(line: 801, column: 13, scope: !2983)
!3128 = !DILocation(line: 802, column: 16, scope: !2983)
!3129 = !DILocation(line: 11, column: 23, scope: !2923, inlinedAt: !3040)
!3130 = !DILocation(line: 11, column: 23, scope: !2987, inlinedAt: !3040)
!3131 = !DILocation(line: 820, column: 25, scope: !2983)
!3132 = !DILocation(line: 820, column: 21, scope: !2983)
!3133 = !DILocation(line: 820, column: 56, scope: !2983)
!3134 = !DILocation(line: 815, column: 65, scope: !2988)
!3135 = !DILocation(line: 815, column: 61, scope: !2988)
!3136 = !DILocation(line: 175, column: 5, scope: !142, inlinedAt: !2994)
!3137 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !2998)
!3138 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !2998)
!3139 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !2999)
!3140 = !DILocation(line: 270, column: 21, scope: !147, inlinedAt: !2996)
!3141 = !DILocation(line: 182, column: 5, scope: !148, inlinedAt: !2995)
!3142 = !DILocation(line: 564, column: 9, scope: !149, inlinedAt: !3001)
!3143 = !DILocation(line: 182, column: 18, scope: !148, inlinedAt: !2995)
!3144 = !DILocation(line: 182, column: 42, scope: !148, inlinedAt: !2995)
!3145 = !DILocation(line: 969, column: 15, scope: !151, inlinedAt: !3002)
!3146 = !DILocation(line: 969, column: 9, scope: !151, inlinedAt: !3002)
!3147 = !DILocation(line: 971, column: 21, scope: !151, inlinedAt: !3002)
!3148 = !DILocation(line: 970, column: 18, scope: !151, inlinedAt: !3002)
!3149 = !DILocation(line: 175, column: 78, scope: !142, inlinedAt: !2994)
!3150 = !DILocation(line: 817, column: 26, scope: !3003)
!3151 = !DILocation(line: 2173, column: 15, scope: !3004, inlinedAt: !3042)
!3152 = !DILocation(line: 0, scope: !3004, inlinedAt: !3042)
!3153 = !DILocation(line: 2173, column: 9, scope: !3004, inlinedAt: !3042)
!3154 = !DILocation(line: 2175, column: 17, scope: !3004, inlinedAt: !3042)
!3155 = !DILocation(line: 2189, column: 23, scope: !3006, inlinedAt: !3044)
!3156 = !DILocation(line: 817, column: 88, scope: !3003)
!3157 = !DILocation(line: 817, column: 89, scope: !3003)
!3158 = !DILocation(line: 822, column: 5, scope: !2920)
!3159 = !DILocation(line: 818, column: 20, scope: !3009)
!3160 = !DILocation(line: 79, column: 5, scope: !152, inlinedAt: !3010)
!3161 = !DILocation(line: 818, column: 55, scope: !3009)
!3162 = !DILocation(line: 819, column: 13, scope: !2983)
!3163 = !DILocation(line: 0, scope: !2983)
!3164 = !DILocation(line: 822, column: 6, scope: !2920)
!3165 = !DILocation(line: 803, column: 17, scope: !2983)
!3166 = !DILocation(line: 804, column: 46, scope: !2983)
!3167 = !DILocation(line: 8, column: 5, scope: !2975, inlinedAt: !3045)
!3168 = !DILocation(line: 8, column: 23, scope: !2975, inlinedAt: !3045)
!3169 = !DILocation(line: 8, column: 42, scope: !2975, inlinedAt: !3045)
!3170 = !DILocation(line: 8, column: 22, scope: !2975, inlinedAt: !3045)
!3171 = !DILocation(line: 807, column: 70, scope: !2983)
!3172 = !DILocation(line: 807, column: 31, scope: !2983)
!3173 = !DILocation(line: 807, column: 46, scope: !2983)
!3174 = !DILocation(line: 807, column: 13, scope: !2983)
!3175 = !DILocation(line: 808, column: 13, scope: !2983)
!3176 = distinct !DISubprogram(name: "truncate_subweekly<fn(i64) -> chrono::naive::datetime::NaiveDateTime, fn(chrono::naive::datetime::NaiveDateTime) -> i64>", linkageName: "_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration18truncate_subweeklyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_msEBa_", scope: !839, file: !835, line: 651, type: !769, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3177 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs9_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !899, file: !895, line: 11, type: !769, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3178 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtB7_9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !822, file: !819, line: 2127, type: !769, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3179 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !852, file: !819, line: 264, type: !769, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !895, line: 11, column: 23)
!3181 = distinct !DILexicalBlock(scope: !3180, file: !895, line: 11, column: 23)
!3182 = distinct !{!3182, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!3183 = distinct !{!3183, !3182, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!3184 = distinct !{!3184, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime"}
!3185 = distinct !{!3185, !3184, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime: argument 0"}
!3186 = distinct !DILexicalBlock(scope: !3176, file: !835, line: 666, column: 13)
!3187 = distinct !DILocation(line: 667, column: 39, scope: !3186)
!3188 = distinct !DILocation(line: 79, column: 5, scope: !117, inlinedAt: !3187)
!3189 = distinct !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !3188)
!3190 = distinct !DILocation(line: 168, column: 17, scope: !119, inlinedAt: !3189)
!3191 = distinct !DILocation(line: 256, column: 30, scope: !118, inlinedAt: !3190)
!3192 = distinct !DILocation(line: 660, column: 11, scope: !121, inlinedAt: !3191)
!3193 = distinct !DILocation(line: 660, column: 35, scope: !121, inlinedAt: !3191)
!3194 = distinct !{!3194, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt"}
!3195 = distinct !{!3195, !3194, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt: argument 0"}
!3196 = distinct !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !3189)
!3197 = distinct !DILocation(line: 28, column: 26, scope: !128, inlinedAt: !3196)
!3198 = distinct !DILocation(line: 162, column: 37, scope: !116, inlinedAt: !3188)
!3199 = distinct !DILexicalBlock(scope: !3186, file: !835, line: 667, column: 17)
!3200 = distinct !DILexicalBlock(scope: !3199, file: !835, line: 668, column: 17)
!3201 = distinct !DILocation(line: 669, column: 25, scope: !3200)
!3202 = distinct !DILexicalBlock(scope: !3200, file: !835, line: 669, column: 17)
!3203 = distinct !DILexicalBlock(scope: !3202, file: !835, line: 670, column: 17)
!3204 = distinct !{!3204, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!3205 = distinct !{!3205, !3204, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!3206 = distinct !{!3206, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime"}
!3207 = distinct !{!3207, !3206, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ms_to_datetime: argument 0"}
!3208 = distinct !DILexicalBlock(scope: !3203, file: !835, line: 674, column: 17)
!3209 = distinct !DILocation(line: 675, column: 39, scope: !3208)
!3210 = distinct !DILocation(line: 79, column: 5, scope: !117, inlinedAt: !3209)
!3211 = distinct !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !3210)
!3212 = distinct !DILocation(line: 168, column: 17, scope: !119, inlinedAt: !3211)
!3213 = distinct !DILocation(line: 256, column: 30, scope: !118, inlinedAt: !3212)
!3214 = distinct !DILocation(line: 660, column: 11, scope: !121, inlinedAt: !3213)
!3215 = distinct !DILocation(line: 660, column: 35, scope: !121, inlinedAt: !3213)
!3216 = distinct !{!3216, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt"}
!3217 = distinct !{!3217, !3216, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions28timestamp_ms_to_datetime_opt: argument 0"}
!3218 = distinct !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !3211)
!3219 = distinct !DILocation(line: 28, column: 26, scope: !128, inlinedAt: !3218)
!3220 = distinct !DILocation(line: 162, column: 37, scope: !116, inlinedAt: !3210)
!3221 = distinct !DILexicalBlock(scope: !3208, file: !835, line: 675, column: 17)
!3222 = distinct !DISubprogram(name: "branch<chrono::naive::datetime::NaiveDateTime, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs9o5SvTbM2BP_6chrono5naive8datetime13NaiveDateTimeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCs2Aa799EbAFJ_11polars_time", scope: !847, file: !845, line: 2172, type: !769, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3223 = distinct !DISubprogram(name: "from_residual<i64, polars_error::PolarsError, polars_error::PolarsError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2Aa799EbAFJ_11polars_time", scope: !856, file: !845, line: 2187, type: !769, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3224 = distinct !DILexicalBlock(scope: !3223, file: !845, line: 2189, column: 13)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !835, line: 677, column: 88)
!3226 = distinct !DILexicalBlock(scope: !3225, file: !835, line: 677, column: 88)
!3227 = distinct !DILexicalBlock(scope: !3221, file: !835, line: 676, column: 17)
!3228 = distinct !DILocation(line: 678, column: 20, scope: !3227)
!3229 = distinct !DILexicalBlock(scope: !3176, file: !835, line: 681, column: 17)
!3230 = !DILocation(line: 666, column: 25, scope: !3176)
!3231 = !DILocation(line: 2128, column: 13, scope: !3178, inlinedAt: !3230)
!3232 = !DILocation(line: 265, column: 15, scope: !3179, inlinedAt: !3231)
!3233 = !{!3185, !3183}
!3234 = !{!3195, !3185, !3183}
!3235 = !{!3207, !3205}
!3236 = !{!3217, !3207, !3205}
!3237 = !DILocation(line: 677, column: 21, scope: !3221)
!3238 = !DILexicalBlockFile(scope: !3226, file: !835, discriminator: 2)
!3239 = !DILocation(line: 677, column: 21, scope: !3238)
!3240 = !DILocation(line: 663, column: 15, scope: !3176)
!3241 = !DILocation(line: 663, column: 9, scope: !3176)
!3242 = !DILocation(line: 11, column: 23, scope: !3177, inlinedAt: !3232)
!3243 = !DILocation(line: 11, column: 23, scope: !3181, inlinedAt: !3232)
!3244 = !DILocation(line: 681, column: 37, scope: !3176)
!3245 = !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !3188)
!3246 = !DILocation(line: 253, column: 12, scope: !118, inlinedAt: !3190)
!3247 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !3192)
!3248 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !3192)
!3249 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !3193)
!3250 = !DILocation(line: 257, column: 42, scope: !125, inlinedAt: !3190)
!3251 = !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !3189)
!3252 = !DILocation(line: 564, column: 9, scope: !127, inlinedAt: !3197)
!3253 = !DILocation(line: 169, column: 18, scope: !126, inlinedAt: !3189)
!3254 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !3189)
!3255 = !DILocation(line: 969, column: 15, scope: !129, inlinedAt: !3198)
!3256 = !DILocation(line: 969, column: 9, scope: !129, inlinedAt: !3198)
!3257 = !DILocation(line: 971, column: 21, scope: !129, inlinedAt: !3198)
!3258 = !DILocation(line: 970, column: 18, scope: !129, inlinedAt: !3198)
!3259 = !DILocation(line: 162, column: 78, scope: !116, inlinedAt: !3188)
!3260 = !DILocation(line: 668, column: 41, scope: !3199)
!3261 = !DILocation(line: 669, column: 25, scope: !3200)
!3262 = !DILocation(line: 79, column: 5, scope: !130, inlinedAt: !3201)
!3263 = !DILocation(line: 669, column: 65, scope: !3200)
!3264 = !DILocation(line: 670, column: 37, scope: !3202)
!3265 = !DILocation(line: 671, column: 20, scope: !3203)
!3266 = !DILocation(line: 674, column: 40, scope: !3203)
!3267 = !DILocation(line: 162, column: 5, scope: !116, inlinedAt: !3210)
!3268 = !DILocation(line: 253, column: 12, scope: !118, inlinedAt: !3212)
!3269 = !DILocation(line: 3184, column: 21, scope: !120, inlinedAt: !3214)
!3270 = !DILocation(line: 3185, column: 16, scope: !122, inlinedAt: !3214)
!3271 = !DILocation(line: 3229, column: 16, scope: !124, inlinedAt: !3215)
!3272 = !DILocation(line: 257, column: 42, scope: !125, inlinedAt: !3212)
!3273 = !DILocation(line: 169, column: 5, scope: !126, inlinedAt: !3211)
!3274 = !DILocation(line: 564, column: 9, scope: !127, inlinedAt: !3219)
!3275 = !DILocation(line: 169, column: 18, scope: !126, inlinedAt: !3211)
!3276 = !DILocation(line: 169, column: 42, scope: !126, inlinedAt: !3211)
!3277 = !DILocation(line: 969, column: 15, scope: !129, inlinedAt: !3220)
!3278 = !DILocation(line: 969, column: 9, scope: !129, inlinedAt: !3220)
!3279 = !DILocation(line: 971, column: 21, scope: !129, inlinedAt: !3220)
!3280 = !DILocation(line: 970, column: 18, scope: !129, inlinedAt: !3220)
!3281 = !DILocation(line: 162, column: 78, scope: !116, inlinedAt: !3210)
!3282 = !DILocation(line: 677, column: 26, scope: !3221)
!3283 = !DILocation(line: 2173, column: 15, scope: !3222, inlinedAt: !3237)
!3284 = !DILocation(line: 0, scope: !3222, inlinedAt: !3237)
!3285 = !DILocation(line: 2173, column: 9, scope: !3222, inlinedAt: !3237)
!3286 = !DILocation(line: 2175, column: 17, scope: !3222, inlinedAt: !3237)
!3287 = !DILocation(line: 2189, column: 23, scope: !3224, inlinedAt: !3239)
!3288 = !DILocation(line: 677, column: 88, scope: !3221)
!3289 = !DILocation(line: 677, column: 89, scope: !3221)
!3290 = !DILocation(line: 688, column: 5, scope: !3176)
!3291 = !DILocation(line: 678, column: 20, scope: !3227)
!3292 = !DILocation(line: 79, column: 5, scope: !130, inlinedAt: !3228)
!3293 = !DILocation(line: 678, column: 56, scope: !3227)
!3294 = !DILocation(line: 678, column: 17, scope: !3227)
!3295 = !DILocation(line: 679, column: 13, scope: !3176)
!3296 = !DILocation(line: 688, column: 6, scope: !3176)
!3297 = !DILocation(line: 682, column: 20, scope: !3229)
!3298 = !DILocation(line: 685, column: 20, scope: !3229)
!3299 = !DILocation(line: 685, column: 17, scope: !3229)
!3300 = !DILocation(line: 686, column: 13, scope: !3176)
!3301 = distinct !DISubprogram(name: "truncate_subweekly<fn(i64) -> chrono::naive::datetime::NaiveDateTime, fn(chrono::naive::datetime::NaiveDateTime) -> i64>", linkageName: "_RINvMs2_NtNtCs2Aa799EbAFJ_11polars_time7windows8durationNtB6_8Duration18truncate_subweeklyNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeNvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array8temporal10conversion24datetime_to_timestamp_nsEBa_", scope: !839, file: !835, line: 651, type: !769, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3302 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs9_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !899, file: !895, line: 11, type: !769, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3303 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtB7_9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !822, file: !819, line: 2127, type: !769, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3304 = distinct !DISubprogram(name: "ne<chrono_tz::prebuilt::timezones::Tz, chrono_tz::prebuilt::timezones::Tz>", linkageName: "_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCs2Aa799EbAFJ_11polars_time", scope: !852, file: !819, line: 264, type: !769, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !768)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !895, line: 11, column: 23)
!3306 = distinct !DILexicalBlock(scope: !3305, file: !895, line: 11, column: 23)
!3307 = distinct !{!3307, i1 false, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time"}
!3308 = distinct !{!3308, !3307, !"_RNvYNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetimeINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTxEE4callCs2Aa799EbAFJ_11polars_time: argument 0"}
!3309 = distinct !{!3309, i1 false, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime"}
!3310 = distinct !{!3310, !3309, !"_RNvNtCs8774dFTUdNv_12polars_arrow20temporal_conversions24timestamp_ns_to_datetime: argument 0"}
!3311 = distinct !DILexicalBlock(scope: !3301, file: !835, line: 666, column: 13)
!3312 = distinct !DILocation(line: 667, column: 39, scope: !3311)
!3313 = distinct !DILocation(line: 79, column: 5, scope: !132, inlinedAt: !3312)
!3314 = distinct !DILocation(line: 188, column: 5, scope: !131, inlinedAt: !3313)
end_hunk_1
