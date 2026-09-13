Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/serde-3a54d9bcd9e2e9ba.serde.83f6b63f6cf340ee-cgu.0?download=true
begin_hunk_0_@_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone:bb.a
    #dbg_value(i64 1, !2250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1720)
    #dbg_value(i64 %.val27, !2250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1720)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val27) #14, !dbg !3012, !noalias !2341
  unreachable, !dbg !3012

bb.r:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i
    #dbg_value(i64 %.val27, !2214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2342)
    #dbg_value(ptr %i.be, !2214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2342)
    #dbg_value(ptr %.val, !2234, !DIExpression(), !1655)
    #dbg_value(ptr %.val, !2240, !DIExpression(), !1658)
    #dbg_value(ptr %i.be, !2235, !DIExpression(), !1655)
    #dbg_value(ptr %i.be, !2241, !DIExpression(), !1658)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val27, i1 false), !dbg !3013, !noalias !2343
    #dbg_value(i64 %.val27, !2214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2342)
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbkrgv1XEKBK_5serde.exit, !dbg !3014

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbkrgv1XEKBK_5serde.exit: ; preds = %bb.p, %bb.r
  %.sroa.5.0 = phi ptr [ %i.be, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.p ], !dbg !3015
    #dbg_value(i64 %.val27, !2214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2342)
    #dbg_value(ptr %.sroa.5.0, !2214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2342)
    #dbg_value(i64 %.val27, !2214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2342)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3016
  store i64 %.val27, ptr %i.bg, align 8, !dbg !3016
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3016
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3016
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3016
  store i64 %.val27, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !3016
  br label %bb.ap, !dbg !3017

bb.s:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !2162, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2345)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3018
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !3018, !nonnull !255, !noundef !255
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3018
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !3018, !noundef !255
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3019
  store ptr %i.bi, ptr %i.bl, align 8, !dbg !3019
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3019
  store i64 %i.bk, ptr %i.bm, align 8, !dbg !3019
  br label %bb.ap, !dbg !3020

bb.t:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !2164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3021
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3022
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !3022, !nonnull !255, !noundef !255
  call void @_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo), !dbg !3021
    #dbg_declare(ptr %i.h, !2347, !DIExpression(), !1724)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1728)
    #dbg_value(i64 8, !2356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1731)
    #dbg_value(i64 8, !2360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1734)
    #dbg_value(i64 32, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1728)
    #dbg_value(i64 32, !2356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1731)
    #dbg_value(i64 32, !2360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1734)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2358, !DIExpression(), !1731)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2361, !DIExpression(), !1734)
    #dbg_value(i8 0, !2362, !DIExpression(), !1734)
    #dbg_value(i64 8, !2314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1736)
    #dbg_value(i64 8, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1738)
    #dbg_value(i64 32, !2314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1736)
    #dbg_value(i64 32, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1738)
    #dbg_value(i1 false, !2318, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1736)
    #dbg_value(i64 32, !2319, !DIExpression(), !1739)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !3023, !noalias !2364
  %i.bp = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #11, !dbg !3024, !noalias !2364 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null, !dbg !3025
  br i1 %i.bq, label %bb.u, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentE3newCsbkrgv1XEKBK_5serde.exit26, !dbg !3026, !prof !2365

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #14
          to label %.noexc unwind label %bb.v, !dbg !3027

.noexc:                                           ; preds = %bb.u
  unreachable, !dbg !3027

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentECsbkrgv1XEKBK_5serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #9
          to label %common.resume unwind label %bb.w, !dbg !3028

bb.w:                                             ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #10, !dbg !3029
  unreachable, !dbg !3029

common.resume:                                    ; preds = %.body57, %.body, %bb.z, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %.body ], [ %i.br, %bb.v ], [ %i.by, %bb.z ], [ %eh.lpad-body63, %.body57 ]
  resume { ptr, i32 } %common.resume.op, !dbg !2171

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentE3newCsbkrgv1XEKBK_5serde.exit26: ; preds = %bb.t
    #dbg_value(ptr %i.bp, !2351, !DIExpression(), !1742)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !3030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3031
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3032
  store ptr %i.bp, ptr %i.bt, align 8, !dbg !3032
  br label %bb.ap, !dbg !3033

