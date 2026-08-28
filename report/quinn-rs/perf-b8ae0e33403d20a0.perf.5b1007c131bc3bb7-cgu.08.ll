Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.08?download=true
inline.NumInlined: 480
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf:bb.a
    #dbg_value(i64 %i.ad, !2070, !DIExpression(), !2076)
    #dbg_value(ptr poison, !2078, !DIExpression(), !2102)
    #dbg_value(ptr poison, !2104, !DIExpression(), !2112)
    #dbg_value(i64 16, !2101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2102)
    #dbg_value(i64 16, !2110, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2112)
    #dbg_value(i64 %i.af, !2101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2102)
    #dbg_value(i64 %i.af, !2110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2112)
    #dbg_value(i8 0, !2111, !DIExpression(), !2112)
    #dbg_value(i64 16, !2114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2144)
    #dbg_value(i64 16, !2146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2151)
    #dbg_value(i64 %i.af, !2114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2144)
    #dbg_value(i64 %i.af, !2146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2151)
    #dbg_value(i1 false, !2120, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2144)
    #dbg_value(i64 %i.af, !2121, !DIExpression(), !2153)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !2154, !noalias !2155
  %i.ai = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #20, !dbg !2160, !noalias !2155 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !2161
  br i1 %i.aj, label %bb.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit, !dbg !2162

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !2163, !noalias !2155
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread, !dbg !2164

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !dbg !2165, !noalias !2155
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread, !dbg !2166

bb.j:                                             ; preds = %bb.e
    #dbg_value(i64 0, !1844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1875)
    #dbg_value(i64 poison, !1844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1875)
    #dbg_value(ptr poison, !1872, !DIExpression(), !1877)
    #dbg_value(ptr poison, !1878, !DIExpression(), !1883)
  %i.am = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !dbg !2167, !noalias !2168
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread, !dbg !2169

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %.sroa.4.0.i.ph7.i, !1886, !DIExpression(), !1933)
    #dbg_value(i64 %i.ad, !2070, !DIExpression(), !2076)
    #dbg_value(i64 %i.ad, !1895, !DIExpression(), !2069)
    #dbg_value(ptr %i.ai, !1896, !DIExpression(), !2172)
    #dbg_value(ptr %i.ai, !2075, !DIExpression(), !2076)
    #dbg_value(!DIArgList(ptr %i.ai, i64 %i.ad), !1931, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2173)
    #dbg_value(i64 poison, !2174, !DIExpression(), !2177)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad, !dbg !2179 ; 9 uses
    #dbg_value(ptr %i.an, !1931, !DIExpression(), !2173)
    #dbg_value(ptr %i.an, !1634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2180)
    #dbg_value(i64 %.sroa.4.0.i.ph7.i, !1634, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2180)
    #dbg_value(i64 poison, !1634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2180)
    #dbg_value(i64 0, !1634, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2180)
    #dbg_value(i64 %i.ae, !1718, !DIExpression(), !1721)
    #dbg_value(i64 %i.ae, !1730, !DIExpression(), !1731)
    #dbg_value(ptr %i.an, !1679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2181)
    #dbg_value(ptr %i.an, !1671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1672)
    #dbg_value(i64 %i.ae, !1679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2181)
    #dbg_value(i64 %i.ae, !1671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1672)
    #dbg_value(ptr %i.an, !1717, !DIExpression(), !1721)
    #dbg_value(ptr %i.an, !1729, !DIExpression(), !1731)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !dbg !2182, !noalias !2168
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9, !dbg !2183
  %i.ap = add nsw i64 %.sroa.4.0.i.ph7.i, -1, !dbg !2184 ; 6 uses
    #dbg_value(i64 %i.ap, !2174, !DIExpression(), !2177)
    #dbg_value(i64 %i.ap, !1634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2180)
  %i.aq = lshr i64 %.sroa.4.0.i.ph7.i, 3, !dbg !2183
  %i.ar = mul nuw nsw i64 %i.aq, 7, !dbg !2183
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar, !dbg !2183 ; 2 uses
    #dbg_value(i64 %.sroa.07.0.i.i, !2174, !DIExpression(), !2177)
    #dbg_value(i64 %.sroa.07.0.i.i, !1634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2180)
    #dbg_value(ptr %i.c, !1356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2185)
    #dbg_value(i64 16, !1356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2185)
    #dbg_value(i64 16, !1356, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2185)
    #dbg_value(ptr %i.an, !1356, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2185)
    #dbg_value(i64 %i.ap, !1356, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2185)
    #dbg_value(i64 %.sroa.07.0.i.i, !1356, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !2185)
    #dbg_value(i64 0, !1356, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !2185)
  store ptr %i.c, ptr %i.b, align 8, !dbg !2186, !noalias !1602
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2186 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2186 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2186 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2186 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2186 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2186 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2186, !noalias !1602
    #dbg_value(ptr poison, !1553, !DIExpression(), !2187)
    #dbg_value(ptr poison, !2188, !DIExpression(), !2215)
    #dbg_value(<2 x i64> poison, !2217, !DIExpression(), !2223)
    #dbg_value(ptr poison, !2231, !DIExpression(), !2233)
    #dbg_declare(ptr poison, !2234, !DIExpression(), !2254)
    #dbg_value(<16 x i8> poison, !2242, !DIExpression(), !2256)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2257)
  %i.as = load i64, ptr %i.d, align 8, !dbg !2258, !alias.scope !2259, !noalias !2260, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 0, !1298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(i64 %i.as, !1298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2261)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !1298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !2261)
    #dbg_value(ptr undef, !1439, !DIExpression(), !1444)
  %i.at = icmp eq i64 %i.as, 0, !dbg !2262
  br i1 %i.at, label %._crit_edge57, label %.preheader.lr.ph, !dbg !2262

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit
  %i.au = load ptr, ptr %0, align 8, !dbg !2263, !alias.scope !2259, !noalias !2260, !nonnull !26, !noundef !26 ; 2 uses
    #dbg_value(ptr %i.au, !1553, !DIExpression(), !2187)
    #dbg_value(ptr %i.au, !2188, !DIExpression(), !2215)
    #dbg_value(ptr %i.au, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
  %.val640 = load <16 x i8>, ptr %i.au, align 16, !dbg !2264
    #dbg_value(!DIArgList(<16 x i8> %.val640, <16 x i8> splat (i8 7)), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2257)
    #dbg_value(!DIArgList(<16 x i8> %.val640, <16 x i8> splat (i8 -1)), !1298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_gt, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 16), !2261)
  %i.av = icmp sgt <16 x i8> %.val640, splat (i8 -1), !dbg !2265
    #dbg_value(<16 x i1> %i.av, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !2266
    #dbg_value(i16 %i.aw, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
  br label %.preheader, !dbg !2262

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.036 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !1640
  %.sroa.7.037 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2267, !noalias !1602
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit, !dbg !2268

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #21, !dbg !2267
  br label %common.resume, !dbg !2269

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.022.056 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.022.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.055 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.054 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.053 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
    #dbg_value(i64 %.sroa.9.054, !1298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2261)
    #dbg_value(ptr %.sroa.022.056, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 %.sroa.5.055, !1298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(i16 %.sroa.13.053, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
    #dbg_value(ptr undef, !2270, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2284)
    #dbg_value(i16 %.sroa.13.053, !2286, !DIExpression(), !2301)
  %.not.i448 = icmp eq i16 %.sroa.13.053, 0, !dbg !2303
  br i1 %.not.i448, label %.noexc5, label %._crit_edge, !dbg !2304

.noexc5:                                          ; preds = %.preheader, %.noexc5
  %.sroa.022.150 = phi ptr [ %i.ay, %.noexc5 ], [ %.sroa.022.056, %.preheader ] ; 2 uses
  %.sroa.5.149 = phi i64 [ %i.bb, %.noexc5 ], [ %.sroa.5.055, %.preheader ]
    #dbg_value(ptr %.sroa.022.150, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 %.sroa.5.149, !1298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.150) ]
    #dbg_value(ptr %.sroa.022.150, !2305, !DIExpression(), !2309)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.022.150, i64 16, !dbg !2311 ; 3 uses
    #dbg_value(ptr %i.ay, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(ptr %i.ay, !2312, !DIExpression(), !2322)
  %.val41 = load <16 x i8>, ptr %i.ay, align 16, !dbg !2324
    #dbg_value(<2 x i64> poison, !2325, !DIExpression(), !2328)
    #dbg_value(ptr poison, !2332, !DIExpression(), !2334)
    #dbg_declare(ptr poison, !2234, !DIExpression(), !2335)
    #dbg_value(<16 x i8> poison, !2242, !DIExpression(), !2337)
    #dbg_value(!DIArgList(<16 x i8> %.val41, <16 x i8> splat (i8 7)), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !2338)
  %i.az = icmp sgt <16 x i8> %.val41, splat (i8 -1), !dbg !2339
  %i.ba = bitcast <16 x i1> %i.az to i16, !dbg !2340 ; 2 uses
    #dbg_value(i16 %i.ba, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
  %i.bb = add i64 %.sroa.5.149, 16, !dbg !2341    ; 2 uses
    #dbg_value(ptr %i.ay, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 %i.bb, !1298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(i16 %i.ba, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
    #dbg_value(ptr undef, !2270, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2284)
    #dbg_value(i16 %i.ba, !2286, !DIExpression(), !2301)
  %.not.i4 = icmp eq i16 %i.ba, 0, !dbg !2303
  br i1 %.not.i4, label %.noexc5, label %._crit_edge, !dbg !2304

._crit_edge57.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre70 = load i64, ptr %i.d, align 8, !dbg !2342, !alias.scope !2259, !noalias !2260
  br label %._crit_edge57, !dbg !2342

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit
  %i.bc = phi i64 [ %.pre70, %._crit_edge57.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit ], !dbg !2342 ; 2 uses
    #dbg_value(i64 poison, !1440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2343)
    #dbg_value(i64 poison, !1440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2343)
  %i.bd = sub i64 %.sroa.07.0.i.i, %i.bc, !dbg !2344
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2344, !noalias !1602
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2345, !noalias !1602
    #dbg_value(ptr %i.b, !1596, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2346)
    #dbg_value(ptr %0, !2347, !DIExpression(), !2354)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2353, !DIExpression(), !2354)
    #dbg_value(ptr %0, !2356, !DIExpression(), !2363)
    #dbg_value(ptr %0, !2365, !DIExpression(), !2390)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2361, !DIExpression(), !2363)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2371, !DIExpression(), !2390)
    #dbg_value(i64 1, !2362, !DIExpression(), !2363)
    #dbg_value(i64 1, !2372, !DIExpression(), !2390)
    #dbg_value(ptr %0, !2373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2393)
    #dbg_value(i64 1, !2373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2393)
    #dbg_value(i64 32, !2380, !DIExpression(), !2394)
    #dbg_value(i64 32, !2382, !DIExpression(), !2395)
    #dbg_value(ptr %0, !2396, !DIExpression(), !2415)
    #dbg_value(ptr %.sroa.619.0..sroa_idx.i.i, !2401, !DIExpression(), !2415)
    #dbg_value(i64 32, !2402, !DIExpression(), !2415)
    #dbg_value(i64 32, !2403, !DIExpression(), !2417)
    #dbg_value(i64 32, !2407, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !2418)
    #dbg_value(i64 4, !2405, !DIExpression(), !2419)
    #dbg_value(i64 4, !2409, !DIExpression(), !2420)
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7OITKvp9Irj_4perf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs7OITKvp9Irj_4perf.exit unwind label %bb.l, !dbg !2421

