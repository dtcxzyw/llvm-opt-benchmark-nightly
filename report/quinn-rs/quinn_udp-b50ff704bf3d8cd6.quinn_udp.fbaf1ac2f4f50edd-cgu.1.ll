Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_udp-b50ff704bf3d8cd6.quinn_udp.fbaf1ac2f4f50edd-cgu.1?download=true
inline.NumInlined: 78
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCslBHTH8BfjuP_9quinn_udp3impNtB2_14UdpSocketState3new:bb.a

bb.al:                                            ; preds = %bb.q
  resume { ptr, i32 } %i.az, !dbg !2375

bb.am:                                            ; preds = %bb.o
  %i.ct = sext i32 %i.ax to i64, !dbg !2376
    #dbg_value(i64 %i.ct, !954, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2190)
    #dbg_value(i64 %i.ct, !956, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2191)
    #dbg_value(i64 %i.ct, !1043, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2192)
  %i.cu = shl nsw i64 %i.ct, 32, !dbg !2377
    #dbg_value(i64 %i.cu, !1043, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2192)
    #dbg_value(i64 %i.cu, !956, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2191)
    #dbg_value(i64 %i.cu, !954, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2190)
  %i.cv = or disjoint i64 %i.cu, 2, !dbg !2377
  %i.cw = inttoptr i64 %i.cv to ptr, !dbg !2378
    #dbg_value(i8 undef, !1769, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2196)
    #dbg_value(ptr %i.cw, !1769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2196)
    #dbg_value(i8 1, !1769, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2196)
    #dbg_value(ptr %i.cw, !1712, !DIExpression(), !2379)
    #dbg_value(ptr %i.cw, !2102, !DIExpression(), !2380)
    #dbg_value(ptr %i.cw, !2114, !DIExpression(), !2383)
  br label %bb.bf, !dbg !2384

bb.an:                                            ; preds = %bb.o, %bb.o, %bb.p
  %.sroa.5.0.ph = phi i8 [ 1, %bb.o ], [ 1, %bb.o ], [ 0, %bb.p ]
    #dbg_value(i8 %.sroa.5.0.ph, !1769, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2196)
    #dbg_value(ptr poison, !1769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2196)
    #dbg_value(i8 0, !1769, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2196)
    #dbg_value(i8 %.sroa.5.0.ph, !1710, !DIExpression(), !2136)
  br i1 %i.ad, label %bb.at, label %bb.ao, !dbg !2386

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr poison, !1132, !DIExpression(), !2387)
    #dbg_value(i32 41, !1133, !DIExpression(), !2387)
    #dbg_value(i32 23, !1134, !DIExpression(), !2387)
    #dbg_value(i32 3, !1135, !DIExpression(), !2387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2389
    #dbg_value(i32 3, !889, !DIExpression(), !2392)
  store i32 3, ptr %i.b, align 4, !noalias !2389
    #dbg_value(ptr poison, !886, !DIExpression(), !2392)
    #dbg_value(i32 41, !887, !DIExpression(), !2392)
    #dbg_value(i32 23, !888, !DIExpression(), !2392)
    #dbg_value(ptr %i.b, !889, !DIExpression(DW_OP_deref), !2392)
  %i.cx = call noundef i32 @setsockopt(i32 noundef %1, i32 noundef range(i32 0, 42) 41, i32 noundef range(i32 8, 105) 23, ptr noundef nonnull %i.b, i32 noundef 4) #19, !dbg !2394, !noalias !2389
    #dbg_value(i32 %i.cx, !890, !DIExpression(), !2395)
  %i.cy = icmp eq i32 %i.cx, 0, !dbg !2396
  br i1 %i.cy, label %bb.as, label %bb.ap, !dbg !2396

bb.ap:                                            ; preds = %bb.ao
  %i.cz = tail call noundef ptr @__errno_location() #19, !dbg !2397
  %i.da = load i32, ptr %i.cz, align 4, !dbg !2400, !noalias !2389, !noundef !64 ; 2 uses
    #dbg_value(i32 %i.da, !914, !DIExpression(), !2401)
    #dbg_value(i32 %i.da, !922, !DIExpression(), !2403)
    #dbg_value(i32 %i.da, !948, !DIExpression(), !2405)
    #dbg_value(ptr @0, !945, !DIExpression(), !2403)
    #dbg_value(ptr @0, !990, !DIExpression(), !2407)
    #dbg_value(i8 0, !999, !DIExpression(), !2409)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1023, !DIExpression(), !2409)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1026, !DIExpression(), !2411)
    #dbg_value(i8 0, !1032, !DIExpression(), !2411)
  %i.db = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !dbg !2413, !noalias !2389
  %.not.i.i.i214 = icmp eq ptr %i.db, @0, !dbg !2414
  br i1 %.not.i.i.i214, label %bb.ar, label %bb.aq, !dbg !2414, !prof !1037

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @0), !dbg !2415, !noalias !2389
  br label %bb.ar, !dbg !2415

bb.ar:                                            ; preds = %bb.aq, %bb.ap
    #dbg_value(i32 %i.da, !954, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2416)
    #dbg_value(i32 %i.da, !956, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2417)
    #dbg_value(i32 %i.da, !1043, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2418)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2420, !noalias !2389
  switch i32 %i.da, label %bb.aw [
    i32 92, label %bb.ax
    i32 95, label %bb.ax
  ], !dbg !2421

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2420, !noalias !2389
    #dbg_value(i8 1, !1769, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2422)
  br label %bb.ax, !dbg !2423

bb.at:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
    #dbg_value(i32 1, !889, !DIExpression(), !2424)
  store i32 1, ptr %i.a, align 4
    #dbg_value(ptr poison, !886, !DIExpression(), !2424)
    #dbg_value(i32 0, !887, !DIExpression(), !2424)
    #dbg_value(i32 8, !888, !DIExpression(), !2424)
    #dbg_value(ptr %i.a, !889, !DIExpression(DW_OP_deref), !2424)
  %i.dc = call noundef i32 @setsockopt(i32 noundef %1, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 4) #19, !dbg !2426
    #dbg_value(i32 %i.dc, !890, !DIExpression(), !2427)
  %i.dd = icmp eq i32 %i.dc, 0, !dbg !2428
  br i1 %i.dd, label %_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_.exit220.thread, label %bb.au, !dbg !2428

_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_.exit220.thread: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2429
    #dbg_value(ptr null, !2016, !DIExpression(), !2430)
  br label %bb.bc, !dbg !2432

bb.au:                                            ; preds = %bb.at
  %i.de = tail call noundef ptr @__errno_location() #19, !dbg !2433
  %i.df = load i32, ptr %i.de, align 4, !dbg !2436, !noundef !64
    #dbg_value(i32 %i.df, !914, !DIExpression(), !2437)
    #dbg_value(i32 %i.df, !922, !DIExpression(), !2439)
    #dbg_value(i32 %i.df, !948, !DIExpression(), !2441)
    #dbg_value(ptr @0, !945, !DIExpression(), !2439)
    #dbg_value(ptr @0, !990, !DIExpression(), !2443)
    #dbg_value(i8 0, !999, !DIExpression(), !2445)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1023, !DIExpression(), !2445)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1026, !DIExpression(), !2447)
    #dbg_value(i8 0, !1032, !DIExpression(), !2447)
  %i.dg = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !dbg !2449
  %.not.i.i217 = icmp eq ptr %i.dg, @0, !dbg !2450
  br i1 %.not.i.i217, label %bb.bd, label %bb.av, !dbg !2450, !prof !1037