bb.x:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !2165, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3034
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3035
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !3035, !nonnull !255, !noundef !255
  call void @_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv), !dbg !3034
    #dbg_declare(ptr %i.g, !2347, !DIExpression(), !1744)
    #dbg_value(i64 8, !2353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1746)
    #dbg_value(i64 8, !2356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1748)
    #dbg_value(i64 8, !2360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1750)
    #dbg_value(i64 32, !2353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1746)
    #dbg_value(i64 32, !2356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1748)
    #dbg_value(i64 32, !2360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1750)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2358, !DIExpression(), !1748)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2361, !DIExpression(), !1750)
    #dbg_value(i8 0, !2362, !DIExpression(), !1750)
    #dbg_value(i64 8, !2314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1752)
    #dbg_value(i64 8, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1754)
    #dbg_value(i64 32, !2314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1752)
    #dbg_value(i64 32, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1754)
    #dbg_value(i1 false, !2318, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1752)
    #dbg_value(i64 32, !2319, !DIExpression(), !1755)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !3036, !noalias !2367
  %i.bw = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #11, !dbg !3037, !noalias !2367 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null, !dbg !3038
  br i1 %i.bx, label %bb.y, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentE3newCsbkrgv1XEKBK_5serde.exit, !dbg !3039, !prof !2365

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #14
          to label %.noexc28 unwind label %bb.z, !dbg !3040

.noexc28:                                         ; preds = %bb.y
  unreachable, !dbg !3040

bb.z:                                             ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentECsbkrgv1XEKBK_5serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g) #9
          to label %common.resume unwind label %bb.aa, !dbg !3041

bb.aa:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #10, !dbg !3042
  unreachable, !dbg !3042

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentE3newCsbkrgv1XEKBK_5serde.exit: ; preds = %bb.x
    #dbg_value(ptr %i.bw, !2351, !DIExpression(), !1758)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3044
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3045
  store ptr %i.bw, ptr %i.ca, align 8, !dbg !3045
  br label %bb.ap, !dbg !3046

bb.ab:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !2167, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2368)
    #dbg_value(ptr %1, !2369, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2377)
    #dbg_value(ptr %1, !2378, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2383)
    #dbg_value(ptr %1, !2384, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2391)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3047
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !3047, !nonnull !255, !noundef !255
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3048
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !3048, !noundef !255 ; 6 uses
    #dbg_value(ptr %i.cc, !2399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2447)
    #dbg_value(ptr %i.cc, !2448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2454)
    #dbg_value(ptr %i.cc, !2456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2461)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2399, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2447)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2448, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2454)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2456, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2461)
    #dbg_value(ptr %i.cc, !2464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2470)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2464, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2470)
    #dbg_declare(ptr %i.f, !2467, !DIExpression(), !1785)
    #dbg_declare(ptr poison, !2471, !DIExpression(), !1790)
    #dbg_declare(ptr poison, !2482, !DIExpression(), !1793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3049, !noalias !2488
    #dbg_value(i64 %i.ce, !2468, !DIExpression(), !1796)
    #dbg_value(i64 %i.ce, !2480, !DIExpression(), !1797)
    #dbg_value(i64 %i.ce, !2475, !DIExpression(), !1798)
    #dbg_value(i64 %i.ce, !2486, !DIExpression(), !1799)
    #dbg_value(i64 %i.ce, !2243, !DIExpression(), !1801)
    #dbg_value(i64 %i.ce, !2489, !DIExpression(), !1804)
    #dbg_declare(ptr poison, !2247, !DIExpression(), !1805)
    #dbg_value(i64 8, !2248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1801)
    #dbg_value(i64 8, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1804)
    #dbg_value(i64 32, !2248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1801)
    #dbg_value(i64 32, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1804)
    #dbg_value(i64 0, !2494, !DIExpression(), !1804)
    #dbg_value(i64 %i.ce, !2263, !DIExpression(), !1807)
    #dbg_value(i64 %i.ce, !2497, !DIExpression(), !1814)
    #dbg_value(i64 %i.ce, !2514, !DIExpression(), !1823)
    #dbg_value(i64 %i.ce, !2533, !DIExpression(), !1827)
    #dbg_value(i64 %i.ce, !2540, !DIExpression(), !1831)
    #dbg_value(i1 false, !2279, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1807)
    #dbg_declare(ptr poison, !2280, !DIExpression(), !1832)
    #dbg_value(i64 8, !2281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1807)
    #dbg_value(i64 32, !2281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1807)
    #dbg_value(i64 32, !2511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1814)
    #dbg_value(i64 32, !2536, !DIExpression(), !1827)
    #dbg_value(i64 32, !2546, !DIExpression(), !1831)
    #dbg_value(i64 8, !2511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1814)
    #dbg_value(ptr poison, !2530, !DIExpression(), !1833)
  %i.cf = shl nuw i64 %i.ce, 5, !dbg !3050        ; 2 uses
    #dbg_value(i1 false, !2538, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1834)
    #dbg_value(i1 false, !2549, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1837)
    #dbg_value(i64 %i.cf, !2531, !DIExpression(), !1838)
    #dbg_value(i64 %i.cf, !2537, !DIExpression(), !1834)
  %.not.i.i = icmp ugt i64 %i.ce, 288230376151711743
  br i1 %.not.i.i, label %bb.ad, label %bb.ac, !dbg !3051, !prof !2554

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i64 8, !2282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1839)
    #dbg_value(i64 %i.cf, !2282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1839)
  %i.cg = icmp eq i64 %i.ce, 0, !dbg !3052
  br i1 %i.cg, label %.noexc33.thread, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i, !dbg !3052