bb.l:                                             ; preds = %._crit_edge57
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !dbg !2422
  unreachable, !dbg !2422

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs7OITKvp9Irj_4perf.exit: ; preds = %._crit_edge57
  call void @llvm.experimental.noalias.scope.decl(metadata !2423), !dbg !2267
    #dbg_value(ptr %i.b, !2426, !DIExpression(), !2433)
  call void @llvm.experimental.noalias.scope.decl(metadata !2435), !dbg !2438
    #dbg_value(ptr %i.b, !2439, !DIExpression(), !2444)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2446, !alias.scope !2447 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2446, !alias.scope !2447 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2446, !alias.scope !2447, !noundef !26 ; 3 uses
    #dbg_value(ptr poison, !2448, !DIExpression(DW_OP_deref), !2456)
    #dbg_value(ptr poison, !2455, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !2456)
    #dbg_value(ptr poison, !2454, !DIExpression(), !2456)
    #dbg_value(ptr poison, !2458, !DIExpression(), !2464)
    #dbg_value(ptr poison, !2466, !DIExpression(), !2477)
    #dbg_value(ptr poison, !2479, !DIExpression(), !2495)
    #dbg_value(ptr poison, !2497, !DIExpression(), !2503)
  %i.bf = icmp eq i64 %.val3.i.i, 0, !dbg !2505
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2506

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs7OITKvp9Irj_4perf.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2446, !alias.scope !2447
    #dbg_value(ptr poison, !2472, !DIExpression(), !2477)
    #dbg_value(i64 %.val.i.i, !2473, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2477)
    #dbg_value(i64 %.val.i.i, !2489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2495)
    #dbg_value(i64 %.val1.i.i, !2473, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2477)
    #dbg_value(i64 %.val1.i.i, !2489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2495)
  %i.bg = add i64 %.val3.i.i, 1, !dbg !2507
    #dbg_value(i64 %.val.i.i, !1964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2508)
    #dbg_value(i64 %.val1.i.i, !1964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2508)
    #dbg_value(i64 %i.bg, !1970, !DIExpression(), !2508)
    #dbg_value(i64 %i.bg, !1992, !DIExpression(), !2510)
    #dbg_value(i64 %i.bg, !2001, !DIExpression(), !2512)
    #dbg_value(i64 %.val.i.i, !1971, !DIExpression(), !2514)
    #dbg_value(i64 %.val.i.i, !1995, !DIExpression(), !2510)
    #dbg_value(i64 %.val.i.i, !2004, !DIExpression(), !2512)
    #dbg_value(i64 %.val1.i.i, !1973, !DIExpression(), !2514)
  %i.bh = mul nuw i64 %.val.i.i, %i.bg, !dbg !2515 ; 2 uses
    #dbg_value(i1 false, !2009, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2516)
    #dbg_value(i64 %i.bh, !2051, !DIExpression(), !2518)
  %i.bi = add i64 %.val1.i.i, -1, !dbg !2520
    #dbg_value(i64 %i.bi, !2054, !DIExpression(), !2518)
  %i.bj = add i64 %i.bi, %i.bh, !dbg !2521        ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh, !dbg !2521
    #dbg_value(i1 true, !2009, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2522)
  call void @llvm.assume(i1 %i.bk), !dbg !2524
  %i.bl = sub i64 0, %.val1.i.i, !dbg !2525
  %i.bm = and i64 %i.bj, %i.bl, !dbg !2526        ; 3 uses
    #dbg_value(i64 %i.bm, !1974, !DIExpression(), !2527)
    #dbg_value(i64 %i.bm, !2051, !DIExpression(), !2528)
  %i.bn = add i64 %.val3.i.i, 17, !dbg !2530
    #dbg_value(i64 %i.bn, !2054, !DIExpression(), !2528)
  %i.bo = add i64 %i.bn, %i.bm, !dbg !2531        ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm, !dbg !2531
    #dbg_value(i1 %i.bp, !2009, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2532)
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !dbg !2534
  call void @llvm.assume(i1 %i.br), !dbg !2534
    #dbg_value(i64 %.val1.i.i, !2535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2543)
    #dbg_value(i64 %.val1.i.i, !2493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2545)
    #dbg_value(i64 %i.bo, !2535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2543)
    #dbg_value(i64 %i.bo, !2493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2545)
    #dbg_value(i64 %i.bm, !2535, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2543)
    #dbg_value(i64 %i.bm, !2493, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2545)
  %i.bs = icmp ne i64 %.val1.i.i, 0, !dbg !2546
  call void @llvm.assume(i1 %i.bs), !dbg !2547
    #dbg_value(i64 %.val1.i.i, !2476, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2548)
    #dbg_value(i64 %.val1.i.i, !2490, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2549)
    #dbg_value(i64 %i.bo, !2476, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2548)
    #dbg_value(i64 %i.bo, !2490, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2549)
    #dbg_value(i64 %i.bm, !2492, !DIExpression(), !2549)
    #dbg_value(i64 %i.bm, !2550, !DIExpression(), !2554)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
    #dbg_value(ptr %.val2.i.i, !2553, !DIExpression(), !2554)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2548)
    #dbg_value(ptr poison, !2556, !DIExpression(), !2563)
    #dbg_value(ptr poison, !2565, !DIExpression(), !2572)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2563)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2572)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2581)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 0, i64 %i.bm), !2583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !2587)
    #dbg_value(i64 %.val1.i.i, !2562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2563)
    #dbg_value(i64 %.val1.i.i, !2571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2572)
    #dbg_value(i64 %.val1.i.i, !2580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2581)
    #dbg_value(i64 %.val1.i.i, !2586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2587)
    #dbg_value(i64 %i.bo, !2562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2563)
    #dbg_value(i64 %i.bo, !2571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2572)
    #dbg_value(i64 %i.bo, !2580, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2581)
    #dbg_value(i64 %i.bo, !2586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2587)
  %i.bt = icmp eq i64 %i.bo, 0, !dbg !2589
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit, label %bb.m, !dbg !2589

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm, !dbg !2590
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2587)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2574, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2581)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2570, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2572)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2561, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2563)
    #dbg_value(!DIArgList(ptr %.val2.i.i, i64 %i.bu), !2474, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2548)
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu, !dbg !2591
    #dbg_value(ptr %i.bv, !2474, !DIExpression(), !2548)
    #dbg_value(ptr %i.bv, !2561, !DIExpression(), !2563)
    #dbg_value(ptr %i.bv, !2570, !DIExpression(), !2572)
    #dbg_value(ptr %i.bv, !2574, !DIExpression(), !2581)
    #dbg_value(ptr %i.bv, !2583, !DIExpression(), !2587)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #20, !dbg !2592, !noalias !2447
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit, !dbg !2593

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECs7OITKvp9Irj_4perf.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2267, !noalias !1602
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit, !dbg !2268

._crit_edge:                                      ; preds = %.noexc5, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.053, %.preheader ], [ %i.ba, %.noexc5 ], !dbg !2594 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.055, %.preheader ], [ %i.bb, %.noexc5 ], !dbg !2594 ; 2 uses
  %.sroa.022.1.lcssa = phi ptr [ %.sroa.022.056, %.preheader ], [ %i.ay, %.noexc5 ], !dbg !2594
    #dbg_value(i16 %.sroa.13.1.lcssa, !2292, !DIExpression(), !2595)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2596, !DIExpression(), !2604)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2606, !DIExpression(), !2613)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2615, !DIExpression(), !2622)
  %i.bw = add i16 %.sroa.13.1.lcssa, -1, !dbg !2624
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2625
  %i.by = zext nneg i16 %i.bx to i64, !dbg !2626
    #dbg_value(i64 %i.by, !2278, !DIExpression(), !2627)
    #dbg_value(i16 %.sroa.13.1.lcssa, !2628, !DIExpression(), !2634)
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa, !dbg !2636
    #dbg_value(i16 %i.bz, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
    #dbg_value(i64 %i.by, !1432, !DIExpression(), !2637)
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by, !dbg !2638 ; 2 uses
    #dbg_value(i64 1, !1440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2343)
    #dbg_value(i64 %i.ca, !1440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2343)
  %i.cb = add i64 %.sroa.9.054, -1, !dbg !2639    ; 2 uses
    #dbg_value(i64 %i.cb, !1298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2261)
    #dbg_value(i64 %i.ca, !1358, !DIExpression(), !2640)
    #dbg_value(i64 %i.ca, !1578, !DIExpression(), !1580)
    #dbg_value(ptr poison, !2641, !DIExpression(DW_OP_deref, DW_OP_deref), !2649)
    #dbg_value(ptr %0, !2647, !DIExpression(), !2649)
    #dbg_value(ptr %0, !2651, !DIExpression(), !2672)
    #dbg_value(ptr %0, !2674, !DIExpression(), !2680)
    #dbg_value(i64 %i.ca, !2648, !DIExpression(), !2649)
    #dbg_value(i64 %i.ca, !2664, !DIExpression(), !2672)
    #dbg_value(i64 %i.ca, !2682, !DIExpression(), !2692)
    #dbg_value(i64 %i.ca, !2694, !DIExpression(), !2701)
    #dbg_value(i64 1, !2700, !DIExpression(), !2703)
  %i.cc = load ptr, ptr %0, align 8, !dbg !2721, !alias.scope !2722, !noalias !2725, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cc, !2688, !DIExpression(), !2692)
    #dbg_value(ptr %i.cc, !2699, !DIExpression(), !2701)
  %i.cd = sub nsw i64 0, %i.ca, !dbg !2727
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd, !dbg !2728
    #dbg_value(ptr poison, !2719, !DIExpression(), !2729)
    #dbg_value(ptr poison, !2711, !DIExpression(), !2730)
    #dbg_value(ptr %i.ce, !2699, !DIExpression(), !2703)
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16, !dbg !2731
    #dbg_value(ptr poison, !2732, !DIExpression(DW_OP_deref), !2743)
    #dbg_value(ptr %i.cf, !2738, !DIExpression(), !2743)
    #dbg_value(ptr %2, !2745, !DIExpression(), !2753)
    #dbg_value(ptr %i.cf, !2751, !DIExpression(), !2753)
  %i.cg = invoke noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit unwind label %bb.k, !dbg !2755 ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit: ; preds = %._crit_edge
    #dbg_value(i64 %i.cg, !1360, !DIExpression(), !2756)
    #dbg_value(i64 %i.cg, !2757, !DIExpression(), !2772)
    #dbg_value(i64 %i.cg, !2774, !DIExpression(), !2782)
    #dbg_value(ptr %i.b, !2767, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2784)
    #dbg_value(ptr %i.b, !1557, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2785)
    #dbg_value(ptr %i.b, !2780, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2787)
    #dbg_value(ptr %i.b, !2788, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2794)
    #dbg_value(ptr %i.b, !1557, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2796)
    #dbg_value(ptr %i.b, !1557, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !2798)
    #dbg_value(ptr poison, !2800, !DIExpression(), !2812)
    #dbg_value(ptr poison, !2823, !DIExpression(), !2829)
    #dbg_value(ptr poison, !2830, !DIExpression(), !2834)
    #dbg_value(i64 %i.cg, !2824, !DIExpression(), !2829)
    #dbg_value(!DIArgList(i64 %i.cg, i64 %i.ap), !2825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2836)
    #dbg_value(i64 0, !2825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2836)
  %.sroa.0.07.i = and i64 %i.ap, %i.cg, !dbg !2829 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i, !dbg !2837
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ch, align 1, !dbg !2840, !noalias !2863
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2866
  %i.cj = bitcast <16 x i1> %i.ci to i16, !dbg !2866 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cj, 0, !dbg !2885
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2892, !prof !2893

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit ], [ %.sroa.0.0.i13, %.lr.ph.i ], !dbg !2829
  %.lcssa.i = phi i16 [ %i.cj, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit ], [ %i.da, %.lr.ph.i ], !dbg !2866
    #dbg_value(i16 %.lcssa.i, !2889, !DIExpression(), !2894)
    #dbg_value(i16 %.lcssa.i, !2890, !DIExpression(), !2895)
    #dbg_value(i16 %.lcssa.i, !2896, !DIExpression(), !2901)
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf:bb.a
  %i.cs = bitcast <16 x i1> %i.cr to i16, !dbg !2978 ; 2 uses
    #dbg_value(i16 %i.cs, !2979, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2984)
  %.not.i13.i = icmp ne i16 %i.cs, 0, !dbg !2986
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true), !dbg !2987
  %i.cu = zext nneg i16 %i.ct to i64, !dbg !2987
    #dbg_value(i64 poison, !2988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2996)
    #dbg_value(i64 %i.cu, !2988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2996)
  tail call void @llvm.assume(i1 %.not.i13.i), !dbg !2998
    #dbg_value(i64 %i.cu, !2913, !DIExpression(), !2921)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2999

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit ]
  %i.cv = phi i64 [ %i.cw, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit ]
    #dbg_value(i64 0, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2912)
    #dbg_value(i64 poison, !2827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2912)
    #dbg_value(ptr undef, !2800, !DIExpression(), !2812)
    #dbg_value(i64 %i.ap, !2811, !DIExpression(), !3000)
  %i.cw = add i64 %i.cv, 16, !dbg !3001           ; 2 uses
    #dbg_value(i64 %i.cw, !2825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2836)
  %i.cx = add i64 %i.cw, %.sroa.0.010.i, !dbg !3002
    #dbg_value(!DIArgList(i64 %i.cx, i64 %i.ap), !2825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !2836)
  %.sroa.0.0.i13 = and i64 %i.cx, %i.ap, !dbg !2829 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i13, !2825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2836)
    #dbg_value(i64 %.sroa.0.0.i13, !2833, !DIExpression(), !2834)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i13, !dbg !2837
    #dbg_value(ptr %i.cy, !2861, !DIExpression(), !3003)
    #dbg_value(ptr %i.cy, !2855, !DIExpression(), !3004)
    #dbg_value(<2 x i64> zeroinitializer, !2856, !DIExpression(), !3005)
    #dbg_value(ptr %i.cy, !2845, !DIExpression(), !3006)
    #dbg_value(ptr undef, !2846, !DIExpression(), !3006)
    #dbg_value(i64 16, !2847, !DIExpression(), !3006)
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cy, align 1, !dbg !2840, !noalias !2863
    #dbg_value(<2 x i64> poison, !2856, !DIExpression(), !3005)
    #dbg_value(<2 x i64> poison, !2826, !DIExpression(), !3007)
    #dbg_value(ptr poison, !2879, !DIExpression(), !3008)
    #dbg_value(ptr poison, !2880, !DIExpression(), !3008)
    #dbg_value(ptr poison, !2881, !DIExpression(), !3008)
    #dbg_value(<2 x i64> poison, !2870, !DIExpression(), !3009)
    #dbg_declare(ptr poison, !2234, !DIExpression(), !3010)
    #dbg_value(<16 x i8> poison, !2242, !DIExpression(), !3011)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i, <16 x i8> splat (i8 7)), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3012)
  %i.cz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2866
  %i.da = bitcast <16 x i1> %i.cz to i16, !dbg !2866 ; 2 uses
    #dbg_value(i16 %i.da, !2889, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2894)
  %.not.i.i = icmp eq i16 %i.da, 0, !dbg !2885
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2892, !prof !3013

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i12.i = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %._crit_edge.i ] ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i12.i, !2913, !DIExpression(), !2921)
    #dbg_value(i64 %.sroa.0.0.i12.i, !1362, !DIExpression(), !3014)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2768, !DIExpression(), !3015)
    #dbg_value(i64 %.sroa.0.0.i12.i, !1569, !DIExpression(), !3016)
    #dbg_value(i64 %.sroa.0.0.i12.i, !2781, !DIExpression(), !2782)
    #dbg_value(i64 %.sroa.0.0.i12.i, !1578, !DIExpression(), !3017)
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i12.i, !dbg !3019
    #dbg_value(i8 poison, !2770, !DIExpression(), !3023)
  %i.dc = lshr i64 %i.cg, 57, !dbg !3024
  %i.dd = trunc nuw nsw i64 %i.dc to i8, !dbg !3030 ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i12.i, -16, !dbg !3031
  %i.df = and i64 %i.de, %i.ap, !dbg !3034
  store i8 %i.dd, ptr %i.db, align 1, !dbg !3035
  %i.dg = getelementptr i8, ptr %i.an, i64 %i.df, !dbg !3036
  %i.dh = getelementptr i8, ptr %i.dg, i64 16, !dbg !3036
  store i8 %i.dd, ptr %i.dh, align 1, !dbg !3039
    #dbg_value(i64 16, !1579, !DIExpression(), !1580)
    #dbg_value(i64 16, !1579, !DIExpression(), !3017)
    #dbg_value(i64 16, !3040, !DIExpression(), !3045)
  %i.di = load ptr, ptr %0, align 8, !dbg !3047, !alias.scope !2259, !noalias !2260, !nonnull !26, !noundef !26
  %i.dj = shl i64 %i.ca, 4, !dbg !3048
  %i.dk = sub nuw nsw i64 -16, %i.dj, !dbg !3049
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk, !dbg !3052
    #dbg_value(ptr %i.dl, !3043, !DIExpression(), !3045)
    #dbg_value(ptr %i.b, !1572, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3053)
    #dbg_value(ptr %i.b, !1582, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3054)
  %i.dm = shl i64 %.sroa.0.0.i12.i, 4, !dbg !3057
  %i.dn = sub nuw nsw i64 -16, %i.dm, !dbg !3058
  %i.do = getelementptr inbounds i8, ptr %i.an, i64 %i.dn, !dbg !3060
    #dbg_value(ptr %i.do, !3044, !DIExpression(), !3045)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i64 16, i1 false), !dbg !3061
    #dbg_value(ptr %.sroa.022.1.lcssa, !1298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2261)
    #dbg_value(i64 %.sroa.5.1.lcssa, !1298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2261)
    #dbg_value(i64 %i.cb, !1298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2261)
    #dbg_value(i16 %i.bz, !1298, !DIExpression(DW_OP_LLVM_fragment, 192, 16), !2261)
    #dbg_value(ptr undef, !1439, !DIExpression(), !1444)
  %i.dp = icmp eq i64 %i.cb, 0, !dbg !2262
  br i1 %i.dp, label %._crit_edge57.loopexit, label %.preheader, !dbg !2262

