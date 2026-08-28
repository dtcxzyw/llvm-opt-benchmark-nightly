Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.14?download=true
inline.NumInlined: 305
inline.NumDeleted: 150
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsjfnSKV9Rz3v_3h3i:bb.a
  ret { i64, i64 } %i.h, !dbg !1642
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellyEE4withNCNvMs_NtNtCsjfnSKV9Rz3v_3h3i7prompts2h3NtB1J_8Prompter11with_config0uEB1N_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1643 {
bb.a:
    #dbg_value(ptr %0, !1745, !DIExpression(), !1751)
    #dbg_value(ptr %1, !1746, !DIExpression(), !1751)
    #dbg_declare(ptr poison, !1749, !DIExpression(), !1752)
  %.val = load ptr, ptr %0, align 8, !dbg !1753, !nonnull !56, !noundef !56
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !1753
  %.val3 = load i64, ptr %i.a, align 8, !dbg !1753
    #dbg_value(ptr poison, !1754, !DIExpression(), !1783)
    #dbg_value(ptr poison, !1775, !DIExpression(), !1783)
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !dbg !1785, !inline_history !1786 ; 3 uses
    #dbg_value(ptr %i.b, !1787, !DIExpression(), !1805)
    #dbg_value(ptr %i.b, !1807, !DIExpression(), !1812)
  %i.c = icmp eq ptr %i.b, null, !dbg !1814
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !1819

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !1776, !DIExpression(), !1820)
    #dbg_value(ptr poison, !1821, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1828)
    #dbg_value(ptr %i.b, !1827, !DIExpression(), !1828)
    #dbg_value(ptr %i.b, !1830, !DIExpression(), !1880)
    #dbg_value(ptr %i.b, !1882, !DIExpression(), !1908)
    #dbg_declare(ptr poison, !1877, !DIExpression(), !1910)
    #dbg_value(ptr %i.b, !1911, !DIExpression(), !1930)
    #dbg_value(ptr %i.b, !1932, !DIExpression(), !1938)
  %i.d = load i64, ptr %i.b, align 8, !dbg !1940, !noundef !56
  %i.e = icmp eq i64 %i.d, 0, !dbg !1941
  br i1 %i.e, label %bb.e, label %bb.c, !dbg !1941, !prof !1942

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27, !dbg !1943
  unreachable, !dbg !1943

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27, !dbg !1944
  unreachable, !dbg !1944

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %i.b, !1904, !DIExpression(), !1945)
    #dbg_value(ptr %i.b, !1946, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1954)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1956
  store i64 %.val3, ptr %i.f, align 8, !dbg !1957
  ret void, !dbg !1958
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellyEE4withNCNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h320validate_wait_period0yEB1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1959 {
bb.a:
    #dbg_value(ptr %0, !1969, !DIExpression(), !1975)
    #dbg_declare(ptr poison, !1970, !DIExpression(), !1976)
    #dbg_declare(ptr poison, !1973, !DIExpression(), !1977)
  %.val = load ptr, ptr %0, align 8, !dbg !1978, !nonnull !56, !noundef !56
    #dbg_value(ptr poison, !1979, !DIExpression(), !2007)
    #dbg_declare(ptr poison, !2000, !DIExpression(), !2009)
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !dbg !2010, !inline_history !2011 ; 3 uses
    #dbg_value(ptr %i.a, !2012, !DIExpression(), !2015)
    #dbg_value(ptr %i.a, !2017, !DIExpression(), !2020)
  %i.b = icmp eq ptr %i.a, null, !dbg !2022
  br i1 %i.b, label %bb.d, label %bb.b, !dbg !2027

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !2001, !DIExpression(), !2028)
    #dbg_declare(ptr poison, !2029, !DIExpression(), !2035)
    #dbg_value(ptr %i.a, !2034, !DIExpression(), !2037)
    #dbg_value(ptr %i.a, !2038, !DIExpression(), !2057)
    #dbg_value(ptr %i.a, !2059, !DIExpression(), !2085)
    #dbg_declare(ptr poison, !2054, !DIExpression(), !2087)
    #dbg_value(ptr %i.a, !2088, !DIExpression(), !2109)
    #dbg_value(ptr %i.a, !2111, !DIExpression(), !2114)
  %i.c = load i64, ptr %i.a, align 8, !dbg !2116, !noundef !56
    #dbg_value(i64 %i.c, !2107, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2117)
    #dbg_value(i64 %i.c, !2118, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2123)
  %i.d = icmp ult i64 %i.c, 9223372036854775807, !dbg !2125
  br i1 %i.d, label %bb.e, label %bb.c, !dbg !2126, !prof !1942

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27, !dbg !2127
  unreachable, !dbg !2127

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27, !dbg !2128
  unreachable, !dbg !2128

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %i.c, !2107, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2117)
    #dbg_value(i64 %i.c, !2118, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2123)
    #dbg_value(ptr %i.a, !2081, !DIExpression(), !2129)
    #dbg_value(ptr %i.a, !2130, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2133)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2135
  %i.f = load i64, ptr %i.e, align 8, !dbg !2136, !noundef !56
  ret i64 %i.f, !dbg !2137
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB5_10FrameState5writeNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) initializes((48, 57)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2138 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !2179, !DIExpression(), !2191)
    #dbg_value(ptr poison, !2206, !DIExpression(), !2212)
    #dbg_value(ptr poison, !2203, !DIExpression(), !2213)
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !2146, !DIExpression(), !2214)
    #dbg_value(ptr %1, !2147, !DIExpression(), !2214)
    #dbg_declare(ptr %i.f, !2148, !DIExpression(), !2215)
    #dbg_declare(ptr %i.d, !2216, !DIExpression(), !2225)
    #dbg_value(i8 -1, !2227, !DIExpression(), !2237)
    #dbg_value(i64 0, !2274, !DIExpression(), !2296)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2298 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2299 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.h, ptr noundef nonnull align 8 dereferenceable(9) %i.g, i64 9, i1 false), !dbg !2298
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2299 ; 5 uses
    #dbg_value(ptr %1, !2300, !DIExpression(), !2306)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2308
  %.val = load ptr, ptr %i.j, align 8, !dbg !2308, !nonnull !56, !noundef !56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2308
  %.val79 = load i64, ptr %i.k, align 8, !dbg !2308, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2309
  store ptr %.val, ptr %i.f, align 8, !dbg !2309
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2309
  store i64 %.val79, ptr %i.l, align 8, !dbg !2309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2215
  call void @_RNvXs_NtCs8Nb2mar7w9E_7inquire4ansiNtB4_14AnsiAwareCharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !dbg !2215
  %i.m = load i64, ptr %i.e, align 8, !dbg !2215, !range !2310, !noundef !56
  %i.n = trunc nuw i64 %i.m to i1, !dbg !2215
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !dbg !2215

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 174 ; 3 uses
  br label %bb.b, !dbg !2215

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8, !dbg !2311 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !2154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2312)
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2311 ; 15 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !2154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2312)
    #dbg_value(ptr undef, !2203, !DIExpression(), !2213)
    #dbg_value(ptr %0, !2204, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2213)
    #dbg_value(ptr %0, !2313, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2321)
    #dbg_value(ptr %0, !2323, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2330)
    #dbg_value(ptr %0, !2188, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2333)
    #dbg_value(ptr %0, !2271, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2334)
    #dbg_value(ptr %0, !2335, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2343)
    #dbg_value(ptr %0, !2345, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2351)
    #dbg_value(ptr %0, !2353, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2363)
    #dbg_value(ptr %0, !2365, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2371)
    #dbg_value(ptr %0, !2353, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2373)
    #dbg_value(ptr %0, !2262, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2375)
  %i.u = icmp eq ptr %.sroa.0.0.copyload, null, !dbg !2213 ; 2 uses
  %i.v = zext i1 %i.u to i64, !dbg !2213
    #dbg_value(i64 %i.v, !2205, !DIExpression(), !2376)
    #dbg_value(i64 %i.v, !2340, !DIExpression(), !2377)
    #dbg_value(ptr poison, !2320, !DIExpression(), !2378)
    #dbg_value(i64 %i.v, !2350, !DIExpression(), !2379)
    #dbg_value(i64 %i.v, !2380, !DIExpression(), !2389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2391
  store i64 %i.v, ptr %i.c, align 8, !dbg !2392
    #dbg_value(ptr %i.c, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2393)
    #dbg_value(ptr %i.c, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2400)
    #dbg_value(i64 8, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2393)
    #dbg_value(i64 8, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2400)
    #dbg_value(ptr %0, !2399, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2402)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #28, !dbg !2403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2404
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !2322

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2406
    #dbg_value(ptr %0, !2407, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2414)
    #dbg_value(ptr %0, !2416, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2422)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2424 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !2424, !noundef !56 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !2431
  call void @llvm.assume(i1 %i.y), !dbg !2432
  %i.z = icmp eq i64 %i.x, 0, !dbg !2433
  br i1 %i.z, label %bb.h, label %bb.c, !dbg !2434

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !2435 ; 2 uses
    #dbg_value(ptr %i.aa, !2224, !DIExpression(), !2436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2437
    #dbg_value(ptr %0, !2438, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2443)
    #dbg_value(ptr %0, !2444, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2450)
    #dbg_value(i64 0, !2449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2452)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2452)
    #dbg_value(i64 0, !2449, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2452)
    #dbg_value(i64 1095216660735, !2449, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2452)
    #dbg_value(i8 0, !2449, !DIExpression(DW_OP_LLVM_fragment, 256, 8), !2452)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !dbg !2453
  store i64 0, ptr %i.i, align 8, !dbg !2454
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2454
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.015.sroa.4.0..sroa_idx, align 8, !dbg !2454
  store i64 0, ptr %i.w, align 8, !dbg !2454
  store i64 1095216660735, ptr %i.h, align 8, !dbg !2454
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2454
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !2454
    #dbg_value(ptr %i.aa, !2455, !DIExpression(), !2467)
    #dbg_value(ptr %i.aa, !2469, !DIExpression(), !2475)
    #dbg_declare(ptr %i.d, !2461, !DIExpression(), !2477)
    #dbg_value(i64 40, !2478, !DIExpression(), !2487)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2497 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !2497, !alias.scope !2498, !noalias !2501, !noundef !56 ; 3 uses
    #dbg_value(i64 %i.ac, !2462, !DIExpression(), !2503)
    #dbg_value(i64 %i.ac, !2504, !DIExpression(), !2513)
    #dbg_value(ptr %i.aa, !2495, !DIExpression(), !2515)
  %i.ad = load i64, ptr %i.aa, align 8, !dbg !2516, !range !2517, !alias.scope !2498, !noalias !2501, !noundef !56
  %i.ae = icmp eq i64 %i.ac, %i.ad, !dbg !2518
  br i1 %i.ae, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtB7_6string6StringEE8push_mutCsjfnSKV9Rz3v_3h3i.exit, !dbg !2518

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtB7_6string6StringEE8grow_oneBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtB7_6string6StringEE8push_mutCsjfnSKV9Rz3v_3h3i.exit unwind label %bb.e, !dbg !2519, !noalias !2501

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtCsexYYUdYSQU6_5alloc6string6StringEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #26
          to label %bb.g unwind label %bb.f, !dbg !2520

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !2521
  unreachable, !dbg !2521

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.af, !dbg !2521

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtB7_6string6StringEE8push_mutCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !2522
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !2522, !alias.scope !2498, !noalias !2501, !nonnull !56, !noundef !56
    #dbg_value(ptr %i.ai, !2512, !DIExpression(), !2513)
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.ac, !dbg !2543
    #dbg_value(ptr %i.aj, !2464, !DIExpression(), !2544)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !2545
  %i.ak = add i64 %i.ac, 1, !dbg !2546
  store i64 %i.ak, ptr %i.ab, align 8, !dbg !2546, !alias.scope !2498, !noalias !2501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2547
  br label %bb.h, !dbg !2548

