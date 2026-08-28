Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.13?download=true
inline.NumInlined: 338
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1q_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EB1w_:bb.a
    #dbg_value(i64 %i.ah, !2298, !DIExpression(), !2302)
    #dbg_value(ptr poison, !2304, !DIExpression(), !2328)
    #dbg_value(ptr poison, !2330, !DIExpression(), !2338)
    #dbg_value(i64 16, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2328)
    #dbg_value(i64 16, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2338)
    #dbg_value(i64 %i.aj, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2328)
    #dbg_value(i64 %i.aj, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2338)
    #dbg_value(i8 0, !2337, !DIExpression(), !2338)
    #dbg_value(i64 16, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2370)
    #dbg_value(i64 16, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2377)
    #dbg_value(i64 %i.aj, !2340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2370)
    #dbg_value(i64 %i.aj, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2377)
    #dbg_value(i1 false, !2346, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2370)
    #dbg_value(i64 %i.aj, !2347, !DIExpression(), !2379)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !2380, !noalias !2381
  %i.am = call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !dbg !2386, !noalias !2381 ; 2 uses
  %i.an = icmp eq ptr %i.am, null, !dbg !2387
  br i1 %i.an, label %bb.k, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !2388

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !2389, !noalias !2381
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2390

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !dbg !2391, !noalias !2381
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2392

bb.l:                                             ; preds = %bb.e
    #dbg_value(i64 0, !2105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2136)
    #dbg_value(i64 poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2136)
    #dbg_value(ptr poison, !2133, !DIExpression(), !2138)
    #dbg_value(ptr poison, !2139, !DIExpression(), !2144)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !2393, !noalias !2394
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !2395

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2147, !DIExpression(), !2194)
    #dbg_value(i64 %i.ah, !2298, !DIExpression(), !2302)
    #dbg_value(i64 %i.ah, !2156, !DIExpression(), !2297)
    #dbg_value(ptr %i.am, !2157, !DIExpression(), !2397)
    #dbg_value(ptr %i.am, !2301, !DIExpression(), !2302)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2398)
    #dbg_value(i64 poison, !2399, !DIExpression(), !2402)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !2404 ; 9 uses
    #dbg_value(ptr %i.ar, !2192, !DIExpression(), !2398)
    #dbg_value(ptr %i.ar, !1893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2405)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !1893, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2405)
    #dbg_value(i64 poison, !1893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2405)
    #dbg_value(i64 0, !1893, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2405)
    #dbg_value(i64 %i.ai, !1949, !DIExpression(), !1952)
    #dbg_value(i64 %i.ai, !1960, !DIExpression(), !1961)
    #dbg_value(ptr %i.ar, !1937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2406)
    #dbg_value(ptr %i.ar, !1929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1930)
    #dbg_value(i64 %i.ai, !1937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2406)
    #dbg_value(i64 %i.ai, !1929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1930)
    #dbg_value(ptr %i.ar, !1948, !DIExpression(), !1952)
    #dbg_value(ptr %i.ar, !1959, !DIExpression(), !1961)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !2407, !noalias !2394
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !2408
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !2409 ; 6 uses
    #dbg_value(i64 %i.at, !2399, !DIExpression(), !2402)
    #dbg_value(i64 %i.at, !1893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2405)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !2408
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !2408
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !2408 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2399, !DIExpression(), !2402)
    #dbg_value(i64 %.sroa.07.0.i.i, !1893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2405)
    #dbg_value(ptr %i.d, !1645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2410)
    #dbg_value(i64 24, !1645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2410)
    #dbg_value(i64 16, !1645, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2410)
    #dbg_value(ptr %i.ar, !1645, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2410)
    #dbg_value(i64 %i.at, !1645, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2410)
    #dbg_value(i64 %.sroa.07.0.i.i, !1645, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !2410)
    #dbg_value(i64 0, !1645, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !2410)
  store ptr %i.d, ptr %i.a, align 8, !dbg !2411, !noalias !1860
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2411 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2411 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2411 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2411 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !2411 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !2411 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2411, !noalias !1860
    #dbg_value(ptr poison, !1819, !DIExpression(), !2412)
    #dbg_value(ptr poison, !2413, !DIExpression(), !2424)
    #dbg_value(<2 x i64> poison, !2426, !DIExpression(), !2430)
    #dbg_value(ptr poison, !2438, !DIExpression(), !2440)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !2441)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !2443)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2444)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !2445, !alias.scope !2446, !noalias !2447, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
    #dbg_value(i64 0, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2448)
    #dbg_value(i64 %i.aw, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2448)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !2448)
    #dbg_value(ptr undef, !1708, !DIExpression(), !1713)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !2449
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !2449

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !2450, !alias.scope !2446, !noalias !2447, !nonnull !26, !noundef !26 ; 2 uses
    #dbg_value(ptr %i.ay, !1819, !DIExpression(), !2412)
    #dbg_value(ptr %i.ay, !2413, !DIExpression(), !2424)
    #dbg_value(ptr %i.ay, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !2451
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2444)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !1585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !2448)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !2452
    #dbg_value(<16 x i1> %i.az, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !2453
    #dbg_value(i16 %i.ba, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
  br label %.preheader, !dbg !2449

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !1899
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !1899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2454, !noalias !1860
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !2455

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !2454, !noalias !2456
  resume { ptr, i32 } %i.bb, !dbg !2457

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2448)
    #dbg_value(ptr %.sroa.0.038, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
    #dbg_value(i64 %.sroa.5.037, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2448)
    #dbg_value(i16 %.sroa.13.035, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
    #dbg_value(ptr undef, !2458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2467)
    #dbg_value(i16 %.sroa.13.035, !2469, !DIExpression(), !2474)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !2476
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !2477

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
    #dbg_value(i64 %.sroa.5.131, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2448)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2478, !DIExpression(), !2482)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !2484 ; 3 uses
    #dbg_value(ptr %i.bc, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
    #dbg_value(ptr %i.bc, !2485, !DIExpression(), !2495)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !2497
    #dbg_value(<2 x i64> poison, !2498, !DIExpression(), !2501)
    #dbg_value(ptr poison, !2505, !DIExpression(), !2507)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !2508)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !2510)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2511)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !2512
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !2513 ; 2 uses
    #dbg_value(i16 %i.be, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !2514    ; 2 uses
    #dbg_value(ptr %i.bc, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2448)
    #dbg_value(i64 %i.bf, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2448)
    #dbg_value(i16 %i.be, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
    #dbg_value(ptr undef, !2458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2467)
    #dbg_value(i16 %i.be, !2469, !DIExpression(), !2474)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !2476
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !2477

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !2515, !alias.scope !2446, !noalias !2447
  br label %._crit_edge39, !dbg !2515

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !2515 ; 2 uses
    #dbg_value(i64 poison, !1709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2516)
    #dbg_value(i64 poison, !1709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2516)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !2517
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2517, !noalias !1860
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2518, !noalias !1860
    #dbg_value(ptr %i.a, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2519)
    #dbg_value(ptr %0, !2520, !DIExpression(), !2527)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2526, !DIExpression(), !2527)
    #dbg_value(ptr %0, !2529, !DIExpression(), !2536)
    #dbg_value(ptr %0, !2538, !DIExpression(), !2563)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2534, !DIExpression(), !2536)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2544, !DIExpression(), !2563)
    #dbg_value(i64 1, !2535, !DIExpression(), !2536)
    #dbg_value(i64 1, !2545, !DIExpression(), !2563)
    #dbg_value(ptr %0, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2566)
    #dbg_value(i64 1, !2546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2566)
    #dbg_value(i64 32, !2553, !DIExpression(), !2567)
    #dbg_value(i64 32, !2555, !DIExpression(), !2568)
    #dbg_value(ptr %0, !2569, !DIExpression(), !2588)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2574, !DIExpression(), !2588)
    #dbg_value(i64 32, !2575, !DIExpression(), !2588)
    #dbg_value(i64 32, !2576, !DIExpression(), !2590)
    #dbg_value(i64 0, !2580, !DIExpression(), !2591)
    #dbg_value(i64 4, !2578, !DIExpression(), !2592)
    #dbg_value(i64 4, !2582, !DIExpression(), !2593)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !2594, !noalias !2456

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !2595, !noalias !2456
  unreachable, !dbg !2595

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !2596), !dbg !2454
    #dbg_value(ptr %i.a, !2599, !DIExpression(), !2606)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608), !dbg !2611, !noalias !2456
    #dbg_value(ptr %i.a, !2612, !DIExpression(), !2617)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2619, !alias.scope !2620, !noalias !2456 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2619, !alias.scope !2620, !noalias !2456 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2619, !alias.scope !2620, !noalias !2456, !noundef !26 ; 3 uses
    #dbg_value(ptr poison, !2621, !DIExpression(DW_OP_deref), !2629)
    #dbg_value(ptr poison, !2628, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !2629)
    #dbg_value(ptr poison, !2627, !DIExpression(), !2629)
    #dbg_value(ptr poison, !2631, !DIExpression(), !2637)
    #dbg_value(ptr poison, !2639, !DIExpression(), !2650)
    #dbg_value(ptr poison, !2652, !DIExpression(), !2668)
    #dbg_value(ptr poison, !2670, !DIExpression(), !2676)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !2678
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2679

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2619, !alias.scope !2620, !noalias !2456
    #dbg_value(ptr poison, !2645, !DIExpression(), !2650)
    #dbg_value(i64 %.val.i.i, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2650)
    #dbg_value(i64 %.val.i.i, !2662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2668)
    #dbg_value(i64 %.val1.i.i, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2650)
    #dbg_value(i64 %.val1.i.i, !2662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2668)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !2680
    #dbg_value(i64 %.val.i.i, !2225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2681)
    #dbg_value(i64 %.val1.i.i, !2225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2681)
    #dbg_value(i64 %i.bk, !2231, !DIExpression(), !2681)
    #dbg_value(i64 %i.bk, !2253, !DIExpression(), !2683)
    #dbg_value(i64 %i.bk, !2262, !DIExpression(), !2685)
    #dbg_value(i64 %.val.i.i, !2232, !DIExpression(), !2687)
    #dbg_value(i64 %.val.i.i, !2256, !DIExpression(), !2683)
    #dbg_value(i64 %.val.i.i, !2265, !DIExpression(), !2685)
    #dbg_value(i64 %.val1.i.i, !2234, !DIExpression(), !2687)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !2688 ; 2 uses
    #dbg_value(i1 false, !2271, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2689)
    #dbg_value(i64 %i.bl, !2277, !DIExpression(), !2691)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !2693
    #dbg_value(i64 %i.bm, !2280, !DIExpression(), !2691)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !2694        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !2694
    #dbg_value(i1 true, !2271, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2695)
  call void @llvm.assume(i1 %i.bo), !dbg !2697, !noalias !2456
  %i.bp = sub i64 0, %.val1.i.i, !dbg !2698
  %i.bq = and i64 %i.bn, %i.bp, !dbg !2699        ; 3 uses
    #dbg_value(i64 %i.bq, !2235, !DIExpression(), !2700)
    #dbg_value(i64 %i.bq, !2277, !DIExpression(), !2701)
  %i.br = add i64 %.val3.i.i, 17, !dbg !2703
    #dbg_value(i64 %i.br, !2280, !DIExpression(), !2701)
  %i.bs = add i64 %i.br, %i.bq, !dbg !2704        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !2704
    #dbg_value(i1 %i.bt, !2271, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2705)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !2707, !noalias !2456
  call void @llvm.assume(i1 %i.bv), !dbg !2707, !noalias !2456
    #dbg_value(i64 %.val1.i.i, !2708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2716)
    #dbg_value(i64 %.val1.i.i, !2666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2718)
    #dbg_value(i64 %i.bs, !2708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2716)
    #dbg_value(i64 %i.bs, !2666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2718)
    #dbg_value(i64 %i.bq, !2708, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2716)
    #dbg_value(i64 %i.bq, !2666, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2718)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !2719
  call void @llvm.assume(i1 %i.bw), !dbg !2720, !noalias !2456
    #dbg_value(i64 %.val1.i.i, !2649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2721)
    #dbg_value(i64 %.val1.i.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2722)
    #dbg_value(i64 %i.bs, !2649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2721)
    #dbg_value(i64 %i.bs, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2722)
    #dbg_value(i64 %i.bq, !2665, !DIExpression(), !2722)
    #dbg_value(i64 %i.bq, !2723, !DIExpression(), !2727)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !2456
    #dbg_value(ptr %.val2.i.i, !2726, !DIExpression(), !2727)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2721)
    #dbg_value(ptr poison, !2729, !DIExpression(), !2736)
    #dbg_value(ptr poison, !2738, !DIExpression(), !2745)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2734, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2736)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2745)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2747, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2754)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2760)
    #dbg_value(i64 %.val1.i.i, !2735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2736)
    #dbg_value(i64 %.val1.i.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2745)
    #dbg_value(i64 %.val1.i.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2754)
    #dbg_value(i64 %.val1.i.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2760)
    #dbg_value(i64 %i.bs, !2735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2736)
    #dbg_value(i64 %i.bs, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2745)
    #dbg_value(i64 %i.bs, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2754)
    #dbg_value(i64 %i.bs, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2760)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !2762
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !2762

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !2763
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2760)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2747, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2754)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2745)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2734, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2736)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2721)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !2764
    #dbg_value(ptr %i.bz, !2647, !DIExpression(), !2721)
    #dbg_value(ptr %i.bz, !2734, !DIExpression(), !2736)
    #dbg_value(ptr %i.bz, !2743, !DIExpression(), !2745)
    #dbg_value(ptr %i.bz, !2747, !DIExpression(), !2754)
    #dbg_value(ptr %i.bz, !2756, !DIExpression(), !2760)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !2765, !noalias !2766
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !2767

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2454, !noalias !1860
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !2455

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !2768 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !2768 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !2768
    #dbg_value(i16 %.sroa.13.1.lcssa, !2472, !DIExpression(), !2769)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2770, !DIExpression(), !2775)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2777, !DIExpression(), !2780)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2782, !DIExpression(), !2786)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !2788
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2789
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !2790
    #dbg_value(i64 %i.cc, !2461, !DIExpression(), !2791)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2792, !DIExpression(), !2795)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !2797
    #dbg_value(i16 %i.cd, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2448)
    #dbg_value(i64 %i.cc, !1701, !DIExpression(), !2798)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !2799 ; 2 uses
    #dbg_value(i64 1, !1709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2516)
    #dbg_value(i64 %i.ce, !1709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2516)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !2800    ; 2 uses
    #dbg_value(i64 %i.cf, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2448)
    #dbg_value(i64 %i.ce, !1647, !DIExpression(), !2801)
    #dbg_value(i64 %i.ce, !1836, !DIExpression(), !1838)
  call void @llvm.experimental.noalias.scope.decl(metadata !2802), !dbg !2805
    #dbg_value(ptr poison, !2806, !DIExpression(DW_OP_deref, DW_OP_deref), !2814)
    #dbg_value(ptr %0, !2812, !DIExpression(), !2814)
    #dbg_value(ptr %0, !2816, !DIExpression(), !2830)
    #dbg_value(ptr %0, !2832, !DIExpression(), !2838)
    #dbg_value(i64 %i.ce, !2813, !DIExpression(), !2814)
    #dbg_value(i64 %i.ce, !2822, !DIExpression(), !2830)
    #dbg_value(i64 %i.ce, !2840, !DIExpression(), !2846)
    #dbg_value(i64 %i.ce, !2848, !DIExpression(), !2853)
    #dbg_value(i64 1, !2852, !DIExpression(), !2855)
  %i.cg = load ptr, ptr %0, align 8, !dbg !2865, !alias.scope !2802, !noalias !2866, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cg, !2843, !DIExpression(), !2846)
    #dbg_value(ptr %i.cg, !2851, !DIExpression(), !2853)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !2868
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !2869
    #dbg_value(ptr poison, !2863, !DIExpression(), !2870)
    #dbg_value(ptr poison, !2859, !DIExpression(), !2871)
    #dbg_value(ptr %i.ci, !2851, !DIExpression(), !2855)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !2872
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !2873, !noalias !2874, !nonnull !26, !align !2875, !noundef !26
    #dbg_value(ptr poison, !2876, !DIExpression(DW_OP_deref), !2884)
    #dbg_value(ptr %i.cj, !2881, !DIExpression(), !2884)
    #dbg_value(ptr %.val.i, !2886, !DIExpression(), !2893)
    #dbg_value(ptr %i.cj, !2891, !DIExpression(), !2893)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit unwind label %bb.m, !dbg !2895 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !1649, !DIExpression(), !2896)
    #dbg_value(i64 %i.ck, !2897, !DIExpression(), !2912)
    #dbg_value(i64 %i.ck, !2914, !DIExpression(), !2922)
    #dbg_value(ptr %i.a, !2907, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2924)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2925)
    #dbg_value(ptr %i.a, !2920, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2927)
    #dbg_value(ptr %i.a, !2928, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2934)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2936)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2938)
    #dbg_value(ptr poison, !2940, !DIExpression(), !2944)
    #dbg_value(ptr poison, !2955, !DIExpression(), !2961)
    #dbg_value(ptr poison, !2962, !DIExpression(), !2966)
    #dbg_value(i64 %i.ck, !2956, !DIExpression(), !2961)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2957, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2968)
    #dbg_value(i64 0, !2957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2968)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !2961 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !2969
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !2972, !noalias !2979
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2982
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !2982 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !3001
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3008, !prof !3009

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !2961
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArceENtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives10SmallIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1y_.exit ], [ %i.de, %.lr.ph.i ], !dbg !2982
    #dbg_value(i16 %.lcssa.i, !3005, !DIExpression(), !3010)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBY_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1W_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EBY_:bb.a
    #dbg_value(i64 %i.ah, !2298, !DIExpression(), !3350)
    #dbg_value(ptr poison, !2304, !DIExpression(), !3352)
    #dbg_value(ptr poison, !2330, !DIExpression(), !3354)
    #dbg_value(i64 16, !2327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3352)
    #dbg_value(i64 16, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3354)
    #dbg_value(i64 %i.aj, !2327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3352)
    #dbg_value(i64 %i.aj, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3354)
    #dbg_value(i8 0, !2337, !DIExpression(), !3354)
    #dbg_value(i64 16, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3356)
    #dbg_value(i64 16, !2372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3358)
    #dbg_value(i64 %i.aj, !2340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3356)
    #dbg_value(i64 %i.aj, !2372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3358)
    #dbg_value(i1 false, !2346, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3356)
    #dbg_value(i64 %i.aj, !2347, !DIExpression(), !3360)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !3361, !noalias !3362
  %i.am = call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !dbg !3367, !noalias !3362 ; 2 uses
  %i.an = icmp eq ptr %i.am, null, !dbg !3368
  br i1 %i.an, label %bb.k, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !3369

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !3370, !noalias !3362
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !3371

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !dbg !3372, !noalias !3362
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !3373