.noexc33.thread:                                  ; preds = %bb.ac
    #dbg_value(i64 0, !2249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1840)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1840)
    #dbg_value(ptr poison, !2493, !DIExpression(), !1841)
    #dbg_value(i1 true, !2557, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1844)
  store i64 0, ptr %i.f, align 8, !dbg !3053, !noalias !2488
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3053
  store ptr inttoptr (i64 8 to ptr), ptr %i.ch, align 8, !dbg !3053, !noalias !2488
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3053
  store i64 0, ptr %i.ci, align 8, !dbg !3053, !noalias !2488
    #dbg_value(ptr %i.f, !2563, !DIExpression(), !1847)
    #dbg_value(ptr %i.cc, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1847)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1847)
    #dbg_value(ptr %i.cc, !2571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2596)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2596)
    #dbg_value(ptr %i.f, !2575, !DIExpression(), !1859)
    #dbg_value(i64 poison, !2576, !DIExpression(), !1860)
    #dbg_value(i64 1, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1860)
    #dbg_value(i64 %i.ce, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1860)
    #dbg_value(i64 %i.ce, !2578, !DIExpression(), !1861)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2588, !DIExpression(), !1862)
    #dbg_value(ptr %i.ci, !2589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1863)
    #dbg_value(i64 0, !2589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1863)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2597, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2609)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2611, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2626)
    #dbg_value(ptr %i.ci, !2597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2609)
    #dbg_value(ptr %i.ci, !2611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2626)
    #dbg_value(i64 0, !2597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2609)
    #dbg_value(i64 0, !2611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2626)
    #dbg_value(ptr %i.cc, !2605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1870)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1870)
    #dbg_value(ptr %i.cc, !2619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1871)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1871)
    #dbg_declare(ptr poison, !2620, !DIExpression(), !1872)
    #dbg_value(ptr %i.ci, !2627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2647)
    #dbg_value(i64 0, !2627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2647)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2627, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2647)
    #dbg_value(ptr %i.cc, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1883)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1883)
    #dbg_declare(ptr poison, !2635, !DIExpression(), !1884)
    #dbg_declare(ptr poison, !2638, !DIExpression(), !1885)
  br label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterB13_ENvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneEE9from_iterB3U_.exit, !dbg !3054

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ac
    #dbg_value(ptr poison, !2302, !DIExpression(), !1887)
    #dbg_value(ptr poison, !2307, !DIExpression(), !1889)
    #dbg_value(i64 8, !2305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1887)
    #dbg_value(i64 8, !2311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1889)
    #dbg_value(i64 %i.cf, !2305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1887)
    #dbg_value(i64 %i.cf, !2311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1889)
    #dbg_value(i8 0, !2312, !DIExpression(), !1889)
    #dbg_value(i64 8, !2314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1891)
    #dbg_value(i64 8, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1893)
    #dbg_value(i64 %i.cf, !2314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1891)
    #dbg_value(i64 %i.cf, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1893)
    #dbg_value(i1 false, !2318, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1891)
    #dbg_value(i64 %i.cf, !2319, !DIExpression(), !1894)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !3055, !noalias !2648
  %i.cj = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 9) 8) #11, !dbg !3056, !noalias !2648 ; 3 uses
    #dbg_value(ptr %i.cj, !2284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1897)
    #dbg_value(i64 poison, !2284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1897)
  %i.ck = icmp eq ptr %i.cj, null, !dbg !3057
  br i1 %i.ck, label %bb.ad, label %.preheader.preheader, !dbg !3058