bb.av:                                            ; preds = %bb.au
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @0), !dbg !2451
  br label %bb.bd, !dbg !2451

bb.aw:                                            ; preds = %bb.ar
  %i.dh = sext i32 %i.da to i64, !dbg !2452
    #dbg_value(i64 %i.dh, !954, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2416)
    #dbg_value(i64 %i.dh, !956, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2417)
    #dbg_value(i64 %i.dh, !1043, !DIExpression(DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2418)
  %i.di = shl nsw i64 %i.dh, 32, !dbg !2453
    #dbg_value(i64 %i.di, !1043, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2418)
    #dbg_value(i64 %i.di, !956, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2417)
    #dbg_value(i64 %i.di, !954, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !2416)
  %i.dj = or disjoint i64 %i.di, 2, !dbg !2453
  %i.dk = inttoptr i64 %i.dj to ptr, !dbg !2454
    #dbg_value(ptr %i.dk, !1769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2422)
    #dbg_value(i8 undef, !1769, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2422)
    #dbg_value(i8 1, !1769, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2422)
    #dbg_value(ptr %i.dk, !1720, !DIExpression(), !2455)
    #dbg_value(ptr %i.dk, !2102, !DIExpression(), !2456)
    #dbg_value(ptr %i.dk, !2118, !DIExpression(), !2459)
  br label %bb.bf, !dbg !2384

bb.ax:                                            ; preds = %bb.ar, %bb.ar, %bb.as
  %.sroa.5224.0.ph = phi i1 [ true, %bb.ar ], [ true, %bb.ar ], [ %i.av, %bb.as ]
    #dbg_value(ptr poison, !1769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2422)
    #dbg_value(i8 poison, !1769, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2422)
    #dbg_value(i8 0, !1769, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2422)
    #dbg_value(i1 %.sroa.5224.0.ph, !1710, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2136)
  %i.dl = call fastcc noundef ptr @_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_(i32 %1, i32 noundef 41, i32 noundef 49, i32 noundef 1), !dbg !2460 ; 2 uses
    #dbg_value(ptr %i.dl, !2016, !DIExpression(), !2461)
  %.not195 = icmp eq ptr %i.dl, null, !dbg !2462
  br i1 %.not195, label %bb.ay, label %bb.bf, !dbg !2463

bb.ay:                                            ; preds = %bb.ax
  %i.dm = call fastcc noundef ptr @_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_(i32 %1, i32 noundef 41, i32 noundef 66, i32 noundef 1), !dbg !2464 ; 2 uses
    #dbg_value(ptr %i.dm, !2016, !DIExpression(), !2465)
  %.not196 = icmp eq ptr %i.dm, null, !dbg !2466
  br i1 %.not196, label %bb.az, label %bb.bf, !dbg !2467

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1897
  call fastcc void @_RINvNtCslBHTH8BfjuP_9quinn_udp3imp27set_socket_option_supportedNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, i32 %1, i32 noundef 41, i32 noundef 62, i32 noundef 1), !dbg !1897
  %i.dn = load i8, ptr %i.i, align 8, !dbg !2468, !range !2071, !noundef !64
  %i.do = trunc nuw i8 %i.dn to i1, !dbg !2468
  br i1 %i.do, label %bb.ba, label %bb.bb, !dbg !2469

bb.ba:                                            ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !2470
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !2470, !nonnull !64, !noundef !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2471
    #dbg_value(ptr %i.dq, !1732, !DIExpression(), !2472)
    #dbg_value(ptr %i.dq, !2102, !DIExpression(), !2473)
    #dbg_value(ptr %i.dq, !2124, !DIExpression(), !2476)
  br label %bb.bf, !dbg !2384

bb.bb:                                            ; preds = %bb.az
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !2477
  %i.ds = load i8, ptr %i.dr, align 1, !dbg !2477, !range !2071, !noundef !64
  %i.dt = trunc nuw i8 %i.ds to i1, !dbg !2477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2471
  %i.du = xor i1 %i.dt, true, !dbg !2478
  %i.dv = or i1 %.sroa.5224.0.ph, %i.du, !dbg !2479
  %i.dw = zext i1 %i.dv to i8, !dbg !2479
    #dbg_value(i8 %i.dw, !1710, !DIExpression(), !2136)
  br label %bb.bc, !dbg !2480

bb.bc:                                            ; preds = %_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_.exit220.thread, %bb.bb
  %.sroa.020.0 = phi i8 [ %i.dw, %bb.bb ], [ %.sroa.5.0.ph, %_RINvNtCslBHTH8BfjuP_9quinn_udp3imp17set_socket_optionNtNtCs2WLHxrIwdS5_7socket26socket6SocketEB4_.exit220.thread ], !dbg !2136
    #dbg_value(i8 %.sroa.020.0, !1710, !DIExpression(), !2136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2481
  %i.dx = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !dbg !2482 ; 2 uses
  %i.dy = extractvalue { i64, i32 } %i.dx, 0, !dbg !2482 ; 2 uses
  %i.dz = extractvalue { i64, i32 } %i.dx, 1, !dbg !2482 ; 2 uses
  store i64 %i.dy, ptr %i.h, align 8, !dbg !2482
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2482
  store i32 %i.dz, ptr %i.ea, align 8, !dbg !2482
  %i.eb = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant11checked_sub(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i64 noundef 120, i32 noundef 0), !dbg !2483 ; 2 uses
  %i.ec = extractvalue { i64, i32 } %i.eb, 1, !dbg !2483 ; 2 uses
    #dbg_value(i64 poison, !1738, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2484)
    #dbg_value(i32 %i.ec, !1738, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2484)
  %.not198 = icmp eq i32 %i.ec, -1, !dbg !2485    ; 2 uses
  %i.ed = extractvalue { i64, i32 } %i.eb, 0, !dbg !2486
  %.sroa.556.0 = select i1 %.not198, i32 %i.dz, i32 %i.ec, !dbg !2486 ; 2 uses
  %.sroa.055.0 = select i1 %.not198, i64 %i.dy, i64 %i.ed, !dbg !2486
    #dbg_value(i64 %.sroa.055.0, !1760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2487)
    #dbg_value(i32 %.sroa.556.0, !1760, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2487)
  %i.ee = icmp ult i32 %.sroa.556.0, 1000000000, !dbg !2488
  call void @llvm.assume(i1 %i.ee), !dbg !2488
  %i.ef = call noundef i64 @_RNvNtNtCslBHTH8BfjuP_9quinn_udp3imp3gso16max_gso_segments(), !dbg !2495
  %i.eg = call noundef i64 @_RNvNtNtCslBHTH8BfjuP_9quinn_udp3imp3gro12gro_segments(), !dbg !2496
  store i64 0, ptr %0, align 8, !dbg !2497
  %.sroa.045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2497
  store i64 %.sroa.055.0, ptr %.sroa.045.sroa.4.0..sroa_idx, align 8, !dbg !2497
  %.sroa.045.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2497
  store i32 %.sroa.556.0, ptr %.sroa.045.sroa.5.0..sroa_idx, align 8, !dbg !2497
  %.sroa.045.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2497
  store i64 %i.ef, ptr %.sroa.045.sroa.7.0..sroa_idx, align 8, !dbg !2497
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2497
  store i64 %i.eg, ptr %.sroa.546.0..sroa_idx, align 8, !dbg !2497
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2497
  store i8 0, ptr %.sroa.647.0..sroa_idx, align 8, !dbg !2497
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !2497
  store i8 %.sroa.020.0, ptr %.sroa.748.0..sroa_idx, align 1, !dbg !2497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2498
  br label %bb.be, !dbg !2499

