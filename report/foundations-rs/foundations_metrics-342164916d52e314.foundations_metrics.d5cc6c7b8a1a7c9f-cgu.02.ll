Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.02?download=true
inline.NumInlined: 217
inline.NumDeleted: 132
begin_hunk_0_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEENtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics:bb.a
  br label %bb.b, !dbg !2062

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i.i.i = phi i8 [ %i.g, %bb.a ], [ %i.m, %bb.c ], !dbg !2063 ; 3 uses
  %i.h = and i8 %.sroa.03.0.i.i.i, 1, !dbg !2064
  %i.i = icmp eq i8 %i.h, 0, !dbg !2064
  br i1 %i.i, label %bb.c, label %_RNvXNtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs7hp7eIiX3bT_8lock_api5mutex8RawMutex8try_lock.exit.i.i, !dbg !2064

bb.c:                                             ; preds = %bb.b
  %i.j = or disjoint i8 %.sroa.03.0.i.i.i, 1, !dbg !2065
  %i.k = cmpxchg weak ptr %i.f, i8 %.sroa.03.0.i.i.i, i8 %i.j acquire monotonic, align 1, !dbg !2066, !noalias !2053 ; 2 uses
  %i.l = extractvalue { i8, i1 } %i.k, 1, !dbg !2066
  %i.m = extractvalue { i8, i1 } %i.k, 0, !dbg !2066
  br i1 %i.l, label %bb.d, label %bb.b, !dbg !2067

_RNvXNtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs7hp7eIiX3bT_8lock_api5mutex8RawMutex8try_lock.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2068, !noalias !2053
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5), !dbg !2069, !noalias !2051
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5), !dbg !2070, !noalias !2051
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n), !dbg !2071, !noalias !2051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2072, !noalias !2053
  br label %_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2072

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2073, !noalias !2053
  invoke void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5)
          to label %bb.g unwind label %bb.e, !dbg !2074, !noalias !2051

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1, !dbg !2075, !noalias !2055
  %i.r = extractvalue { i8, i1 } %i.q, 1, !dbg !2075
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEECsim2LhUzKY4R_19foundations_metrics.exit.i.i, label %bb.f, !dbg !2076, !prof !229

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEECsim2LhUzKY4R_19foundations_metrics.exit.i.i unwind label %bb.k, !dbg !2077, !noalias !2051

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2078, !noalias !2053
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2079
  store ptr %i.s, ptr %i.b, align 8, !dbg !2078, !noalias !2053, !captures !2056
  %i.t = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
          to label %bb.h unwind label %bb.e, !dbg !2080, !noalias !2051

bb.h:                                             ; preds = %bb.g
  %i.u = invoke noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %bb.i unwind label %bb.e, !dbg !2081, !noalias !2051 ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2082, !noalias !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2082, !noalias !2053
  %i.v = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1, !dbg !2083, !noalias !2055
  %i.w = extractvalue { i8, i1 } %i.v, 1, !dbg !2083
  br i1 %i.w, label %_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics.exit, label %bb.j, !dbg !2084, !prof !229

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext false), !dbg !2085, !noalias !2051
  br label %_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics.exit, !dbg !2085

bb.k:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !2086, !noalias !2051
  unreachable, !dbg !2086

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api5mutex10MutexGuardNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEECsim2LhUzKY4R_19foundations_metrics.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p, !dbg !2086