bb.ad:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i, %bb.ab
  %.sroa.10.0.ph.i = phi i64 [ %i.cf, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i ], [ undef, %bb.ab ]
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.ab ]
    #dbg_value(i64 %.sroa.4.0.ph.i, !2250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1898)
    #dbg_value(i64 %.sroa.10.0.ph.i, !2250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1898)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.10.0.ph.i) #14, !dbg !3059, !noalias !2488
  unreachable, !dbg !3059

.preheader.preheader:                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i
    #dbg_value(i64 %i.ce, !2249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1840)
    #dbg_value(ptr %i.cj, !2249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1840)
    #dbg_value(ptr poison, !2493, !DIExpression(), !1841)
    #dbg_value(i1 true, !2557, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1844)
  store i64 %i.ce, ptr %i.f, align 8, !dbg !3053, !noalias !2488
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3053
  store ptr %i.cj, ptr %i.cl, align 8, !dbg !3053, !noalias !2488
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3053 ; 2 uses
    #dbg_value(ptr %i.f, !2563, !DIExpression(), !1847)
    #dbg_value(ptr %i.cc, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1847)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2568, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1847)
    #dbg_value(ptr %i.cc, !2571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2596)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2571, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2596)
    #dbg_value(ptr %i.f, !2575, !DIExpression(), !1859)
    #dbg_value(i64 poison, !2576, !DIExpression(), !1860)
    #dbg_value(i64 1, !2577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1860)
    #dbg_value(i64 %i.ce, !2577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1860)
    #dbg_value(i64 %i.ce, !2578, !DIExpression(), !1861)
    #dbg_value(ptr %i.cj, !2588, !DIExpression(), !1862)
    #dbg_value(ptr %i.cm, !2589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1863)
    #dbg_value(i64 0, !2589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1863)
    #dbg_value(ptr %i.cj, !2597, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2609)
    #dbg_value(ptr %i.cj, !2611, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2626)
    #dbg_value(ptr %i.cm, !2597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2609)
    #dbg_value(ptr %i.cm, !2611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2626)
    #dbg_value(i64 0, !2597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2609)
    #dbg_value(i64 0, !2611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2626)
    #dbg_value(ptr %i.cc, !2605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1870)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2605, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1870)
    #dbg_value(ptr %i.cc, !2619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1871)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2619, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1871)
    #dbg_declare(ptr poison, !2620, !DIExpression(), !1872)
    #dbg_value(ptr %i.cm, !2627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2647)
    #dbg_value(i64 0, !2627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2647)
    #dbg_value(ptr %i.cj, !2627, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2647)
    #dbg_value(ptr %i.cc, !2634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1883)
    #dbg_value(!DIArgList(ptr %i.cc, i64 %i.ce), !2634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1883)
    #dbg_declare(ptr poison, !2635, !DIExpression(), !1884)
    #dbg_declare(ptr poison, !2638, !DIExpression(), !1885)
  br label %.preheader, !dbg !3060