bb.bd:                                            ; preds = %bb.av, %bb.au
  %i.eh = sext i32 %i.df to i64, !dbg !2500
  %i.ei = shl nsw i64 %i.eh, 32, !dbg !2501
  %i.ej = or disjoint i64 %i.ei, 2, !dbg !2501
    #dbg_value(i64 %i.ej, !954, !DIExpression(), !2502)
    #dbg_value(i64 %i.ej, !956, !DIExpression(), !2503)
    #dbg_value(i64 %i.ej, !1043, !DIExpression(), !2504)
  %i.ek = inttoptr i64 %i.ej to ptr, !dbg !2506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2429
    #dbg_value(ptr %i.ek, !2016, !DIExpression(), !2430)
    #dbg_value(ptr %i.ek, !1716, !DIExpression(), !2507)
    #dbg_value(ptr %i.ek, !2102, !DIExpression(), !2508)
    #dbg_value(ptr %i.ek, !2116, !DIExpression(), !2511)
  br label %bb.bf, !dbg !2384

bb.be:                                            ; preds = %bb.bf, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !2512
  ret void, !dbg !2499

bb.bf:                                            ; preds = %bb.ay, %bb.ax, %bb.b, %bb.a, %bb.h, %bb.bd, %bb.ba, %bb.aw, %bb.am
  %.sink = phi ptr [ %i.w, %bb.a ], [ %i.am, %bb.h ], [ %i.ek, %bb.bd ], [ %i.dq, %bb.ba ], [ %i.dl, %bb.ax ], [ %i.aa, %bb.b ], [ %i.dk, %bb.aw ], [ %i.cw, %bb.am ], [ %i.dm, %bb.ay ]
  store ptr %.sink, ptr %0, align 8, !dbg !2513
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !2513
  store i8 2, ptr %i.el, align 1, !dbg !2513
  br label %bb.be, !dbg !2499
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtCslBHTH8BfjuP_9quinn_udp3impNtB2_14UdpSocketState4recv(ptr nofree noundef nonnull readnone align 8 captures(none) %0, i32 noundef range(i32 0, -1) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %4, i64 noundef range(i64 0, 128102389400760776) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2514 {
bb.a:
  %.sroa.3.sroa.4.sroa.0.i.i = alloca [12 x i8], align 4 ; 4 uses
    #dbg_declare(ptr %.sroa.3.sroa.4.sroa.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 64, 96), !2774)
  %i.a = alloca [20 x i8], align 4                ; 5 uses
    #dbg_declare(ptr %i.ae, !2699, !DIExpression(DW_OP_LLVM_fragment, 40, 96), !2845)
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [12 x i8], align 8          ; 4 uses
  %.sroa.14.i = alloca [12 x i8], align 1         ; 4 uses
    #dbg_value(ptr poison, !2846, !DIExpression(), !2854)
    #dbg_value(ptr poison, !2877, !DIExpression(), !2892)
    #dbg_value(ptr poison, !2887, !DIExpression(), !2893)
    #dbg_value(ptr poison, !2846, !DIExpression(), !2894)
    #dbg_value(ptr poison, !2877, !DIExpression(), !2899)
    #dbg_value(ptr poison, !2887, !DIExpression(), !2900)
  %i.d = alloca [2048 x i8], align 8              ; 8 uses
  %i.e = alloca [2816 x i8], align 8              ; 5 uses
  %i.f = alloca [4096 x i8], align 8              ; 6 uses
    #dbg_value(ptr %0, !2647, !DIExpression(), !2901)
    #dbg_value(i32 %1, !2648, !DIExpression(), !2901)
    #dbg_value(ptr %2, !2649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2901)
    #dbg_value(i64 %3, !2649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2901)
    #dbg_value(ptr %4, !2650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2901)
    #dbg_value(i64 %5, !2650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2902), !dbg !2905
    #dbg_value(i32 %1, !2787, !DIExpression(), !2906)
    #dbg_value(ptr %2, !2788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2906)
    #dbg_value(i64 %3, !2788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2906)
    #dbg_value(ptr %4, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2906)
    #dbg_value(i64 %5, !2789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2906)
    #dbg_declare(ptr %i.f, !2790, !DIExpression(), !2907)
    #dbg_declare(ptr %i.e, !2794, !DIExpression(), !2908)
    #dbg_declare(ptr %i.d, !2819, !DIExpression(), !2909)
    #dbg_declare(ptr poison, !2910, !DIExpression(), !2932)
    #dbg_value(i8 0, !2939, !DIExpression(), !2947)
    #dbg_value(i64 1, !2946, !DIExpression(), !2947)
    #dbg_value(i8 0, !2949, !DIExpression(), !2956)
    #dbg_value(i64 1, !2955, !DIExpression(), !2956)
    #dbg_value(i64 1, !2958, !DIExpression(), !2965)
    #dbg_value(i64 1, !2967, !DIExpression(), !2975)
    #dbg_value(i64 1, !2958, !DIExpression(), !2977)
    #dbg_value(i64 1, !2967, !DIExpression(), !2980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2983, !noalias !2984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2986, !noalias !2984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2987, !noalias !2984
    #dbg_value(ptr poison, !2945, !DIExpression(), !2947)
    #dbg_value(ptr poison, !2954, !DIExpression(), !2956)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.d, i8 0, i64 2048, i1 false), !dbg !2988, !noalias !2984
    #dbg_value(ptr undef, !2989, !DIExpression(DW_OP_deref), !2996)
    #dbg_value(ptr undef, !2993, !DIExpression(DW_OP_deref), !2996)
  %..i.i = tail call noundef range(i64 0, 33) i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %3, i64 32), !dbg !2998 ; 4 uses
    #dbg_value(i64 %..i.i, !2825, !DIExpression(), !2999)
    #dbg_value(i64 0, !2826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 %..i.i, !2826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3000)
    #dbg_value(ptr undef, !2887, !DIExpression(), !2900)
    #dbg_value(ptr undef, !2877, !DIExpression(), !2899)
    #dbg_value(ptr undef, !2846, !DIExpression(), !2894)
    #dbg_value(ptr undef, !2853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3001)
  %.not.i = icmp eq i64 %3, 0, !dbg !3002
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i, label %.lr.ph.i.preheader, !dbg !3003

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %..i.i, 1, !dbg !3003
  %i.g = icmp eq i64 %3, 1, !dbg !3003
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !3003

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %..i.i, 62, !dbg !3003
  br label %.lr.ph.i, !dbg !3003

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3003
  br i1 %lcmp.mod.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i, label %.lr.ph.i.epil.preheader, !dbg !3003

.lr.ph.i.epil.preheader:                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.01.057.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod30 = trunc i64 %..i.i to i1, !dbg !3003
  call void @llvm.assume(i1 %lcmp.mod30), !dbg !3003
    #dbg_value(i64 %.sroa.01.057.i.epil.init, !2878, !DIExpression(), !3004)
    #dbg_value(i64 %.sroa.01.057.i.epil.init, !2964, !DIExpression(), !2965)
    #dbg_value(i64 %.sroa.01.057.i.epil.init, !2974, !DIExpression(), !2975)
    #dbg_value(i64 %.sroa.01.057.i.epil.init, !2826, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 %.sroa.01.057.i.epil.init, !2835, !DIExpression(), !3005)
    #dbg_value(!DIArgList(ptr %2, i64 %.sroa.01.057.i.epil.init), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3018)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.057.i.epil.init, !dbg !3020
    #dbg_value(ptr %i.h, !3006, !DIExpression(), !3018)
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.01.057.i.epil.init, !dbg !3021
    #dbg_value(ptr %i.i, !3015, !DIExpression(), !3018)
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.01.057.i.epil.init, !dbg !3022
    #dbg_value(ptr %i.j, !3016, !DIExpression(), !3018)
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.01.057.i.epil.init, !dbg !3023 ; 7 uses
    #dbg_value(ptr %i.k, !3017, !DIExpression(), !3018)
  store ptr %i.i, ptr %i.k, align 8, !dbg !3024, !noalias !2984
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !3025
  store i32 128, ptr %i.l, align 8, !dbg !3025, !noalias !2984
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !3026
  store ptr %i.h, ptr %i.m, align 8, !dbg !3026, !noalias !2984
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !3027
  store i64 1, ptr %i.n, align 8, !dbg !3027, !noalias !2984
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !3028
  store ptr %i.j, ptr %i.o, align 8, !dbg !3028, !noalias !2984
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !3029
  store i64 88, ptr %i.p, align 8, !dbg !3029, !noalias !2984
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !3030
  store i32 0, ptr %i.q, align 8, !dbg !3030, !noalias !2984
    #dbg_value(ptr undef, !2887, !DIExpression(), !2900)
    #dbg_value(ptr undef, !2877, !DIExpression(), !2899)
    #dbg_value(ptr undef, !2846, !DIExpression(), !2894)
    #dbg_value(ptr undef, !2853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3001)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i: ; preds = %.lr.ph.i.epil.preheader, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i.loopexit.unr-lcssa, %bb.a
  %i.r = trunc nuw nsw i64 %..i.i to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.i, !dbg !3031

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.i: ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i
    #dbg_value(ptr undef, !2989, !DIExpression(DW_OP_deref), !3032)
    #dbg_value(ptr undef, !2993, !DIExpression(DW_OP_deref), !3032)
  %i.s = call noundef i32 @recvmmsg(i32 noundef range(i32 0, -1) %1, ptr noundef nonnull %i.d, i32 noundef %i.r, i32 noundef 0, ptr noundef null) #19, !dbg !3034, !noalias !2902 ; 3 uses
    #dbg_value(i32 %i.s, !2837, !DIExpression(), !3035)
    #dbg_value(i32 %i.s, !2838, !DIExpression(), !3036)
  %i.t = icmp sgt i32 %i.s, -1, !dbg !3031
  br i1 %i.t, label %bb.d, label %bb.b, !dbg !3031

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.i
  %i.u = tail call noundef ptr @__errno_location() #19, !dbg !3037
  %i.v = load i32, ptr %i.u, align 4, !dbg !3042, !noalias !2902, !noundef !64 ; 3 uses
    #dbg_value(i32 %i.v, !3043, !DIExpression(), !3046)
    #dbg_value(i32 %i.v, !922, !DIExpression(), !3048)
    #dbg_value(ptr @0, !945, !DIExpression(), !3048)
    #dbg_value(ptr @0, !990, !DIExpression(), !3050)
    #dbg_value(i8 0, !999, !DIExpression(), !3052)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1023, !DIExpression(), !3052)
    #dbg_value(ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS, !1026, !DIExpression(), !3054)
    #dbg_value(i8 0, !1032, !DIExpression(), !3054)
  %i.w = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !dbg !3056, !noalias !2984
  %.not.i.i = icmp eq ptr %i.w, @0, !dbg !3057
  br i1 %.not.i.i, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.c, !dbg !3057, !prof !1037

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @0), !dbg !3058, !noalias !2902
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, !dbg !3058

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.c, %bb.b
    #dbg_value(i32 %i.v, !2840, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_shl, DW_OP_plus_uconst, 2, DW_OP_stack_value), !3059)
    #dbg_value(ptr poison, !3060, !DIExpression(), !3076)
    #dbg_value(i32 %i.v, !3067, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3078)
    #dbg_value(i32 %i.v, !3079, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3084)
  %i.x = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.e, !dbg !3086, !noalias !2902