bb.l:                                             ; preds = %bb.e
    #dbg_value(i64 0, !2105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3313)
    #dbg_value(i64 poison, !2105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3313)
    #dbg_value(ptr poison, !2133, !DIExpression(), !3315)
    #dbg_value(ptr poison, !2139, !DIExpression(), !3316)
  %i.aq = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !3374, !noalias !3375
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !3376

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !2147, !DIExpression(), !3319)
    #dbg_value(i64 %i.ah, !2298, !DIExpression(), !3350)
    #dbg_value(i64 %i.ah, !2156, !DIExpression(), !3349)
    #dbg_value(ptr %i.am, !2157, !DIExpression(), !3377)
    #dbg_value(ptr %i.am, !2301, !DIExpression(), !3350)
    #dbg_value(!DIArgList(ptr %i.am, i64 %i.ah), !2192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3378)
    #dbg_value(i64 poison, !2399, !DIExpression(), !3379)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah, !dbg !3381 ; 9 uses
    #dbg_value(ptr %i.ar, !2192, !DIExpression(), !3378)
    #dbg_value(ptr %i.ar, !1893, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3382)
    #dbg_value(i64 %.sroa.4.0.i.ph.i, !1893, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3382)
    #dbg_value(i64 poison, !1893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3382)
    #dbg_value(i64 0, !1893, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3382)
    #dbg_value(i64 %i.ai, !1949, !DIExpression(), !3258)
    #dbg_value(i64 %i.ai, !1960, !DIExpression(), !3260)
    #dbg_value(ptr %i.ar, !1937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3383)
    #dbg_value(ptr %i.ar, !1929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3255)
    #dbg_value(i64 %i.ai, !1937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3383)
    #dbg_value(i64 %i.ai, !1929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3255)
    #dbg_value(ptr %i.ar, !1948, !DIExpression(), !3258)
    #dbg_value(ptr %i.ar, !1959, !DIExpression(), !3260)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ai, i1 false), !dbg !3384, !noalias !3375
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9, !dbg !3385
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1, !dbg !3386 ; 6 uses
    #dbg_value(i64 %i.at, !2399, !DIExpression(), !3379)
    #dbg_value(i64 %i.at, !1893, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3382)
  %i.au = lshr i64 %.sroa.4.0.i.ph.i, 3, !dbg !3385
  %i.av = mul nuw nsw i64 %i.au, 7, !dbg !3385
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.at, i64 %i.av, !dbg !3385 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2399, !DIExpression(), !3379)
    #dbg_value(i64 %.sroa.07.0.i.i, !1893, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3382)
    #dbg_value(ptr %i.d, !1645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3387)
    #dbg_value(i64 24, !1645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3387)
    #dbg_value(i64 16, !1645, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3387)
    #dbg_value(ptr %i.ar, !1645, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3387)
    #dbg_value(i64 %i.at, !1645, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3387)
    #dbg_value(i64 %.sroa.07.0.i.i, !1645, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !3387)
    #dbg_value(i64 0, !1645, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3387)
  store ptr %i.d, ptr %i.a, align 8, !dbg !3388, !noalias !3250
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3388 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3388 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3388 ; 3 uses
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3388 ; 2 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3388 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !3388 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3388, !noalias !3250
    #dbg_value(ptr poison, !1819, !DIExpression(), !3389)
    #dbg_value(ptr poison, !2413, !DIExpression(), !3390)
    #dbg_value(<2 x i64> poison, !2426, !DIExpression(), !3392)
    #dbg_value(ptr poison, !2438, !DIExpression(), !3395)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !3396)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !3398)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3399)
  %i.aw = load i64, ptr %i.e, align 8, !dbg !3400, !alias.scope !3401, !noalias !3402, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(i64 0, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3403)
    #dbg_value(i64 %i.aw, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3403)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !3403)
    #dbg_value(ptr undef, !1708, !DIExpression(), !3196)
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !3404
  br i1 %i.ax, label %._crit_edge39, label %.preheader.lr.ph, !dbg !3404

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.ay = load ptr, ptr %0, align 8, !dbg !3405, !alias.scope !3401, !noalias !3402, !nonnull !26, !noundef !26 ; 2 uses
    #dbg_value(ptr %i.ay, !1819, !DIExpression(), !3389)
    #dbg_value(ptr %i.ay, !2413, !DIExpression(), !3390)
    #dbg_value(ptr %i.ay, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
  %.val828 = load <16 x i8>, ptr %i.ay, align 16, !dbg !3406
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3399)
    #dbg_value(!DIArgList(<16 x i8> %.val828, <16 x i8> splat (i8 -1)), !1585, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !3403)
  %i.az = icmp sgt <16 x i8> %.val828, splat (i8 -1), !dbg !3407
    #dbg_value(<16 x i1> %i.az, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !3408
    #dbg_value(i16 %i.ba, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
  br label %.preheader, !dbg !3404

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.12.026 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !3253
  %.sroa.7.027 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !3253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3409, !noalias !3250
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !3410