.preheader:                                       ; preds = %.preheader.preheader, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBV_uNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1T_EE0E0E0B21_.exit.i.i
  %.sroa.6.0 = phi i64 [ %i.cp, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBV_uNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1T_EE0E0E0B21_.exit.i.i ], [ 0, %.preheader.preheader ], !dbg !3061 ; 4 uses
    #dbg_value(i64 %.sroa.6.0, !2627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2647)
    #dbg_value(i64 %.sroa.6.0, !2639, !DIExpression(), !1904)
    #dbg_value(ptr %i.cc, !2675, !DIExpression(), !1907)
    #dbg_value(i64 %.sroa.6.0, !2679, !DIExpression(), !1907)
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %.sroa.6.0, !dbg !3062
    #dbg_value(ptr poison, !2669, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1908)
    #dbg_declare(ptr poison, !2667, !DIExpression(), !1909)
    #dbg_value(ptr %i.cn, !2668, !DIExpression(), !1908)
    #dbg_value(ptr %i.cn, !2657, !DIExpression(), !1910)
    #dbg_value(ptr poison, !2656, !DIExpression(), !1910)
  invoke void @_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
          to label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBV_uNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1T_EE0E0E0B21_.exit.i.i unwind label %.body, !dbg !3060, !inline_history !1911

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBV_uNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1T_EE0E0E0B21_.exit.i.i: ; preds = %.preheader
    #dbg_value(ptr poison, !2682, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1914)
    #dbg_declare(ptr poison, !2687, !DIExpression(), !1915)
    #dbg_declare(ptr %i.d, !2686, !DIExpression(), !1916)
    #dbg_value(ptr poison, !2692, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !1919)
    #dbg_value(ptr poison, !2697, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1919)
    #dbg_declare(ptr %i.d, !2696, !DIExpression(), !1920)
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %.sroa.6.0, !dbg !3063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !3064
  %i.cp = add nuw i64 %.sroa.6.0, 1, !dbg !3065   ; 2 uses
    #dbg_value(i64 %i.cp, !2627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2647)
    #dbg_value(i64 %i.cp, !2639, !DIExpression(), !1904)
  %i.cq = icmp eq i64 %i.cp, %i.ce, !dbg !3066
  br i1 %i.cq, label %bb.ae, label %.preheader, !dbg !3066

bb.ae:                                            ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBV_uNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3Y_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1T_EE0E0E0B21_.exit.i.i
    #dbg_value(ptr poison, !2708, !DIExpression(), !1929)
    #dbg_value(ptr poison, !2714, !DIExpression(), !1932)
    #dbg_value(ptr poison, !2720, !DIExpression(), !1935)
    #dbg_value(ptr poison, !2726, !DIExpression(), !1938)
    #dbg_value(ptr poison, !2732, !DIExpression(), !1941)
  store i64 %i.ce, ptr %i.cm, align 8, !dbg !3067, !noalias !2735
  br label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterB13_ENvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneEE9from_iterB3U_.exit, !dbg !3068

.body:                                            ; preds = %.preheader
  %i.cr = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !2708, !DIExpression(), !1947)
    #dbg_value(ptr poison, !2714, !DIExpression(), !1949)
    #dbg_value(ptr poison, !2720, !DIExpression(), !1951)
    #dbg_value(ptr poison, !2726, !DIExpression(), !1953)
    #dbg_value(ptr poison, !2732, !DIExpression(), !1955)
  store i64 %.sroa.6.0, ptr %i.cm, align 8, !dbg !3069, !noalias !2735
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentEECsbkrgv1XEKBK_5serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #9
          to label %common.resume unwind label %bb.af, !dbg !3070, !noalias !2488, !inline_history !1956

bb.af:                                            ; preds = %.body
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #10, !dbg !3071, !noalias !2488, !inline_history !1956
  unreachable, !dbg !3071

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterB13_ENvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_cloneEE9from_iterB3U_.exit: ; preds = %.noexc33.thread, %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !3073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3070, !noalias !2488
  br label %bb.ap, !dbg !3074