bb.h:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs8Nb2mar7w9E_7inquire2ui3api5style6StyledNtNtB7_6string6StringEE8push_mutCsjfnSKV9Rz3v_3h3i.exit, %._crit_edge
  ret void, !dbg !2549

bb.i:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2207, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2550)
    #dbg_value(ptr undef, !2329, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2551)
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.7.0.copyload to i32, !dbg !2552 ; 12 uses
  %i.al = icmp ult i32 %.sroa.7.8.extract.trunc, 1114112, !dbg !2552
  call void @llvm.assume(i1 %i.al), !dbg !2552
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2370, !DIExpression(), !2553)
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2554, !DIExpression(), !2563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2565
  store i32 %.sroa.7.8.extract.trunc, ptr %i.b, align 4, !dbg !2566
    #dbg_value(ptr %i.b, !2362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2567)
    #dbg_value(ptr %i.b, !2394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2568)
    #dbg_value(i64 4, !2362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2567)
    #dbg_value(i64 4, !2394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2568)
    #dbg_value(ptr %0, !2399, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2571)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4) #28, !dbg !2572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2573
  call fastcc void @_RINvXsn_NtNtNtCs8Nb2mar7w9E_7inquire2ui3api5styleNtB6_10StyleSheetNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(9) %i.g, ptr noalias nofree noundef align 8 dereferenceable(72) %i.p) #28, !dbg !2574
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2169, !DIExpression(), !2575)
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2576, !DIExpression(), !2584)
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2586, !DIExpression(), !2591)
  %i.am = icmp eq i32 %.sroa.7.8.extract.trunc, 10, !dbg !2593
  br i1 %i.am, label %bb.l, label %bb.m, !dbg !2593