common.resume:                                    ; preds = %bb.r, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.es, %bb.r ]
  resume { ptr, i32 } %common.resume.op, !dbg !1480

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3062), !dbg !3065
    #dbg_value(ptr poison, !3066, !DIExpression(), !3074)
    #dbg_value(ptr poison, !3093, !DIExpression(), !3152)
    #dbg_value(ptr poison, !3100, !DIExpression(), !3153)
    #dbg_value(ptr %0, !3113, !DIExpression(), !3154)
    #dbg_value(ptr %0, !3155, !DIExpression(), !3161)
    #dbg_value(ptr poison, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3154)
    #dbg_value(ptr poison, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3154)
    #dbg_value(i64 16, !3115, !DIExpression(), !3154)
    #dbg_value(i64 16, !3163, !DIExpression(), !3168)
    #dbg_value(i64 16, !3163, !DIExpression(), !3170)
    #dbg_value(i64 16, !3172, !DIExpression(), !3177)
    #dbg_value(i64 16, !3179, !DIExpression(), !3186)
    #dbg_value(i64 16, !3188, !DIExpression(), !3205)
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs7OITKvp9Irj_4perf, !3116, !DIExpression(), !3154)
    #dbg_declare(ptr %i.a, !3117, !DIExpression(), !3209)
    #dbg_value(i64 1, !3210, !DIExpression(), !3215)
    #dbg_value(i64 1, !3217, !DIExpression(), !3223)
    #dbg_value(ptr poison, !3225, !DIExpression(), !3235)
    #dbg_value(ptr poison, !3237, !DIExpression(), !3243)
    #dbg_value(ptr poison, !3237, !DIExpression(), !3245)
    #dbg_value(i8 -1, !3247, !DIExpression(), !3252)
  %.val52.i = load ptr, ptr %0, align 8, !dbg !3254, !alias.scope !3062 ; 7 uses
    #dbg_value(ptr poison, !3255, !DIExpression(), !3279)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3286)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3288)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3290)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3292)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3294)
    #dbg_value(ptr poison, !3281, !DIExpression(), !3296)
    #dbg_value(i64 16, !3298, !DIExpression(), !3310)
    #dbg_value(i64 0, !3285, !DIExpression(), !3290)
    #dbg_value(i64 16, !3285, !DIExpression(), !3292)
    #dbg_value(i64 0, !3285, !DIExpression(), !3294)
    #dbg_value(i64 16, !3312, !DIExpression(), !3320)
    #dbg_value(i64 16, !3322, !DIExpression(), !3330)
    #dbg_value(i64 0, !3307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3310)
    #dbg_value(i64 %i.k, !3307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3310)
    #dbg_value(i64 0, !3333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3341)
    #dbg_value(i64 %i.k, !3333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3341)
    #dbg_value(i64 16, !3338, !DIExpression(), !3341)
    #dbg_value(i64 0, !3343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3355)
    #dbg_value(i64 16, !3350, !DIExpression(), !3355)
    #dbg_value(i64 16, !3357, !DIExpression(), !3365)
    #dbg_value(i64 %i.k, !3360, !DIExpression(), !3365)
    #dbg_value(i64 %i.k, !3351, !DIExpression(), !3367)
    #dbg_value(i64 %i.k, !3361, !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value), !3368)
    #dbg_value(i64 %i.k, !3363, !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value), !3369)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !3343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3355)
    #dbg_value(i64 0, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !3262, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 15, !3262, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3370)
    #dbg_value(i8 1, !3262, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !3370)
    #dbg_value(ptr undef, !3371, !DIExpression(), !3378)
    #dbg_value(ptr undef, !3381, !DIExpression(), !3393)
    #dbg_value(i64 15, !3385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3395)
    #dbg_value(i64 15, !3396, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3400)
    #dbg_value(ptr undef, !3387, !DIExpression(), !3402)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.k), !3389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3403)
  %.not6.i.i = icmp eq i64 %i.k, 0, !dbg !3404
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i, !dbg !3404

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
    #dbg_value(ptr %.val52.i, !3317, !DIExpression(), !3405)
    #dbg_value(ptr poison, !3318, !DIExpression(), !3405)
    #dbg_value(ptr poison, !3328, !DIExpression(), !3407)
    #dbg_value(i64 %i.k, !3319, !DIExpression(), !3405)
    #dbg_value(i64 %i.k, !3329, !DIExpression(), !3407)
    #dbg_value(ptr %.val52.i, !3327, !DIExpression(), !3407)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3409, !noalias !3062
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs7OITKvp9Irj_4perf, !3160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3161)
    #dbg_value(i64 16, !3160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3161)
    #dbg_value(i64 0, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3410)
    #dbg_value(i64 %i.k, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3410)
    #dbg_value(ptr undef, !3100, !DIExpression(), !3153)
    #dbg_value(ptr undef, !3093, !DIExpression(), !3152)
    #dbg_value(ptr undef, !3066, !DIExpression(), !3074)
    #dbg_value(ptr undef, !3073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3411)
    #dbg_value(i64 -1, !3412, !DIExpression(), !3415)
  br label %bb.z, !dbg !3417

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = lshr i64 %i.k, 4, !dbg !3418
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !3343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3355)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !3262, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.k), !3389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 15, DW_OP_and, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3403)
    #dbg_value(i64 %i.dq, !3361, !DIExpression(), !3368)
  %i.dr = and i64 %i.k, 15, !dbg !3419
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !3389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3403)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !3262, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.dr), !3343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3355)
    #dbg_value(i64 %i.dr, !3363, !DIExpression(), !3369)
  %.not13.i.i.i.i = icmp ne i64 %i.dr, 0, !dbg !3420
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !3343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3355)
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !3262, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(!DIArgList(i64 %i.dq, i1 %.not13.i.i.i.i), !3389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !3403)
  %i.ds = zext i1 %.not13.i.i.i.i to i64, !dbg !3420
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !3389, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3403)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !3262, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(!DIArgList(i64 %i.dq, i64 %i.ds), !3343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3355)
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dq, %i.ds, !dbg !3420 ; 4 uses
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !3343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3355)
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !3262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 %.sroa.05.0.i.i.i.i, !3389, !DIExpression(), !3403)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52.i) ]
  %i.dt = icmp eq i64 %.sroa.05.0.i.i.i.i, 1, !dbg !3404
  br i1 %i.dt, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !3404

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950, !dbg !3404
  br label %bb.p, !dbg !3404

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !3404
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i.i, !dbg !3404

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod111 = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !3404
  tail call void @llvm.assume(i1 %lcmp.mod111), !dbg !3404
    #dbg_value(i64 16, !3385, !DIExpression(), !3395)
    #dbg_value(i64 16, !3396, !DIExpression(), !3400)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3391, !DIExpression(), !3421)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3399, !DIExpression(), !3400)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3262, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3273, !DIExpression(), !3422)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3284, !DIExpression(), !3286)
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3284, !DIExpression(), !3288)
  %i.du = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i.epil.init, !dbg !3423 ; 2 uses
    #dbg_value(ptr %i.du, !3426, !DIExpression(), !3436)
  %.val5.i.i.epil = load <16 x i8>, ptr %i.du, align 16, !dbg !3438, !noalias !3062
    #dbg_value(<2 x i64> poison, !3275, !DIExpression(), !3439)
    #dbg_declare(ptr poison, !3440, !DIExpression(), !3451)
    #dbg_value(<2 x i64> zeroinitializer, !3447, !DIExpression(), !3453)
    #dbg_declare(ptr poison, !3454, !DIExpression(), !3460)
    #dbg_declare(ptr poison, !3459, !DIExpression(), !3462)
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7), !dbg !3463
    #dbg_value(<16 x i8> %.lobit.i.i.i.epil, !3449, !DIExpression(), !3464)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !3469)
    #dbg_declare(ptr poison, !3468, !DIExpression(), !3471)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>, !dbg !3472
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472), !dbg !3472
    #dbg_value(<2 x i64> %i.dw, !3277, !DIExpression(), !3473)
    #dbg_value(<2 x i64> %i.dw, !3474, !DIExpression(), !3488)
    #dbg_value(ptr %i.du, !3480, !DIExpression(), !3488)
    #dbg_value(ptr %i.du, !3490, !DIExpression(), !3497)
    #dbg_declare(ptr poison, !3496, !DIExpression(), !3499)
  store <2 x i64> %i.dw, ptr %i.du, align 16, !dbg !3500, !noalias !3062
    #dbg_value(i64 %.sroa.0.08.i.i.epil.init, !3262, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(ptr undef, !3371, !DIExpression(), !3378)
    #dbg_value(ptr undef, !3381, !DIExpression(), !3393)
    #dbg_value(i64 15, !3385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3395)
    #dbg_value(i64 15, !3396, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3400)
    #dbg_value(ptr undef, !3387, !DIExpression(), !3402)
    #dbg_value(i64 poison, !3389, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3403)
  br label %._crit_edge.i.i, !dbg !3501

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
    #dbg_value(ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs7OITKvp9Irj_4perf, !3160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3161)
    #dbg_value(i64 16, !3160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3161)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3501
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3501
    #dbg_value(i64 0, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3410)
    #dbg_value(i64 %i.k, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3410)
    #dbg_value(ptr undef, !3100, !DIExpression(), !3153)
    #dbg_value(ptr undef, !3093, !DIExpression(), !3152)
    #dbg_value(ptr undef, !3066, !DIExpression(), !3074)
    #dbg_value(ptr undef, !3073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3411)
  %..i15 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !3502
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !3502
  %i.dz = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %..i15, !dbg !3503
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 1 %.val52.i, i64 %.27.i, i1 false), !dbg !3506, !noalias !3062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3409, !noalias !3062
  store ptr @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCs7OITKvp9Irj_4perf, ptr %i.dx, align 8, !dbg !3501, !noalias !3062
  store i64 16, ptr %i.dy, align 8, !dbg !3501, !noalias !3062
  store ptr %0, ptr %i.a, align 8, !dbg !3501, !noalias !3062
  br label %.lr.ph.i16, !dbg !3508

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ed, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
    #dbg_value(i64 16, !3385, !DIExpression(), !3395)
    #dbg_value(i64 16, !3396, !DIExpression(), !3400)
    #dbg_value(i64 %.sroa.0.08.i.i, !3391, !DIExpression(), !3421)
    #dbg_value(i64 %.sroa.0.08.i.i, !3399, !DIExpression(), !3400)
    #dbg_value(i64 %.sroa.0.08.i.i, !3262, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 %.sroa.0.08.i.i, !3273, !DIExpression(), !3422)
    #dbg_value(i64 %.sroa.0.08.i.i, !3284, !DIExpression(), !3286)
    #dbg_value(i64 %.sroa.0.08.i.i, !3284, !DIExpression(), !3288)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i, !dbg !3423 ; 2 uses
    #dbg_value(ptr %i.ea, !3426, !DIExpression(), !3436)
  %.val5.i.i = load <16 x i8>, ptr %i.ea, align 16, !dbg !3438, !noalias !3062
    #dbg_value(<2 x i64> poison, !3275, !DIExpression(), !3439)
    #dbg_declare(ptr poison, !3440, !DIExpression(), !3451)
    #dbg_value(<2 x i64> zeroinitializer, !3447, !DIExpression(), !3453)
    #dbg_declare(ptr poison, !3454, !DIExpression(), !3460)
    #dbg_declare(ptr poison, !3459, !DIExpression(), !3462)
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7), !dbg !3463
    #dbg_value(<16 x i8> %.lobit.i.i.i, !3449, !DIExpression(), !3464)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !3469)
    #dbg_declare(ptr poison, !3468, !DIExpression(), !3471)
  %i.eb = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>, !dbg !3472
  %i.ec = or <2 x i64> %i.eb, splat (i64 -9187201950435737472), !dbg !3472
    #dbg_value(<2 x i64> %i.ec, !3277, !DIExpression(), !3473)
    #dbg_value(<2 x i64> %i.ec, !3474, !DIExpression(), !3488)
    #dbg_value(ptr %i.ea, !3480, !DIExpression(), !3488)
    #dbg_value(ptr %i.ea, !3490, !DIExpression(), !3497)
    #dbg_declare(ptr poison, !3496, !DIExpression(), !3499)
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !dbg !3500, !noalias !3062
    #dbg_value(i64 %.sroa.0.08.i.i, !3262, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(ptr undef, !3371, !DIExpression(), !3378)
    #dbg_value(ptr undef, !3381, !DIExpression(), !3393)
    #dbg_value(i64 15, !3385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3395)
    #dbg_value(i64 15, !3396, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3400)
    #dbg_value(ptr undef, !3387, !DIExpression(), !3402)
    #dbg_value(i64 poison, !3389, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3403)
    #dbg_value(i64 16, !3385, !DIExpression(), !3395)
    #dbg_value(i64 16, !3396, !DIExpression(), !3400)
    #dbg_value(i64 %.sroa.0.08.i.i, !3391, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3421)
    #dbg_value(i64 %.sroa.0.08.i.i, !3399, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3400)
  %i.ed = add i64 %.sroa.0.08.i.i, 32, !dbg !3509 ; 2 uses
    #dbg_value(i64 %i.ed, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 %.sroa.0.08.i.i, !3273, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3422)
    #dbg_value(i64 %.sroa.0.08.i.i, !3284, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3286)
    #dbg_value(i64 %.sroa.0.08.i.i, !3284, !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value), !3288)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %.sroa.0.08.i.i, !dbg !3423
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !3423 ; 2 uses
    #dbg_value(ptr %i.ef, !3426, !DIExpression(), !3436)
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ef, align 16, !dbg !3438, !noalias !3062
    #dbg_declare(ptr poison, !3440, !DIExpression(), !3451)
    #dbg_declare(ptr poison, !3454, !DIExpression(), !3460)
    #dbg_declare(ptr poison, !3459, !DIExpression(), !3462)
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7), !dbg !3463
    #dbg_value(<16 x i8> %.lobit.i.i.i.1, !3449, !DIExpression(), !3464)
    #dbg_declare(ptr poison, !3465, !DIExpression(), !3469)
    #dbg_declare(ptr poison, !3468, !DIExpression(), !3471)
  %i.eg = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>, !dbg !3472
  %i.eh = or <2 x i64> %i.eg, splat (i64 -9187201950435737472), !dbg !3472
    #dbg_value(<2 x i64> %i.eh, !3277, !DIExpression(), !3473)
    #dbg_value(<2 x i64> %i.eh, !3474, !DIExpression(), !3488)
    #dbg_value(ptr %i.ef, !3480, !DIExpression(), !3488)
    #dbg_value(ptr %i.ef, !3490, !DIExpression(), !3497)
    #dbg_declare(ptr poison, !3496, !DIExpression(), !3499)
  store <2 x i64> %i.eh, ptr %i.ef, align 16, !dbg !3500, !noalias !3062
    #dbg_value(i64 %i.ed, !3262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3370)
    #dbg_value(i64 poison, !3262, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !3370)
    #dbg_value(i64 15, !3385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3395)
    #dbg_value(i64 15, !3396, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3400)
    #dbg_value(i64 poison, !3389, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !3403)
  %niter.next.1 = add i64 %niter, 2, !dbg !3404   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3404
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p, !dbg !3404