.noexc.i:                                         ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
    #dbg_value(i32 %i.v, !3067, !DIExpression(), !3078)
    #dbg_value(i32 %i.v, !3079, !DIExpression(), !3084)
    #dbg_value(ptr %i.x, !3082, !DIExpression(), !3087)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !3088
  %i.z = load ptr, ptr %i.y, align 8, !dbg !3088, !noalias !2902, !nonnull !64, !noundef !64
  %i.aa = invoke noundef i8 %i.z(i32 noundef %i.v)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.e, !dbg !3088, !noalias !2902, !inline_history !3089

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.i
  %i.ab = zext nneg i32 %i.s to i64, !dbg !3090   ; 2 uses
    #dbg_value(i64 0, !2842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3091)
    #dbg_value(i64 %i.ab, !2842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3091)
    #dbg_value(ptr undef, !2887, !DIExpression(), !2893)
    #dbg_value(ptr undef, !2877, !DIExpression(), !2892)
    #dbg_value(ptr undef, !2846, !DIExpression(), !2854)
    #dbg_value(ptr undef, !2853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3092)
  %.not68.i = icmp eq i32 %i.s, 0, !dbg !3093
  br i1 %.not68.i, label %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp4recv.exit, label %.lr.ph67.i, !dbg !3094

.lr.ph67.i:                                       ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i, !dbg !3094

bb.e:                                             ; preds = %.noexc.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = sext i32 %i.v to i64
  %i.ah = shl nsw i64 %i.ag, 32
  %i.ai = or disjoint i64 %i.ah, 2
  %i.aj = inttoptr i64 %i.ai to ptr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp(ptr nonnull %i.aj) #21
          to label %bb.h unwind label %bb.g, !dbg !3095, !noalias !2902

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %.noexc.i
  %i.ak = icmp eq i8 %i.aa, 35, !dbg !3096
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.i, label %bb.f, !dbg !3096

bb.f:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i
  %i.al = sext i32 %i.v to i64
  %i.am = shl nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, 2
  br label %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp4recv.exit, !dbg !3097

bb.g:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !3098, !noalias !2902
  unreachable, !dbg !3098

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.af, !dbg !3098