bb.j:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2206, !DIExpression(), !2212)
    #dbg_value(ptr undef, !2179, !DIExpression(), !2191)
    #dbg_value(ptr %.sroa.0.0.copyload, !2270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2594)
    #dbg_value(ptr %.sroa.0.0.copyload, !2263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2595)
    #dbg_value(ptr %.sroa.0.0.copyload, !2255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2596)
    #dbg_value(ptr %.sroa.0.0.copyload, !2246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2597)
    #dbg_value(i64 %.sroa.7.0.copyload, !2270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2594)
    #dbg_value(i64 %.sroa.7.0.copyload, !2263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2595)
    #dbg_value(i64 %.sroa.7.0.copyload, !2255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2596)
    #dbg_value(i64 %.sroa.7.0.copyload, !2246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2597)
    #dbg_value(ptr %0, !2254, !DIExpression(DW_OP_plus_uconst, 88, DW_OP_stack_value), !2598)
    #dbg_value(ptr %i.p, !2245, !DIExpression(), !2597)
    #dbg_value(ptr %i.p, !2234, !DIExpression(), !2237)
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.copyload, i64 noundef %.sroa.7.0.copyload) #28, !dbg !2599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2600
  store i8 -1, ptr %i.a, align 1, !dbg !2600
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #28, !dbg !2601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2602
  call fastcc void @_RINvXsn_NtNtNtCs8Nb2mar7w9E_7inquire2ui3api5styleNtB6_10StyleSheetNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(9) %i.g, ptr noalias nofree noundef align 8 dereferenceable(72) %i.p) #28, !dbg !2574
    #dbg_value(ptr %.sroa.0.0.copyload, !2173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2603)
    #dbg_value(ptr %.sroa.0.0.copyload, !2604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2611)
    #dbg_value(i64 %.sroa.7.0.copyload, !2173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2603)
    #dbg_value(i64 %.sroa.7.0.copyload, !2604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2611)
    #dbg_value(ptr %0, !2610, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2613)
    #dbg_value(ptr %i.i, !2614, !DIExpression(), !2621)
    #dbg_value(ptr %i.i, !2623, !DIExpression(), !2649)
    #dbg_value(ptr %.sroa.0.0.copyload, !2620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2621)
    #dbg_value(i64 %.sroa.7.0.copyload, !2620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2621)
    #dbg_value(ptr %.sroa.0.0.copyload, !2642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2649)
    #dbg_value(!DIArgList(ptr %.sroa.0.0.copyload, i64 %.sroa.7.0.copyload), !2642, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2649)
    #dbg_value(ptr %.sroa.0.0.copyload, !2643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2651)
    #dbg_value(i64 %.sroa.7.0.copyload, !2643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2651)
    #dbg_value(ptr %i.i, !2652, !DIExpression(), !2659)
    #dbg_value(ptr %i.i, !2661, !DIExpression(), !2670)
    #dbg_value(ptr %i.i, !2672, !DIExpression(), !2675)
    #dbg_value(ptr %i.i, !2677, !DIExpression(), !2684)
    #dbg_value(ptr %.sroa.0.0.copyload, !2658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2659)
    #dbg_value(ptr %.sroa.0.0.copyload, !2665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2670)
    #dbg_value(i64 %.sroa.7.0.copyload, !2658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2659)
    #dbg_value(i64 %.sroa.7.0.copyload, !2665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2670)
    #dbg_value(i64 %.sroa.7.0.copyload, !2666, !DIExpression(), !2686)
    #dbg_value(i64 %.sroa.7.0.copyload, !2687, !DIExpression(), !2694)
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.7.0.copyload), !dbg !2696
  %i.an = load i64, ptr %i.q, align 8, !dbg !2697, !alias.scope !2698, !noundef !56 ; 3 uses
    #dbg_value(i64 %i.an, !2668, !DIExpression(), !2701)
    #dbg_value(i64 %i.an, !2702, !DIExpression(), !2708)
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !2710
  call void @llvm.assume(i1 %i.ao), !dbg !2711
  %.not.i = icmp eq i64 %.sroa.7.0.copyload, 0, !dbg !2712
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfnSKV9Rz3v_3h3i.exit, label %bb.k, !dbg !2712

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %.sroa.0.0.copyload, !2692, !DIExpression(), !2694)
  %i.ap = load ptr, ptr %i.r, align 8, !dbg !2713, !alias.scope !2698, !nonnull !56, !noundef !56
    #dbg_value(ptr %i.ap, !2707, !DIExpression(), !2708)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an, !dbg !2731
    #dbg_value(ptr %i.aq, !2693, !DIExpression(), !2694)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %.sroa.0.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !dbg !2732
  %.pre.i = load i64, ptr %i.q, align 8, !dbg !2733, !alias.scope !2698
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfnSKV9Rz3v_3h3i.exit, !dbg !2734

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.j, %bb.k
  %i.ar = phi i64 [ %.pre.i, %bb.k ], [ %i.an, %bb.j ], !dbg !2733
  %i.as = add i64 %i.ar, %.sroa.7.0.copyload, !dbg !2733
  store i64 %i.as, ptr %i.q, align 8, !dbg !2733, !alias.scope !2698
  br label %.backedge, !dbg !2735

.backedge:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfnSKV9Rz3v_3h3i.exit, %bb.l, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2215
  call void @_RNvXs_NtCs8Nb2mar7w9E_7inquire4ansiNtB4_14AnsiAwareCharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !dbg !2215
  %i.at = load i64, ptr %i.e, align 8, !dbg !2215, !range !2310, !noundef !56
  %i.au = trunc nuw i64 %i.at to i1, !dbg !2215
  br i1 %i.au, label %bb.b, label %._crit_edge, !dbg !2215

bb.l:                                             ; preds = %bb.i
  call void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState11finish_line(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0), !dbg !2738
  br label %.backedge, !dbg !2739