bb.m:                                             ; preds = %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24, !dbg !3409, !noalias !3411
  resume { ptr, i32 } %i.bb, !dbg !3412

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.038 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.037 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.036 = phi i64 [ %i.aw, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.035 = phi i16 [ %i.ba, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.036, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3403)
    #dbg_value(ptr %.sroa.0.038, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(i64 %.sroa.5.037, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3403)
    #dbg_value(i16 %.sroa.13.035, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
    #dbg_value(ptr undef, !2458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3413)
    #dbg_value(i16 %.sroa.13.035, !2469, !DIExpression(), !3415)
  %.not.i430 = icmp eq i16 %.sroa.13.035, 0, !dbg !3417
  br i1 %.not.i430, label %.noexc5, label %._crit_edge, !dbg !3418

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.0.132 = phi ptr [ %i.bc, %.noexc5 ], [ %.sroa.0.038, %.preheader ] ; 2 uses
  %.sroa.5.131 = phi i64 [ %i.bf, %.noexc5 ], [ %.sroa.5.037, %.preheader ]
    #dbg_value(ptr %.sroa.0.132, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(i64 %.sroa.5.131, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3403)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.132) ]
    #dbg_value(ptr %.sroa.0.132, !2478, !DIExpression(), !3419)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.132, i64 16, !dbg !3421 ; 3 uses
    #dbg_value(ptr %i.bc, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(ptr %i.bc, !2485, !DIExpression(), !3422)
  %.val729 = load <16 x i8>, ptr %i.bc, align 16, !dbg !3424
    #dbg_value(<2 x i64> poison, !2498, !DIExpression(), !3425)
    #dbg_value(ptr poison, !2505, !DIExpression(), !3428)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !3429)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !3431)
    #dbg_value(!DIArgList(<16 x i8> %.val729, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3432)
  %i.bd = icmp sgt <16 x i8> %.val729, splat (i8 -1), !dbg !3433
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !3434 ; 2 uses
    #dbg_value(i16 %i.be, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
  %i.bf = add i64 %.sroa.5.131, 16, !dbg !3435    ; 2 uses
    #dbg_value(ptr %i.bc, !1585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3403)
    #dbg_value(i64 %i.bf, !1585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3403)
    #dbg_value(i16 %i.be, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
    #dbg_value(ptr undef, !2458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3413)
    #dbg_value(i16 %i.be, !2469, !DIExpression(), !3415)
  %.not.i4 = icmp eq i16 %i.be, 0, !dbg !3417
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !3418

._crit_edge39.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !dbg !3436, !alias.scope !3401, !noalias !3402
  br label %._crit_edge39, !dbg !3436

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit
  %i.bg = phi i64 [ %.pre, %._crit_edge39.loopexit ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit ], !dbg !3436 ; 2 uses
    #dbg_value(i64 poison, !1709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3437)
    #dbg_value(i64 poison, !1709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3437)
  %i.bh = sub i64 %.sroa.07.0.i.i, %i.bg, !dbg !3438
  store i64 %i.bh, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3438, !noalias !3250
  store i64 %i.bg, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3439, !noalias !3250
    #dbg_value(ptr %i.a, !1854, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3440)
    #dbg_value(ptr %0, !2520, !DIExpression(), !3441)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2526, !DIExpression(), !3441)
    #dbg_value(ptr %0, !2529, !DIExpression(), !3443)
    #dbg_value(ptr %0, !2538, !DIExpression(), !3445)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2534, !DIExpression(), !3443)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2544, !DIExpression(), !3445)
    #dbg_value(i64 1, !2535, !DIExpression(), !3443)
    #dbg_value(i64 1, !2545, !DIExpression(), !3445)
    #dbg_value(ptr %0, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3447)
    #dbg_value(i64 1, !2546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3447)
    #dbg_value(i64 32, !2553, !DIExpression(), !3448)
    #dbg_value(i64 32, !2555, !DIExpression(), !3449)
    #dbg_value(ptr %0, !2569, !DIExpression(), !3450)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2574, !DIExpression(), !3450)
    #dbg_value(i64 32, !2575, !DIExpression(), !3450)
    #dbg_value(i64 32, !2576, !DIExpression(), !3452)
    #dbg_value(i64 0, !2580, !DIExpression(), !3453)
    #dbg_value(i64 4, !2578, !DIExpression(), !3454)
    #dbg_value(i64 4, !2582, !DIExpression(), !3455)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.n, !dbg !3456, !noalias !3411

bb.n:                                             ; preds = %._crit_edge39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #25, !dbg !3457, !noalias !3411
  unreachable, !dbg !3457

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %._crit_edge39
  call void @llvm.experimental.noalias.scope.decl(metadata !3458), !dbg !3409
    #dbg_value(ptr %i.a, !2599, !DIExpression(), !3461)
  call void @llvm.experimental.noalias.scope.decl(metadata !3463), !dbg !3466, !noalias !3411
    #dbg_value(ptr %i.a, !2612, !DIExpression(), !3467)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3469, !alias.scope !3470, !noalias !3411 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3469, !alias.scope !3470, !noalias !3411 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3469, !alias.scope !3470, !noalias !3411, !noundef !26 ; 3 uses
    #dbg_value(ptr poison, !2621, !DIExpression(DW_OP_deref), !3471)
    #dbg_value(ptr poison, !2628, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !3471)
    #dbg_value(ptr poison, !2627, !DIExpression(), !3471)
    #dbg_value(ptr poison, !2631, !DIExpression(), !3473)
    #dbg_value(ptr poison, !2639, !DIExpression(), !3475)
    #dbg_value(ptr poison, !2652, !DIExpression(), !3477)
    #dbg_value(ptr poison, !2670, !DIExpression(), !3479)
  %i.bj = icmp eq i64 %.val3.i.i, 0, !dbg !3481
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3482

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3469, !alias.scope !3470, !noalias !3411
    #dbg_value(ptr poison, !2645, !DIExpression(), !3475)
    #dbg_value(i64 %.val.i.i, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3475)
    #dbg_value(i64 %.val.i.i, !2662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3477)
    #dbg_value(i64 %.val1.i.i, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3475)
    #dbg_value(i64 %.val1.i.i, !2662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3477)
  %i.bk = add i64 %.val3.i.i, 1, !dbg !3483
    #dbg_value(i64 %.val.i.i, !2225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3484)
    #dbg_value(i64 %.val1.i.i, !2225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3484)
    #dbg_value(i64 %i.bk, !2231, !DIExpression(), !3484)
    #dbg_value(i64 %i.bk, !2253, !DIExpression(), !3486)
    #dbg_value(i64 %i.bk, !2262, !DIExpression(), !3488)
    #dbg_value(i64 %.val.i.i, !2232, !DIExpression(), !3490)
    #dbg_value(i64 %.val.i.i, !2256, !DIExpression(), !3486)
    #dbg_value(i64 %.val.i.i, !2265, !DIExpression(), !3488)
    #dbg_value(i64 %.val1.i.i, !2234, !DIExpression(), !3490)
  %i.bl = mul nuw i64 %.val.i.i, %i.bk, !dbg !3491 ; 2 uses
    #dbg_value(i1 false, !2271, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3492)
    #dbg_value(i64 %i.bl, !2277, !DIExpression(), !3494)
  %i.bm = add i64 %.val1.i.i, -1, !dbg !3496
    #dbg_value(i64 %i.bm, !2280, !DIExpression(), !3494)
  %i.bn = add i64 %i.bm, %i.bl, !dbg !3497        ; 2 uses
  %i.bo = icmp uge i64 %i.bn, %i.bl, !dbg !3497
    #dbg_value(i1 true, !2271, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3498)
  call void @llvm.assume(i1 %i.bo), !dbg !3500, !noalias !3411
  %i.bp = sub i64 0, %.val1.i.i, !dbg !3501
  %i.bq = and i64 %i.bn, %i.bp, !dbg !3502        ; 3 uses
    #dbg_value(i64 %i.bq, !2235, !DIExpression(), !3503)
    #dbg_value(i64 %i.bq, !2277, !DIExpression(), !3504)
  %i.br = add i64 %.val3.i.i, 17, !dbg !3506
    #dbg_value(i64 %i.br, !2280, !DIExpression(), !3504)
  %i.bs = add i64 %i.br, %i.bq, !dbg !3507        ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq, !dbg !3507
    #dbg_value(i1 %i.bt, !2271, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3508)
  %i.bu = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bv = icmp ule i64 %i.bs, %i.bu
  call void @llvm.assume(i1 %i.bt), !dbg !3510, !noalias !3411
  call void @llvm.assume(i1 %i.bv), !dbg !3510, !noalias !3411
    #dbg_value(i64 %.val1.i.i, !2708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3511)
    #dbg_value(i64 %.val1.i.i, !2666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3513)
    #dbg_value(i64 %i.bs, !2708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3511)
    #dbg_value(i64 %i.bs, !2666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3513)
    #dbg_value(i64 %i.bq, !2708, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3511)
    #dbg_value(i64 %i.bq, !2666, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3513)
  %i.bw = icmp ne i64 %.val1.i.i, 0, !dbg !3514
  call void @llvm.assume(i1 %i.bw), !dbg !3515, !noalias !3411
    #dbg_value(i64 %.val1.i.i, !2649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3516)
    #dbg_value(i64 %.val1.i.i, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3517)
    #dbg_value(i64 %i.bs, !2649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3516)
    #dbg_value(i64 %i.bs, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3517)
    #dbg_value(i64 %i.bq, !2665, !DIExpression(), !3517)
    #dbg_value(i64 %i.bq, !2723, !DIExpression(), !3518)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !3411
    #dbg_value(ptr %.val2.i.i, !2726, !DIExpression(), !3518)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3516)
    #dbg_value(ptr poison, !2729, !DIExpression(), !3520)
    #dbg_value(ptr poison, !2738, !DIExpression(), !3522)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2734, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3520)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3522)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2747, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3524)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bq), !2756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !3526)
    #dbg_value(i64 %.val1.i.i, !2735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3520)
    #dbg_value(i64 %.val1.i.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3522)
    #dbg_value(i64 %.val1.i.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3524)
    #dbg_value(i64 %.val1.i.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3526)
    #dbg_value(i64 %i.bs, !2735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3520)
    #dbg_value(i64 %i.bs, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3522)
    #dbg_value(i64 %i.bs, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3524)
    #dbg_value(i64 %i.bs, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3526)
  %i.bx = icmp eq i64 %i.bs, 0, !dbg !3528
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.o, !dbg !3528

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.by = sub nsw i64 0, %i.bq, !dbg !3529
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3526)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2747, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3524)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3522)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2734, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3520)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.by), !2647, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3516)
  %i.bz = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.by, !dbg !3530
    #dbg_value(ptr %i.bz, !2647, !DIExpression(), !3516)
    #dbg_value(ptr %i.bz, !2734, !DIExpression(), !3520)
    #dbg_value(ptr %i.bz, !2743, !DIExpression(), !3522)
    #dbg_value(ptr %i.bz, !2747, !DIExpression(), !3524)
    #dbg_value(ptr %i.bz, !2756, !DIExpression(), !3526)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bz, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !dbg !3531, !noalias !3532
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !3533

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECs9GYDdpCSJ4S_14regex_automata.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3409, !noalias !3250
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !3410

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.035, %.preheader ], [ %i.be, %.noexc5 ], !dbg !3534 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.037, %.preheader ], [ %i.bf, %.noexc5 ], !dbg !3534 ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.038, %.preheader ], [ %i.bc, %.noexc5 ], !dbg !3534
    #dbg_value(i16 %.sroa.13.1.lcssa, !2472, !DIExpression(), !3535)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2770, !DIExpression(), !3536)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2777, !DIExpression(), !3538)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2782, !DIExpression(), !3540)
  %i.ca = add i16 %.sroa.13.1.lcssa, -1, !dbg !3542
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3543
  %i.cc = zext nneg i16 %i.cb to i64, !dbg !3544
    #dbg_value(i64 %i.cc, !2461, !DIExpression(), !3545)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2792, !DIExpression(), !3546)
  %i.cd = and i16 %i.ca, %.sroa.13.1.lcssa, !dbg !3548
    #dbg_value(i16 %i.cd, !1585, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !3403)
    #dbg_value(i64 %i.cc, !1701, !DIExpression(), !3549)
  %i.ce = add i64 %.sroa.5.1.lcssa, %i.cc, !dbg !3550 ; 2 uses
    #dbg_value(i64 1, !1709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3437)
    #dbg_value(i64 %i.ce, !1709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3437)
  %i.cf = add i64 %.sroa.9.036, -1, !dbg !3551    ; 2 uses
    #dbg_value(i64 %i.cf, !1585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3403)
    #dbg_value(i64 %i.ce, !1647, !DIExpression(), !3552)
    #dbg_value(i64 %i.ce, !1836, !DIExpression(), !3242)
  call void @llvm.experimental.noalias.scope.decl(metadata !3553), !dbg !3556
    #dbg_value(ptr poison, !3557, !DIExpression(DW_OP_deref, DW_OP_deref), !3565)
    #dbg_value(ptr %0, !3563, !DIExpression(), !3565)
    #dbg_value(ptr %0, !3567, !DIExpression(), !3588)
    #dbg_value(ptr %0, !3590, !DIExpression(), !3596)
    #dbg_value(i64 %i.ce, !3564, !DIExpression(), !3565)
    #dbg_value(i64 %i.ce, !3580, !DIExpression(), !3588)
    #dbg_value(i64 %i.ce, !3598, !DIExpression(), !3608)
    #dbg_value(i64 %i.ce, !3610, !DIExpression(), !3617)
    #dbg_value(i64 1, !3616, !DIExpression(), !3619)
  %i.cg = load ptr, ptr %0, align 8, !dbg !3637, !alias.scope !3553, !noalias !3638, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cg, !3604, !DIExpression(), !3608)
    #dbg_value(ptr %i.cg, !3615, !DIExpression(), !3617)
  %i.ch = sub nsw i64 0, %i.ce, !dbg !3640
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.cg, i64 %i.ch, !dbg !3641
    #dbg_value(ptr poison, !3635, !DIExpression(), !3642)
    #dbg_value(ptr poison, !3627, !DIExpression(), !3643)
    #dbg_value(ptr %i.ci, !3615, !DIExpression(), !3619)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24, !dbg !3644
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !3645, !noalias !3646, !nonnull !26, !align !2875, !noundef !26
    #dbg_value(ptr poison, !3647, !DIExpression(DW_OP_deref), !3656)
    #dbg_value(ptr %i.cj, !3652, !DIExpression(), !3656)
    #dbg_value(ptr %.val.i, !3658, !DIExpression(), !3665)
    #dbg_value(ptr %i.cj, !3663, !DIExpression(), !3665)
  %i.ck = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateEB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit unwind label %bb.m, !dbg !3667 ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.ck, !1649, !DIExpression(), !3668)
    #dbg_value(i64 %i.ck, !2897, !DIExpression(), !3669)
    #dbg_value(i64 %i.ck, !2914, !DIExpression(), !3671)
    #dbg_value(ptr %i.a, !2907, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3673)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3674)
    #dbg_value(ptr %i.a, !2920, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3676)
    #dbg_value(ptr %i.a, !2928, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3677)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3679)
    #dbg_value(ptr %i.a, !1823, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3681)
    #dbg_value(ptr poison, !2940, !DIExpression(), !3683)
    #dbg_value(ptr poison, !2955, !DIExpression(), !3686)
    #dbg_value(ptr poison, !2962, !DIExpression(), !3687)
    #dbg_value(i64 %i.ck, !2956, !DIExpression(), !3686)
    #dbg_value(!DIArgList(i64 %i.ck, i64 %i.at), !2957, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3689)
    #dbg_value(i64 0, !2957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3689)
  %.sroa.0.07.i = and i64 %i.at, %i.ck, !dbg !3686 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !3690
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !3692, !noalias !3696
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3699
  %i.cn = bitcast <16 x i1> %i.cm to i16, !dbg !3699 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0, !dbg !3703
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3705, !prof !3009

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ], !dbg !3686
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB10_6hybrid2id11LazyStateIDEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1Y_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B10_.exit ], [ %i.de, %.lr.ph.i ], !dbg !3699
    #dbg_value(i16 %.lcssa.i, !3005, !DIExpression(), !3706)
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEE5clearBX_:bb.a
  br i1 %i.ab, label %bb.i, label %bb.f, !dbg !12570

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !dbg !12571, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.ac, !12537, !DIExpression(), !12539)
    #dbg_value(ptr %i.ac, !12544, !DIExpression(), !12546)
  %i.ad = add i64 %i.aa, 17, !dbg !12572
    #dbg_value(i64 %i.ad, !12538, !DIExpression(), !12539)
    #dbg_value(i64 %i.ad, !12545, !DIExpression(), !12546)
    #dbg_value(ptr %i.ac, !12522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12573)
    #dbg_value(ptr %i.ac, !12513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12518)
    #dbg_value(i64 %i.ad, !12522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12573)
    #dbg_value(i64 %i.ad, !12513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12518)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 -1, i64 %i.ad, i1 false), !dbg !12574
    #dbg_value(i64 %i.aa, !12575, !DIExpression(), !12578)
  %i.ae = icmp ult i64 %i.aa, 8, !dbg !12580
  %i.af = add i64 %i.aa, 1, !dbg !12580
  %i.ag = lshr i64 %i.af, 3, !dbg !12580
  %i.ah = mul nuw i64 %i.ag, 7, !dbg !12580
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.aa, i64 %i.ah, !dbg !12580
  br label %bb.i, !dbg !12580

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEEBK_.exit.i
    #dbg_value(ptr poison, !12485, !DIExpression(), !12581)
    #dbg_value(ptr poison, !12495, !DIExpression(), !12583)
    #dbg_value(ptr poison, !12500, !DIExpression(), !12585)
    #dbg_value(ptr poison, !12507, !DIExpression(), !12585)
    #dbg_value(i8 -1, !12510, !DIExpression(), !12587)
    #dbg_value(i8 -1, !12534, !DIExpression(), !12592)
    #dbg_value(i8 -1, !12541, !DIExpression(), !12594)
    #dbg_value(ptr %0, !12532, !DIExpression(), !12596)
    #dbg_value(ptr %0, !12527, !DIExpression(), !12597)
    #dbg_value(ptr %0, !12550, !DIExpression(), !12598)
    #dbg_value(ptr %0, !12555, !DIExpression(), !12600)
    #dbg_value(ptr %0, !12563, !DIExpression(), !12602)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12604
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !12604, !noundef !26 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !12604
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, label %bb.g, !dbg !12605