bb.i:                                             ; preds = %bb.y, %.lr.ph67.i
  %.sroa.05.066.i = phi i64 [ 0, %.lr.ph67.i ], [ %i.ap, %bb.y ] ; 6 uses
    #dbg_value(i64 %.sroa.05.066.i, !2880, !DIExpression(), !3099)
    #dbg_value(i64 %.sroa.05.066.i, !2964, !DIExpression(), !2977)
    #dbg_value(i64 %.sroa.05.066.i, !2974, !DIExpression(), !2980)
  %i.ap = add nuw nsw i64 %.sroa.05.066.i, 1, !dbg !3100 ; 2 uses
    #dbg_value(i64 %i.ap, !2842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3091)
    #dbg_value(i64 %.sroa.05.066.i, !2843, !DIExpression(), !3101)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !3102
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i), !dbg !3102
  %exitcond76.not.i = icmp eq i64 %.sroa.05.066.i, 32, !dbg !3103
  br i1 %exitcond76.not.i, label %bb.x, label %bb.j, !dbg !3103

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.05.066.i, !dbg !3104 ; 7 uses
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.05.066.i, !dbg !3105 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56, !dbg !3106
  %i.at = load i32, ptr %i.as, align 8, !dbg !3106, !noalias !2984, !noundef !64
  %i.au = zext i32 %i.at to i64, !dbg !3106       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3107), !dbg !3102
  call void @llvm.experimental.noalias.scope.decl(metadata !3110), !dbg !3102
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.4.sroa.0.i.i), !dbg !3112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3112, !noalias !2984
    #dbg_declare(ptr poison, !2697, !DIExpression(DW_OP_LLVM_fragment, 96, 96), !3113)
    #dbg_value(ptr poison, !2752, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3114)
    #dbg_value(ptr poison, !2752, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3114)
    #dbg_value(ptr poison, !2752, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3114)
    #dbg_value(ptr poison, !2764, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3115)
    #dbg_value(ptr poison, !2764, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3115)
    #dbg_value(ptr poison, !2764, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3115)
    #dbg_value(ptr %i.aq, !2694, !DIExpression(), !3116)
    #dbg_value(ptr %i.ar, !2695, !DIExpression(), !3116)
    #dbg_value(ptr %i.ar, !3117, !DIExpression(), !3124)
    #dbg_value(ptr %i.ar, !3126, !DIExpression(), !3134)
    #dbg_value(ptr %i.ar, !3136, !DIExpression(), !3143)
    #dbg_value(i64 %i.au, !2696, !DIExpression(), !3116)
    #dbg_declare(ptr %i.c, !2728, !DIExpression(), !3145)
    #dbg_declare(ptr %i.b, !2732, !DIExpression(), !3146)
    #dbg_declare(ptr %i.a, !2742, !DIExpression(), !3147)
  %.sroa.062.0.copyload.i.i = load i16, ptr %i.aq, align 8, !dbg !3112, !alias.scope !3107, !noalias !3148
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 2, !dbg !3112
  %.sroa.463.0.copyload.i.i = load i16, ptr %.sroa.463.0..sroa_idx.i.i, align 2, !dbg !3112, !alias.scope !3107, !noalias !3148 ; 2 uses
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4, !dbg !3112
  %.sroa.564.0.copyload.i.i = load i32, ptr %.sroa.564.0..sroa_idx.i.i, align 4, !dbg !3112, !alias.scope !3107, !noalias !3148 ; 2 uses
  %.sroa.665.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !3112
  %.sroa.665.0.copyload.i.i = load i16, ptr %.sroa.665.0..sroa_idx.i.i, align 8, !dbg !3112, !alias.scope !3107, !noalias !3148
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 10, !dbg !3112
  %.sroa.7.0.copyload.i.i = load i16, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !dbg !3112, !alias.scope !3107, !noalias !3148
  %.sroa.866.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 12, !dbg !3112
  %.sroa.967.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !3112
  %.sroa.967.0.copyload.i.i = load i32, ptr %.sroa.967.0..sroa_idx.i.i, align 8, !dbg !3112, !alias.scope !3107, !noalias !3148
    #dbg_value(i16 %.sroa.062.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3150)
    #dbg_value(i16 %.sroa.463.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !3150)
    #dbg_value(i32 %.sroa.564.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3150)
    #dbg_value(i16 %.sroa.665.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 64, 16), !3150)
    #dbg_value(i16 %.sroa.7.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !3150)
    #dbg_value(i32 %.sroa.967.0.copyload.i.i, !2697, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3150)
    #dbg_value(i8 0, !2698, !DIExpression(), !3151)
    #dbg_value(i8 0, !3152, !DIExpression(), !3158)
    #dbg_value(i8 2, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3160)
    #dbg_value(i64 %i.au, !2700, !DIExpression(), !3161)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40, !dbg !3162
  %i.aw = load i64, ptr %i.av, align 8, !dbg !3162, !alias.scope !3110, !noalias !3165, !noundef !64
  %i.ax = icmp ugt i64 %i.aw, 15, !dbg !3162
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !3162
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !3162, !alias.scope !3110, !noalias !3165
  %.sroa.038.0.i.i = select i1 %i.ax, ptr %i.az, ptr null, !dbg !3162
    #dbg_value(ptr %i.ar, !2701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3166)
    #dbg_value(ptr %.sroa.038.0.i.i, !2701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3167, !noalias !3168
  store ptr %i.ar, ptr %i.c, align 8, !dbg !3167, !noalias !3168
  store ptr %.sroa.038.0.i.i, ptr %i.ac, align 8, !dbg !3167, !noalias !3168
    #dbg_value(i32 undef, !2699, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !3160)
  %i.ba = call noundef align 8 ptr @_RNvXs1_NtCslBHTH8BfjuP_9quinn_udp4cmsgINtB5_4IterNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu6msghdrENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !3145, !noalias !3169 ; 2 uses
  %.not69.i.i = icmp eq ptr %i.ba, null, !dbg !3145
  br i1 %.not69.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !3145

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.n
  %i.bb = phi ptr [ %i.bj, %bb.n ], [ %i.ba, %bb.j ] ; 8 uses
  %.sroa.0.073.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.n ], [ %i.au, %bb.j ] ; 9 uses
  %.sroa.03.072.i.i = phi i8 [ %.sroa.03.1.i.i, %bb.n ], [ 0, %bb.j ] ; 7 uses
  %.sroa.07.071.i.i = phi i8 [ %.sroa.07.1.i.i, %bb.n ], [ 2, %bb.j ] ; 8 uses
  %.sroa.49.070.i.i = phi i32 [ %.sroa.49.1.i.i, %bb.n ], [ undef, %bb.j ] ; 8 uses
    #dbg_value(i64 %.sroa.0.073.i.i, !2700, !DIExpression(), !3161)
    #dbg_value(i8 %.sroa.03.072.i.i, !3152, !DIExpression(), !3158)
    #dbg_value(i8 %.sroa.07.071.i.i, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3160)
    #dbg_value(i32 %.sroa.49.070.i.i, !2699, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !3160)
    #dbg_value(ptr %i.bb, !2730, !DIExpression(), !3170)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !3171
  %i.bd = load i32, ptr %i.bc, align 8, !dbg !3171, !noalias !3169, !noundef !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12, !dbg !3172
  %i.bf = load i32, ptr %i.be, align 4, !dbg !3172, !noalias !3169, !noundef !64 ; 3 uses
  switch i32 %i.bd, label %bb.n [
    i32 0, label %bb.o
    i32 41, label %bb.p
    i32 17, label %bb.q
  ], !dbg !3173

._crit_edge.loopexit.i.i:                         ; preds = %bb.n
  %i.bg = and i8 %.sroa.03.1.i.i, 3, !dbg !3174
  br label %._crit_edge.i.i, !dbg !3175

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.j
  %.sroa.49.0.lcssa.i.i = phi i32 [ undef, %bb.j ], [ %.sroa.49.1.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.07.0.lcssa.i.i = phi i8 [ 2, %bb.j ], [ %.sroa.07.1.i.i, %._crit_edge.loopexit.i.i ], !dbg !3176
  %.sroa.03.0.lcssa.i.i = phi i8 [ 0, %bb.j ], [ %i.bg, %._crit_edge.loopexit.i.i ], !dbg !3177
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.au, %bb.j ], [ %.sroa.0.1.i.i, %._crit_edge.loopexit.i.i ], !dbg !3178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3175, !noalias !3168
  switch i16 %.sroa.062.0.copyload.i.i, label %bb.k [
    i16 2, label %bb.l
    i16 10, label %bb.m
  ], !dbg !3179, !prof !3180

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !3181, !noalias !3169
  unreachable, !dbg !3181