bb.m:                                             ; preds = %bb.i
    #dbg_value(ptr %0, !2741, !DIExpression(DW_OP_plus_uconst, 160, DW_OP_stack_value), !2749)
  %i.av = load i16, ptr %i.s, align 8, !dbg !2751, !noundef !56
    #dbg_value(i16 %i.av, !2752, !DIExpression(), !2759)
  %i.aw = load i16, ptr %i.t, align 2, !dbg !2761, !noundef !56 ; 3 uses
    #dbg_value(i16 %i.aw, !2758, !DIExpression(), !2759)
  %i.ax = call i16 @llvm.usub.sat.i16(i16 %i.av, i16 %i.aw), !dbg !2762
    #dbg_value(i16 %i.ax, !2175, !DIExpression(), !2763)
  %i.ay = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 127, !dbg !2764
  br i1 %i.ay, label %bb.o, label %bb.n, !dbg !2764

bb.n:                                             ; preds = %bb.m
  %i.az = icmp samesign ugt i32 %.sroa.7.8.extract.trunc, 159, !dbg !2765
  br i1 %i.az, label %bb.p, label %.thread, !dbg !2765

bb.o:                                             ; preds = %bb.m
  %i.ba = icmp samesign ugt i32 %.sroa.7.8.extract.trunc, 31, !dbg !2766
  %spec.select = zext i1 %i.ba to i16, !dbg !2766
  br label %bb.y, !dbg !2766

bb.p:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.7.8.extract.trunc, !2767, !DIExpression(), !2789)
    #dbg_value(i64 %.sroa.7.0.copyload, !2779, !DIExpression(DW_OP_constu, 2097151, DW_OP_and, DW_OP_stack_value), !2791)
  %i.bb = lshr i64 %.sroa.7.0.copyload, 13, !dbg !2792
  %i.bc = and i64 %i.bb, 255, !dbg !2792
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables10WIDTH_ROOT, i64 %i.bc, !dbg !2793
  %i.be = load i8, ptr %i.bd, align 1, !dbg !2793, !noundef !56 ; 2 uses
    #dbg_value(i8 %i.be, !2781, !DIExpression(), !2794)
    #dbg_value(i8 %i.be, !2795, !DIExpression(), !2804)
  %i.bf = zext i8 %i.be to i64, !dbg !2806        ; 2 uses
  %i.bg = icmp ult i8 %i.be, 20, !dbg !2807
  br i1 %i.bg, label %bb.r, label %bb.q, !dbg !2807

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27, !dbg !2807
  unreachable, !dbg !2807