_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCs9a0jf852eb6_17prometheus_client7metrics9histogram5InnerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %_RNvXNtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs7hp7eIiX3bT_8lock_api5mutex8RawMutex8try_lock.exit.i.i, %bb.i, %bb.j
  %.sroa.0.0.in.i.i = phi i1 [ %i.o, %_RNvXNtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCs7hp7eIiX3bT_8lock_api5mutex8RawMutex8try_lock.exit.i.i ], [ %i.u, %bb.i ], [ %i.u, %bb.j ]
  ret i1 %.sroa.0.0.in.i.i, !dbg !2087
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !2088 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !2089, !nonnull !142, !align !296, !noundef !142
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !2090
  ret i1 %i.b, !dbg !2091
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs2_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_16HistogramBuilderINtNtB7_6family17MetricConstructorNtB5_9HistogramE10new_metric(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2092 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.05.sroa.4.i = alloca [31 x i8], align 1  ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !2179, !nonnull !142, !align !296, !noundef !142 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2179
  %i.g = load i64, ptr %i.f, align 8, !dbg !2179, !noundef !142
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g, !dbg !2180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2181
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTdyEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1r_6copied6CopiedINtNtNtB1v_5slice4iter4IterdEENCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB37_9Histogram3newB2a_E0EE9from_iterB3b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h), !dbg !2182
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2183 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !2183, !alias.scope !2174, !noundef !142 ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !dbg !2184, !range !2175, !alias.scope !2174, !noundef !142
  %i.l = icmp eq i64 %i.j, %i.k, !dbg !2185
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !2185

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdyEE8grow_oneCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %bb.c unwind label %bb.k, !dbg !2186

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2187 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !dbg !2187, !alias.scope !2174, !nonnull !142, !noundef !142
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j, !dbg !2188 ; 2 uses
  store double +inf, ptr %i.o, align 8, !dbg !2189
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !2189
  store i64 0, ptr %i.p, align 8, !dbg !2189
  %i.q = add i64 %i.j, 1, !dbg !2190              ; 5 uses
  store i64 %i.q, ptr %i.i, align 8, !dbg !2190, !alias.scope !2174
  %i.r = load ptr, ptr %i.m, align 8, !dbg !2191, !nonnull !142, !noundef !142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2176
  store ptr %i.a, ptr %i.b, align 8, !noalias !2177
  %i.s = icmp samesign ult i64 %i.q, 2, !dbg !2192
  br i1 %i.s, label %bb.g, label %bb.d, !dbg !2193, !prof !229

bb.d:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %i.q, 21, !dbg !2194
  br i1 %i.t, label %bb.f, label %bb.e, !dbg !2195, !prof !229

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB1T_9Histogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0INtNtB1b_3vec3VecBZ_EEB1X_(ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 576460752303423488) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %bb.g unwind label %bb.k, !dbg !2196

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdyENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2h_9Histogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2l_(ptr noalias nofree noundef nonnull align 8 %i.r, i64 noundef range(i64 0, 576460752303423488) %i.q, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.k, !dbg !2197

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2198, !noalias !2176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.sroa.4.i), !dbg !2199
  %.sroa.05.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.sroa.4.i, i64 7, !dbg !2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.05.sroa.4.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !2200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2201
  store i64 1, ptr %i.c, align 8, !dbg !2201
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2201
  store i64 1, ptr %i.u, align 8, !dbg !2201
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2201
  store i8 0, ptr %i.v, align 8, !dbg !2201
  %.sroa.05.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17, !dbg !2201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.05.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.05.sroa.4.i, i64 31, i1 false), !dbg !2201
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !2201
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !dbg !2202, !noalias !2178
  %i.w = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 56, 577) 64, i64 noundef 8) #27, !dbg !2203, !noalias !2178 ; 3 uses
  %i.x = icmp eq ptr %i.w, null, !dbg !2204
  br i1 %i.x, label %bb.h, label %_RINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3_9Histogram3newINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1q_5slice4iter4IterdEEEB7_.exit, !dbg !2205, !prof !174

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #29
          to label %.noexc14.i unwind label %bb.i, !dbg !2206

.noexc14.i:                                       ; preds = %bb.h
  unreachable, !dbg !2206

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs7hp7eIiX3bT_8lock_api5mutex5MutexNtNtCsix9GtmFTcQ_11parking_lot9raw_mutex8RawMutexNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram14HistogramStateEEEB2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c) #25
          to label %.body.i unwind label %bb.j, !dbg !2207

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !2208
  unreachable, !dbg !2208

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.y, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body17.i, !dbg !2209

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdyEEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %.body.i unwind label %bb.l, !dbg !2210

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !2209
  unreachable, !dbg !2209

_RINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3_9Histogram3newINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1q_5slice4iter4IterdEEEB7_.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !2211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.sroa.4.i), !dbg !2213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2210
  ret ptr %i.w, !dbg !2214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsim2LhUzKY4R_19foundations_metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !2215 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %4) ]
  %i.a = ptrtoint ptr %2 to i64, !dbg !2242
  %i.b = ptrtoint ptr %1 to i64, !dbg !2242
  %i.c = sub nuw i64 %i.a, %i.b, !dbg !2242
  %i.d = ptrtoint ptr %4 to i64, !dbg !2243
  %i.e = ptrtoint ptr %3 to i64, !dbg !2243
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !2243
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c), !dbg !2244
  store ptr %1, ptr %0, align 8, !dbg !2245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2245
  store ptr %2, ptr %i.g, align 8, !dbg !2245
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2245
  store ptr %3, ptr %i.h, align 8, !dbg !2245
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2245
  store ptr %4, ptr %i.i, align 8, !dbg !2245
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2245
  store i64 0, ptr %i.j, align 8, !dbg !2245
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2245
  store i64 %..i, ptr %i.k, align 8, !dbg !2245
  ret void, !dbg !2246
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs4_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB5_16HistogramBuilderINtNtB7_6family17MetricConstructorNtB5_13TimeHistogramE10new_metric(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2247 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !2310, !nonnull !142, !align !296, !noundef !142 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2310
  %i.h = load i64, ptr %i.g, align 8, !dbg !2310, !noundef !142
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h, !dbg !2311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2313
  store i64 1, ptr %i.d, align 8, !dbg !2314
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2314
  store double +inf, ptr %.sroa.4.0..sroa_idx10.i, align 8, !dbg !2314
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2314
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx11.i, align 8, !dbg !2314
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !2314
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !2314
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTdINtNtNtCs3oUPovFnLWP_4core4sync6atomic6AtomicyEEEINtB2_12SpecFromIterBU_INtNtNtNtB13_4iter8adapters3map3MapINtNtB2b_5chain5ChainINtNtB2b_6copied6CopiedINtNtNtB13_5slice4iter4IterdEEINtNtNtB2d_7sources4once4OncedEENCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB4w_13TimeHistogram3newB30_E0EE9from_iterB4A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !dbg !2315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2316
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2317
  %i.k = load ptr, ptr %i.j, align 8, !dbg !2317, !nonnull !142, !noundef !142 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2318
  %i.m = load i64, ptr %i.l, align 8, !dbg !2318, !noundef !142 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2307
  store ptr %i.a, ptr %i.b, align 8, !noalias !2308
  %i.n = icmp samesign ult i64 %i.m, 2, !dbg !2319
  br i1 %i.n, label %bb.e, label %bb.b, !dbg !2320, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i64 %i.m, 21, !dbg !2321
  br i1 %i.o, label %bb.d, label %bb.c, !dbg !2322, !prof !229

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTdINtNtNtB8_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2q_13TimeHistogram3newINtNtNtNtB8_4iter8adapters6copied6CopiedINtNtB6_4iter4IterdEEEs_0E0INtNtB1F_3vec3VecBZ_EEB2u_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef range(i64 0, 576460752303423488) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %bb.e unwind label %bb.i, !dbg !2323

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdINtNtNtBa_4sync6atomic6AtomicyEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_7sort_byNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2O_13TimeHistogram3newINtNtNtNtBa_4iter8adapters6copied6CopiedINtNtB8_4iter4IterdEEEs_0E0EB2S_(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef range(i64 0, 576460752303423488) %i.m, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.i, !dbg !2324

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2325, !noalias !2307
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2327
  store i64 1, ptr %i.c, align 8, !dbg !2326
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2326
  store i64 1, ptr %i.q, align 8, !dbg !2326
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !dbg !2326
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !dbg !2328, !noalias !2309
  %i.r = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 56, 577) 56, i64 noundef 8) #27, !dbg !2329, !noalias !2309 ; 3 uses
  %i.s = icmp eq ptr %i.r, null, !dbg !2330
  br i1 %i.s, label %bb.f, label %_RINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB6_13TimeHistogram3newINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1y_5slice4iter4IterdEEEBa_.exit, !dbg !2331, !prof !174

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc9.i unwind label %bb.g, !dbg !2332