bb.l:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !2752, !DIExpression(), !3114)
    #dbg_value(i16 %.sroa.463.0.copyload.i.i, !3182, !DIExpression(), !3188)
    #dbg_value(i16 %.sroa.463.0.copyload.i.i, !3190, !DIExpression(), !3193)
  %i.bh = call i16 @llvm.bswap.i16(i16 %.sroa.463.0.copyload.i.i), !dbg !3195
    #dbg_value(i32 %.sroa.564.0.copyload.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 16, 32), !3196)
    #dbg_value(i16 %i.bh, !2651, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !3196)
    #dbg_value(i16 0, !2651, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3196)
  br label %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp11decode_recv.exit.i, !dbg !3197

bb.m:                                             ; preds = %._crit_edge.i.i
    #dbg_value(ptr undef, !2764, !DIExpression(), !3115)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.sroa.4.sroa.0.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.866.0..sroa_idx.i.i, i64 12, i1 false), !dbg !3198, !noalias !3148
    #dbg_value(i16 %.sroa.463.0.copyload.i.i, !3182, !DIExpression(), !3199)
    #dbg_value(i16 %.sroa.463.0.copyload.i.i, !3190, !DIExpression(), !3201)
  %i.bi = call i16 @llvm.bswap.i16(i16 %.sroa.463.0.copyload.i.i), !dbg !3204
  %.sroa.3.sroa.0.2.insert.ext.i.i = zext i16 %.sroa.665.0.copyload.i.i to i32, !dbg !3205
  %.sroa.3.sroa.0.2.insert.shift.i.i = shl nuw i32 %.sroa.3.sroa.0.2.insert.ext.i.i, 16, !dbg !3205
    #dbg_value(i32 %.sroa.3.sroa.0.2.insert.shift.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 16, 32), !3196)
    #dbg_value(i16 %.sroa.7.0.copyload.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !3196)
    #dbg_value(i32 %.sroa.564.0.copyload.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !3196)
    #dbg_value(i32 %.sroa.967.0.copyload.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3196)
    #dbg_value(i16 %i.bi, !2651, !DIExpression(DW_OP_LLVM_fragment, 224, 16), !3196)
    #dbg_value(i16 1, !2651, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3196)
  br label %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp11decode_recv.exit.i, !dbg !3206

bb.n:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.lr.ph.i.i
  %.sroa.49.1.i.i = phi i32 [ %.sroa.49.070.i.i, %.lr.ph.i.i ], [ %.sroa.49.070.i.i, %bb.o ], [ %.sroa.49.070.i.i, %bb.r ], [ %.sroa.49.070.i.i, %bb.s ], [ %i.bn, %bb.t ], [ %.sroa.49.070.i.i, %bb.p ], [ %.sroa.49.070.i.i, %bb.u ], [ %.sroa.018.0.copyload.i.i, %bb.v ], [ %.sroa.49.070.i.i, %bb.w ], [ %.sroa.49.070.i.i, %bb.q ] ; 2 uses
  %.sroa.07.1.i.i = phi i8 [ %.sroa.07.071.i.i, %.lr.ph.i.i ], [ %.sroa.07.071.i.i, %bb.o ], [ %.sroa.07.071.i.i, %bb.r ], [ %.sroa.07.071.i.i, %bb.s ], [ 0, %bb.t ], [ %.sroa.07.071.i.i, %bb.p ], [ %.sroa.07.071.i.i, %bb.u ], [ 1, %bb.v ], [ %.sroa.07.071.i.i, %bb.w ], [ %.sroa.07.071.i.i, %bb.q ], !dbg !3151 ; 2 uses
  %.sroa.03.1.i.i = phi i8 [ %.sroa.03.072.i.i, %.lr.ph.i.i ], [ %.sroa.03.072.i.i, %bb.o ], [ %i.bl, %bb.r ], [ %i.bm, %bb.s ], [ %.sroa.03.072.i.i, %bb.t ], [ %.sroa.03.072.i.i, %bb.p ], [ %i.bp, %bb.u ], [ %.sroa.03.072.i.i, %bb.v ], [ %.sroa.03.072.i.i, %bb.w ], [ %.sroa.03.072.i.i, %bb.q ], !dbg !3150 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.073.i.i, %.lr.ph.i.i ], [ %.sroa.0.073.i.i, %bb.o ], [ %.sroa.0.073.i.i, %bb.r ], [ %.sroa.0.073.i.i, %bb.s ], [ %.sroa.0.073.i.i, %bb.t ], [ %.sroa.0.073.i.i, %bb.p ], [ %.sroa.0.073.i.i, %bb.u ], [ %.sroa.0.073.i.i, %bb.v ], [ %i.br, %bb.w ], [ %.sroa.0.073.i.i, %bb.q ], !dbg !3160 ; 2 uses
    #dbg_value(i64 %.sroa.0.1.i.i, !2700, !DIExpression(), !3161)
    #dbg_value(i8 %.sroa.03.1.i.i, !3152, !DIExpression(), !3158)
    #dbg_value(i8 %.sroa.03.1.i.i, !2698, !DIExpression(), !3151)
    #dbg_value(i8 %.sroa.07.1.i.i, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3160)
    #dbg_value(i32 %.sroa.49.1.i.i, !2699, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !3160)
  %i.bj = call noundef align 8 ptr @_RNvXs1_NtCslBHTH8BfjuP_9quinn_udp4cmsgINtB5_4IterNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu6msghdrENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !3145, !noalias !3169 ; 2 uses
  %.not.i47.i = icmp eq ptr %i.bj, null, !dbg !3145
  br i1 %.not.i47.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !dbg !3145

bb.o:                                             ; preds = %.lr.ph.i.i
  switch i32 %i.bf, label %bb.n [
    i32 1, label %bb.r
    i32 13, label %bb.s
    i32 8, label %bb.t
  ], !dbg !3173

bb.p:                                             ; preds = %.lr.ph.i.i
  switch i32 %i.bf, label %bb.n [
    i32 67, label %bb.u
    i32 50, label %bb.v
  ], !dbg !3173

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bk = icmp eq i32 %i.bf, 104, !dbg !3173
  br i1 %i.bk, label %bb.w, label %bb.n, !dbg !3173

bb.r:                                             ; preds = %bb.o
  %i.bl = call noundef i8 @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodehNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu7cmsghdrBF_EB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3207, !noalias !3169
    #dbg_value(i8 %i.bl, !2698, !DIExpression(), !3151)
    #dbg_value(i8 %i.bl, !3152, !DIExpression(), !3158)
  br label %bb.n, !dbg !3208

bb.s:                                             ; preds = %bb.o
  %i.bm = call noundef i8 @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodehNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu7cmsghdrBF_EB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3209, !noalias !3169
    #dbg_value(i8 %i.bm, !2698, !DIExpression(), !3151)
    #dbg_value(i8 %i.bm, !3152, !DIExpression(), !3158)
  br label %bb.n, !dbg !3210

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3211, !noalias !3168
  call void @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodeNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like10in_pktinfoNtNtNtBG_5linux3gnu7cmsghdrB1w_EB4_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3212, !noalias !3169
  %i.bn = load i32, ptr %i.ad, align 4, !dbg !3213, !noalias !3168, !noundef !64
    #dbg_value(i8 0, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3160)
    #dbg_value(i32 %i.bn, !2699, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !3160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3214, !noalias !3168
  br label %bb.n, !dbg !3214

bb.u:                                             ; preds = %bb.p
  %i.bo = call noundef i32 @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodelNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu7cmsghdrBF_EB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3215, !noalias !3169
  %i.bp = trunc i32 %i.bo to i8, !dbg !3216
    #dbg_value(i8 %i.bp, !2698, !DIExpression(), !3151)
    #dbg_value(i8 %i.bp, !3152, !DIExpression(), !3158)
  br label %bb.n, !dbg !3217