bb.r:                                             ; preds = %bb.p
  %i.bh = lshr i64 %.sroa.7.0.copyload, 7, !dbg !2808
  %i.bi = and i64 %i.bh, 63, !dbg !2808
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr @_RNvNtCs5Tjqocmbzhi_13unicode_width6tables12WIDTH_MIDDLE, i64 %i.bf, !dbg !2807
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi, !dbg !2807
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !2807, !noundef !56 ; 2 uses
    #dbg_value(i8 %i.bl, !2783, !DIExpression(), !2809)
    #dbg_value(i8 %i.bl, !2795, !DIExpression(), !2810)
  %i.bm = zext i8 %i.bl to i64, !dbg !2812        ; 2 uses
  %i.bn = icmp ult i8 %i.bl, -70, !dbg !2813
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsjfnSKV9Rz3v_3h3i:bb.a
    #dbg_value(i32 16, !5871, !DIExpression(), !6732)
    #dbg_value(i32 32, !5871, !DIExpression(), !6734)
    #dbg_value(i32 17, !5871, !DIExpression(), !6736)
    #dbg_value(i32 21, !5871, !DIExpression(), !6738)
    #dbg_value(i32 32, !5871, !DIExpression(), !6740)
    #dbg_value(i32 13, !5871, !DIExpression(), !6742)
    #dbg_value(i32 16, !5871, !DIExpression(), !6744)
    #dbg_value(i32 32, !5871, !DIExpression(), !6746)
    #dbg_value(i32 17, !5871, !DIExpression(), !6748)
    #dbg_value(i32 21, !5871, !DIExpression(), !6750)
    #dbg_value(i32 32, !5871, !DIExpression(), !6752)
    #dbg_value(i32 13, !5871, !DIExpression(), !6754)
    #dbg_value(i32 16, !5871, !DIExpression(), !6756)
    #dbg_value(i32 32, !5871, !DIExpression(), !6758)
    #dbg_value(i32 17, !5871, !DIExpression(), !6760)
    #dbg_value(i32 21, !5871, !DIExpression(), !6762)
    #dbg_value(i32 32, !5871, !DIExpression(), !6764)
    #dbg_value(i64 %i.ab, !5913, !DIExpression(), !6766)
    #dbg_value(i64 %i.x, !5916, !DIExpression(), !6766)
  %i.ad = add i64 %i.ab, %i.x, !dbg !6768         ; 3 uses
    #dbg_value(i64 %i.ac, !5913, !DIExpression(), !6769)
    #dbg_value(i64 %i.z, !5916, !DIExpression(), !6769)
  %i.ae = add i64 %i.z, %i.ac, !dbg !6771         ; 2 uses
    #dbg_value(i64 %i.x, !5874, !DIExpression(), !6730)
    #dbg_value(i64 %i.x, !5838, !DIExpression(), !6772)
    #dbg_value(i32 13, !5842, !DIExpression(), !6772)
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13), !dbg !6774
  %i.ag = xor i64 %i.ad, %i.af, !dbg !6775        ; 3 uses
    #dbg_value(i64 %i.z, !5874, !DIExpression(), !6732)
    #dbg_value(i64 %i.z, !5838, !DIExpression(), !6776)
    #dbg_value(i32 16, !5842, !DIExpression(), !6776)
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16), !dbg !6778
  %i.ai = xor i64 %i.ah, %i.ae, !dbg !6779        ; 3 uses
    #dbg_value(i64 %i.ad, !5874, !DIExpression(), !6734)
    #dbg_value(i64 %i.ad, !5838, !DIExpression(), !6780)
    #dbg_value(i32 32, !5842, !DIExpression(), !6780)
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32), !dbg !6782
    #dbg_value(i64 %i.ae, !5913, !DIExpression(), !6783)
    #dbg_value(i64 %i.ag, !5916, !DIExpression(), !6783)
  %i.ak = add i64 %i.ag, %i.ae, !dbg !6785        ; 3 uses
    #dbg_value(i64 %i.aj, !5913, !DIExpression(), !6786)
    #dbg_value(i64 %i.ai, !5916, !DIExpression(), !6786)
  %i.al = add i64 %i.ai, %i.aj, !dbg !6788        ; 2 uses
    #dbg_value(i64 %i.ag, !5874, !DIExpression(), !6736)
    #dbg_value(i64 %i.ag, !5838, !DIExpression(), !6789)
    #dbg_value(i32 17, !5842, !DIExpression(), !6789)
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17), !dbg !6791
  %i.an = xor i64 %i.ak, %i.am, !dbg !6779        ; 3 uses
    #dbg_value(i64 %i.ai, !5874, !DIExpression(), !6738)
    #dbg_value(i64 %i.ai, !5838, !DIExpression(), !6792)
    #dbg_value(i32 21, !5842, !DIExpression(), !6792)
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21), !dbg !6794
  %i.ap = xor i64 %i.ao, %i.al, !dbg !6775        ; 3 uses
    #dbg_value(i64 %i.ak, !5874, !DIExpression(), !6740)
    #dbg_value(i64 %i.ak, !5838, !DIExpression(), !6795)
    #dbg_value(i32 32, !5842, !DIExpression(), !6795)
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32), !dbg !6797
    #dbg_value(i64 %i.al, !5913, !DIExpression(), !6798)
    #dbg_value(i64 %i.an, !5916, !DIExpression(), !6798)
  %i.ar = add i64 %i.an, %i.al, !dbg !6800        ; 3 uses
    #dbg_value(i64 %i.aq, !5913, !DIExpression(), !6801)
    #dbg_value(i64 %i.ap, !5916, !DIExpression(), !6801)
  %i.as = add i64 %i.ap, %i.aq, !dbg !6803        ; 2 uses
    #dbg_value(i64 %i.an, !5874, !DIExpression(), !6742)
    #dbg_value(i64 %i.an, !5838, !DIExpression(), !6804)
    #dbg_value(i32 13, !5842, !DIExpression(), !6804)
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13), !dbg !6806
  %i.au = xor i64 %i.at, %i.ar, !dbg !6775        ; 3 uses
    #dbg_value(i64 %i.ap, !5874, !DIExpression(), !6744)
    #dbg_value(i64 %i.ap, !5838, !DIExpression(), !6807)
    #dbg_value(i32 16, !5842, !DIExpression(), !6807)
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16), !dbg !6809
  %i.aw = xor i64 %i.av, %i.as, !dbg !6779        ; 3 uses
    #dbg_value(i64 %i.ar, !5874, !DIExpression(), !6746)
    #dbg_value(i64 %i.ar, !5838, !DIExpression(), !6810)
    #dbg_value(i32 32, !5842, !DIExpression(), !6810)
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32), !dbg !6812
    #dbg_value(i64 %i.as, !5913, !DIExpression(), !6813)
    #dbg_value(i64 %i.au, !5916, !DIExpression(), !6813)
  %i.ay = add i64 %i.au, %i.as, !dbg !6815        ; 3 uses
    #dbg_value(i64 %i.ax, !5913, !DIExpression(), !6816)
    #dbg_value(i64 %i.aw, !5916, !DIExpression(), !6816)
  %i.az = add i64 %i.aw, %i.ax, !dbg !6818        ; 2 uses
    #dbg_value(i64 %i.au, !5874, !DIExpression(), !6748)
    #dbg_value(i64 %i.au, !5838, !DIExpression(), !6819)
    #dbg_value(i32 17, !5842, !DIExpression(), !6819)
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17), !dbg !6821
  %i.bb = xor i64 %i.ba, %i.ay, !dbg !6779        ; 3 uses
    #dbg_value(i64 %i.aw, !5874, !DIExpression(), !6750)
    #dbg_value(i64 %i.aw, !5838, !DIExpression(), !6822)
    #dbg_value(i32 21, !5842, !DIExpression(), !6822)
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21), !dbg !6824
  %i.bd = xor i64 %i.bc, %i.az, !dbg !6775        ; 3 uses
    #dbg_value(i64 %i.ay, !5874, !DIExpression(), !6752)
    #dbg_value(i64 %i.ay, !5838, !DIExpression(), !6825)
    #dbg_value(i32 32, !5842, !DIExpression(), !6825)
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32), !dbg !6827
    #dbg_value(i64 %i.az, !5913, !DIExpression(), !6828)
    #dbg_value(i64 %i.bb, !5916, !DIExpression(), !6828)
  %i.bf = add i64 %i.bb, %i.az, !dbg !6830
    #dbg_value(i64 %i.be, !5913, !DIExpression(), !6831)
    #dbg_value(i64 %i.bd, !5916, !DIExpression(), !6831)
  %i.bg = add i64 %i.bd, %i.be, !dbg !6833        ; 2 uses
    #dbg_value(i64 %i.bb, !5874, !DIExpression(), !6754)
    #dbg_value(i64 %i.bb, !5838, !DIExpression(), !6834)
    #dbg_value(i32 13, !5842, !DIExpression(), !6834)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13), !dbg !6836
  %i.bi = xor i64 %i.bh, %i.bf, !dbg !6775        ; 3 uses
    #dbg_value(i64 %i.bd, !5874, !DIExpression(), !6756)
    #dbg_value(i64 %i.bd, !5838, !DIExpression(), !6837)
    #dbg_value(i32 16, !5842, !DIExpression(), !6837)
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16), !dbg !6839
  %i.bk = xor i64 %i.bj, %i.bg, !dbg !6779        ; 2 uses
    #dbg_value(i64 %i.bf, !5874, !DIExpression(), !6758)
    #dbg_value(i64 %i.bf, !5838, !DIExpression(), !6840)
    #dbg_value(i32 32, !5842, !DIExpression(), !6840)
    #dbg_value(i64 %i.bg, !5913, !DIExpression(), !6842)
    #dbg_value(i64 %i.bi, !5916, !DIExpression(), !6842)
  %i.bl = add i64 %i.bi, %i.bg, !dbg !6844        ; 3 uses
    #dbg_value(i64 poison, !5913, !DIExpression(), !6845)
    #dbg_value(i64 %i.bk, !5916, !DIExpression(), !6845)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !5789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6678)
    #dbg_value(i64 %i.bi, !5874, !DIExpression(), !6760)
    #dbg_value(i64 %i.bi, !5838, !DIExpression(), !6847)
    #dbg_value(i32 17, !5842, !DIExpression(), !6847)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17), !dbg !6849
    #dbg_value(!DIArgList(i64 %i.bm, i64 %i.bl), !5789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !6678)
    #dbg_value(i64 %i.bk, !5874, !DIExpression(), !6762)
    #dbg_value(i64 %i.bk, !5838, !DIExpression(), !6850)
    #dbg_value(i32 21, !5842, !DIExpression(), !6850)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21), !dbg !6852
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !5789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_xor, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !6678)
    #dbg_value(i64 %i.bl, !5874, !DIExpression(), !6764)
    #dbg_value(i64 %i.bl, !5838, !DIExpression(), !6853)
    #dbg_value(i32 32, !5842, !DIExpression(), !6853)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32), !dbg !6855
    #dbg_value(i64 %i.bo, !5789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6678)
  %i.bp = xor i64 %i.bn, %i.bm, !dbg !6856
  %i.bq = xor i64 %i.bp, %i.bo, !dbg !6856
  %i.br = xor i64 %i.bq, %i.bl, !dbg !6856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6857
  ret i64 %i.br, !dbg !6858
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE11start_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6859 {
bb.a:
    #dbg_value(ptr %0, !6864, !DIExpression(), !6872)
  %i.a = tail call fastcc { i16, i16 } @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE21refresh_terminal_sizeCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0), !dbg !6873 ; 2 uses
  %i.b = extractvalue { i16, i16 } %i.a, 0, !dbg !6873 ; 2 uses
  %i.c = extractvalue { i16, i16 } %i.a, 1, !dbg !6873 ; 2 uses
    #dbg_value(i16 %i.b, !6865, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !6874)
    #dbg_value(i16 %i.c, !6865, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !6874)
    #dbg_value(ptr %0, !6875, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !6881)
    #dbg_value(i64 -9223372036854775808, !6880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6883)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6884 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !dbg !6884 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 5 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6884
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload = load i16, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122, !dbg !6884
  %i.e = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 138, !dbg !6884
  %i.f = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 154, !dbg !6884
  %i.g = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.0.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 170, !dbg !6884
  %i.h = load <8 x i16>, ptr %.sroa.7.sroa.0.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 186, !dbg !6884
  %i.i = load <8 x i16>, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 2, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 202, !dbg !6884 ; 3 uses
  %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 206, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 370, !dbg !6884 ; 2 uses
  %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 374, !dbg !6884 ; 2 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807, !dbg !6882
  tail call void @llvm.assume(i1 %i.j), !dbg !6882
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808, !dbg !6882
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0, !dbg !6882
  %i.m = select i1 %i.l, i64 %i.k, i64 1, !dbg !6882 ; 15 uses
  %i.n = insertelement <8 x i16> <i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 0, i16 0, i16 0>, i16 %i.b, i64 3, !dbg !6874
  %i.o = insertelement <8 x i16> %i.n, i16 %i.c, i64 4, !dbg !6874
  %i.p = insertelement <4 x i16> <i16 poison, i16 poison, i16 0, i16 0>, i16 %i.b, i64 0, !dbg !6874
  %i.q = insertelement <4 x i16> %i.p, i16 %i.c, i64 1, !dbg !6874 ; 2 uses
  %i.r = insertelement <4 x i64> poison, i64 %i.m, i64 0, !dbg !6874
  %i.s = shufflevector <4 x i64> %i.r, <4 x i64> poison, <4 x i32> zeroinitializer, !dbg !6874
  switch i64 %i.m, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
  ], !dbg !6885

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !6882