.noexc9.i:                                        ; preds = %bb.f
  unreachable, !dbg !2332

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogram18TimeHistogramStateEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #25
          to label %.body.i unwind label %bb.h, !dbg !2333

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !2334
  unreachable, !dbg !2334

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body14.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body14.i, !dbg !2335

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTdINtNtNtB4_4sync6atomic6AtomicyEEEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %.body.i unwind label %bb.j, !dbg !2336

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !2335
  unreachable, !dbg !2335

_RINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB6_13TimeHistogram3newINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1y_5slice4iter4IterdEEEBa_.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !2337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2336
  ret ptr %i.r, !dbg !2339
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryENtNtNtNtBO_4iter6traits8iterator8Iterator4nextB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #7 !dbg !2340 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2372 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !2372, !noundef !142 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !2372
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !2372

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368), !dbg !2373
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !dbg !2374, !alias.scope !2368, !noundef !142 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0, !dbg !2375
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2368 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit, !dbg !2376

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !2368
  br label %bb.c, !dbg !2376

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !dbg !2377, !alias.scope !2368
  store ptr %i.j, ptr %0, align 8, !dbg !2378, !alias.scope !2368
  br label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit, !dbg !2376

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ], !dbg !2379 ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.g, align 16, !dbg !2380, !noalias !2368
  %i.i = icmp sgt <16 x i8> %.val9.i, splat (i8 -1), !dbg !2381
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -1152, !dbg !2382 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !2383 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16, !dbg !2374 ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0, !dbg !2375
  br i1 %.not.i, label %bb.c, label %._crit_edge.i, !dbg !2376

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ], !dbg !2384
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ], !dbg !2374 ; 3 uses
  %i.m = add i16 %.lcssa.i, -1, !dbg !2385
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2386
  %i.o = zext nneg i16 %i.n to i64, !dbg !2387
  %i.p = and i16 %i.m, %.lcssa.i, !dbg !2388
  store i16 %i.p, ptr %i.d, align 8, !dbg !2389, !alias.scope !2368
  %i.q = sub nsw i64 0, %i.o, !dbg !2390
  %i.r = getelementptr inbounds [72 x i8], ptr %i.l, i64 %i.q, !dbg !2391 ; 2 uses
  %i.s = add i64 %i.b, -1, !dbg !2392
  store i64 %i.s, ptr %i.a, align 8, !dbg !2392
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -72, !dbg !2393
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -56, !dbg !2394
  br label %bb.d, !dbg !2395

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit
  %.sroa.3.0 = phi ptr [ %i.u, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit ], [ undef, %bb.a ], !dbg !2396
  %.sroa.0.0 = phi ptr [ %i.t, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEE9next_implKb0_EB1x_.exit ], [ null, %bb.a ], !dbg !2396
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0, !dbg !2397
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.3.0, 1, !dbg !2397
  ret { ptr, ptr } %i.w, !dbg !2397
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB4_9HistogramNtNtB8_5value17EncodeMetricValue19encode_metric_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2398 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423), !dbg !2427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424), !dbg !2427
  %i.c = load ptr, ptr %1, align 8, !dbg !2428, !alias.scope !2424, !nonnull !142, !noundef !142 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2429 ; 6 uses
  %i.e = cmpxchg weak ptr %i.d, i8 0, i8 1 acquire monotonic, align 1, !dbg !2430, !noalias !2425
  %i.f = extractvalue { i8, i1 } %i.e, 1, !dbg !2430
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !2431, !prof !229

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCsix9GtmFTcQ_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.d, i64 undef, i32 noundef -1), !dbg !2432, !noalias !2425 ; 0 uses
  br label %bb.c, !dbg !2433

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2434
end_hunk_0