bb.ag:                                            ; preds = %bb.a
    #dbg_value(ptr %1, !2169, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2736)
    #dbg_value(ptr %1, !2737, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2745)
    #dbg_value(ptr %1, !2746, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2750)
    #dbg_value(ptr %1, !2751, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2757)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3075
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !3075, !nonnull !255, !noundef !255
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3076
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !3076, !noundef !255 ; 6 uses
    #dbg_value(ptr %i.cv, !2761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2788)
    #dbg_value(ptr %i.cv, !2789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2795)
    #dbg_value(ptr %i.cv, !2796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2800)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2788)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2795)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2796, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2800)
    #dbg_value(ptr %i.cv, !2802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2806)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2802, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2806)
    #dbg_declare(ptr %i.e, !2803, !DIExpression(), !1978)
    #dbg_declare(ptr poison, !2807, !DIExpression(), !1983)
    #dbg_declare(ptr poison, !2818, !DIExpression(), !1986)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3077, !noalias !2824
    #dbg_value(i64 %i.cx, !2804, !DIExpression(), !1989)
    #dbg_value(i64 %i.cx, !2816, !DIExpression(), !1990)
    #dbg_value(i64 %i.cx, !2811, !DIExpression(), !1991)
    #dbg_value(i64 %i.cx, !2822, !DIExpression(), !1992)
    #dbg_value(i64 %i.cx, !2243, !DIExpression(), !1994)
    #dbg_value(i64 %i.cx, !2489, !DIExpression(), !1996)
    #dbg_declare(ptr poison, !2247, !DIExpression(), !1997)
    #dbg_value(i64 8, !2248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1994)
    #dbg_value(i64 8, !2495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1996)
    #dbg_value(i64 64, !2248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1994)
    #dbg_value(i64 64, !2495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1996)
    #dbg_value(i64 0, !2494, !DIExpression(), !1996)
    #dbg_value(i64 %i.cx, !2263, !DIExpression(), !1999)
    #dbg_value(i64 %i.cx, !2497, !DIExpression(), !2001)
    #dbg_value(i64 %i.cx, !2514, !DIExpression(), !2003)
    #dbg_value(i64 %i.cx, !2533, !DIExpression(), !2005)
    #dbg_value(i64 %i.cx, !2540, !DIExpression(), !2007)
    #dbg_value(i1 false, !2279, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1999)
    #dbg_declare(ptr poison, !2280, !DIExpression(), !2008)
    #dbg_value(i64 8, !2281, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1999)
    #dbg_value(i64 64, !2281, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1999)
    #dbg_value(i64 64, !2511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2001)
    #dbg_value(i64 64, !2536, !DIExpression(), !2005)
    #dbg_value(i64 64, !2546, !DIExpression(), !2007)
    #dbg_value(i64 8, !2511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2001)
    #dbg_value(ptr poison, !2530, !DIExpression(), !2009)
  %i.cy = shl nuw i64 %i.cx, 6, !dbg !3078        ; 2 uses
    #dbg_value(i1 false, !2538, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2010)
    #dbg_value(i1 false, !2549, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2012)
    #dbg_value(i64 %i.cy, !2531, !DIExpression(), !2013)
    #dbg_value(i64 %i.cy, !2537, !DIExpression(), !2010)
  %.not.i.i40 = icmp ugt i64 %i.cx, 144115188075855871
  br i1 %.not.i.i40, label %bb.ai, label %bb.ah, !dbg !3079, !prof !2554

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(i64 8, !2282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2014)
    #dbg_value(i64 %i.cy, !2282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2014)
  %i.cz = icmp eq i64 %i.cx, 0, !dbg !3080
  br i1 %i.cz, label %.noexc38.thread, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42, !dbg !3080

.noexc38.thread:                                  ; preds = %bb.ah
    #dbg_value(i64 0, !2249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2015)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2015)
    #dbg_value(ptr poison, !2493, !DIExpression(), !2016)
    #dbg_value(i1 true, !2557, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2018)
  store i64 0, ptr %i.e, align 8, !dbg !3081, !noalias !2824
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3081
  store ptr inttoptr (i64 8 to ptr), ptr %i.da, align 8, !dbg !3081, !noalias !2824
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !3081
  store i64 0, ptr %i.db, align 8, !dbg !3081, !noalias !2824
    #dbg_value(ptr %i.e, !2825, !DIExpression(), !2021)
    #dbg_value(ptr %i.cv, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2021)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2021)
    #dbg_value(ptr %i.cv, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2851)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2851)
    #dbg_value(ptr %i.e, !2835, !DIExpression(), !2032)
    #dbg_value(i64 poison, !2836, !DIExpression(), !2033)
    #dbg_value(i64 1, !2837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2033)
    #dbg_value(i64 %i.cx, !2837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2033)
    #dbg_value(i64 %i.cx, !2838, !DIExpression(), !2034)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2848, !DIExpression(), !2035)
    #dbg_value(ptr %i.db, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2036)
    #dbg_value(i64 0, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2036)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2852, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2862)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2863, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2874)
    #dbg_value(ptr %i.db, !2852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2862)
    #dbg_value(ptr %i.db, !2863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2874)
    #dbg_value(i64 0, !2852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2862)
    #dbg_value(i64 0, !2863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2874)
    #dbg_value(ptr %i.cv, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2043)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2043)
    #dbg_value(ptr %i.cv, !2868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2044)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2868, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2044)
    #dbg_declare(ptr poison, !2869, !DIExpression(), !2045)
    #dbg_value(ptr %i.db, !2875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2893)
    #dbg_value(i64 0, !2875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !2875, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2893)
    #dbg_value(ptr %i.cv, !2881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2056)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2056)
    #dbg_declare(ptr poison, !2882, !DIExpression(), !2057)
    #dbg_declare(ptr poison, !2885, !DIExpression(), !2058)
  br label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentB14_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0EE9from_iterB42_.exit, !dbg !3082

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42: ; preds = %bb.ah
    #dbg_value(ptr poison, !2302, !DIExpression(), !2060)
    #dbg_value(ptr poison, !2307, !DIExpression(), !2062)
    #dbg_value(i64 8, !2305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2060)
    #dbg_value(i64 8, !2311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2062)
    #dbg_value(i64 %i.cy, !2305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2060)
    #dbg_value(i64 %i.cy, !2311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2062)
    #dbg_value(i8 0, !2312, !DIExpression(), !2062)
    #dbg_value(i64 8, !2314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2064)
    #dbg_value(i64 8, !2336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2066)
    #dbg_value(i64 %i.cy, !2314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2064)
    #dbg_value(i64 %i.cy, !2336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2066)
    #dbg_value(i1 false, !2318, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2064)
    #dbg_value(i64 %i.cy, !2319, !DIExpression(), !2067)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #11, !dbg !3083, !noalias !2894
  %i.dc = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cy, i64 noundef range(i64 1, 9) 8) #11, !dbg !3084, !noalias !2894 ; 3 uses
    #dbg_value(ptr %i.dc, !2284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2070)
    #dbg_value(i64 poison, !2284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2070)
  %i.dd = icmp eq ptr %i.dc, null, !dbg !3085
  br i1 %i.dd, label %bb.ai, label %.preheader98, !dbg !3086