bb.g:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit
  %i.al = load ptr, ptr %0, align 8, !dbg !12606, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.al, !12537, !DIExpression(), !12592)
    #dbg_value(ptr %i.al, !12544, !DIExpression(), !12594)
  %i.am = add i64 %i.aj, 17, !dbg !12607
    #dbg_value(i64 %i.am, !12538, !DIExpression(), !12592)
    #dbg_value(i64 %i.am, !12545, !DIExpression(), !12594)
    #dbg_value(ptr %i.al, !12522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12608)
    #dbg_value(ptr %i.al, !12513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12587)
    #dbg_value(i64 %i.am, !12522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12608)
    #dbg_value(i64 %i.am, !12513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12587)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 -1, i64 %i.am, i1 false), !dbg !12609
    #dbg_value(i64 %i.aj, !12575, !DIExpression(), !12610)
  %i.an = icmp ult i64 %i.aj, 8, !dbg !12612
  %i.ao = add i64 %i.aj, 1, !dbg !12612
  %i.ap = lshr i64 %i.ao, 3, !dbg !12612
  %i.aq = mul nuw i64 %i.ap, 7, !dbg !12612
  %spec.select.i.i.i5 = select i1 %i.an, i64 %i.aj, i64 %i.aq, !dbg !12612
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6, !dbg !12612

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit, %bb.g
  %i.ar = phi i64 [ %spec.select.i.i.i5, %bb.g ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEEB1i_.exit ], !dbg !12612
  store i64 0, ptr %i.a, align 8, !dbg !12613
    #dbg_value(i64 %i.ar, !12575, !DIExpression(), !12610)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12614
  store i64 %i.ar, ptr %i.as, align 8, !dbg !12614
  br label %bb.h, !dbg !12615