.lr.ph.i16:                                       ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ei, %bb.x ], [ 0, %._crit_edge.i.i ] ; 10 uses
    #dbg_value(i64 %.sroa.0.06.i, !3094, !DIExpression(), !3510)
    #dbg_value(i64 %.sroa.0.06.i, !3214, !DIExpression(), !3215)
    #dbg_value(i64 %.sroa.0.06.i, !3222, !DIExpression(), !3223)
  %i.ei = add nuw i64 %.sroa.0.06.i, 1, !dbg !3511
    #dbg_value(i64 %i.ei, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3410)
    #dbg_value(i64 %.sroa.0.06.i, !3131, !DIExpression(), !3512)
    #dbg_value(i64 %.sroa.0.06.i, !3513, !DIExpression(), !3517)
    #dbg_value(i64 %.sroa.0.06.i, !3167, !DIExpression(), !3168)
    #dbg_value(i64 %.sroa.0.06.i, !3519, !DIExpression(), !3528)
    #dbg_value(i64 %.sroa.0.06.i, !3530, !DIExpression(), !3535)
    #dbg_value(i64 %.sroa.0.06.i, !3251, !DIExpression(), !3252)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3517)
  %i.ej = load ptr, ptr %0, align 8, !dbg !3537, !alias.scope !3062, !nonnull !26, !noundef !26 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.0.06.i, !dbg !3538
    #dbg_value(ptr %i.ek, !3231, !DIExpression(), !3235)
    #dbg_value(ptr %i.ek, !3241, !DIExpression(), !3243)
  %i.el = load i8, ptr %i.ek, align 1, !dbg !3541, !noundef !26
  %.not.i17 = icmp eq i8 %i.el, -128, !dbg !3541
  br i1 %.not.i17, label %bb.q, label %bb.x, !dbg !3508

bb.q:                                             ; preds = %.lr.ph.i16
  %.neg.i = xor i64 %.sroa.0.06.i, -1, !dbg !3511
    #dbg_value(ptr %0, !3166, !DIExpression(), !3168)
  %.neg50.i = shl i64 %.neg.i, 4, !dbg !3542
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %.neg50.i, !dbg !3543 ; 2 uses
    #dbg_value(ptr %i.em, !3133, !DIExpression(), !3546)
    #dbg_value(ptr %i.em, !3184, !DIExpression(), !3186)
    #dbg_value(ptr %i.em, !3193, !DIExpression(), !3205)
  %i.en = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i, !dbg !3547

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.w, %bb.q
    #dbg_value(ptr poison, !2641, !DIExpression(DW_OP_deref, DW_OP_deref), !3548)
    #dbg_value(ptr %0, !2647, !DIExpression(), !3548)
    #dbg_value(ptr %0, !2651, !DIExpression(), !3550)
    #dbg_value(ptr %0, !2674, !DIExpression(), !3552)
    #dbg_value(i64 %.sroa.0.06.i, !2648, !DIExpression(), !3548)
    #dbg_value(i64 %.sroa.0.06.i, !2664, !DIExpression(), !3550)
    #dbg_value(i64 %.sroa.0.06.i, !2682, !DIExpression(), !3554)
    #dbg_value(i64 %.sroa.0.06.i, !2694, !DIExpression(), !3556)
    #dbg_value(i64 1, !2700, !DIExpression(), !3558)
  %i.eo = load ptr, ptr %0, align 8, !dbg !3562, !alias.scope !3563, !noalias !3566, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.eo, !2688, !DIExpression(), !3554)
    #dbg_value(ptr %i.eo, !2699, !DIExpression(), !3556)
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.en, !dbg !3568
    #dbg_value(ptr poison, !2719, !DIExpression(), !3569)
    #dbg_value(ptr poison, !2711, !DIExpression(), !3570)
    #dbg_value(ptr %i.ep, !2699, !DIExpression(), !3558)
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -16, !dbg !3571
    #dbg_value(ptr poison, !2732, !DIExpression(DW_OP_deref), !3572)
    #dbg_value(ptr %i.eq, !2738, !DIExpression(), !3572)
    #dbg_value(ptr %2, !2745, !DIExpression(), !3574)
    #dbg_value(ptr %i.eq, !2751, !DIExpression(), !3574)
  %i.er = invoke noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eq)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i unwind label %bb.r, !dbg !3576 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf:bb.a
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.y, !dbg !3577

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
    #dbg_value(i64 %i.er, !3135, !DIExpression(), !3578)
    #dbg_value(i64 %i.er, !3527, !DIExpression(), !3528)
    #dbg_value(i64 %i.er, !3534, !DIExpression(), !3535)
    #dbg_value(i64 %i.er, !3579, !DIExpression(), !3587)
  %.val.i20 = load ptr, ptr %0, align 8, !dbg !3589, !alias.scope !3062, !nonnull !26, !noundef !26 ; 7 uses
  %.val51.i = load i64, ptr %i.h, align 8, !dbg !3589, !alias.scope !3062, !noundef !26 ; 6 uses
    #dbg_value(ptr poison, !2800, !DIExpression(), !3590)
    #dbg_value(ptr poison, !2823, !DIExpression(), !3593)
    #dbg_value(ptr poison, !2830, !DIExpression(), !3594)
    #dbg_value(i64 %i.er, !2824, !DIExpression(), !3593)
    #dbg_value(!DIArgList(i64 %i.er, i64 %.val51.i), !2825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3596)
    #dbg_value(i64 0, !2825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3596)
  %.sroa.0.07.i.i = and i64 %.val51.i, %i.er, !dbg !3593 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.07.i.i, !dbg !3597
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !dbg !3599, !noalias !3603
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer, !dbg !3606
  %i.ev = bitcast <16 x i1> %i.eu to i16, !dbg !3606 ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0, !dbg !3610
  br i1 %.not.i9.i.i, label %.lr.ph.i55.i, label %._crit_edge.i54.i, !dbg !3612, !prof !2893

._crit_edge.i54.i:                                ; preds = %.lr.ph.i55.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i ], [ %.sroa.0.0.i.i21, %.lr.ph.i55.i ], !dbg !3593
  %.lcssa.i.i = phi i16 [ %i.ev, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i ], [ %i.fm, %.lr.ph.i55.i ], !dbg !3606
    #dbg_value(i16 %.lcssa.i.i, !2889, !DIExpression(), !3613)
    #dbg_value(i16 %.lcssa.i.i, !2890, !DIExpression(), !3614)
    #dbg_value(i16 %.lcssa.i.i, !2896, !DIExpression(), !3615)
    #dbg_value(i16 %.lcssa.i.i, !2903, !DIExpression(), !3617)
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !3619
  %i.ex = zext nneg i16 %i.ew to i64, !dbg !3620
    #dbg_value(i64 %i.ex, !2882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3621)
    #dbg_value(i64 1, !2882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3621)
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex, !dbg !3622
  %i.ez = and i64 %i.ey, %.val51.i, !dbg !3622    ; 2 uses
    #dbg_value(i64 1, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3623)
    #dbg_value(i64 %i.ez, !2827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3623)
    #dbg_value(i64 %i.ez, !2913, !DIExpression(), !3624)
    #dbg_value(ptr poison, !2920, !DIExpression(), !3624)
    #dbg_value(ptr poison, !2923, !DIExpression(), !3626)
    #dbg_value(ptr poison, !2932, !DIExpression(), !3628)
    #dbg_value(ptr poison, !2932, !DIExpression(), !3630)
    #dbg_value(i64 0, !2935, !DIExpression(), !3630)
    #dbg_value(i64 %i.ez, !2929, !DIExpression(), !3626)
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %i.ez, !dbg !3632
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !3634, !noundef !26
  %i.fc = icmp sgt i8 %i.fb, -1, !dbg !3635
    #dbg_value(i1 %i.fc, !2950, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3637)
  br i1 %i.fc, label %bb.s, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !3639, !prof !1477

bb.s:                                             ; preds = %._crit_edge.i54.i
    #dbg_value(ptr %.val.i20, !2956, !DIExpression(), !3640)
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i20, align 16, !dbg !3642
    #dbg_value(<2 x i64> poison, !2969, !DIExpression(), !3643)
    #dbg_declare(ptr poison, !2234, !DIExpression(), !3645)
    #dbg_value(<16 x i8> poison, !2242, !DIExpression(), !3647)
    #dbg_value(!DIArgList(<16 x i8> %.val2.i.i.i, <16 x i8> splat (i8 7)), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3648)
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer, !dbg !3649
  %i.fe = bitcast <16 x i1> %i.fd to i16, !dbg !3649 ; 2 uses
    #dbg_value(i16 %i.fe, !2979, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3650)
  %.not.i13.i.i = icmp ne i16 %i.fe, 0, !dbg !3652
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true), !dbg !3653
  %i.fg = zext nneg i16 %i.ff to i64, !dbg !3653
    #dbg_value(i64 poison, !2988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3654)
    #dbg_value(i64 %i.fg, !2988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3654)
  tail call void @llvm.assume(i1 %.not.i13.i.i), !dbg !3656
    #dbg_value(i64 %i.fg, !2913, !DIExpression(), !3624)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !3657

.lr.ph.i55.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i, %.lr.ph.i55.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i21, %.lr.ph.i55.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i55.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0E0Cs7OITKvp9Irj_4perf.exit.i ]
    #dbg_value(i64 0, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3623)
    #dbg_value(i64 poison, !2827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3623)
    #dbg_value(ptr undef, !2800, !DIExpression(), !3590)
    #dbg_value(i64 %.val51.i, !2811, !DIExpression(), !3658)
  %i.fi = add i64 %i.fh, 16, !dbg !3659           ; 2 uses
    #dbg_value(i64 %i.fi, !2825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3596)
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i, !dbg !3660
    #dbg_value(!DIArgList(i64 %i.fj, i64 %.val51.i), !2825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3596)
  %.sroa.0.0.i.i21 = and i64 %i.fj, %.val51.i, !dbg !3593 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i.i21, !2825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3596)
    #dbg_value(i64 %.sroa.0.0.i.i21, !2833, !DIExpression(), !3594)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.0.i.i21, !dbg !3597
    #dbg_value(ptr %i.fk, !2861, !DIExpression(), !3661)
    #dbg_value(ptr %i.fk, !2855, !DIExpression(), !3662)
    #dbg_value(<2 x i64> zeroinitializer, !2856, !DIExpression(), !3663)
    #dbg_value(ptr %i.fk, !2845, !DIExpression(), !3664)
    #dbg_value(ptr undef, !2846, !DIExpression(), !3664)
    #dbg_value(i64 16, !2847, !DIExpression(), !3664)
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !dbg !3599, !noalias !3603
    #dbg_value(<2 x i64> poison, !2856, !DIExpression(), !3663)
    #dbg_value(<2 x i64> poison, !2826, !DIExpression(), !3665)
    #dbg_value(ptr poison, !2879, !DIExpression(), !3666)
    #dbg_value(ptr poison, !2880, !DIExpression(), !3666)
    #dbg_value(ptr poison, !2881, !DIExpression(), !3666)
    #dbg_value(<2 x i64> poison, !2870, !DIExpression(), !3667)
    #dbg_declare(ptr poison, !2234, !DIExpression(), !3668)
    #dbg_value(<16 x i8> poison, !2242, !DIExpression(), !3669)
    #dbg_value(!DIArgList(<16 x i8> %.sroa.0.0.copyload.i6.i.i, <16 x i8> splat (i8 7)), !2252, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !3670)
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer, !dbg !3606
  %i.fm = bitcast <16 x i1> %i.fl to i16, !dbg !3606 ; 2 uses
    #dbg_value(i16 %i.fm, !2889, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !3613)
  %.not.i.i.i = icmp eq i16 %i.fm, 0, !dbg !3610
  br i1 %.not.i.i.i, label %.lr.ph.i55.i, label %._crit_edge.i54.i, !dbg !3612, !prof !3013

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i54.i
  %.sroa.0.0.i12.i.i = phi i64 [ %i.fg, %bb.s ], [ %i.ez, %._crit_edge.i54.i ] ; 4 uses
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !2913, !DIExpression(), !3624)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3137, !DIExpression(), !3671)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3526, !DIExpression(), !3528)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3167, !DIExpression(), !3170)
    #dbg_value(i64 %.sroa.0.0.i12.i.i, !3586, !DIExpression(), !3587)
    #dbg_value(ptr %0, !3525, !DIExpression(), !3528)
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i, !dbg !3672
  %i.fo = sub i64 %.sroa.0.0.i12.i.i, %.sroa.0.07.i.i, !dbg !3685
  %i.fp = xor i64 %i.fo, %i.fn, !dbg !3689
  %.unshifted.i = and i64 %i.fp, %.val51.i, !dbg !3689
  %i.fq = icmp ult i64 %.unshifted.i, 16, !dbg !3689
    #dbg_value(i1 %i.fq, !3690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3693)
  br i1 %i.fq, label %bb.u, label %bb.t, !dbg !3695, !prof !473