bb.c:                                             ; preds = %bb.a
  %i.t = load <2 x i16>, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884
  %.sroa.7.sroa.13.sroa.12.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884
  %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload = load i32, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884
  %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload = load i16, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %i.u = load <4 x i16>, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %i.v = load <4 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %i.w = load <2 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %i.x = load <2 x i64>, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload = load i56, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload = load i8, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload.a = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6884
  %i.y = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 48, !dbg !6884
  %i.z = trunc nuw i64 %i.y to i16, !dbg !6884
  %i.aa = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 32, !dbg !6884
  %i.ab = trunc i64 %i.aa to i16, !dbg !6884
  %i.ac = lshr i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, 16, !dbg !6884
  %i.ad = trunc i64 %i.ac to i16, !dbg !6884
  %i.ae = trunc i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload to i16, !dbg !6884
  %i.af = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !6874
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.ad, i64 0, !dbg !6874
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.ab, i64 1, !dbg !6874
  %i.ai = insertelement <8 x i16> %i.ah, i16 %i.z, i64 2, !dbg !6874
  %i.aj = insertelement <8 x i16> %i.ai, i16 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, i64 3, !dbg !6874
  %i.ak = shufflevector <8 x i16> %i.e, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !6874
  %i.al = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !6874
  %i.am = shufflevector <4 x i16> %i.ak, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !6874
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !6874
  %i.ao = shufflevector <8 x i16> %i.f, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !6874
  %i.ap = shufflevector <8 x i16> %i.g, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !6874
  %i.aq = shufflevector <4 x i16> %i.ao, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !6874
  %i.ar = shufflevector <8 x i16> %i.aq, <8 x i16> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !6874
  %i.as = shufflevector <8 x i16> %i.g, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !6874
  %i.at = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !6874
  %i.au = shufflevector <4 x i16> %i.as, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !6874
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !6874
  %i.aw = shufflevector <8 x i16> %i.h, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !6874
  %i.ax = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>, !dbg !6874
  %i.ay = shufflevector <4 x i16> %i.aw, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !6874
  %i.az = shufflevector <8 x i16> %i.ay, <8 x i16> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>, !dbg !6874
  %i.ba = shufflevector <8 x i16> %i.i, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !6874
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !6886