bb.h:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util11determinize5state5StateNtNtNtB1X_6hybrid2id11LazyStateIDEENCNvMs6_B1w_B1t_5clear0EEB1X_.exit6
  ret void, !dbg !12615

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.at = phi i64 [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.e ], !dbg !12580
  store i64 0, ptr %i.a, align 8, !dbg !12616
    #dbg_value(i64 %i.at, !12575, !DIExpression(), !12578)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12617
  store i64 %i.at, ptr %i.au, align 8, !dbg !12617
  resume { ptr, i32 } %i.y, !dbg !12618
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, ptr noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !12619 {
bb.a:
    #dbg_value(ptr poison, !12652, !DIExpression(), !12656)
    #dbg_value(ptr poison, !12660, !DIExpression(), !12669)
    #dbg_value(ptr poison, !12666, !DIExpression(), !12670)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !12625, !DIExpression(), !12671)
    #dbg_value(ptr %0, !12672, !DIExpression(), !12678)
    #dbg_value(ptr %1, !12626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12671)
    #dbg_value(ptr poison, !12626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12671)
    #dbg_value(i64 24, !12627, !DIExpression(), !12671)
    #dbg_value(i64 24, !12680, !DIExpression(), !12685)
    #dbg_value(i64 24, !12680, !DIExpression(), !12687)
    #dbg_value(i64 24, !12689, !DIExpression(), !12694)
    #dbg_value(i64 24, !12696, !DIExpression(), !12703)
    #dbg_value(i64 24, !12705, !DIExpression(), !12722)
    #dbg_value(ptr %2, !12628, !DIExpression(), !12671)
    #dbg_declare(ptr %i.a, !12629, !DIExpression(), !12726)
    #dbg_value(i64 1, !12727, !DIExpression(), !12731)
    #dbg_value(i64 1, !12733, !DIExpression(), !12737)
    #dbg_value(ptr poison, !12739, !DIExpression(), !12747)
    #dbg_value(ptr poison, !12749, !DIExpression(), !12754)
    #dbg_value(ptr poison, !12749, !DIExpression(), !12756)
    #dbg_value(i8 -1, !12758, !DIExpression(), !12763)
  %.val52 = load ptr, ptr %0, align 8, !dbg !12765 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12765 ; 4 uses
  %.val53 = load i64, ptr %i.b, align 8, !dbg !12765, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !12766, !DIExpression(), !12790)
    #dbg_value(ptr poison, !12784, !DIExpression(), !12812)
    #dbg_value(ptr poison, !12795, !DIExpression(), !12813)
    #dbg_value(ptr poison, !12803, !DIExpression(), !12814)
    #dbg_value(ptr poison, !12815, !DIExpression(), !12818)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12825)
    #dbg_value(ptr poison, !12815, !DIExpression(), !12827)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12829)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12831)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12833)
    #dbg_value(ptr poison, !12815, !DIExpression(), !12835)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12837)
    #dbg_value(ptr poison, !12815, !DIExpression(), !12839)
    #dbg_value(ptr poison, !12820, !DIExpression(), !12841)
    #dbg_value(i64 16, !12843, !DIExpression(), !12855)
    #dbg_value(i64 0, !12824, !DIExpression(), !12831)
    #dbg_value(i64 16, !12824, !DIExpression(), !12833)
    #dbg_value(i64 0, !12824, !DIExpression(), !12837)
    #dbg_value(i64 16, !12857, !DIExpression(), !12865)
    #dbg_value(i64 16, !12867, !DIExpression(), !12875)
  %i.c = add i64 %.val53, 1, !dbg !12878          ; 6 uses
    #dbg_value(i64 0, !12852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12855)
    #dbg_value(i64 %i.c, !12852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12855)
    #dbg_value(i64 0, !12879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12886)
    #dbg_value(i64 %i.c, !12879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12886)
    #dbg_value(i64 16, !12883, !DIExpression(), !12886)
    #dbg_value(i64 0, !12888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12899)
    #dbg_value(i64 16, !12894, !DIExpression(), !12899)
    #dbg_value(i64 16, !12901, !DIExpression(), !12909)
    #dbg_value(i64 %i.c, !12904, !DIExpression(), !12909)
    #dbg_value(i64 %i.c, !12895, !DIExpression(), !12911)
    #dbg_value(i64 %i.c, !12905, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !12912)
    #dbg_value(i64 %i.c, !12907, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !12913)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !12888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(i64 0, !12804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !12804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 15, !12804, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12914)
    #dbg_value(i8 1, !12804, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !12914)
    #dbg_value(ptr undef, !12795, !DIExpression(), !12813)
    #dbg_value(ptr undef, !12784, !DIExpression(), !12812)
    #dbg_value(i64 15, !12785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12915)
    #dbg_value(i64 15, !12916, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12920)
    #dbg_value(ptr undef, !12766, !DIExpression(), !12790)
    #dbg_value(!DIArgList(i64 %i.c, i64 %i.c), !12786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !12922)
  %.not6.i = icmp eq i64 %i.c, 0, !dbg !12923
  br i1 %.not6.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i, !dbg !12923

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
    #dbg_value(ptr %.val52, !12862, !DIExpression(), !12924)
    #dbg_value(ptr poison, !12863, !DIExpression(), !12924)
    #dbg_value(ptr poison, !12873, !DIExpression(), !12926)
    #dbg_value(i64 %i.c, !12864, !DIExpression(), !12924)
    #dbg_value(i64 %i.c, !12874, !DIExpression(), !12926)
    #dbg_value(ptr %.val52, !12872, !DIExpression(), !12926)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val52, i64 16, !dbg !12928
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val52, i64 %i.c, i1 false), !dbg !12932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12934
    #dbg_value(ptr %2, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12678)
    #dbg_value(i64 24, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12678)
    #dbg_value(i64 0, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12935)
    #dbg_value(i64 %i.c, !12631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12935)
    #dbg_value(ptr undef, !12666, !DIExpression(), !12670)
    #dbg_value(ptr undef, !12660, !DIExpression(), !12669)
    #dbg_value(ptr undef, !12652, !DIExpression(), !12656)
    #dbg_value(ptr undef, !12655, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12936)
  br label %._crit_edge, !dbg !12657

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4, !dbg !12937
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !12888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !12804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.c), !12786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !12922)
    #dbg_value(i64 %i.e, !12905, !DIExpression(), !12912)
  %i.f = and i64 %i.c, 15, !dbg !12938
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !12786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !12922)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !12804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.f), !12888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(i64 %i.f, !12907, !DIExpression(), !12913)
  %.not13.i.i.i = icmp ne i64 %i.f, 0, !dbg !12939
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !12888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !12804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(!DIArgList(i64 %i.e, i1 %.not13.i.i.i), !12786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !12922)
  %i.g = zext i1 %.not13.i.i.i to i64, !dbg !12939
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !12786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !12922)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !12804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(!DIArgList(i64 %i.e, i64 %i.g), !12888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12899)
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !12939 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i, !12888, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12899)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !12804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 %.sroa.05.0.i.i.i, !12786, !DIExpression(), !12922)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !12923
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !12923
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new, !dbg !12923

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !12923
  br label %bb.b, !dbg !12923

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !12923
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader, !dbg !12923

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !12923
  tail call void @llvm.assume(i1 %lcmp.mod11), !dbg !12923
    #dbg_value(i64 16, !12785, !DIExpression(), !12915)
    #dbg_value(i64 16, !12916, !DIExpression(), !12920)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12788, !DIExpression(), !12940)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12919, !DIExpression(), !12920)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12804, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12805, !DIExpression(), !12941)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12823, !DIExpression(), !12825)
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12823, !DIExpression(), !12829)
  %i.i = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i.epil.init, !dbg !12942 ; 2 uses
    #dbg_value(ptr %i.i, !12944, !DIExpression(), !12954)
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16, !dbg !12956
    #dbg_value(<2 x i64> poison, !12807, !DIExpression(), !12957)
    #dbg_declare(ptr poison, !12958, !DIExpression(), !12969)
    #dbg_value(<2 x i64> zeroinitializer, !12965, !DIExpression(), !12971)
    #dbg_declare(ptr poison, !12972, !DIExpression(), !12976)
    #dbg_declare(ptr poison, !12975, !DIExpression(), !12978)
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !12979
    #dbg_value(<16 x i8> %.lobit.i.i.epil, !12967, !DIExpression(), !12980)
    #dbg_declare(ptr poison, !12981, !DIExpression(), !12985)
    #dbg_declare(ptr poison, !12984, !DIExpression(), !12987)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !12988
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472), !dbg !12988
    #dbg_value(<2 x i64> %i.k, !12809, !DIExpression(), !12989)
    #dbg_value(<2 x i64> %i.k, !12990, !DIExpression(), !13004)
    #dbg_value(ptr %i.i, !12996, !DIExpression(), !13004)
    #dbg_value(ptr %i.i, !13006, !DIExpression(), !13013)
    #dbg_declare(ptr poison, !13012, !DIExpression(), !13015)
  store <2 x i64> %i.k, ptr %i.i, align 16, !dbg !13016
    #dbg_value(i64 %.sroa.0.08.i.epil.init, !12804, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(ptr undef, !12795, !DIExpression(), !12813)
    #dbg_value(ptr undef, !12784, !DIExpression(), !12812)
    #dbg_value(i64 15, !12785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12915)
    #dbg_value(i64 15, !12916, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12920)
    #dbg_value(ptr undef, !12766, !DIExpression(), !12790)
    #dbg_value(i64 poison, !12786, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !12922)
  br label %._crit_edge.i, !dbg !13017

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
    #dbg_value(i64 %i.c, !13018, !DIExpression(DW_OP_constu, 16, DW_OP_lt, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13021)
    #dbg_value(ptr %2, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12678)
    #dbg_value(ptr %2, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12678)
    #dbg_value(i64 24, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12678)
    #dbg_value(i64 24, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12678)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13017
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13017
    #dbg_value(i64 0, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12935)
    #dbg_value(i64 0, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12935)
    #dbg_value(i64 %i.c, !12631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12935)
    #dbg_value(i64 %i.c, !12631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12935)
    #dbg_value(ptr undef, !12666, !DIExpression(), !12670)
    #dbg_value(ptr undef, !12666, !DIExpression(), !12670)
    #dbg_value(ptr undef, !12660, !DIExpression(), !12669)
    #dbg_value(ptr undef, !12660, !DIExpression(), !12669)
    #dbg_value(ptr undef, !12652, !DIExpression(), !12656)
    #dbg_value(ptr undef, !12652, !DIExpression(), !12656)
    #dbg_value(ptr undef, !12655, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12936)
    #dbg_value(ptr undef, !12655, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12936)
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16), !dbg !12657
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16), !dbg !12657
  %i.n = getelementptr inbounds nuw i8, ptr %.val52, i64 %., !dbg !12928
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val52, i64 %.27, i1 false), !dbg !12932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12934
  store ptr %2, ptr %i.l, align 8, !dbg !13017
  store i64 24, ptr %i.m, align 8, !dbg !13017
  store ptr %0, ptr %i.a, align 8, !dbg !13017
  br label %.lr.ph, !dbg !12748

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 16, !12785, !DIExpression(), !12915)
    #dbg_value(i64 16, !12916, !DIExpression(), !12920)
    #dbg_value(i64 %.sroa.0.08.i, !12788, !DIExpression(), !12940)
    #dbg_value(i64 %.sroa.0.08.i, !12919, !DIExpression(), !12920)
    #dbg_value(i64 %.sroa.0.08.i, !12804, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 %.sroa.0.08.i, !12805, !DIExpression(), !12941)
    #dbg_value(i64 %.sroa.0.08.i, !12823, !DIExpression(), !12825)
    #dbg_value(i64 %.sroa.0.08.i, !12823, !DIExpression(), !12829)
  %i.o = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !12942 ; 2 uses
    #dbg_value(ptr %i.o, !12944, !DIExpression(), !12954)
  %.val5.i = load <16 x i8>, ptr %i.o, align 16, !dbg !12956
    #dbg_value(<2 x i64> poison, !12807, !DIExpression(), !12957)
    #dbg_declare(ptr poison, !12958, !DIExpression(), !12969)
    #dbg_value(<2 x i64> zeroinitializer, !12965, !DIExpression(), !12971)
    #dbg_declare(ptr poison, !12972, !DIExpression(), !12976)
    #dbg_declare(ptr poison, !12975, !DIExpression(), !12978)
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !12979
    #dbg_value(<16 x i8> %.lobit.i.i, !12967, !DIExpression(), !12980)
    #dbg_declare(ptr poison, !12981, !DIExpression(), !12985)
    #dbg_declare(ptr poison, !12984, !DIExpression(), !12987)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !12988
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472), !dbg !12988
    #dbg_value(<2 x i64> %i.q, !12809, !DIExpression(), !12989)
    #dbg_value(<2 x i64> %i.q, !12990, !DIExpression(), !13004)
    #dbg_value(ptr %i.o, !12996, !DIExpression(), !13004)
    #dbg_value(ptr %i.o, !13006, !DIExpression(), !13013)
    #dbg_declare(ptr poison, !13012, !DIExpression(), !13015)
  store <2 x i64> %i.q, ptr %i.o, align 16, !dbg !13016
    #dbg_value(i64 %.sroa.0.08.i, !12804, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(ptr undef, !12795, !DIExpression(), !12813)
    #dbg_value(ptr undef, !12784, !DIExpression(), !12812)
    #dbg_value(i64 15, !12785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12915)
    #dbg_value(i64 15, !12916, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12920)
    #dbg_value(ptr undef, !12766, !DIExpression(), !12790)
    #dbg_value(i64 poison, !12786, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !12922)
    #dbg_value(i64 16, !12785, !DIExpression(), !12915)
    #dbg_value(i64 16, !12916, !DIExpression(), !12920)
    #dbg_value(i64 %.sroa.0.08.i, !12788, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !12940)
    #dbg_value(i64 %.sroa.0.08.i, !12919, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !12920)
  %i.r = add i64 %.sroa.0.08.i, 32, !dbg !13023   ; 2 uses
    #dbg_value(i64 %i.r, !12804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 %.sroa.0.08.i, !12805, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !12941)
    #dbg_value(i64 %.sroa.0.08.i, !12823, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !12825)
    #dbg_value(i64 %.sroa.0.08.i, !12823, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !12829)
  %i.s = getelementptr inbounds nuw i8, ptr %.val52, i64 %.sroa.0.08.i, !dbg !12942
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !12942 ; 2 uses
    #dbg_value(ptr %i.t, !12944, !DIExpression(), !12954)
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16, !dbg !12956
    #dbg_declare(ptr poison, !12958, !DIExpression(), !12969)
    #dbg_declare(ptr poison, !12972, !DIExpression(), !12976)
    #dbg_declare(ptr poison, !12975, !DIExpression(), !12978)
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !12979
    #dbg_value(<16 x i8> %.lobit.i.i.1, !12967, !DIExpression(), !12980)
    #dbg_declare(ptr poison, !12981, !DIExpression(), !12985)
    #dbg_declare(ptr poison, !12984, !DIExpression(), !12987)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !12988
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472), !dbg !12988
    #dbg_value(<2 x i64> %i.v, !12809, !DIExpression(), !12989)
    #dbg_value(<2 x i64> %i.v, !12990, !DIExpression(), !13004)
    #dbg_value(ptr %i.t, !12996, !DIExpression(), !13004)
    #dbg_value(ptr %i.t, !13006, !DIExpression(), !13013)
    #dbg_declare(ptr poison, !13012, !DIExpression(), !13015)
  store <2 x i64> %i.v, ptr %i.t, align 16, !dbg !13016
    #dbg_value(i64 %i.r, !12804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12914)
    #dbg_value(i64 poison, !12804, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12914)
    #dbg_value(i64 15, !12785, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12915)
    #dbg_value(i64 15, !12916, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12920)
    #dbg_value(i64 poison, !12786, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !12922)
  %niter.next.1 = add i64 %niter, 2, !dbg !12923  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !12923
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b, !dbg !12923

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8, !dbg !13024 ; 2 uses
  %.pre13 = add i64 %.pre, 1, !dbg !13025
  %i.w = lshr i64 %.pre13, 3, !dbg !13025
  %i.x = mul nuw i64 %i.w, 7, !dbg !13025
  br label %._crit_edge, !dbg !13024