bb.t:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
    #dbg_value(ptr %0, !3166, !DIExpression(), !3170)
  %i.fr = shl i64 %.sroa.0.0.i12.i.i, 4, !dbg !3696
  %i.fs = sub nuw nsw i64 -16, %i.fr, !dbg !3697
  %i.ft = getelementptr inbounds i8, ptr %.val.i20, i64 %i.fs, !dbg !3700 ; 2 uses
    #dbg_value(ptr %i.ft, !3139, !DIExpression(), !3701)
    #dbg_value(ptr %i.ft, !3176, !DIExpression(), !3177)
    #dbg_value(ptr %i.ft, !3185, !DIExpression(), !3186)
    #dbg_value(ptr %i.ft, !3194, !DIExpression(), !3205)
    #dbg_value(ptr %0, !3585, !DIExpression(), !3587)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3702)
    #dbg_value(ptr %0, !3533, !DIExpression(), !3704)
    #dbg_value(ptr %0, !3250, !DIExpression(), !3706)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3709)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3712)
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.0.i12.i.i, !dbg !3714 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !3717, !noundef !26
    #dbg_value(i8 %i.fv, !3141, !DIExpression(), !3718)
  %i.fw = lshr i64 %i.er, 57, !dbg !3719
  %i.fx = trunc nuw nsw i64 %i.fw to i8, !dbg !3722 ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i12.i.i, -16, !dbg !3723
  %i.fz = and i64 %i.fy, %.val51.i, !dbg !3725
  store i8 %i.fx, ptr %i.fu, align 1, !dbg !3726
  %i.ga = load ptr, ptr %0, align 8, !dbg !3727, !alias.scope !3062, !nonnull !26, !noundef !26
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz, !dbg !3728
  %i.gc = getelementptr i8, ptr %i.gb, i64 16, !dbg !3728
  store i8 %i.fx, ptr %i.gc, align 1, !dbg !3731
    #dbg_value(ptr poison, !3241, !DIExpression(), !3732)
  %i.gd = icmp eq i8 %i.fv, -1, !dbg !3732
  br i1 %i.gd, label %bb.v, label %bb.w, !dbg !3733

bb.u:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
    #dbg_value(ptr %0, !3533, !DIExpression(), !3535)
    #dbg_value(ptr %0, !3250, !DIExpression(), !3734)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3736)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3738)
  %i.ge = lshr i64 %i.er, 57, !dbg !3740
  %i.gf = trunc nuw nsw i64 %i.ge to i8, !dbg !3742 ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16, !dbg !3743
  %i.gh = and i64 %.val51.i, %i.gg, !dbg !3745
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i20, i64 %.sroa.0.06.i, !dbg !3746
  store i8 %i.gf, ptr %i.gi, align 1, !dbg !3749
  %i.gj = load ptr, ptr %0, align 8, !dbg !3750, !alias.scope !3062, !nonnull !26, !noundef !26
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh, !dbg !3751
  %i.gl = getelementptr i8, ptr %i.gk, i64 16, !dbg !3751
  store i8 %i.gf, ptr %i.gl, align 1, !dbg !3754
  br label %bb.x, !dbg !3755

bb.v:                                             ; preds = %bb.t
    #dbg_value(ptr %0, !3250, !DIExpression(), !3252)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3757)
    #dbg_value(ptr %0, !3516, !DIExpression(), !3760)
  %i.gm = add i64 %.sroa.0.06.i, -16, !dbg !3762
  %i.gn = load i64, ptr %i.h, align 8, !dbg !3764, !alias.scope !3062, !noundef !26
  %i.go = and i64 %i.gn, %i.gm, !dbg !3765
  %i.gp = load ptr, ptr %0, align 8, !dbg !3766, !alias.scope !3062, !nonnull !26, !noundef !26
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i, !dbg !3767
  store i8 -1, ptr %i.gq, align 1, !dbg !3770
  %i.gr = load ptr, ptr %0, align 8, !dbg !3771, !alias.scope !3062, !nonnull !26, !noundef !26
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go, !dbg !3772
  %i.gt = getelementptr i8, ptr %i.gs, i64 16, !dbg !3772
  store i8 -1, ptr %i.gt, align 1, !dbg !3775
    #dbg_value(ptr %i.em, !3175, !DIExpression(), !3177)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(16) %i.em, i64 16, i1 false), !dbg !3776
  br label %bb.x, !dbg !3755

bb.w:                                             ; preds = %bb.t
    #dbg_value(ptr %i.em, !3195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3777)
    #dbg_value(i64 16, !3195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3777)
    #dbg_value(i64 16, !3201, !DIExpression(), !3778)
    #dbg_value(i64 16, !3203, !DIExpression(), !3779)
    #dbg_value(ptr %i.em, !2396, !DIExpression(), !3780)
    #dbg_value(ptr %i.ft, !2401, !DIExpression(), !3780)
    #dbg_value(i64 16, !2402, !DIExpression(), !3780)
    #dbg_value(i64 16, !2403, !DIExpression(), !3782)
    #dbg_value(i64 16, !2407, !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value), !3783)
    #dbg_value(i64 2, !2405, !DIExpression(), !3784)
    #dbg_value(i64 2, !2409, !DIExpression(), !3785)
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7OITKvp9Irj_4perf(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ft, i64 noundef 2)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r, !dbg !3786

bb.x:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i16
    #dbg_value(i64 %i.ei, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3410)
    #dbg_value(ptr undef, !3100, !DIExpression(), !3153)
    #dbg_value(ptr undef, !3093, !DIExpression(), !3152)
    #dbg_value(ptr undef, !3066, !DIExpression(), !3074)
    #dbg_value(ptr undef, !3073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3411)
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i, !dbg !3787
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i16, !dbg !3502

bb.y:                                             ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3788
  unreachable, !dbg !3788

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !dbg !3789, !alias.scope !3062
  %.pre.i.fr = freeze i64 %.pre.i, !dbg !3417     ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1, !dbg !3417
  %i.gv = lshr i64 %.pre13.i, 3, !dbg !3417
  %i.gw = mul nuw i64 %i.gv, 7, !dbg !3417
    #dbg_value(i64 %.pre.i, !3412, !DIExpression(), !3415)
  %i.gx = icmp ult i64 %.pre.i.fr, 8, !dbg !3417
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw, !dbg !3417
  %.pre = load i64, ptr %i.d, align 8, !dbg !3790, !alias.scope !3062
  br label %bb.z, !dbg !3417