bb.ai:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42, %bb.ag
  %.sroa.10.0.ph.i45 = phi i64 [ %i.cy, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42 ], [ undef, %bb.ag ]
  %.sroa.4.0.ph.i46 = phi i64 [ 8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42 ], [ 0, %bb.ag ]
    #dbg_value(i64 %.sroa.4.0.ph.i46, !2250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2071)
    #dbg_value(i64 %.sroa.10.0.ph.i45, !2250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2071)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i46, i64 %.sroa.10.0.ph.i45) #14, !dbg !3087, !noalias !2824
  unreachable, !dbg !3087

.preheader98:                                     ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i42
    #dbg_value(i64 %i.cx, !2249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2015)
    #dbg_value(ptr %i.dc, !2249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2015)
    #dbg_value(ptr poison, !2493, !DIExpression(), !2016)
    #dbg_value(i1 true, !2557, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2018)
  store i64 %i.cx, ptr %i.e, align 8, !dbg !3081, !noalias !2824
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3081
  store ptr %i.dc, ptr %i.de, align 8, !dbg !3081, !noalias !2824
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !3081 ; 2 uses
    #dbg_value(ptr %i.e, !2825, !DIExpression(), !2021)
    #dbg_value(ptr %i.cv, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2021)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2021)
    #dbg_value(ptr %i.cv, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2851)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2851)
    #dbg_value(ptr %i.e, !2835, !DIExpression(), !2032)
    #dbg_value(i64 poison, !2836, !DIExpression(), !2033)
    #dbg_value(i64 1, !2837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2033)
    #dbg_value(i64 %i.cx, !2837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2033)
    #dbg_value(i64 %i.cx, !2838, !DIExpression(), !2034)
    #dbg_value(ptr %i.dc, !2848, !DIExpression(), !2035)
    #dbg_value(ptr %i.df, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2036)
    #dbg_value(i64 0, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2036)
    #dbg_value(ptr %i.dc, !2852, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2862)
    #dbg_value(ptr %i.dc, !2863, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2874)
    #dbg_value(ptr %i.df, !2852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2862)
    #dbg_value(ptr %i.df, !2863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2874)
    #dbg_value(i64 0, !2852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2862)
    #dbg_value(i64 0, !2863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2874)
    #dbg_value(ptr %i.cv, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2043)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2043)
    #dbg_value(ptr %i.cv, !2868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2044)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2868, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2044)
    #dbg_declare(ptr poison, !2869, !DIExpression(), !2045)
    #dbg_value(ptr %i.df, !2875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2893)
    #dbg_value(i64 0, !2875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(ptr %i.dc, !2875, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2893)
    #dbg_value(ptr %i.cv, !2881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2056)
    #dbg_value(!DIArgList(ptr %i.cv, i64 %i.cx), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !2056)
    #dbg_declare(ptr poison, !2882, !DIExpression(), !2057)
    #dbg_declare(ptr poison, !2885, !DIExpression(), !2058)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.ak, !dbg !3088