._crit_edge:                                      ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13025
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ], !dbg !13024 ; 2 uses
    #dbg_value(i64 %i.y, !13028, !DIExpression(), !13030)
  %i.z = icmp ult i64 %i.y, 8, !dbg !13025
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi, !dbg !13025
    #dbg_value(i64 %.sroa.04.0, !13028, !DIExpression(), !13030)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13031
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !13031, !noundef !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13032
  %i.ad = sub i64 %.sroa.04.0, %i.ab, !dbg !13032
  store i64 %i.ad, ptr %i.ac, align 8, !dbg !13032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13033
  ret void, !dbg !13034

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 9 uses
    #dbg_value(i64 %.sroa.0.06, !12661, !DIExpression(), !13035)
    #dbg_value(i64 %.sroa.0.06, !12730, !DIExpression(), !12731)
    #dbg_value(i64 %.sroa.0.06, !12736, !DIExpression(), !12737)
  %i.ae = add nuw i64 %.sroa.0.06, 1, !dbg !13036 ; 2 uses
    #dbg_value(i64 %i.ae, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12935)
    #dbg_value(i64 %.sroa.0.06, !12633, !DIExpression(), !13037)
    #dbg_value(i64 %.sroa.0.06, !13038, !DIExpression(), !13042)
    #dbg_value(i64 %.sroa.0.06, !12684, !DIExpression(), !12685)
    #dbg_value(i64 %.sroa.0.06, !13044, !DIExpression(), !13053)
    #dbg_value(i64 %.sroa.0.06, !13055, !DIExpression(), !13060)
    #dbg_value(i64 %.sroa.0.06, !12762, !DIExpression(), !12763)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13042)
  %i.af = load ptr, ptr %0, align 8, !dbg !13062, !nonnull !26, !noundef !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06, !dbg !13063
    #dbg_value(ptr %i.ag, !12743, !DIExpression(), !12747)
    #dbg_value(ptr %i.ag, !12752, !DIExpression(), !12754)
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !13066, !noundef !26
  %.not = icmp eq i8 %i.ah, -128, !dbg !13066
  br i1 %.not, label %bb.c, label %bb.k, !dbg !12748

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %0, !12683, !DIExpression(), !12685)
  %.neg = mul i64 %i.ae, -24, !dbg !13067
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg, !dbg !13068 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %bb.m unwind label %bb.l, !dbg !13033

bb.e:                                             ; preds = %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit
    #dbg_value(i64 %i.aj, !12637, !DIExpression(), !13074)
    #dbg_value(i64 %i.aj, !13052, !DIExpression(), !13053)
    #dbg_value(i64 %i.aj, !13059, !DIExpression(), !13060)
    #dbg_value(i64 %i.aj, !13075, !DIExpression(), !13083)
  %.val = load ptr, ptr %0, align 8, !dbg !13085, !nonnull !26, !noundef !26 ; 7 uses
  %.val51 = load i64, ptr %i.b, align 8, !dbg !13085, !noundef !26 ; 6 uses
    #dbg_value(ptr poison, !2940, !DIExpression(), !13086)
    #dbg_value(ptr poison, !2955, !DIExpression(), !13089)
    #dbg_value(ptr poison, !2962, !DIExpression(), !13090)
    #dbg_value(i64 %i.aj, !2956, !DIExpression(), !13089)
    #dbg_value(!DIArgList(i64 %i.aj, i64 %.val51), !2957, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13092)
    #dbg_value(i64 0, !2957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13092)
  %.sroa.0.07.i = and i64 %.val51, %i.aj, !dbg !13089 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i, !dbg !13093
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !dbg !13095, !noalias !13099
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !13102
  %i.an = bitcast <16 x i1> %i.am to i16, !dbg !13102 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0, !dbg !13106
  br i1 %.not.i9.i, label %.lr.ph.i55, label %._crit_edge.i54, !dbg !13108, !prof !3009