bb.v:                                             ; preds = %bb.p
  call void @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodeNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like17linux_l4re_shared11in6_pktinfoNtNtNtBI_5linux3gnu7cmsghdrB1S_EB4_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3218, !noalias !3169
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.a, align 4, !dbg !3219, !noalias !3168
    #dbg_value(i8 1, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3160)
    #dbg_value(i32 %.sroa.018.0.copyload.i.i, !2699, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !3160)
  br label %bb.n, !dbg !3220

bb.w:                                             ; preds = %bb.q
  %i.bq = call noundef i32 @_RINvNtCslBHTH8BfjuP_9quinn_udp4cmsg6decodelNtNtNtNtNtCsjPj11pLCmRa_4libc4unix10linux_like5linux3gnu7cmsghdrBF_EB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb), !dbg !3221, !noalias !3169
  %i.br = sext i32 %i.bq to i64, !dbg !3222
    #dbg_value(i64 %i.br, !2700, !DIExpression(), !3161)
  br label %bb.n, !dbg !3223

_RNvNtCslBHTH8BfjuP_9quinn_udp3imp11decode_recv.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.sroa.3.0.i.i = phi i16 [ %i.bh, %bb.l ], [ %.sroa.7.0.copyload.i.i, %bb.m ], !dbg !3166
  %.sroa.3.sroa.0.0.i.i = phi i32 [ %.sroa.564.0.copyload.i.i, %bb.l ], [ %.sroa.3.sroa.0.2.insert.shift.i.i, %bb.m ], !dbg !3166
  %.sroa.020.0.i.i = phi i16 [ 0, %bb.l ], [ 1, %bb.m ], !dbg !3166
  %.sroa.3.sroa.4.sroa.2.0.i.i = phi i32 [ undef, %bb.l ], [ %.sroa.564.0.copyload.i.i, %bb.m ]
  %.sroa.3.sroa.4.sroa.3.0.i.i = phi i32 [ undef, %bb.l ], [ %.sroa.967.0.copyload.i.i, %bb.m ]
  %.sroa.3.sroa.4.sroa.4.0.i.i = phi i16 [ undef, %bb.l ], [ %i.bi, %bb.m ]
    #dbg_value(i16 undef, !2651, !DIExpression(DW_OP_LLVM_fragment, 240, 16), !3196)
    #dbg_value(i16 %.sroa.3.sroa.4.sroa.4.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 224, 16), !3196)
    #dbg_value(i32 %.sroa.3.sroa.4.sroa.3.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !3196)
    #dbg_value(i32 %.sroa.3.sroa.4.sroa.2.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !3196)
    #dbg_value(i16 %.sroa.020.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !3196)
    #dbg_value(i32 %.sroa.3.sroa.0.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 16, 32), !3196)
    #dbg_value(i16 %.sroa.3.sroa.3.0.i.i, !2651, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !3196)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.sroa.4.sroa.0.i.i, i64 12, i1 false), !dbg !3224, !noalias !3225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.14.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !dbg !3224, !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.4.sroa.0.i.i), !dbg !3226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3226, !noalias !2984
  %exitcond77.not.i = icmp eq i64 %.sroa.05.066.i, %5, !dbg !3227
  br i1 %exitcond77.not.i, label %bb.z, label %bb.y, !dbg !3227

bb.x:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !dbg !3103, !noalias !2902
  unreachable, !dbg !3103

bb.y:                                             ; preds = %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp11decode_recv.exit.i
  %i.bs = getelementptr inbounds nuw [72 x i8], ptr %4, i64 %.sroa.05.066.i, !dbg !3227 ; 13 uses
  store i16 %.sroa.020.0.i.i, ptr %i.bs, align 8, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 2, !dbg !3227
  store i32 %.sroa.3.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 2, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 6, !dbg !3227
  store i16 %.sroa.3.sroa.3.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.i, i64 12, i1 false), !dbg !3227, !noalias !3228
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 20, !dbg !3227
  store i32 %.sroa.3.sroa.4.sroa.2.0.i.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24, !dbg !3227
  store i32 %.sroa.3.sroa.4.sroa.3.0.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 28, !dbg !3227
  store i16 %.sroa.3.sroa.4.sroa.4.0.i.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.1049.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32, !dbg !3227
  store i64 %i.au, ptr %.sroa.1049.0..sroa_idx.i, align 8, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40, !dbg !3227
  store i64 %.sroa.0.0.lcssa.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48, !dbg !3227
  store i8 %.sroa.07.0.lcssa.i.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 49, !dbg !3227
  store i32 %.sroa.49.0.lcssa.i.i, ptr %.sroa.13.0..sroa_idx.i, align 1, !dbg !3227, !alias.scope !2902, !noalias !3228
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 53, !dbg !3227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.14.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.14.i, i64 12, i1 false), !dbg !3227, !noalias !3228
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 65, !dbg !3227
  store i8 %.sroa.03.0.lcssa.i.i, ptr %.sroa.15.0..sroa_idx.i, align 1, !dbg !3227, !alias.scope !2902, !noalias !3228
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i), !dbg !3229
    #dbg_value(i64 %i.ap, !2842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3091)
    #dbg_value(ptr undef, !2887, !DIExpression(), !2893)
    #dbg_value(ptr undef, !2877, !DIExpression(), !2892)
    #dbg_value(ptr undef, !2846, !DIExpression(), !2854)
    #dbg_value(ptr undef, !2853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3092)
  %exitcond78.not.i = icmp eq i64 %i.ap, %i.ab, !dbg !3093
  br i1 %exitcond78.not.i, label %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp4recv.exit, label %bb.i, !dbg !3094