bb.aj:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body57, !dbg !3089

bb.ak:                                            ; preds = %.preheader98, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBW_EBV_uNCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B28_.exit.i.i
  %.sroa.693.0 = phi i64 [ %i.dn, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBW_EBV_uNCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B28_.exit.i.i ], [ 0, %.preheader98 ], !dbg !3090 ; 4 uses
    #dbg_value(i64 %.sroa.693.0, !2875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(i64 %.sroa.693.0, !2886, !DIExpression(), !2077)
    #dbg_value(ptr %i.cv, !2914, !DIExpression(), !2080)
    #dbg_value(i64 %.sroa.693.0, !2918, !DIExpression(), !2080)
  %i.di = getelementptr inbounds nuw [64 x i8], ptr %i.cv, i64 %.sroa.693.0, !dbg !3091 ; 2 uses
    #dbg_value(ptr poison, !2908, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !2081)
    #dbg_declare(ptr poison, !2906, !DIExpression(), !2082)
    #dbg_value(ptr %i.di, !2907, !DIExpression(), !2081)
    #dbg_value(ptr poison, !2900, !DIExpression(), !2083)
    #dbg_value(ptr %i.di, !2901, !DIExpression(), !2083)
    #dbg_value(ptr %i.di, !2898, !DIExpression(), !2084)
    #dbg_value(ptr %i.di, !2899, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !2084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3088, !noalias !2920
  invoke void @_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.di)
          to label %.noexc61 unwind label %bb.aj, !dbg !3088, !inline_history !2092

.noexc61:                                         ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32, !dbg !3092
    #dbg_value(ptr %i.dj, !2899, !DIExpression(), !2084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3093, !noalias !2920
  invoke void @_RNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj)
          to label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBW_EBV_uNCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B28_.exit.i.i unwind label %bb.al, !dbg !3093, !noalias !2921, !inline_history !2092

bb.al:                                            ; preds = %.noexc61
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentECsbkrgv1XEKBK_5serde(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #9
          to label %.body57 unwind label %bb.am, !dbg !3094, !noalias !2921, !inline_history !2092

bb.am:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #10, !dbg !3095, !noalias !2921, !inline_history !2092
  unreachable, !dbg !3095

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBW_EBV_uNCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B28_.exit.i.i: ; preds = %.noexc61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !3096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !3096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3094, !noalias !2920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3094, !noalias !2920
    #dbg_value(ptr poison, !2922, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !2095)
    #dbg_declare(ptr poison, !2927, !DIExpression(), !2096)
    #dbg_declare(ptr %i.c, !2926, !DIExpression(), !2097)
    #dbg_value(ptr poison, !2931, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !2100)
    #dbg_value(ptr poison, !2936, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !2100)
    #dbg_declare(ptr %i.c, !2935, !DIExpression(), !2101)
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %.sroa.693.0, !dbg !3097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !3098
  %i.dn = add nuw i64 %.sroa.693.0, 1, !dbg !3099 ; 2 uses
    #dbg_value(i64 %i.dn, !2875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2893)
    #dbg_value(i64 %i.dn, !2886, !DIExpression(), !2077)
  %i.do = icmp eq i64 %i.dn, %i.cx, !dbg !3100
  br i1 %i.do, label %bb.an, label %bb.ak, !dbg !3100

bb.an:                                            ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentBW_EBV_uNCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB46_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B28_.exit.i.i
    #dbg_value(ptr poison, !2942, !DIExpression(), !2110)
    #dbg_value(ptr poison, !2948, !DIExpression(), !2113)
    #dbg_value(ptr poison, !2954, !DIExpression(), !2116)
    #dbg_value(ptr poison, !2726, !DIExpression(), !2118)
    #dbg_value(ptr poison, !2732, !DIExpression(), !2120)
  store i64 %i.cx, ptr %i.df, align 8, !dbg !3101, !noalias !2960
  br label %_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCs5DvQZ7uvHZH_10serde_core7private7content7ContentB14_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtNtNtCsbkrgv1XEKBK_5serde7private2de7content13content_clone0EE9from_iterB42_.exit, !dbg !3089

.body57:                                          ; preds = %bb.aj, %bb.al
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.dh, %bb.aj ], [ %i.dk, %bb.al ]
end_hunk_0