._crit_edge.i54:                                  ; preds = %.lr.ph.i55, %bb.e
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.e ], [ %.sroa.0.0.i, %.lr.ph.i55 ], !dbg !13089
  %.lcssa.i = phi i16 [ %i.an, %bb.e ], [ %i.be, %.lr.ph.i55 ], !dbg !13102
    #dbg_value(i16 %.lcssa.i, !3005, !DIExpression(), !13109)
    #dbg_value(i16 %.lcssa.i, !3006, !DIExpression(), !13110)
    #dbg_value(i16 %.lcssa.i, !3012, !DIExpression(), !13111)
    #dbg_value(i16 %.lcssa.i, !3019, !DIExpression(), !13113)
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !13115
  %i.ap = zext nneg i16 %i.ao to i64, !dbg !13116
    #dbg_value(i64 %i.ap, !2998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13117)
    #dbg_value(i64 1, !2998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13117)
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap, !dbg !13118
  %i.ar = and i64 %i.aq, %.val51, !dbg !13118     ; 2 uses
    #dbg_value(i64 1, !2959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13119)
    #dbg_value(i64 %i.ar, !2959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13119)
    #dbg_value(i64 %i.ar, !3029, !DIExpression(), !13120)
    #dbg_value(ptr poison, !3036, !DIExpression(), !13120)
    #dbg_value(ptr poison, !3039, !DIExpression(), !13122)
    #dbg_value(ptr poison, !3048, !DIExpression(), !13124)
    #dbg_value(ptr poison, !3048, !DIExpression(), !13126)
    #dbg_value(i64 0, !3051, !DIExpression(), !13126)
    #dbg_value(i64 %i.ar, !3045, !DIExpression(), !13122)
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar, !dbg !13128
  %i.at = load i8, ptr %i.as, align 1, !dbg !13130, !noundef !26
  %i.au = icmp sgt i8 %i.at, -1, !dbg !13131
    #dbg_value(i1 %i.au, !3066, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13133)
  br i1 %i.au, label %bb.f, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13135, !prof !1380

bb.f:                                             ; preds = %._crit_edge.i54
    #dbg_value(ptr %.val, !3072, !DIExpression(), !13136)
  %.val142.i.i = load <16 x i8>, ptr %.val, align 16, !dbg !13138
    #dbg_value(<2 x i64> poison, !3085, !DIExpression(), !13139)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !13141)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !13143)
    #dbg_value(!DIArgList(<16 x i8> %.val142.i.i, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13144)
  %i.av = icmp slt <16 x i8> %.val142.i.i, zeroinitializer, !dbg !13145
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !13145 ; 2 uses
    #dbg_value(i16 %i.aw, !3095, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !13146)
  %.not.i13.i = icmp ne i16 %i.aw, 0, !dbg !13148
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true), !dbg !13149
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !13149
    #dbg_value(i64 poison, !3104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
    #dbg_value(i64 %i.ay, !3104, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13150)
  tail call void @llvm.assume(i1 %.not.i13.i), !dbg !13152
    #dbg_value(i64 %i.ay, !3029, !DIExpression(), !13120)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !13153

.lr.ph.i55:                                       ; preds = %bb.e, %.lr.ph.i55
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i55 ], [ %.sroa.0.07.i, %bb.e ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i55 ], [ 0, %bb.e ]
    #dbg_value(i64 0, !2959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13119)
    #dbg_value(i64 poison, !2959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13119)
    #dbg_value(ptr undef, !2940, !DIExpression(), !13086)
    #dbg_value(i64 %.val51, !2943, !DIExpression(), !13154)
  %i.ba = add i64 %i.az, 16, !dbg !13155          ; 2 uses
    #dbg_value(i64 %i.ba, !2957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13092)
  %i.bb = add i64 %i.ba, %.sroa.0.010.i, !dbg !13156
    #dbg_value(!DIArgList(i64 %i.bb, i64 %.val51), !2957, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13092)
  %.sroa.0.0.i = and i64 %i.bb, %.val51, !dbg !13089 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i, !2957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13092)
    #dbg_value(i64 %.sroa.0.0.i, !2965, !DIExpression(), !13090)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i, !dbg !13093
    #dbg_value(ptr %i.bc, !2977, !DIExpression(), !13157)
    #dbg_value(ptr %i.bc, !1141, !DIExpression(), !13158)
    #dbg_value(<2 x i64> zeroinitializer, !1149, !DIExpression(), !13159)
    #dbg_value(ptr %i.bc, !1154, !DIExpression(), !13160)
    #dbg_value(ptr undef, !1160, !DIExpression(), !13160)
    #dbg_value(i64 16, !1161, !DIExpression(), !13160)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !dbg !13095, !noalias !13099
    #dbg_value(<2 x i64> poison, !1149, !DIExpression(), !13159)
    #dbg_value(<2 x i64> poison, !2958, !DIExpression(), !13161)
    #dbg_value(ptr poison, !2995, !DIExpression(), !13162)
    #dbg_value(ptr poison, !2996, !DIExpression(), !13162)
    #dbg_value(ptr poison, !2997, !DIExpression(), !13162)
    #dbg_value(<2 x i64> poison, !2986, !DIExpression(), !13163)
    #dbg_declare(ptr poison, !1181, !DIExpression(), !13164)
    #dbg_value(<16 x i8> poison, !1187, !DIExpression(), !13165)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !1199, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !13166)
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !13102
  %i.be = bitcast <16 x i1> %i.bd to i16, !dbg !13102 ; 2 uses
    #dbg_value(i16 %i.be, !3005, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !13109)
  %.not.i.i = icmp eq i16 %i.be, 0, !dbg !13106
  br i1 %.not.i.i, label %.lr.ph.i55, label %._crit_edge.i54, !dbg !13108, !prof !3129

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.f, %._crit_edge.i54
  %.sroa.0.0.i12.i = phi i64 [ %i.ay, %bb.f ], [ %i.ar, %._crit_edge.i54 ] ; 4 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !3029, !DIExpression(), !13120)
    #dbg_value(i64 %.sroa.0.0.i12.i, !12639, !DIExpression(), !13167)
    #dbg_value(i64 %.sroa.0.0.i12.i, !13051, !DIExpression(), !13053)
    #dbg_value(i64 %.sroa.0.0.i12.i, !12684, !DIExpression(), !12687)
    #dbg_value(i64 %.sroa.0.0.i12.i, !13082, !DIExpression(), !13083)
    #dbg_value(ptr %0, !13050, !DIExpression(), !13053)
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i, !dbg !13168
  %i.bg = sub i64 %.sroa.0.0.i12.i, %.sroa.0.07.i, !dbg !13181
  %i.bh = xor i64 %i.bg, %i.bf, !dbg !13180
  %.unshifted = and i64 %i.bh, %.val51, !dbg !13180
  %i.bi = icmp ult i64 %.unshifted, 16, !dbg !13180
    #dbg_value(i1 %i.bi, !13185, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13188)
  br i1 %i.bi, label %bb.h, label %bb.g, !dbg !13190, !prof !1366

bb.g:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
    #dbg_value(ptr %0, !12683, !DIExpression(), !12687)
  %.neg50 = mul i64 %.sroa.0.0.i12.i, -24, !dbg !13191
  %i.bj = getelementptr i8, ptr %.val, i64 %.neg50, !dbg !13192
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24, !dbg !13192 ; 2 uses
    #dbg_value(ptr %i.bk, !12641, !DIExpression(), !13195)
    #dbg_value(ptr %i.bk, !12693, !DIExpression(), !12694)
    #dbg_value(ptr %i.bk, !12702, !DIExpression(), !12703)
    #dbg_value(ptr %i.bk, !12711, !DIExpression(), !12722)
    #dbg_value(ptr %0, !13081, !DIExpression(), !13083)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13196)
    #dbg_value(ptr %0, !13058, !DIExpression(), !13198)
    #dbg_value(ptr %0, !12761, !DIExpression(), !13200)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13203)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13206)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i12.i, !dbg !13208 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !13211, !noundef !26
    #dbg_value(i8 %i.bm, !12643, !DIExpression(), !13212)
  %i.bn = lshr i64 %i.aj, 57, !dbg !13213
  %i.bo = trunc nuw nsw i64 %i.bn to i8, !dbg !13216 ; 2 uses
  %i.bp = add i64 %.sroa.0.0.i12.i, -16, !dbg !13217
  %i.bq = and i64 %i.bp, %.val51, !dbg !13219
  store i8 %i.bo, ptr %i.bl, align 1, !dbg !13220
  %i.br = load ptr, ptr %0, align 8, !dbg !13221, !nonnull !26, !noundef !26
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq, !dbg !13222
  %i.bt = getelementptr i8, ptr %i.bs, i64 16, !dbg !13222
  store i8 %i.bo, ptr %i.bt, align 1, !dbg !13225
    #dbg_value(ptr poison, !12752, !DIExpression(), !13226)
  %i.bu = icmp eq i8 %i.bm, -1, !dbg !13226
  br i1 %i.bu, label %bb.i, label %bb.j, !dbg !12757

bb.h:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
    #dbg_value(ptr %0, !13058, !DIExpression(), !13060)
    #dbg_value(ptr %0, !12761, !DIExpression(), !13227)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13229)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13231)
  %i.bv = lshr i64 %i.aj, 57, !dbg !13233
  %i.bw = trunc nuw nsw i64 %i.bv to i8, !dbg !13235 ; 2 uses
  %i.bx = add i64 %.sroa.0.06, -16, !dbg !13236
  %i.by = and i64 %.val51, %i.bx, !dbg !13238
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06, !dbg !13239
  store i8 %i.bw, ptr %i.bz, align 1, !dbg !13242
  %i.ca = load ptr, ptr %0, align 8, !dbg !13243, !nonnull !26, !noundef !26
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by, !dbg !13244
  %i.cc = getelementptr i8, ptr %i.cb, i64 16, !dbg !13244
  store i8 %i.bw, ptr %i.cc, align 1, !dbg !13247
  br label %bb.k, !dbg !13248

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !12761, !DIExpression(), !12763)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13250)
    #dbg_value(ptr %0, !13041, !DIExpression(), !13253)
  %i.cd = add i64 %.sroa.0.06, -16, !dbg !13255
  %i.ce = load i64, ptr %i.b, align 8, !dbg !13257, !noundef !26
  %i.cf = and i64 %i.ce, %i.cd, !dbg !13258
  %i.cg = load ptr, ptr %0, align 8, !dbg !13259, !nonnull !26, !noundef !26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.0.06, !dbg !13260
  store i8 -1, ptr %i.ch, align 1, !dbg !13263
  %i.ci = load ptr, ptr %0, align 8, !dbg !13264, !nonnull !26, !noundef !26
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cf, !dbg !13265
  %i.ck = getelementptr i8, ptr %i.cj, i64 16, !dbg !13265
  store i8 -1, ptr %i.ck, align 1, !dbg !13268
    #dbg_value(ptr %i.ai, !12692, !DIExpression(), !12694)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !13269
  br label %bb.k, !dbg !13248

bb.j:                                             ; preds = %bb.g
    #dbg_value(ptr %i.ai, !12712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13270)
    #dbg_value(i64 24, !12712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13270)
    #dbg_value(i64 24, !12718, !DIExpression(), !13271)
    #dbg_value(i64 24, !12720, !DIExpression(), !13272)
    #dbg_value(ptr %i.ai, !2569, !DIExpression(), !13273)
    #dbg_value(ptr %i.bk, !2574, !DIExpression(), !13273)
    #dbg_value(i64 24, !2575, !DIExpression(), !13273)
    #dbg_value(i64 24, !2576, !DIExpression(), !13275)
    #dbg_value(i64 0, !2580, !DIExpression(), !13276)
    #dbg_value(i64 3, !2578, !DIExpression(), !13277)
    #dbg_value(i64 3, !2582, !DIExpression(), !13278)
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9GYDdpCSJ4S_14regex_automata(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bk, i64 noundef 3)
          to label %_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.d, !dbg !13279