bb.d:                                             ; preds = %bb.a
  %i.bb = load <4 x i16>, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6884
  %i.bc = insertelement <4 x i16> %i.bb, i16 0, i64 3, !dbg !6874
  %i.bd = insertelement <4 x i16> %i.bc, i16 %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload, i64 2, !dbg !6874
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, !dbg !6887

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.a = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.0.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload, %bb.c ], [ 8, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0 = phi i64 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, %bb.d ], [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0 = phi i16 [ %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0.copyload, %bb.d ], [ %i.ae, %bb.c ], [ 25973, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.7.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.7.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0.copyload, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.11.sroa.0.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.11.sroa.6.0 = phi i32 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.11.sroa.6.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0 = phi i64 [ 1095216660735, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0.copyload, %bb.c ], [ 1095216660735, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0 = phi i8 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.a = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.copyload.a, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.12.0 = phi i16 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.12.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0 = phi i56 [ undef, %bb.d ], [ %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0.copyload, %bb.c ], [ 0, %bb.a ], !dbg !6874
  %.sroa.0.0 = phi i64 [ %.sroa.7.sroa.0.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ], [ %i.m, %bb.a ], !dbg !6874
  %i.be = phi <8 x i16> [ %i.e, %bb.d ], [ %i.aj, %bb.c ], [ <i16 28787, i16 28005, i16 29551, i16 29281, i16 28261, i16 26469, i16 27769, i16 28525>, %bb.a ], !dbg !6874
  %i.bf = phi <8 x i16> [ %i.f, %bb.d ], [ %i.an, %bb.c ], [ <i16 28260, i16 29281, i16 25711, i16 25971, i16 31092, i16 25698, i16 29797, i16 0>, %bb.a ], !dbg !6874
  %i.bg = phi <8 x i16> [ %i.g, %bb.d ], [ %i.ar, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !6874
  %i.bh = phi <8 x i16> [ %i.h, %bb.d ], [ %i.av, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !6874
  %i.bi = phi <8 x i16> [ %i.i, %bb.d ], [ %i.az, %bb.c ], [ %i.o, %bb.a ], !dbg !6874
  %i.bj = phi <4 x i16> [ %i.bd, %bb.d ], [ %i.ba, %bb.c ], [ <i16 undef, i16 undef, i16 0, i16 0>, %bb.a ], !dbg !6874
  %i.bk = phi <4 x i16> [ %i.q, %bb.d ], [ %i.u, %bb.c ], [ %i.q, %bb.a ], !dbg !6874
  %i.bl = phi <2 x i16> [ zeroinitializer, %bb.d ], [ %i.t, %bb.c ], [ zeroinitializer, %bb.a ], !dbg !6874
  %i.bm = phi <2 x i64> [ <i64 8317987319222330741, i64 7816392313619706465>, %bb.d ], [ %i.x, %bb.c ], [ <i64 8317987319222330741, i64 7816392313619706465>, %bb.a ], !dbg !6874
  %i.bn = phi <2 x i64> [ <i64 7237128888997146477, i64 8387220255154660723>, %bb.d ], [ %i.w, %bb.c ], [ <i64 7237128888997146477, i64 8387220255154660723>, %bb.a ], !dbg !6874
  %i.bo = phi <4 x i64> [ zeroinitializer, %bb.d ], [ %i.v, %bb.c ], [ %i.s, %bb.a ], !dbg !6874
  %.sroa.7.sroa.11.sroa.7.0..sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 194, !dbg !6884
  %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 178, !dbg !6884
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162, !dbg !6884
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !6884
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130, !dbg !6884
  %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 114, !dbg !6884
  store i64 %.sroa.0.0, ptr %i.d, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.a, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i16 %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.8.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store <8 x i16> %i.be, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store <8 x i16> %i.bf, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store <8 x i16> %i.bg, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store <8 x i16> %i.bh, ptr %.sroa.7.sroa.0.sroa.7.sroa.7.sroa.9.0..sroa.7.sroa.0.sroa.7.sroa.7.0..sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store <8 x i16> %i.bi, ptr %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 2, !dbg !6888
  store <4 x i16> %i.bj, ptr %.sroa.7.sroa.11.sroa.7.0..sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store <2 x i16> %i.bl, ptr %.sroa.7.sroa.13.sroa.0.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store i16 %.sroa.7.sroa.13.sroa.0.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0.a, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.0.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6888
  store i8 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.a, align 8, !dbg !6888
  store i56 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.6.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.8.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store <2 x i64> %i.bm, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store <2 x i64> %i.bn, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.7.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store <4 x i64> %i.bo, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i64 %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0, ptr %.sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.sroa.13.0..sroa.7.sroa.13.sroa.0.sroa.8.sroa.9.0..sroa.7.sroa.13.sroa.0.sroa.8.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store <4 x i16> %i.bk, ptr %.sroa.7.sroa.13.sroa.7.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i16 %.sroa.7.sroa.13.sroa.11.sroa.0.0, ptr %.sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !6888
  store i32 %.sroa.7.sroa.13.sroa.11.sroa.6.0, ptr %.sroa.7.sroa.13.sroa.11.sroa.6.0..sroa.7.sroa.13.sroa.11.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  store i16 %.sroa.7.sroa.13.sroa.12.0, ptr %.sroa.7.sroa.13.sroa.12.0..sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 2, !dbg !6888
  ret ptr null, !dbg !6889
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 !dbg !6890 {
bb.a:
    #dbg_value(ptr %0, !6895, !DIExpression(), !6915)
    #dbg_value(i16 %1, !6896, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !6915)
    #dbg_value(i16 %2, !6896, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !6915)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !6916 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !dbg !6916, !noundef !56 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 378, !dbg !6916 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !dbg !6916, !noundef !56 ; 3 uses
    #dbg_value(i16 %i.b, !6897, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !6917)
    #dbg_value(i16 %i.d, !6897, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !6917)
    #dbg_value(ptr poison, !6918, !DIExpression(), !6926)
    #dbg_value(ptr poison, !6925, !DIExpression(), !6928)
  %i.e = tail call i8 @llvm.ucmp.i8.i16(i16 %i.b, i16 %1), !dbg !6929
  switch i8 %i.e, label %bb.b [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ], !dbg !6930

bb.b:                                             ; preds = %bb.d, %bb.a
  unreachable, !dbg !6931

bb.c:                                             ; preds = %bb.a
  %i.f = sub i16 %1, %i.b, !dbg !6933
  %i.g = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_down(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.f), !dbg !6934 ; 2 uses
    #dbg_value(ptr %i.g, !6935, !DIExpression(), !6954)
  %.not29 = icmp eq ptr %i.g, null, !dbg !6956
  br i1 %.not29, label %bb.d, label %bb.i, !dbg !6957

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
    #dbg_value(ptr poison, !6918, !DIExpression(), !6958)
    #dbg_value(ptr poison, !6925, !DIExpression(), !6960)
  %i.h = tail call i8 @llvm.ucmp.i8.i16(i16 %i.d, i16 %2), !dbg !6961
  switch i8 %i.h, label %bb.b [
    i8 -1, label %bb.f
    i8 0, label %bb.g
    i8 1, label %bb.h
  ], !dbg !6962

bb.e:                                             ; preds = %bb.a
  %i.i = sub i16 %i.b, %1, !dbg !6963
  %i.j = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal9cursor_up(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.i), !dbg !6964 ; 2 uses
    #dbg_value(ptr %i.j, !6935, !DIExpression(), !6965)
  %.not = icmp eq ptr %i.j, null, !dbg !6967
  br i1 %.not, label %bb.d, label %bb.i, !dbg !6968

bb.f:                                             ; preds = %bb.d
  %i.k = sub i16 %2, %i.d, !dbg !6969
  %i.l = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal12cursor_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.k), !dbg !6970 ; 2 uses
    #dbg_value(ptr %i.l, !6935, !DIExpression(), !6971)
  %.not31 = icmp eq ptr %i.l, null, !dbg !6973
  br i1 %.not31, label %bb.g, label %bb.i, !dbg !6974

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.d
  store i16 %1, ptr %i.a, align 8, !dbg !6975
  store i16 %2, ptr %i.c, align 2, !dbg !6975
  br label %bb.i, !dbg !6976

bb.h:                                             ; preds = %bb.d
  %i.m = sub i16 %i.d, %2, !dbg !6977
  %i.n = tail call noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_left(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i16 noundef %i.m), !dbg !6978 ; 2 uses
    #dbg_value(ptr %i.n, !6935, !DIExpression(), !6979)
  %.not30 = icmp eq ptr %i.n, null, !dbg !6981
  br i1 %.not30, label %bb.g, label %bb.i, !dbg !6982

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ], [ null, %bb.g ], [ %i.l, %bb.f ], [ %i.n, %bb.h ], !dbg !6917
  ret ptr %.sroa.0.0, !dbg !6976
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE20finish_current_frameCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(384) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6983 {
bb.a:
  %.sroa.551 = alloca [176 x i8], align 8         ; 5 uses
    #dbg_value(ptr poison, !7097, !DIExpression(), !7128)
    #dbg_value(ptr poison, !7097, !DIExpression(), !7131)
    #dbg_value(ptr poison, !7134, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !7141)
    #dbg_value(ptr poison, !7134, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !7141)
    #dbg_value(ptr poison, !7161, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !7172)
    #dbg_value(ptr poison, !7161, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !7172)
    #dbg_value(ptr poison, !7167, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !7173)
    #dbg_value(ptr poison, !7167, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !7173)
  %i.a = alloca [352 x i8], align 8               ; 9 uses
  %i.b = alloca [176 x i8], align 8               ; 14 uses
  %i.c = alloca [176 x i8], align 8               ; 10 uses
    #dbg_value(ptr %0, !6988, !DIExpression(), !7174)
    #dbg_value(i1 %1, !6989, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7174)
    #dbg_declare(ptr %i.c, !6990, !DIExpression(), !7175)
    #dbg_declare(ptr %i.b, !6992, !DIExpression(), !7176)
    #dbg_value(i64 1, !7177, !DIExpression(), !7184)
    #dbg_value(i16 1, !7186, !DIExpression(), !7192)
    #dbg_value(i64 1, !7194, !DIExpression(), !7201)
    #dbg_value(i64 1, !7194, !DIExpression(), !7203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7206
    #dbg_value(ptr %0, !7207, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7212)
    #dbg_value(ptr %0, !7213, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !7217)
    #dbg_value(i64 -9223372036854775808, !7216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7219)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7220 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, ptr noundef nonnull align 8 dereferenceable(352) %i.d, i64 352, i1 false), !dbg !7220
  store i64 -9223372036854775808, ptr %i.d, align 8, !dbg !7221
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7221 ; 2 uses
  %i.e = load i64, ptr %i.a, align 8, !dbg !7206, !range !1012, !noundef !56 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775807, !dbg !7206
  tail call void @llvm.assume(i1 %i.f), !dbg !7206
  %i.g = icmp sgt i64 %i.e, -1, !dbg !7206
  %.sink2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 176, !dbg !7222 ; 2 uses
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, label %bb.av, !dbg !7222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !dbg !7224
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !7225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.h, i64 176, i1 false), !dbg !7225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7227
  invoke void @_RNvMs_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererNtB4_10FrameState6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.b)
          to label %bb.c unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7228

bb.b:                                             ; preds = %bb.w
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %i.d, align 8, !dbg !7229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.456.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.551, i64 176, i1 false), !dbg !7229
  br label %bb.ar, !dbg !7230

.thread.loopexit:                                 ; preds = %.lr.ph222
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit:               ; preds = %.lr.ph219
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit, %bb.an, %bb.ae, %._crit_edge223
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit, %bb.c, %bb.q, %bb.r, %bb.u, %bb.g, %bb.i, %bb.j, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp.loopexit, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit182, %.thread.loopexit.split-lp.loopexit ], [ %lpad.loopexit186, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer10FrameStateECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(176) %i.b) #26
          to label %bb.ar unwind label %bb.au, !dbg !7230

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8Nb2mar7w9E_7inquire2ui14frame_renderer11RenderStateECsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.c, !7231, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !7239)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 166, !dbg !7241
  %i.k = load i16, ptr %i.j, align 2, !dbg !7241, !noundef !56
    #dbg_value(i16 %i.k, !7242, !DIExpression(), !7246)
    #dbg_value(ptr %i.b, !7231, !DIExpression(DW_OP_plus_uconst, 164, DW_OP_stack_value), !7248)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 166, !dbg !7250
  %i.m = load i16, ptr %i.l, align 2, !dbg !7250, !noundef !56
    #dbg_value(i16 %i.m, !7245, !DIExpression(), !7246)
    #dbg_value(ptr undef, !7251, !DIExpression(DW_OP_deref), !7258)
    #dbg_value(ptr undef, !7255, !DIExpression(DW_OP_deref), !7258)
  %..i = call noundef i16 @llvm.umax.i16(i16 %i.m, i16 %i.k), !dbg !7260 ; 2 uses
    #dbg_value(i16 %..i, !6996, !DIExpression(), !7261)
  %i.n = invoke noundef ptr @_RNvXs1_NtNtCs8Nb2mar7w9E_7inquire8terminal9crosstermNtB5_17CrosstermTerminalNtB7_8Terminal11cursor_hide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !7262 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !7263, !DIExpression(), !7314)
  %.not = icmp eq ptr %i.n, null, !dbg !7316
  br i1 %.not, label %bb.e, label %_RNvMs0_NtNtCs8Nb2mar7w9E_7inquire2ui14frame_rendererINtB5_13FrameRendererNtNtNtB9_8terminal9crossterm17CrosstermTerminalE14move_cursor_toCsjfnSKV9Rz3v_3h3i.exit.thread, !dbg !7317

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !6895, !DIExpression(), !7318)
    #dbg_value(i16 0, !6896, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !7318)
    #dbg_value(i16 0, !6896, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !7318)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376, !dbg !7320 ; 6 uses
  %i.p = load i16, ptr %i.o, align 8, !dbg !7320, !alias.scope !7321, !noundef !56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 378, !dbg !7320 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !dbg !7320, !alias.scope !7321, !noundef !56 ; 3 uses
    #dbg_value(i16 %i.p, !6897, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !7324)
    #dbg_value(i16 %i.r, !6897, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !7324)
    #dbg_value(ptr poison, !6918, !DIExpression(), !7325)
    #dbg_value(ptr poison, !6925, !DIExpression(), !7327)
end_hunk_1