bb.z:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !3790
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], !dbg !3417
    #dbg_value(i64 %i.gz, !3412, !DIExpression(), !3415)
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3791
  %i.hb = sub i64 %i.gz, %i.gy, !dbg !3791
  store i64 %i.hb, ptr %i.ha, align 8, !dbg !3791, !alias.scope !3062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3577, !noalias !3062
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit, !dbg !3792

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.036, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit ], !dbg !1446
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.037, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs7OITKvp9Irj_4perf.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECs7OITKvp9Irj_4perf.exit ], !dbg !1446
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !3793
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1, !dbg !3793
  ret { i64, i64 } %i.hd, !dbg !3794
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3795 {
bb.a:
    #dbg_value(ptr %0, !3800, !DIExpression(), !3805)
    #dbg_value(i64 %1, !3801, !DIExpression(), !3805)
    #dbg_value(ptr %2, !3802, !DIExpression(), !3805)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3806
  %i.b = load i64, ptr %i.a, align 8, !dbg !3806, !noundef !26
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3807
    #dbg_value(i1 %i.c, !3808, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3811)
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3813, !prof !1477

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync6notify6NotifyEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #23, !dbg !3814 ; 0 uses
    #dbg_value(i64 poison, !3803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3815)
    #dbg_value(i64 poison, !3816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3827)
    #dbg_value(i64 poison, !3803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3815)
    #dbg_value(i64 poison, !3816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3827)
  br label %bb.c, !dbg !3829

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3830
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3831 {
bb.a:
    #dbg_value(ptr %0, !3855, !DIExpression(), !3860)
    #dbg_value(i64 %1, !3856, !DIExpression(), !3860)
    #dbg_value(ptr %2, !3857, !DIExpression(), !3860)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3861
  %i.b = load i64, ptr %i.a, align 8, !dbg !3861, !noundef !26
  %i.c = icmp ugt i64 %1, %i.b, !dbg !3862
    #dbg_value(i1 %i.c, !3863, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3866)
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3868, !prof !1477

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCshovLROGBtMy_11quinn_proto8StreamIdNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE0ECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #23, !dbg !3869 ; 0 uses
    #dbg_value(i64 poison, !3858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3870)
    #dbg_value(i64 poison, !3871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3878)
    #dbg_value(i64 poison, !3858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3870)
    #dbg_value(i64 poison, !3871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3878)
  br label %bb.c, !dbg !3880

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !3881
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtCsdIYt8sV98we_5bytes5bytes5Bytesj20_ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3882 {
bb.a:
    #dbg_value(ptr %0, !3950, !DIExpression(), !3953)
    #dbg_value(ptr %0, !3954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3967)
    #dbg_value(i64 32, !3954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3967)
  br label %bb.b, !dbg !3969

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.b
  %i.a = icmp eq i64 %i.c, 32, !dbg !3969
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit, label %bb.b, !dbg !3969

bb.b:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i
  %.sroa.0.0.i1 = phi i64 [ 0, %bb.a ], [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.0.i1, !dbg !3969 ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.0.i1, 1, !dbg !3969 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3970), !dbg !3969
    #dbg_value(ptr %i.b, !3973, !DIExpression(), !3981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3983), !dbg !3986
    #dbg_value(ptr %i.b, !3987, !DIExpression(), !3992)
  %i.d = load ptr, ptr %i.b, align 8, !dbg !3994, !alias.scope !3995, !nonnull !26, !align !3998, !noundef !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !3994
  %i.f = load ptr, ptr %i.e, align 8, !dbg !3994, !noalias !3999, !nonnull !26, !noundef !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4000
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4001
  %i.i = load ptr, ptr %i.h, align 8, !dbg !4001, !alias.scope !3995, !noundef !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4002
  %i.k = load i64, ptr %i.j, align 8, !dbg !4002, !alias.scope !3995, !noundef !26
  invoke void %i.f(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i unwind label %bb.c, !dbg !3994, !inline_history !4003

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i: ; preds = %.lr.ph
  %i.l = add i64 %.sroa.0.1.i2, 1, !dbg !3969     ; 2 uses
  %i.m = icmp eq i64 %i.l, 32, !dbg !3969
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i._crit_edge, label %.lr.ph, !dbg !3969

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.c, 32, !dbg !3969
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i._crit_edge, label %.lr.ph, !dbg !3969

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i
  %.sroa.0.1.i2 = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.1.i2, !dbg !3969 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004), !dbg !3969
    #dbg_value(ptr %i.p, !3973, !DIExpression(), !4007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009), !dbg !4012
    #dbg_value(ptr %i.p, !3987, !DIExpression(), !4013)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !4015, !alias.scope !4016, !nonnull !26, !align !3998, !noundef !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !4015
  %i.s = load ptr, ptr %i.r, align 8, !dbg !4015, !noalias !4017, !nonnull !26, !noundef !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !4018
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !4019
  %i.v = load ptr, ptr %i.u, align 8, !dbg !4019, !alias.scope !4016, !noundef !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !4020
  %i.x = load i64, ptr %i.w, align 8, !dbg !4020, !alias.scope !4016, !noundef !26
  invoke void %i.s(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i unwind label %bb.d, !dbg !4015, !inline_history !4003

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit8.i, %bb.c
  resume { ptr, i32 } %i.n, !dbg !3969

bb.d:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3969
  unreachable, !dbg !3969

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i
  ret void, !dbg !4021
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4022 {
bb.a:
    #dbg_value(ptr %0, !4125, !DIExpression(), !4128)
  %i.a = load i64, ptr %0, align 8, !dbg !4129, !range !1026, !noundef !26
  %1 = trunc nuw i64 %i.a to i1, !dbg !4129
  br i1 %1, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECs7OITKvp9Irj_4perf.exit, !dbg !4129

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.a
  ret void, !dbg !4129

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4129 ; 5 uses
    #dbg_value(ptr %i.b, !4130, !DIExpression(), !4136)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.c, !dbg !4138

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4139), !dbg !4138
    #dbg_value(ptr %i.b, !4142, !DIExpression(), !4150)
  %i.d = load ptr, ptr %i.b, align 8, !dbg !4152, !alias.scope !4153, !noundef !26 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !4152
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECs7OITKvp9Irj_4perf.exit.i, label %bb.d, !dbg !4152

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.b, !4156, !DIExpression(), !4162)
    #dbg_value(ptr %i.b, !4164, !DIExpression(), !4169)
    #dbg_value(i64 1, !4171, !DIExpression(), !4181)
    #dbg_value(i8 1, !4180, !DIExpression(), !4181)
    #dbg_value(i64 1, !4183, !DIExpression(), !4193)
    #dbg_value(i8 1, !4190, !DIExpression(), !4193)
    #dbg_value(ptr %i.d, !4179, !DIExpression(), !4195)
    #dbg_value(ptr %i.d, !4189, !DIExpression(), !4193)
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !4196, !noalias !4197
  %i.g = icmp eq i64 %i.f, 1, !dbg !4202
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECs7OITKvp9Irj_4perf.exit.i, !dbg !4202

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !4203, !DIExpression(), !4208)
  fence acquire, !dbg !4210
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECs7OITKvp9Irj_4perf.exit.i unwind label %bb.i, !dbg !4211

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4212), !dbg !4138
    #dbg_value(ptr %i.b, !4142, !DIExpression(), !4215)
  %i.h = load ptr, ptr %i.b, align 8, !dbg !4217, !alias.scope !4218, !noundef !26 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !4217
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECs7OITKvp9Irj_4perf.exit, label %bb.g, !dbg !4217

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.b, !4156, !DIExpression(), !4219)
    #dbg_value(ptr %i.b, !4164, !DIExpression(), !4221)
    #dbg_value(i64 1, !4171, !DIExpression(), !4223)
    #dbg_value(i8 1, !4180, !DIExpression(), !4223)
    #dbg_value(i64 1, !4183, !DIExpression(), !4225)
    #dbg_value(i8 1, !4190, !DIExpression(), !4225)
    #dbg_value(ptr %i.h, !4179, !DIExpression(), !4227)
    #dbg_value(ptr %i.h, !4189, !DIExpression(), !4225)
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !4228, !noalias !4229
  %i.k = icmp eq i64 %i.j, 1, !dbg !4234
  br i1 %i.k, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECs7OITKvp9Irj_4perf.exit, !dbg !4234

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 2, !4203, !DIExpression(), !4235)
  fence acquire, !dbg !4237
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23, !dbg !4238
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECs7OITKvp9Irj_4perf.exit, !dbg !4238

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !4138
  unreachable, !dbg !4138

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEEEECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.c, !dbg !4138
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4239 {
bb.a:
    #dbg_value(ptr %0, !6020, !DIExpression(), !6023)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6024
  %i.b = load i32, ptr %i.a, align 8, !dbg !6024, !range !6025, !noundef !26
  %i.c = icmp eq i32 %i.b, -1, !dbg !6024
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming5StateECs7OITKvp9Irj_4perf.exit, label %bb.b, !dbg !6024

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming5StateECs7OITKvp9Irj_4perf.exit: ; preds = %bb.s, %bb.r, %bb.a
  ret void, !dbg !6024

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6026), !dbg !6024
    #dbg_value(ptr %0, !6029, !DIExpression(), !6035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6037), !dbg !6040
    #dbg_value(ptr %0, !6041, !DIExpression(), !6047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6049), !dbg !6052
    #dbg_value(ptr %0, !6053, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6063), !dbg !6066
    #dbg_value(ptr %0, !6067, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !6075)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6078), !dbg !6077
    #dbg_value(ptr %i.d, !3973, !DIExpression(), !6081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6083), !dbg !6086
    #dbg_value(ptr %i.d, !3987, !DIExpression(), !6087)
  %i.e = load ptr, ptr %i.d, align 8, !dbg !6089, !alias.scope !6090, !nonnull !26, !align !3998, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !6089
  %i.g = load ptr, ptr %i.f, align 8, !dbg !6089, !noalias !6090, !nonnull !26, !noundef !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6091
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6092
  %i.j = load ptr, ptr %i.i, align 8, !dbg !6092, !alias.scope !6090, !noundef !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6093
  %i.l = load i64, ptr %i.k, align 8, !dbg !6093, !alias.scope !6090, !noundef !26
  invoke void %i.g(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECs7OITKvp9Irj_4perf.exit.i.i.i unwind label %bb.c, !dbg !6089, !inline_history !6094

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6095), !dbg !6066
    #dbg_value(ptr %i.n, !3973, !DIExpression(), !6098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6100), !dbg !6103
    #dbg_value(ptr %i.n, !3987, !DIExpression(), !6104)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6106, !alias.scope !6107, !nonnull !26, !align !3998, !noundef !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32, !dbg !6106
  %i.q = load ptr, ptr %i.p, align 8, !dbg !6106, !noalias !6108, !nonnull !26, !noundef !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !6109
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6110
  %i.t = load ptr, ptr %i.s, align 8, !dbg !6110, !alias.scope !6107, !noundef !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6111
  %i.v = load i64, ptr %i.u, align 8, !dbg !6111, !alias.scope !6107, !noundef !26
  invoke void %i.q(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i unwind label %bb.e, !dbg !6106, !inline_history !4003

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6112), !dbg !6066
    #dbg_value(ptr %i.w, !3973, !DIExpression(), !6115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6117), !dbg !6120
    #dbg_value(ptr %i.w, !3987, !DIExpression(), !6121)
  %i.x = load ptr, ptr %i.w, align 8, !dbg !6123, !alias.scope !6124, !nonnull !26, !align !3998, !noundef !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !6123
  %i.z = load ptr, ptr %i.y, align 8, !dbg !6123, !noalias !6125, !nonnull !26, !noundef !26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !6126
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6127
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !6127, !alias.scope !6124, !noundef !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6128
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !6128, !alias.scope !6124, !noundef !26
  invoke void %i.z(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit3.i.i.i unwind label %bb.d, !dbg !6123, !inline_history !4003

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %i.m, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !6066
    #dbg_value(ptr %i.af, !6129, !DIExpression(), !6135)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %.body.i.i unwind label %bb.e, !dbg !6137

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECs7OITKvp9Irj_4perf.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit3.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialHeaderECs7OITKvp9Irj_4perf.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !6066
    #dbg_value(ptr %i.ah, !6129, !DIExpression(), !6138)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECs7OITKvp9Irj_4perf.exit.i.i unwind label %bb.f, !dbg !6140

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i, %bb.c
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !6066
  unreachable, !dbg !6066

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit3.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !6052

.body.i.i:                                        ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !6052 ; 2 uses
    #dbg_value(ptr %i.ak, !6141, !DIExpression(), !6149)
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !6151, !alias.scope !6152, !noundef !26
  %i.am = icmp eq ptr %i.al, null, !dbg !6151
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECs7OITKvp9Irj_4perf.exit.i.i, label %bb.g, !dbg !6151

bb.g:                                             ; preds = %.body.i.i
    #dbg_value(ptr %i.ak, !6129, !DIExpression(), !6155)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECs7OITKvp9Irj_4perf.exit.i.i unwind label %bb.n, !dbg !6157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdIYt8sV98we_5bytes5bytes5BytesECs7OITKvp9Irj_4perf.exit3.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !6052 ; 2 uses
    #dbg_value(ptr %i.an, !6141, !DIExpression(), !6158)
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !6160, !alias.scope !6161, !noundef !26
  %i.ap = icmp eq ptr %i.ao, null, !dbg !6160
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECs7OITKvp9Irj_4perf.exit6.i.i, label %bb.h, !dbg !6160

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto6packet13InitialPacketECs7OITKvp9Irj_4perf.exit.i.i
    #dbg_value(ptr %i.an, !6129, !DIExpression(), !6164)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutEECs7OITKvp9Irj_4perf.exit6.i.i unwind label %bb.i, !dbg !6166
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf:bb.a
  %i.e = icmp eq i64 %i.d, 1, !dbg !7076
  br i1 %i.e, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit, !dbg !7076

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !4203, !DIExpression(), !7077)
  fence acquire, !dbg !7079
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit unwind label %bb.h, !dbg !7080

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7081), !dbg !7027
    #dbg_value(ptr %0, !7031, !DIExpression(), !7084)
  %i.f = load ptr, ptr %0, align 8, !dbg !7086, !alias.scope !7081, !noundef !26 ; 2 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !7086
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit2, label %bb.f, !dbg !7086

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !7042, !DIExpression(), !7087)
    #dbg_value(ptr %0, !7050, !DIExpression(), !7089)
    #dbg_value(i64 1, !7055, !DIExpression(), !7091)
    #dbg_value(i8 1, !7059, !DIExpression(), !7091)
    #dbg_value(i64 1, !7062, !DIExpression(), !7093)
    #dbg_value(i8 1, !7066, !DIExpression(), !7093)
    #dbg_value(ptr %i.f, !7058, !DIExpression(), !7095)
    #dbg_value(ptr %i.f, !7065, !DIExpression(), !7093)
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !7096, !noalias !7097
  %i.i = icmp eq i64 %i.h, 1, !dbg !7102
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit2, !dbg !7102

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !4203, !DIExpression(), !7103)
  fence acquire, !dbg !7105
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23, !dbg !7106
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit2, !dbg !7106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void, !dbg !7027

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !7027
  unreachable, !dbg !7027

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEEEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a, !dbg !7027
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EEB1B_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7107 {
bb.a:
    #dbg_value(ptr %0, !10702, !DIExpression(), !10705)
  %i.a = load i32, ptr %0, align 8, !dbg !10706, !range !10707, !noundef !26
  switch i32 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EBH_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.ag
  ], !dbg !10706

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EBH_.exit: ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf.exit.i, %bb.b, %bb.a
  ret void, !dbg !10706

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10706 ; 5 uses
    #dbg_value(ptr %i.b, !10708, !DIExpression(DW_OP_deref), !10791)
    #dbg_value(ptr poison, !10768, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !10791)
    #dbg_value(ptr poison, !10769, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !10793)
    #dbg_value(ptr poison, !10771, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !10794)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !10795
  %i.d = load i8, ptr %i.c, align 8, !dbg !10795, !range !10796, !noundef !26
  switch i8 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EBH_.exit [
    i8 0, label %bb.c
    i8 3, label %bb.i
  ], !dbg !10795

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.b, !10797, !DIExpression(), !10805)
    #dbg_value(ptr %i.b, !10807, !DIExpression(), !10815)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.d, !dbg !10817

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10818), !dbg !10817
    #dbg_value(ptr %i.b, !10821, !DIExpression(), !10829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10831), !dbg !10834
    #dbg_value(ptr %i.b, !10835, !DIExpression(), !10838)
    #dbg_value(ptr %i.b, !10840, !DIExpression(), !10848)
    #dbg_value(i64 1, !10850, !DIExpression(), !10855)
    #dbg_value(i8 1, !10854, !DIExpression(), !10855)
    #dbg_value(i64 1, !10857, !DIExpression(), !10862)
    #dbg_value(i8 1, !10861, !DIExpression(), !10862)
  %i.f = load ptr, ptr %i.b, align 8, !dbg !10864, !alias.scope !10871, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.f, !10853, !DIExpression(), !10876)
    #dbg_value(ptr %i.f, !10860, !DIExpression(), !10862)
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !10877, !noalias !10878
  %i.h = icmp eq i64 %i.g, 1, !dbg !10879
  br i1 %i.h, label %bb.e, label %.body.i, !dbg !10879

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !4203, !DIExpression(), !10880)
  fence acquire, !dbg !10882
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %.body.i unwind label %bb.h, !dbg !10883

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10884), !dbg !10817
    #dbg_value(ptr %i.b, !10821, !DIExpression(), !10887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10889), !dbg !10892
    #dbg_value(ptr %i.b, !10835, !DIExpression(), !10893)
    #dbg_value(ptr %i.b, !10840, !DIExpression(), !10895)
    #dbg_value(i64 1, !10850, !DIExpression(), !10897)
    #dbg_value(i8 1, !10854, !DIExpression(), !10897)
    #dbg_value(i64 1, !10857, !DIExpression(), !10899)
    #dbg_value(i8 1, !10861, !DIExpression(), !10899)
  %i.i = load ptr, ptr %i.b, align 8, !dbg !10901, !alias.scope !10903, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.i, !10853, !DIExpression(), !10904)
    #dbg_value(ptr %i.i, !10860, !DIExpression(), !10899)
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !10905, !noalias !10906
  %i.k = icmp eq i64 %i.j, 1, !dbg !10907
  br i1 %i.k, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf.exit.i, !dbg !10907

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !4203, !DIExpression(), !10908)
  fence acquire, !dbg !10910
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf.exit.i unwind label %bb.t, !dbg !10911

bb.h:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !10817
  unreachable, !dbg !10817

bb.i:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10912 ; 3 uses
    #dbg_value(ptr %i.m, !10913, !DIExpression(), !10921)
    #dbg_value(ptr %i.m, !10923, !DIExpression(), !10931)
    #dbg_value(ptr %i.m, !10933, !DIExpression(), !10941)
  invoke void @_RNvXs0_NvNtNtNtCsar2VadbF9t7_5tokio7runtime4time5entry1__NtB7_10TimerEntryNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.m)
          to label %bb.l unwind label %bb.j, !dbg !10943

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10943 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10944), !dbg !10943
    #dbg_value(ptr %i.o, !10947, !DIExpression(), !10955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10957), !dbg !10960
    #dbg_value(ptr %i.o, !10961, !DIExpression(), !10967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10969), !dbg !10972
    #dbg_value(ptr %i.o, !10973, !DIExpression(), !10976)
    #dbg_value(ptr %i.o, !10978, !DIExpression(), !10986)
    #dbg_value(i64 1, !10988, !DIExpression(), !10993)
    #dbg_value(i8 1, !10992, !DIExpression(), !10993)
    #dbg_value(i64 1, !10995, !DIExpression(), !11000)
    #dbg_value(i8 1, !10999, !DIExpression(), !11000)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11002, !alias.scope !11009, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.p, !10991, !DIExpression(), !11010)
    #dbg_value(ptr %i.p, !10998, !DIExpression(), !11000)
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !11011, !noalias !11009
  %i.r = icmp eq i64 %i.q, 1, !dbg !11012
  br i1 %i.r, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i, !dbg !11012

bb.k:                                             ; preds = %bb.j
    #dbg_value(i8 2, !4203, !DIExpression(), !11013)
  fence acquire, !dbg !11015
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i unwind label %bb.s, !dbg !11016

bb.l:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10943 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11017), !dbg !10943
    #dbg_value(ptr %i.s, !10947, !DIExpression(), !11020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11022), !dbg !11025
    #dbg_value(ptr %i.s, !10961, !DIExpression(), !11026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11028), !dbg !11031
    #dbg_value(ptr %i.s, !10973, !DIExpression(), !11032)
    #dbg_value(ptr %i.s, !10978, !DIExpression(), !11034)
    #dbg_value(i64 1, !10988, !DIExpression(), !11036)
    #dbg_value(i8 1, !10992, !DIExpression(), !11036)
    #dbg_value(i64 1, !10995, !DIExpression(), !11038)
    #dbg_value(i8 1, !10999, !DIExpression(), !11038)
  %i.t = load ptr, ptr %i.s, align 8, !dbg !11040, !alias.scope !11042, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.t, !10991, !DIExpression(), !11043)
    #dbg_value(ptr %i.t, !10998, !DIExpression(), !11038)
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !11044, !noalias !11042
  %i.v = icmp eq i64 %i.u, 1, !dbg !11045
  br i1 %i.v, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit4.i.i.i.i, !dbg !11045