bb.k:                                             ; preds = %bb.h, %bb.i, %.lr.ph
    #dbg_value(i64 %i.ae, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12935)
    #dbg_value(ptr undef, !12666, !DIExpression(), !12670)
    #dbg_value(ptr undef, !12660, !DIExpression(), !12669)
    #dbg_value(ptr undef, !12652, !DIExpression(), !12656)
    #dbg_value(ptr undef, !12655, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12936)
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val53, !dbg !13280
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !dbg !12657

bb.l:                                             ; preds = %bb.d
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13281
  unreachable, !dbg !13281

bb.m:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ak, !dbg !13281
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate12find_cap_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13282 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !13299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13310)
    #dbg_value(ptr %1, !13302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13311)
    #dbg_value(ptr %1, !13312, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13316)
    #dbg_value(ptr %1, !13318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13322)
    #dbg_value(ptr %1, !13324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(ptr %1, !13330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13335)
    #dbg_value(i64 %2, !13299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13310)
    #dbg_value(i64 %2, !13302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13311)
    #dbg_value(i64 %2, !13312, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13316)
    #dbg_value(i64 %2, !13318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13322)
    #dbg_value(i64 %2, !13324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13328)
    #dbg_value(i64 %2, !13330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13335)
    #dbg_value(i32 10, !13337, !DIExpression(), !13362)
    #dbg_value(i64 0, !13300, !DIExpression(), !13377)
    #dbg_value(i64 0, !13327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(i64 0, !13333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13335)
    #dbg_value(i64 0, !13378, !DIExpression(), !13382)
  %i.d = icmp samesign ult i64 %2, 2, !dbg !13384
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !13384

bb.b:                                             ; preds = %bb.c, %bb.a
  store i64 0, ptr %0, align 8, !dbg !13385
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced.exit, !dbg !13386

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !dbg !13388, !noundef !26
  %i.f = icmp eq i8 %i.e, 36, !dbg !13388
  br i1 %i.f, label %bb.d, label %bb.b, !dbg !13388

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 1, !13300, !DIExpression(), !13377)
    #dbg_value(i64 1, !13327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(i64 1, !13333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13335)
    #dbg_value(i64 1, !13378, !DIExpression(), !13382)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !13389 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !13389, !noundef !26
  %i.i = icmp eq i8 %i.h, 123, !dbg !13389
  br i1 %i.i, label %.preheader.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionhE6map_orbNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19is_valid_cap_letterEBY_.exit, !dbg !13389

.preheader.i:                                     ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13390), !dbg !13393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13394), !dbg !13393
    #dbg_value(ptr %1, !13396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13417)
    #dbg_value(ptr %1, !13419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13423)
    #dbg_value(ptr %1, !13425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13429)
    #dbg_value(ptr %1, !13419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13431)
    #dbg_value(ptr %1, !13425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13433)
    #dbg_value(ptr %1, !13436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13440)
    #dbg_value(ptr %1, !13442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13447)
    #dbg_value(i64 %2, !13396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13417)
    #dbg_value(i64 %2, !13419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13423)
    #dbg_value(i64 %2, !13425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13429)
    #dbg_value(i64 %2, !13419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13431)
    #dbg_value(i64 %2, !13425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13433)
    #dbg_value(i64 %2, !13436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13440)
    #dbg_value(i64 %2, !13442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 1, !13449, !DIExpression(), !13454)
    #dbg_value(i32 10, !13456, !DIExpression(), !13460)
    #dbg_value(i64 2, !13452, !DIExpression(), !13454)
    #dbg_value(i64 2, !13401, !DIExpression(), !13417)
    #dbg_value(i64 2, !13422, !DIExpression(), !13423)
    #dbg_value(i64 2, !13428, !DIExpression(), !13429)
  %.not4148.i.not = icmp eq i64 %2, 2, !dbg !13470
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !13470 ; 2 uses
  br i1 %.not4148.i.not, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braceds_0EB11_.exit.thread.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced0EB11_.exit.i, !dbg !13471

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced0EB11_.exit.i: ; preds = %.preheader.i, %bb.e
  %i.k = phi ptr [ %i.m, %bb.e ], [ %i.j, %.preheader.i ]
  %.sroa.0.049.i = phi i64 [ %i.l, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.049.i, !13401, !DIExpression(), !13417)
    #dbg_value(ptr poison, !13484, !DIExpression(), !13487)
  %.val.i.i = load i8, ptr %i.k, align 1, !dbg !13488, !alias.scope !13489, !noalias !13390, !noundef !26
    #dbg_declare(ptr poison, !13492, !DIExpression(), !13500)
    #dbg_value(ptr poison, !13499, !DIExpression(), !13502)
    #dbg_value(i8 %.val.i.i, !13497, !DIExpression(), !13503)
  %.not42.i = icmp eq i8 %.val.i.i, 125, !dbg !13504
  br i1 %.not42.i, label %bb.f, label %bb.e, !dbg !13505

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced0EB11_.exit.i
  %i.l = add nuw nsw i64 %.sroa.0.049.i, 1, !dbg !13506 ; 3 uses
    #dbg_value(i64 %i.l, !13401, !DIExpression(), !13417)
    #dbg_value(i64 %i.l, !13422, !DIExpression(), !13423)
    #dbg_value(i64 %i.l, !13428, !DIExpression(), !13429)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l, !dbg !13470
    #dbg_value(ptr poison, !13481, !DIExpression(), !13507)
    #dbg_value(i1 false, !13482, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13507)
    #dbg_declare(ptr poison, !13483, !DIExpression(), !13508)
  %exitcond.not.i = icmp eq i64 %i.l, %2, !dbg !13470
  br i1 %exitcond.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braceds_0EB11_.exit.thread.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced0EB11_.exit.i, !dbg !13471

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braceds_0EB11_.exit.thread.i: ; preds = %bb.e, %.preheader.i
  store i64 0, ptr %0, align 8, !dbg !13509, !alias.scope !13390, !noalias !13394
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced.exit, !dbg !13510

bb.f:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRhE6map_orbNCNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced0EB11_.exit.i
    #dbg_value(i64 %.sroa.0.049.i, !13422, !DIExpression(), !13431)
    #dbg_value(i64 %.sroa.0.049.i, !13428, !DIExpression(), !13433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13512, !noalias !13513
    #dbg_value(i64 %.sroa.0.049.i, !13439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13440)
    #dbg_value(i64 %.sroa.0.049.i, !13445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13447)
    #dbg_value(i64 %.sroa.0.049.i, !13452, !DIExpression(), !13514)
    #dbg_value(i64 %.sroa.0.049.i, !13446, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !13447)
  %i.n = add nsw i64 %.sroa.0.049.i, -2, !dbg !13516
    #dbg_value(i64 %i.n, !13446, !DIExpression(), !13447)
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.n), !dbg !13512, !noalias !13390
  %i.o = load i64, ptr %i.b, align 8, !dbg !13512, !range !4846, !noalias !13513, !noundef !26
  %i.p = trunc nuw i64 %i.o to i1, !dbg !13517
  br i1 %i.p, label %bb.g, label %bb.h, !dbg !13517

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !dbg !13518, !alias.scope !13390, !noalias !13394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13519, !noalias !13513
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util11interpolate19find_cap_ref_braced.exit, !dbg !13510

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13520
  %i.r = load ptr, ptr %i.q, align 8, !dbg !13520, !noalias !13513, !nonnull !26, !noundef !26 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13520
  %i.t = load i64, ptr %i.s, align 8, !dbg !13520, !noalias !13513, !noundef !26 ; 6 uses
    #dbg_value(ptr %i.r, !13411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13521)
    #dbg_value(ptr %i.r, !13468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13522)
    #dbg_value(ptr %i.r, !13464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13523)
    #dbg_value(ptr %i.r, !13459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13460)
    #dbg_value(i64 %i.t, !13411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13521)
    #dbg_value(i64 %i.t, !13468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13522)
    #dbg_value(i64 %i.t, !13464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13523)
    #dbg_value(i64 %i.t, !13459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13460)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13519, !noalias !13513
    #dbg_value(ptr %i.r, !13524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(ptr %i.r, !13534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13584)
    #dbg_value(i64 %i.t, !13524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 %i.t, !13534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13584)
    #dbg_value(i32 10, !13529, !DIExpression(), !13582)
    #dbg_value(i32 10, !13585, !DIExpression(), !13592)
    #dbg_value(i8 0, !13530, !DIExpression(), !13594)
    #dbg_value(i8 0, !13590, !DIExpression(), !13592)
  switch i64 %i.t, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.i
  ], !dbg !13595

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.r, align 1, !dbg !13596, !alias.scope !13597, !noalias !13600, !noundef !26 ; 2 uses
  switch i8 %i.u, label %bb.j [
    i8 43, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsv_NtCsj6eKBz9Db1c_4core3numj27from_ascii_bytes_radix_impl.exit.i
  ], !dbg !13596

thread-pre-split.i.i:                             ; preds = %bb.h
  %.pr.i.i = load i8, ptr %i.r, align 1, !dbg !13596, !alias.scope !13597, !noalias !13600
  br label %bb.j, !dbg !13596

bb.j:                                             ; preds = %thread-pre-split.i.i, %bb.i
  %i.v = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.u, %bb.i ], !dbg !13596
  %cond.i.i = icmp eq i8 %i.v, 43, !dbg !13596    ; 2 uses
  %i.w = sext i1 %cond.i.i to i64, !dbg !13596
  %.sroa.15.0.i.i = add nsw i64 %i.t, %i.w, !dbg !13596 ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64, !dbg !13596
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.idx.i.i, !dbg !13596 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i.i, !13534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13584)
    #dbg_value(ptr %.sroa.0.0.i.i, !13524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13582)
    #dbg_value(i64 %.sroa.15.0.i.i, !13534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13584)
    #dbg_value(i64 %.sroa.15.0.i.i, !13524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13582)
    #dbg_value(i64 0, !13540, !DIExpression(), !13602)
    #dbg_value(i64 0, !13603, !DIExpression(), !13613)
    #dbg_value(i64 0, !13615, !DIExpression(), !13619)
    #dbg_value(ptr %.sroa.0.0.i.i, !13591, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13592)
    #dbg_value(i64 %.sroa.15.0.i.i, !13591, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13592)
  %i.x = icmp samesign ult i64 %.sroa.15.0.i.i, 17
    #dbg_value(ptr %.sroa.0.0.i.i, !13534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13584)
end_hunk_3