bb.z:                                             ; preds = %_RNvNtCslBHTH8BfjuP_9quinn_udp3imp11decode_recv.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 128102389400760776) %5, i64 noundef range(i64 0, 128102389400760776) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !dbg !3227, !noalias !2902
  unreachable, !dbg !3227

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.01.057.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ce, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
    #dbg_value(i64 %.sroa.01.057.i, !2878, !DIExpression(), !3004)
    #dbg_value(i64 %.sroa.01.057.i, !2964, !DIExpression(), !2965)
    #dbg_value(i64 %.sroa.01.057.i, !2974, !DIExpression(), !2975)
  %i.bt = or disjoint i64 %.sroa.01.057.i, 1, !dbg !3230 ; 4 uses
    #dbg_value(i64 %i.bt, !2826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 %.sroa.01.057.i, !2835, !DIExpression(), !3005)
    #dbg_value(!DIArgList(ptr %2, i64 %.sroa.01.057.i), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3018)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.01.057.i, !dbg !3020
    #dbg_value(ptr %i.bu, !3006, !DIExpression(), !3018)
  %i.bv = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.01.057.i, !dbg !3021
    #dbg_value(ptr %i.bv, !3015, !DIExpression(), !3018)
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.01.057.i, !dbg !3022
    #dbg_value(ptr %i.bw, !3016, !DIExpression(), !3018)
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.01.057.i, !dbg !3023 ; 7 uses
    #dbg_value(ptr %i.bx, !3017, !DIExpression(), !3018)
  store ptr %i.bv, ptr %i.bx, align 8, !dbg !3024, !noalias !2984
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !3025
  store i32 128, ptr %i.by, align 8, !dbg !3025, !noalias !2984
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !3026
  store ptr %i.bu, ptr %i.bz, align 8, !dbg !3026, !noalias !2984
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !3027
  store i64 1, ptr %i.ca, align 8, !dbg !3027, !noalias !2984
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32, !dbg !3028
  store ptr %i.bw, ptr %i.cb, align 8, !dbg !3028, !noalias !2984
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !3029
  store i64 88, ptr %i.cc, align 8, !dbg !3029, !noalias !2984
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 48, !dbg !3030
  store i32 0, ptr %i.cd, align 8, !dbg !3030, !noalias !2984
    #dbg_value(ptr undef, !2887, !DIExpression(), !2900)
    #dbg_value(ptr undef, !2877, !DIExpression(), !2899)
    #dbg_value(ptr undef, !2846, !DIExpression(), !2894)
    #dbg_value(ptr undef, !2853, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3001)
    #dbg_value(i64 %i.bt, !2878, !DIExpression(), !3004)
    #dbg_value(i64 %i.bt, !2964, !DIExpression(), !2965)
    #dbg_value(i64 %i.bt, !2974, !DIExpression(), !2975)
  %i.ce = add nuw nsw i64 %.sroa.01.057.i, 2, !dbg !3230 ; 2 uses
    #dbg_value(i64 %i.ce, !2826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3000)
    #dbg_value(i64 %i.bt, !2835, !DIExpression(), !3005)
    #dbg_value(!DIArgList(ptr %2, i64 %i.bt), !3006, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3018)
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bt, !dbg !3020
    #dbg_value(ptr %i.cf, !3006, !DIExpression(), !3018)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.bt, !dbg !3021
    #dbg_value(ptr %i.cg, !3015, !DIExpression(), !3018)
  %i.ch = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.bt, !dbg !3022
    #dbg_value(ptr %i.ch, !3016, !DIExpression(), !3018)
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.bt, !dbg !3023 ; 7 uses
    #dbg_value(ptr %i.ci, !3017, !DIExpression(), !3018)
  store ptr %i.cg, ptr %i.ci, align 8, !dbg !3024, !noalias !2984
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !3025
  store i32 128, ptr %i.cj, align 8, !dbg !3025, !noalias !2984
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16, !dbg !3026
  store ptr %i.cf, ptr %i.ck, align 8, !dbg !3026, !noalias !2984
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24, !dbg !3027
  store i64 1, ptr %i.cl, align 8, !dbg !3027, !noalias !2984
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32, !dbg !3028
  store ptr %i.ch, ptr %i.cm, align 8, !dbg !3028, !noalias !2984
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 40, !dbg !3029
  store i64 88, ptr %i.cn, align 8, !dbg !3029, !noalias !2984
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 48, !dbg !3030
  store i32 0, ptr %i.co, align 8, !dbg !3030, !noalias !2984
  %niter.next.1 = add i64 %niter, 2, !dbg !3003   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3003
  br i1 %niter.ncmp.1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslBHTH8BfjuP_9quinn_udp.exit.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !3003

_RNvNtCslBHTH8BfjuP_9quinn_udp3imp4recv.exit:     ; preds = %bb.y, %bb.d, %bb.f
  %.sroa.3.0.in.i = phi i64 [ %i.an, %bb.f ], [ 0, %bb.d ], [ %i.ab, %bb.y ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.y ], !dbg !2999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3231, !noalias !2984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3232, !noalias !2984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3233, !noalias !2984
  %.sroa.3.0.i = inttoptr i64 %.sroa.3.0.in.i to ptr, !dbg !2999
  %i.cp = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0, !dbg !3097
  %i.cq = insertvalue { i64, ptr } %i.cp, ptr %.sroa.3.0.i, 1, !dbg !3097
  ret { i64, ptr } %i.cq, !dbg !3234
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvMNtCslBHTH8BfjuP_9quinn_udp3impNtB2_14UdpSocketState4send(ptr noundef nonnull align 8 %0, i32 noundef range(i32 0, -1) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3235 {
bb.a:
    #dbg_value(ptr poison, !3263, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3287)
    #dbg_value(ptr poison, !3263, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3287)
    #dbg_value(ptr poison, !3289, !DIExpression(), !3319)
    #dbg_value(ptr poison, !3326, !DIExpression(), !3330)
    #dbg_value(ptr %0, !3252, !DIExpression(), !3331)
    #dbg_value(i32 %1, !3253, !DIExpression(), !3331)
    #dbg_value(ptr %2, !3254, !DIExpression(), !3331)
    #dbg_value(ptr poison, !3332, !DIExpression(), !3340)
    #dbg_value(ptr poison, !3283, !DIExpression(), !3342)
  %i.a = tail call fastcc noundef ptr @_RNvNtCslBHTH8BfjuP_9quinn_udp3imp4send(ptr noundef nonnull align 8 %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %2), !dbg !3343 ; 9 uses
  %.not = icmp eq ptr %i.a, null, !dbg !3343
  br i1 %.not, label %bb.g, label %bb.b, !dbg !3344

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !3060, !DIExpression(), !3345)
    #dbg_value(ptr poison, !3347, !DIExpression(), !3350)
    #dbg_value(ptr %i.a, !3352, !DIExpression(), !3373)
    #dbg_declare(ptr poison, !3360, !DIExpression(), !3375)
    #dbg_value(i64 1, !3376, !DIExpression(), !3380)
    #dbg_value(i64 1, !3382, !DIExpression(), !3386)
    #dbg_value(i64 -1, !3388, !DIExpression(), !3392)
    #dbg_value(ptr %i.a, !3394, !DIExpression(), !3397)
    #dbg_value(ptr %i.a, !3379, !DIExpression(), !3380)
  %i.b = ptrtoint ptr %i.a to i64, !dbg !3399     ; 5 uses
    #dbg_value(i64 %i.b, !3361, !DIExpression(), !3400)
  %i.c = and i64 %i.b, 3, !dbg !3401              ; 2 uses
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !dbg !3402, !prof !580

default.unreachable:                              ; preds = %bb.h, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.b, !3067, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3403)
    #dbg_value(i64 %i.b, !3079, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3404)
  %i.d = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m, !dbg !3406

.noexc:                                           ; preds = %bb.c
  %i.e = lshr i64 %i.b, 32, !dbg !3407
    #dbg_value(i64 %i.e, !3079, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3404)
    #dbg_value(i64 %i.e, !3067, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3403)
  %i.f = trunc nuw i64 %i.e to i32, !dbg !3407
    #dbg_value(i32 %i.f, !3067, !DIExpression(), !3403)
    #dbg_value(i32 %i.f, !3079, !DIExpression(), !3404)
    #dbg_value(ptr %i.d, !3082, !DIExpression(), !3408)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3409
  %i.h = load ptr, ptr %i.g, align 8, !dbg !3409, !nonnull !64, !noundef !64
  %i.i = invoke noundef i8 %i.h(i32 noundef %i.f)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.m, !dbg !3409, !inline_history !3089

bb.d:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.b, 32, !dbg !3410
    #dbg_value(i64 %i.j, !3365, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3411)
    #dbg_value(i64 %i.j, !582, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3412)
  %i.k = icmp ult ptr %i.a, inttoptr (i64 188978561024 to ptr), !dbg !3414
  %switch.idx.cast.i.i.i = trunc i64 %i.j to i8   ; 2 uses
    #dbg_value(i8 poison, !3415, !DIExpression(), !3429)
    #dbg_value(ptr poison, !3426, !DIExpression(), !3431)
  %i.l = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !3432
  tail call void @llvm.assume(i1 %i.k), !dbg !3433
end_hunk_0