bb.m:                                             ; preds = %bb.l
    #dbg_value(i8 2, !4203, !DIExpression(), !11046)
  fence acquire, !dbg !11048
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit4.i.i.i.i unwind label %bb.p, !dbg !11049

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.p, %bb.k, %bb.j
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %i.n, %bb.k ], [ %i.n, %bb.j ] ; 3 uses
    #dbg_value(ptr %i.m, !11050, !DIExpression(), !11058)
  %i.w = load i64, ptr %i.m, align 8, !dbg !11060, !range !1026, !noundef !26
  %1 = trunc nuw i64 %i.w to i1, !dbg !11060
  br i1 %1, label %bb.n, label %.body6.i, !dbg !11060

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i
  %i.x = getelementptr i8, ptr %0, i64 80, !dbg !11060
  %.val.i.i.i.i.i = load ptr, ptr %i.x, align 8, !dbg !11060, !align !3998, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !11061, !DIExpression(), !11067)
    #dbg_value(ptr poison, !11069, !DIExpression(), !11077)
    #dbg_value(ptr poison, !11079, !DIExpression(), !11085)
    #dbg_value(ptr poison, !11087, !DIExpression(), !11095)
    #dbg_value(ptr poison, !11097, !DIExpression(), !11105)
    #dbg_value(ptr poison, !11107, !DIExpression(), !11113)
  %i.y = icmp eq ptr %.val.i.i.i.i.i, null, !dbg !11115
  br i1 %i.y, label %.body6.i, label %bb.o, !dbg !11115

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %0, i64 88, !dbg !11060
  %.val1.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !11060
    #dbg_value(ptr poison, !11116, !DIExpression(), !11122)
    #dbg_value(ptr poison, !11124, !DIExpression(), !11129)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24, !dbg !11131
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !11131, !nonnull !26, !noundef !26
  invoke void %i.ab(ptr noundef %.val1.i.i.i.i.i)
          to label %.body6.i unwind label %bb.s, !dbg !11131, !inline_history !11132

bb.p:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit4.i.i.i.i: ; preds = %bb.m, %bb.l
    #dbg_value(ptr %i.m, !11050, !DIExpression(), !11133)
  %i.ad = load i64, ptr %i.m, align 8, !dbg !11135, !range !1026, !noundef !26
  %2 = trunc nuw i64 %i.ad to i1, !dbg !11135
  br i1 %2, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i, !dbg !11135

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit4.i.i.i.i
  %i.ae = getelementptr i8, ptr %0, i64 80, !dbg !11135
  %.val.i6.i.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !11135, !align !3998, !noundef !26 ; 2 uses
    #dbg_value(ptr poison, !11061, !DIExpression(), !11136)
    #dbg_value(ptr poison, !11069, !DIExpression(), !11138)
    #dbg_value(ptr poison, !11079, !DIExpression(), !11140)
    #dbg_value(ptr poison, !11087, !DIExpression(), !11142)
    #dbg_value(ptr poison, !11097, !DIExpression(), !11144)
    #dbg_value(ptr poison, !11107, !DIExpression(), !11146)
  %i.af = icmp eq ptr %.val.i6.i.i.i.i, null, !dbg !11148
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i, label %bb.r, !dbg !11148

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr i8, ptr %0, i64 88, !dbg !11135
  %.val1.i7.i.i.i.i = load ptr, ptr %i.ag, align 8, !dbg !11135
    #dbg_value(ptr poison, !11116, !DIExpression(), !11149)
    #dbg_value(ptr poison, !11124, !DIExpression(), !11151)
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i, i64 24, !dbg !11153
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !11153, !nonnull !26, !noundef !26
  invoke void %i.ai(ptr noundef %.val1.i7.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i unwind label %bb.x, !dbg !11153, !inline_history !11154

bb.s:                                             ; preds = %bb.o, %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !10943
  unreachable, !dbg !10943

bb.t:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !10795

.body.i:                                          ; preds = %bb.t, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.e, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10795 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11155), !dbg !10795
    #dbg_value(ptr %i.al, !11158, !DIExpression(), !11166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11168), !dbg !11171
    #dbg_value(ptr %i.al, !11172, !DIExpression(), !11175)
    #dbg_value(ptr %i.al, !11177, !DIExpression(), !11185)
    #dbg_value(i64 1, !11187, !DIExpression(), !11192)
    #dbg_value(i8 1, !11191, !DIExpression(), !11192)
    #dbg_value(i64 1, !11194, !DIExpression(), !11199)
    #dbg_value(i8 1, !11198, !DIExpression(), !11199)
  %i.am = load ptr, ptr %i.al, align 8, !dbg !11201, !alias.scope !11208, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.am, !11190, !DIExpression(), !11209)
    #dbg_value(ptr %i.am, !11197, !DIExpression(), !11199)
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !dbg !11210, !noalias !11208
  %i.ao = icmp eq i64 %i.an, 1, !dbg !11211
  br i1 %i.ao, label %bb.u, label %common.resume.i, !dbg !11211

bb.u:                                             ; preds = %.body.i
    #dbg_value(i8 2, !4203, !DIExpression(), !11212)
  fence acquire, !dbg !11214
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #23
          to label %common.resume.i unwind label %bb.w, !dbg !11215

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10795 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11216), !dbg !10795
    #dbg_value(ptr %i.ap, !11158, !DIExpression(), !11219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11221), !dbg !11224
    #dbg_value(ptr %i.ap, !11172, !DIExpression(), !11225)
    #dbg_value(ptr %i.ap, !11177, !DIExpression(), !11227)
    #dbg_value(i64 1, !11187, !DIExpression(), !11229)
    #dbg_value(i8 1, !11191, !DIExpression(), !11229)
    #dbg_value(i64 1, !11194, !DIExpression(), !11231)
    #dbg_value(i8 1, !11198, !DIExpression(), !11231)
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !11233, !alias.scope !11235, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.aq, !11190, !DIExpression(), !11236)
    #dbg_value(ptr %i.aq, !11197, !DIExpression(), !11231)
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !dbg !11237, !noalias !11235
  %i.as = icmp eq i64 %i.ar, 1, !dbg !11238
  br i1 %i.as, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EBH_.exit, !dbg !11238

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf.exit.i
    #dbg_value(i8 2, !4203, !DIExpression(), !11239)
  fence acquire, !dbg !11241
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #23, !dbg !11242
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtCs7OITKvp9Irj_4perf6server10conn_stats0EBH_.exit, !dbg !11242

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i, %bb.y, %bb.u
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !10795
  unreachable, !dbg !10795

common.resume.i:                                  ; preds = %bb.ac, %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i, %bb.u, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i ], [ %eh.lpad-body.i, %bb.u ], [ %i.bg, %bb.ac ], [ %i.bg, %bb.ab ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !10791

bb.x:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i, !dbg !11243

.body6.i:                                         ; preds = %bb.x, %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.au, %bb.x ], [ %.pn.i.i.i.i, %bb.o ], [ %.pn.i.i.i.i, %bb.n ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11243 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11244), !dbg !11243
    #dbg_value(ptr %i.av, !11158, !DIExpression(), !11247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11249), !dbg !11252
    #dbg_value(ptr %i.av, !11172, !DIExpression(), !11253)
    #dbg_value(ptr %i.av, !11177, !DIExpression(), !11255)
    #dbg_value(i64 1, !11187, !DIExpression(), !11257)
    #dbg_value(i8 1, !11191, !DIExpression(), !11257)
    #dbg_value(i64 1, !11194, !DIExpression(), !11259)
    #dbg_value(i8 1, !11198, !DIExpression(), !11259)
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !11261, !alias.scope !11263, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.aw, !11190, !DIExpression(), !11264)
    #dbg_value(ptr %i.aw, !11197, !DIExpression(), !11259)
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !dbg !11265, !noalias !11263
  %i.ay = icmp eq i64 %i.ax, 1, !dbg !11266
  br i1 %i.ay, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i, !dbg !11266

bb.y:                                             ; preds = %.body6.i
    #dbg_value(i8 2, !4203, !DIExpression(), !11267)
  fence acquire, !dbg !11269
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i unwind label %bb.w, !dbg !11270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.r, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime9scheduler6HandleECs7OITKvp9Irj_4perf.exit4.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11243 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11271), !dbg !11243
    #dbg_value(ptr %i.az, !11158, !DIExpression(), !11274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11276), !dbg !11279
    #dbg_value(ptr %i.az, !11172, !DIExpression(), !11280)
    #dbg_value(ptr %i.az, !11177, !DIExpression(), !11282)
    #dbg_value(i64 1, !11187, !DIExpression(), !11284)
    #dbg_value(i8 1, !11191, !DIExpression(), !11284)
    #dbg_value(i64 1, !11194, !DIExpression(), !11286)
    #dbg_value(i8 1, !11198, !DIExpression(), !11286)
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !11288, !alias.scope !11290, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.ba, !11190, !DIExpression(), !11291)
    #dbg_value(ptr %i.ba, !11197, !DIExpression(), !11286)
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !11292, !noalias !11290
  %i.bc = icmp eq i64 %i.bb, 1, !dbg !11293
  br i1 %i.bc, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit13.i, !dbg !11293

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i
    #dbg_value(i8 2, !4203, !DIExpression(), !11294)
  fence acquire, !dbg !11296
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7OITKvp9Irj_4perf6server3OptE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit13.i unwind label %bb.aa, !dbg !11297

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i: ; preds = %bb.aa, %bb.y, %.body6.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %eh.lpad-body7.i, %bb.y ], [ %eh.lpad-body7.i, %.body6.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11298
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection10ConnectionECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bd) #21
          to label %common.resume.i unwind label %bb.w, !dbg !11298

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit11.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit13.i: ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECs7OITKvp9Irj_4perf.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11298 ; 5 uses
    #dbg_value(ptr %i.bf, !10797, !DIExpression(), !11299)
    #dbg_value(ptr %i.bf, !10807, !DIExpression(), !11301)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %bb.ad unwind label %bb.ab, !dbg !11303

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit13.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11304), !dbg !11303
    #dbg_value(ptr %i.bf, !10821, !DIExpression(), !11307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11309), !dbg !11312
    #dbg_value(ptr %i.bf, !10835, !DIExpression(), !11313)
    #dbg_value(ptr %i.bf, !10840, !DIExpression(), !11315)
    #dbg_value(i64 1, !10850, !DIExpression(), !11317)
    #dbg_value(i8 1, !10854, !DIExpression(), !11317)
    #dbg_value(i64 1, !10857, !DIExpression(), !11319)
    #dbg_value(i8 1, !10861, !DIExpression(), !11319)
  %i.bh = load ptr, ptr %i.bf, align 8, !dbg !11321, !alias.scope !11323, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.bh, !10853, !DIExpression(), !11328)
    #dbg_value(ptr %i.bh, !10860, !DIExpression(), !11319)
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !11329, !noalias !11330
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !11331
  br i1 %i.bj, label %bb.ac, label %common.resume.i, !dbg !11331

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i8 2, !4203, !DIExpression(), !11332)
  fence acquire, !dbg !11334
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #23
          to label %common.resume.i unwind label %bb.af, !dbg !11335

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs7OITKvp9Irj_4perf6server3OptEEB1d_.exit13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11336), !dbg !11303
    #dbg_value(ptr %i.bf, !10821, !DIExpression(), !11339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11341), !dbg !11344
    #dbg_value(ptr %i.bf, !10835, !DIExpression(), !11345)
    #dbg_value(ptr %i.bf, !10840, !DIExpression(), !11347)
    #dbg_value(i64 1, !10850, !DIExpression(), !11349)
    #dbg_value(i8 1, !10854, !DIExpression(), !11349)
    #dbg_value(i64 1, !10857, !DIExpression(), !11351)
    #dbg_value(i8 1, !10861, !DIExpression(), !11351)
end_hunk_3
begin_hunk_4_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EBJ_:bb.a
    #dbg_value(ptr poison, !16062, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 384), !16166)
    #dbg_value(ptr poison, !16065, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 408), !16168)
    #dbg_value(ptr poison, !16067, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 392), !16169)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !16170
  %i.g = load i8, ptr %i.f, align 8, !dbg !16170, !range !14913, !noundef !26
  switch i8 %i.g, label %common.ret [
    i8 0, label %bb.g
    i8 3, label %bb.k
    i8 4, label %bb.ap
  ], !dbg !16170

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.e, !16043, !DIExpression(), !16171)
  invoke void @_RNvXs_NtCsB8MOEg02Qk_5quinn8incomingNtB4_8IncomingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %bb.i unwind label %bb.h, !dbg !16173

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e) #21
          to label %.body.i unwind label %bb.j, !dbg !16173

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming8IncomingECs7OITKvp9Irj_4perf.exit.i unwind label %bb.bp, !dbg !16173

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16173
  unreachable, !dbg !16173

bb.k:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !16174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16175), !dbg !16174
    #dbg_value(ptr %i.j, !16178, !DIExpression(), !16186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16188), !dbg !16191
    #dbg_value(ptr %i.j, !16192, !DIExpression(), !16200)
  %i.k = load i64, ptr %i.j, align 8, !dbg !16202, !range !16203, !alias.scope !16204, !noundef !26 ; 4 uses
  %i.l = icmp eq i64 %i.k, -1, !dbg !16202
  br i1 %i.l, label %bb.l, label %bb.ak, !dbg !16202

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 816, !dbg !16202 ; 2 uses
    #dbg_value(ptr %i.m, !16205, !DIExpression(), !16212)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !16214 ; 6 uses
    #dbg_value(ptr %i.n, !16215, !DIExpression(), !16223)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16225, !alias.scope !16226, !noundef !26
  %i.p = icmp eq ptr %i.o, null, !dbg !16225
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i, label %bb.m, !dbg !16225

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.n, !10807, !DIExpression(), !16231)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.p unwind label %bb.n, !dbg !16233

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16234), !dbg !16233
    #dbg_value(ptr %i.n, !10821, !DIExpression(), !16237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16239), !dbg !16242
    #dbg_value(ptr %i.n, !10835, !DIExpression(), !16243)
    #dbg_value(ptr %i.n, !10840, !DIExpression(), !16245)
    #dbg_value(i64 1, !10850, !DIExpression(), !16247)
    #dbg_value(i8 1, !10854, !DIExpression(), !16247)
    #dbg_value(i64 1, !10857, !DIExpression(), !16249)
    #dbg_value(i8 1, !10861, !DIExpression(), !16249)
  %i.r = load ptr, ptr %i.n, align 8, !dbg !16251, !alias.scope !16253, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.r, !10853, !DIExpression(), !16256)
    #dbg_value(ptr %i.r, !10860, !DIExpression(), !16249)
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !16257, !noalias !16258
  %i.t = icmp eq i64 %i.s, 1, !dbg !16259
  br i1 %i.t, label %bb.o, label %.body.i.i.i.i, !dbg !16259

bb.o:                                             ; preds = %bb.n
    #dbg_value(i8 2, !4203, !DIExpression(), !16260)
  fence acquire, !dbg !16262
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #23
          to label %.body.i.i.i.i unwind label %bb.r, !dbg !16263

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16264), !dbg !16233
    #dbg_value(ptr %i.n, !10821, !DIExpression(), !16267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16269), !dbg !16272
    #dbg_value(ptr %i.n, !10835, !DIExpression(), !16273)
    #dbg_value(ptr %i.n, !10840, !DIExpression(), !16275)
    #dbg_value(i64 1, !10850, !DIExpression(), !16277)
    #dbg_value(i8 1, !10854, !DIExpression(), !16277)
    #dbg_value(i64 1, !10857, !DIExpression(), !16279)
    #dbg_value(i8 1, !10861, !DIExpression(), !16279)
  %i.u = load ptr, ptr %i.n, align 8, !dbg !16281, !alias.scope !16283, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.u, !10853, !DIExpression(), !16284)
    #dbg_value(ptr %i.u, !10860, !DIExpression(), !16279)
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !dbg !16285, !noalias !16286
  %i.w = icmp eq i64 %i.v, 1, !dbg !16287
  br i1 %i.w, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i, !dbg !16287

bb.q:                                             ; preds = %bb.p
    #dbg_value(i8 2, !4203, !DIExpression(), !16288)
  fence acquire, !dbg !16290
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i unwind label %bb.s, !dbg !16291

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16233
  unreachable, !dbg !16233

bb.s:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !16214

.body.i.i.i.i:                                    ; preds = %bb.s, %bb.o, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.q, %bb.o ], [ %i.q, %bb.n ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !16214
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(8) %i.z) #21
          to label %.body4.i.i.i.i unwind label %bb.aj, !dbg !16214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !16214 ; 5 uses
    #dbg_value(ptr %i.aa, !7023, !DIExpression(), !16292)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiverbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.w unwind label %bb.t, !dbg !16294

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16295), !dbg !16294
    #dbg_value(ptr %i.aa, !7031, !DIExpression(), !16298)
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !16300, !alias.scope !16301, !noundef !26 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !16300
  br i1 %i.ad, label %.body4.i.i.i.i, label %bb.u, !dbg !16300

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.aa, !7042, !DIExpression(), !16304)
    #dbg_value(ptr %i.aa, !7050, !DIExpression(), !16306)
    #dbg_value(i64 1, !7055, !DIExpression(), !16308)
    #dbg_value(i8 1, !7059, !DIExpression(), !16308)
    #dbg_value(i64 1, !7062, !DIExpression(), !16310)
    #dbg_value(i8 1, !7066, !DIExpression(), !16310)
    #dbg_value(ptr %i.ac, !7058, !DIExpression(), !16312)
    #dbg_value(ptr %i.ac, !7065, !DIExpression(), !16310)
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !dbg !16313, !noalias !16314
  %i.af = icmp eq i64 %i.ae, 1, !dbg !16319
  br i1 %i.af, label %bb.v, label %.body4.i.i.i.i, !dbg !16319

bb.v:                                             ; preds = %bb.u
    #dbg_value(i8 2, !4203, !DIExpression(), !16320)
  fence acquire, !dbg !16322
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #23
          to label %.body4.i.i.i.i unwind label %bb.z, !dbg !16323

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECs7OITKvp9Irj_4perf.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16324), !dbg !16294
    #dbg_value(ptr %i.aa, !7031, !DIExpression(), !16327)
  %i.ag = load ptr, ptr %i.aa, align 8, !dbg !16329, !alias.scope !16330, !noundef !26 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null, !dbg !16329
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf.exit.i.i.i.i, label %bb.x, !dbg !16329

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.aa, !7042, !DIExpression(), !16331)
    #dbg_value(ptr %i.aa, !7050, !DIExpression(), !16333)
    #dbg_value(i64 1, !7055, !DIExpression(), !16335)
    #dbg_value(i8 1, !7059, !DIExpression(), !16335)
    #dbg_value(i64 1, !7062, !DIExpression(), !16337)
    #dbg_value(i8 1, !7066, !DIExpression(), !16337)
    #dbg_value(ptr %i.ag, !7058, !DIExpression(), !16339)
    #dbg_value(ptr %i.ag, !7065, !DIExpression(), !16337)
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !dbg !16340, !noalias !16341
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !16346
  br i1 %i.aj, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf.exit.i.i.i.i, !dbg !16346

bb.y:                                             ; preds = %bb.x
    #dbg_value(i8 2, !4203, !DIExpression(), !16347)
  fence acquire, !dbg !16349
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf.exit.i.i.i.i unwind label %bb.aa, !dbg !16350

bb.z:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16294
  unreachable, !dbg !16294

.body4.i.i.i.i:                                   ; preds = %bb.aa, %bb.v, %bb.u, %bb.t, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.al, %bb.aa ], [ %i.ab, %bb.v ], [ %i.ab, %bb.u ], [ %i.ab, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #21
          to label %.body7.i unwind label %bb.aj, !dbg !16214

bb.aa:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
    #dbg_value(ptr %i.m, !4125, !DIExpression(), !16351)
  %i.am = load i64, ptr %i.m, align 8, !dbg !16353, !range !1026, !alias.scope !16354, !noundef !26
  %1 = trunc nuw i64 %i.am to i1, !dbg !16353
  br i1 %1, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i, !dbg !16353

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECs7OITKvp9Irj_4perf.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 824, !dbg !16353 ; 5 uses
    #dbg_value(ptr %i.an, !4130, !DIExpression(), !16357)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.af unwind label %bb.ac, !dbg !16359

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16360), !dbg !16359
    #dbg_value(ptr %i.an, !4142, !DIExpression(), !16363)
  %i.ap = load ptr, ptr %i.an, align 8, !dbg !16365, !alias.scope !16366, !noundef !26 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null, !dbg !16365
  br i1 %i.aq, label %.body7.i, label %bb.ad, !dbg !16365

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.an, !4156, !DIExpression(), !16369)
    #dbg_value(ptr %i.an, !4164, !DIExpression(), !16371)
    #dbg_value(i64 1, !4171, !DIExpression(), !16373)
    #dbg_value(i8 1, !4180, !DIExpression(), !16373)
    #dbg_value(i64 1, !4183, !DIExpression(), !16375)
    #dbg_value(i8 1, !4190, !DIExpression(), !16375)
    #dbg_value(ptr %i.ap, !4179, !DIExpression(), !16377)
    #dbg_value(ptr %i.ap, !4189, !DIExpression(), !16375)
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !dbg !16378, !noalias !16379
  %i.as = icmp eq i64 %i.ar, 1, !dbg !16384
  br i1 %i.as, label %bb.ae, label %.body7.i, !dbg !16384

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i8 2, !4203, !DIExpression(), !16385)
  fence acquire, !dbg !16387
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #23
          to label %.body7.i unwind label %bb.ai, !dbg !16388

bb.af:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16389), !dbg !16359
    #dbg_value(ptr %i.an, !4142, !DIExpression(), !16392)
  %i.at = load ptr, ptr %i.an, align 8, !dbg !16394, !alias.scope !16395, !noundef !26 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !16394
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i, label %bb.ag, !dbg !16394

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.an, !4156, !DIExpression(), !16396)
    #dbg_value(ptr %i.an, !4164, !DIExpression(), !16398)
    #dbg_value(i64 1, !4171, !DIExpression(), !16400)
    #dbg_value(i8 1, !4180, !DIExpression(), !16400)
    #dbg_value(i64 1, !4183, !DIExpression(), !16402)
    #dbg_value(i8 1, !4190, !DIExpression(), !16402)
    #dbg_value(ptr %i.at, !4179, !DIExpression(), !16404)
    #dbg_value(ptr %i.at, !4189, !DIExpression(), !16402)
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !16405, !noalias !16406
  %i.aw = icmp eq i64 %i.av, 1, !dbg !16411
  br i1 %i.aw, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i, !dbg !16411

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(i8 2, !4203, !DIExpression(), !16412)
  fence acquire, !dbg !16414
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i unwind label %bb.bt, !dbg !16415

bb.ai:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16359
  unreachable, !dbg !16359

bb.aj:                                            ; preds = %.body4.i.i.i.i, %.body.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16214
  unreachable, !dbg !16214

bb.ak:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16416), !dbg !16202
    #dbg_value(ptr %i.j, !16419, !DIExpression(), !16425)
  %i.az = icmp ne i64 %i.k, 4, !dbg !16427
  tail call void @llvm.assume(i1 %i.az), !dbg !16427
  %i.ba = add nsw i64 %i.k, -2, !dbg !16427
  %.inv.i.i.i.i = icmp samesign ult i64 %i.k, 2, !dbg !16427
  %i.bb = select i1 %.inv.i.i.i.i, i64 2, i64 %i.ba, !dbg !16427
  switch i64 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i [
    i64 1, label %bb.al
    i64 2, label %.invoke.i
    i64 3, label %bb.ao
  ], !dbg !16427

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.j, !16428, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16436)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !16438 ; 3 uses
    #dbg_value(ptr %i.bc, !16439, !DIExpression(), !16445)
    #dbg_value(ptr %i.bc, !16447, !DIExpression(), !16453)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECs7OITKvp9Irj_4perf.exit.i.i.i.i unwind label %bb.am, !dbg !16455

bb.am:                                            ; preds = %bb.al
  %i.bd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bc, !16456, !DIExpression(), !16464)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body7.i unwind label %bb.an, !dbg !16466

bb.an:                                            ; preds = %bb.am
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !16455
  unreachable, !dbg !16455

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.al
    #dbg_value(ptr %i.bc, !16456, !DIExpression(), !16467)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i unwind label %bb.bt, !dbg !16469

bb.ao:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.bf, !16470, !DIExpression(), !16478)
    #dbg_value(ptr %i.bf, !3973, !DIExpression(), !16480)
    #dbg_value(ptr %i.bf, !3987, !DIExpression(), !16482)
  br label %.invoke.i, !dbg !16484

.invoke.i:                                        ; preds = %bb.ak, %bb.ao
  %.sink = phi i64 [ 816, %bb.ao ], [ 824, %bb.ak ]
  %.sink.i = phi i64 [ 448, %bb.ao ], [ 456, %bb.ak ]
  %.sink28.i = phi i64 [ 432, %bb.ao ], [ 440, %bb.ak ]
  %.sink27.i = phi i64 [ 440, %bb.ao ], [ 448, %bb.ak ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !16427
  %.sink30.i = load ptr, ptr %i.bf, align 8, !dbg !16427, !alias.scope !16485, !nonnull !26, !align !3998, !noundef !26
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 32, !dbg !16427
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !16427, !noalias !16485, !nonnull !26, !noundef !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink.i, !dbg !16427
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink28.i, !dbg !16427
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !16427, !alias.scope !16485, !noundef !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink27.i, !dbg !16427
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !16427, !alias.scope !16485, !noundef !26
  invoke void %i.bh(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bk, i64 noundef %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECs7OITKvp9Irj_4perf.exit.i unwind label %bb.bt, !dbg !16427, !inline_history !16486

bb.ap:                                            ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 800, !dbg !16487
    #dbg_value(ptr %i.bn, !16488, !DIExpression(), !16495)
    #dbg_value(ptr %i.bn, !16497, !DIExpression(), !16505)
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !16507, !range !10707, !noundef !26
  switch i32 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EEB1B_.exit.i.i [
    i32 0, label %bb.aq
    i32 1, label %bb.bi
  ], !dbg !16507

bb.aq:                                            ; preds = %bb.ap
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !16507 ; 5 uses
    #dbg_value(ptr %i.bp, !16508, !DIExpression(DW_OP_deref), !16527)
    #dbg_value(ptr poison, !16515, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !16529)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 896, !dbg !16530
  %i.br = load i8, ptr %i.bq, align 8, !dbg !16530, !range !10796, !noundef !26
  switch i8 %i.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EEB1B_.exit.i.i [
    i8 0, label %bb.ar
    i8 3, label %bb.aw
  ], !dbg !16530

common.ret.sink.split.i.i.i.i:                    ; preds = %bb.bf, %bb.au
  %.sink.i.i.i.i = phi ptr [ %i.bp, %bb.au ], [ %i.cp, %bb.bf ]
  fence acquire, !dbg !16531
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i.i) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EEB1B_.exit.i.i unwind label %bb.bk, !dbg !16537

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %i.bp, !10797, !DIExpression(), !16538)
    #dbg_value(ptr %i.bp, !10807, !DIExpression(), !16540)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.au unwind label %bb.as, !dbg !16542

bb.as:                                            ; preds = %bb.ar
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16543), !dbg !16542
    #dbg_value(ptr %i.bp, !10821, !DIExpression(), !16546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16548), !dbg !16551
    #dbg_value(ptr %i.bp, !10835, !DIExpression(), !16552)
    #dbg_value(ptr %i.bp, !10840, !DIExpression(), !16554)
    #dbg_value(i64 1, !10850, !DIExpression(), !16556)
    #dbg_value(i8 1, !10854, !DIExpression(), !16556)
    #dbg_value(i64 1, !10857, !DIExpression(), !16558)
    #dbg_value(i8 1, !10861, !DIExpression(), !16558)
  %i.bt = load ptr, ptr %i.bp, align 8, !dbg !16560, !alias.scope !16562, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.bt, !10853, !DIExpression(), !16567)
    #dbg_value(ptr %i.bt, !10860, !DIExpression(), !16558)
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !dbg !16568, !noalias !16569
  %i.bv = icmp eq i64 %i.bu, 1, !dbg !16570
  br i1 %i.bv, label %bb.at, label %.body.i.i, !dbg !16570

bb.at:                                            ; preds = %bb.as
    #dbg_value(i8 2, !4203, !DIExpression(), !16571)
  fence acquire, !dbg !16573
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #23
          to label %.body.i.i unwind label %bb.av, !dbg !16574

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16575), !dbg !16542
    #dbg_value(ptr %i.bp, !10821, !DIExpression(), !16578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16580), !dbg !16583
    #dbg_value(ptr %i.bp, !10835, !DIExpression(), !16584)
    #dbg_value(ptr %i.bp, !10840, !DIExpression(), !16586)
end_hunk_4
