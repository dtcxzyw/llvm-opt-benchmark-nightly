Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.05?download=true
inline.NumInlined: 7514
inline.NumDeleted: 2502
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMs_Cs6TAKc56pues_16influxdb3_clientNtB5_6Client16api_v3_query_sqlReNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib:bb.a
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %bb.b
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %.noexc
  %i.h = load ptr, ptr %i.f, align 8, !noalias !2414, !nonnull !27, !noundef !27 ; 2 uses
  %i.i = icmp ule i64 %3, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2414
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %2, i64 range(i64 0, -9223372036854775808) %3, i1 false), !noalias !2415
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.c
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.k, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 -1, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %4) #41
          to label %bb.f unwind label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvMs_Cs6TAKc56pues_16influxdb3_clientNtB5_6Client21api_v3_query_influxqlNtNtCscdodAO9FK5_5alloc6string6StringB1a_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 56), (96, 97), (104, 113)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.sroa.0 = alloca [48 x i8], align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  %.sroa.0.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.0, i64 48, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 -1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvMs_Cs6TAKc56pues_16influxdb3_clientNtB5_6Client34api_v3_configure_last_cache_createNtNtCscdodAO9FK5_5alloc6string6StringB1n_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) initializes((0, 56), (72, 80), (96, 104), (120, 132), (136, 152)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.sroa.0.i = alloca [48 x i8], align 8   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0.i)
  %.sroa.0.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !2422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !2423
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8, !alias.scope !2421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.0.i, i64 48, i1 false), !noalias !2424
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2421
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2421
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2421
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 14400, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2421
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !2421
  %.sroa.101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 1, ptr %.sroa.101.0..sroa_idx.i, align 8, !alias.scope !2421
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cs6TAKc56pues_16influxdb3_clientNtB5_6Client38api_v3_configure_distinct_cache_createNtNtCscdodAO9FK5_5alloc6string6StringB1r_INtNtB1v_3vec3VecB1r_EECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.sroa.0.i = alloca [72 x i8], align 8   ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !2443, !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !2445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2442
  %.sroa.08.0.copyload.i = load i64, ptr %4, align 8, !alias.scope !2441
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.49.0.copyload.i = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !2441, !nonnull !27, !noundef !27 ; 3 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !2441 ; 2 uses
  %i.e = icmp ult i64 %.sroa.510.0.copyload.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.sroa.49.0.copyload.i, i64 %.sroa.510.0.copyload.i
  store ptr %.sroa.49.0.copyload.i, ptr %i.a, align 8, !alias.scope !2446, !noalias !2442
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.49.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2446, !noalias !2442
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.08.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2446, !noalias !2442
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2446, !noalias !2442
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENvYBX_INtNtB27_7convert4IntoBX_E4intoEE9from_iterCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvMs8_Cs6TAKc56pues_16influxdb3_clientNtB6_33CreateDistinctCacheRequestBuilder3newNtNtCscdodAO9FK5_5alloc6string6StringB1k_INtNtB1o_3vec3VecB1k_EECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.c, !noalias !2442

bb.b:                                             ; preds = %bb.c
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #41
          to label %.thread18.i unwind label %bb.d, !noalias !2442

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #41
          to label %bb.b unwind label %bb.d, !noalias !2442

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40, !noalias !2442
  unreachable

.thread18.i:                                      ; preds = %bb.b
  resume { ptr, i32 } %i.g

_RINvMs8_Cs6TAKc56pues_16influxdb3_clientNtB6_33CreateDistinctCacheRequestBuilder3newNtNtCscdodAO9FK5_5alloc6string6StringB1k_INtNtB1o_3vec3VecB1k_EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !2444
  %.sroa.0.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !2445
  %.sroa.0.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.i, align 8, !alias.scope !2440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.0.i, i64 72, i1 false), !noalias !2447
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2440
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 86400, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2440
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2440
  %.sroa.91.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 100000, ptr %.sroa.91.0..sroa_idx.i, align 8, !alias.scope !2440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cs6TAKc56pues_16influxdb3_clientNtB5_6Client3newNtCsj7DbYNsdxOJ_3url3UrlECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 10 uses
  %i.d = alloca [1016 x i8], align 8              ; 4 uses
  %i.e = alloca [1016 x i8], align 8              ; 4 uses
  %i.f = alloca [1016 x i8], align 8              ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 3 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 14 uses
  %i.k = alloca [24 x i8], align 8                ; 18 uses
  %i.l = alloca [8 x i8], align 8                 ; 10 uses
  %i.m = alloca [1016 x i8], align 8              ; 3 uses
  %i.n = alloca [1016 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtNtCs4oFq2PzodUt_7reqwest10async_impl6clientNtB5_6Client7builder(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(address) dereferenceable(1016) %i.m)
          to label %bb.c unwind label %bb.b

.thread:                                          ; preds = %bb.ay, %bb.ax, %.body.a, %bb.b
  %.sroa.0110.0 = phi i1 [ true, %bb.b ], [ false, %bb.ay ], [ false, %bb.ax ], [ %.sroa.0110.1, %.body.a ]
  %.sroa.0112.0 = phi i1 [ %.sroa.0112.1, %bb.b ], [ %.not, %bb.ay ], [ %.not, %bb.ax ], [ %.not, %.body.a ]
  %.pn222 = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.cg, %bb.ay ], [ %i.cg, %bb.ax ], [ %lpad.thr_comm, %.body.a ] ; 2 uses
  %i.o = load i64, ptr %2, align 8, !range !33, !noundef !27
  %i.p = icmp ne i64 %i.o, -1
  %or.cond = and i1 %.sroa.0112.0, %i.p
  br i1 %or.cond, label %bb.be, label %.thread.thread

bb.b:                                             ; preds = %bb.as, %bb.c, %bb.a
  %.sroa.0112.1 = phi i1 [ false, %bb.as ], [ true, %bb.c ], [ true, %bb.a ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1014
  store i8 3, ptr %i.r, align 2
  invoke void @_RNvMs2_NtNtCs4oFq2PzodUt_7reqwest10async_impl6clientNtB5_13ClientBuilder14use_rustls_tls(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.m)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.s = load i64, ptr %2, align 8, !range !33, !noundef !27
  %.not = icmp eq i64 %i.s, -1                    ; 4 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 977
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs4readRNtNtB4_4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.d, ptr noundef nonnull align 8 dereferenceable(1016) %i.n, i64 1016, i1 false)
  %i.t = invoke { i64, ptr } @_RNvMs2_NtNtCs4oFq2PzodUt_7reqwest10async_impl6clientNtB5_13ClientBuilder5build(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1016) %i.d)
          to label %bb.au unwind label %.body.a   ; 2 uses

.body224:                                         ; preds = %bb.ak, %bb.ac, %bb.i, %bb.o
  %.sroa.0108.1 = phi i1 [ %.sroa.0108.3, %bb.o ], [ false, %bb.ac ], [ %.sroa.0108.2, %bb.i ], [ %i.bg, %bb.ak ]
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.bo, %bb.ac ], [ %i.u, %bb.i ], [ %i.bv, %bb.ak ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #41
          to label %4 unwind label %bb.at

bb.i:                                             ; preds = %bb.al, %bb.ad, %bb.g
  %.sroa.0108.2 = phi i1 [ %i.bg, %bb.al ], [ false, %bb.ad ], [ true, %bb.g ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body224

bb.j:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.i, align 8, !range !33, !noundef !27 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.z, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.4118.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %.body.thread270

.body.thread270:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %lpad.thr_comm.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.n:                                             ; preds = %bb.j
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5115.0.copyload = load i64, ptr %.sroa.5115.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.v, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 %.sroa.5115.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !27, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !27
  %i.ag = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9extension(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %bb.p unwind label %bb.o       ; 2 uses

bb.o:                                             ; preds = %bb.z, %bb.y, %.critedge, %bb.v, %bb.q, %bb.n
  %.sroa.0108.3 = phi i1 [ false, %bb.z ], [ false, %bb.y ], [ true, %.critedge ], [ true, %bb.v ], [ true, %bb.q ], [ true, %bb.n ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #41
          to label %.body224 unwind label %bb.at

bb.p:                                             ; preds = %bb.n
  %i.ai = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %.not218 = icmp eq ptr %i.ai, null
  br i1 %.not218, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = extractvalue { ptr, i64 } %i.ag, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr %i.a, align 8, !range !28, !noundef !27
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ar = load i16, ptr %i.an, align 1
  %i.as = xor i16 %i.ar, 25956
  %i.at = getelementptr i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i16
  %i.aw = xor i16 %i.av, 114
  %i.ax = or i16 %i.as, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !27, !noundef !27
  %i.bc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !27
  invoke void @_RNvMs_NtCs4oFq2PzodUt_7reqwest3tlsNtB4_11Certificate8from_der(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc)
          to label %bb.w unwind label %bb.o

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.p
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !27, !noundef !27
  %i.be = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !27
  invoke void @_RNvMs_NtCs4oFq2PzodUt_7reqwest3tlsNtB4_11Certificate8from_pem(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.be)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %.critedge, %bb.v
  %i.bf = load i64, ptr %i.h, align 8, !range !42, !noundef !27 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 2                    ; 6 uses
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !27, !align !36, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.y:                                             ; preds = %bb.w
  %i.bj = inttoptr i64 %i.bf to ptr
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.614.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614.sroa.7.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4127.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.bj, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.e, ptr noundef nonnull align 8 dereferenceable(1016) %i.n, i64 1016, i1 false)
  invoke void @_RNvMs2_NtNtCs4oFq2PzodUt_7reqwest10async_impl6clientNtB5_13ClientBuilder20add_root_certificate(ptr noalias noundef nonnull sret([1016 x i8]) align 8 captures(none) dereferenceable(1016) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1016) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.z unwind label %bb.o

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bk = invoke { i64, ptr } @_RNvMs2_NtNtCs4oFq2PzodUt_7reqwest10async_impl6clientNtB5_13ClientBuilder5build(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1016) %i.f)
          to label %bb.aa unwind label %bb.o      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = trunc nuw i64 %i.bl to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br i1 %i.bn, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.bm, ptr %i.l, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body224 unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.i

bb.ae:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i227 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread.thread.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i227: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit233 unwind label %.body.a

4:                                                ; preds = %.body224
  br i1 %.sroa.0108.1, label %.body.thread, label %.thread.thread.thread

.body.a:                                          ; preds = %bb.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i227, %bb.h
  %.sroa.0110.1 = phi i1 [ true, %bb.h ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i227 ], [ false, %bb.bb ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i240
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bg, label %.body.thread, label %.thread.thread.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit233: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit233
  %i.bt = phi ptr [ %i.cd, %bb.aw ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit233 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  invoke void @_RNvXs2_NtCs4oFq2PzodUt_7reqwest8into_urlNtCsj7DbYNsdxOJ_3url3UrlNtB5_13IntoUrlSealed8into_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.b)
          to label %bb.az unwind label %bb.ax

bb.aj:                                            ; preds = %bb.aa, %bb.x
  %.sink = phi ptr [ %i.bi, %bb.x ], [ %i.bm, %bb.aa ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.bu, align 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.5158.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body224 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit238 unwind label %bb.i

bb.am:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit238: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i240 unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit238
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239: ; preds = %bb.an
  br i1 %i.bg, label %.body.thread, label %.thread.thread.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i240: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit238
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit246 unwind label %bb.ah

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit246: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.bg, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.av, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsj7DbYNsdxOJ_3url3UrlECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %.thread.thread, %.thread.thread.thread, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.aq ], [ %.pn222278283, %.thread.thread.thread ], [ %.pn222, %.thread.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsj7DbYNsdxOJ_3url3UrlECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.ap
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.bd

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit246
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client13ClientBuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(1016) %i.n)
          to label %bb.ap unwind label %bb.b

bb.at:                                            ; preds = %bb.ay, %.thread.thread.thread, %bb.be, %.body.thread, %bb.o, %.body224
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

bb.au:                                            ; preds = %bb.h
  %i.cc = extractvalue { i64, ptr } %i.t, 0
  %i.cd = extractvalue { i64, ptr } %i.t, 1       ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ce = trunc nuw i64 %i.cc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br i1 %i.ce, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.cf, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cd, ptr %.sroa.5174.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ap

bb.aw:                                            ; preds = %bb.au
  store ptr %i.cd, ptr %i.l, align 8
  br label %bb.ai

bb.ax:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !2460
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client9ClientRefE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.thread unwind label %bb.at

bb.az:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cj = load i64, ptr %i.c, align 8, !range !33, !noundef !27 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.ck, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !27, !align !36, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cn, align 8
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %.sroa.5213.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.co = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !2461
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client6ClientECsgsNUVCRJO2f_13influxdb3_lib.exit248

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client9ClientRefE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client6ClientECsgsNUVCRJO2f_13influxdb3_lib.exit248 unwind label %.body.a

bb.bc:                                            ; preds = %bb.az
  %.sroa.4177.sroa.0.0.copyload = load i8, ptr %i.cl, align 8
  %.sroa.4177.sroa.4.0..sroa.4177.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.089.sroa.5.sroa.5.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.089.sroa.5.sroa.5.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4177.sroa.4.0..sroa.4177.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.4177.sroa.5.0..sroa.4177.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4177.sroa.5.0.copyload = load ptr, ptr %.sroa.4177.sroa.5.0..sroa.4177.0..sroa_idx.sroa_idx, align 8
  %.sroa.4177.sroa.6.0..sroa.4177.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.089.sroa.5.sroa.7.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.089.sroa.5.sroa.7.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4177.sroa.6.0..sroa.4177.0..sroa_idx.sroa_idx, i64 48, i1 false)
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.089.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.089.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5178.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.cj, ptr %0, align 8
  %.sroa.089.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4177.sroa.0.0.copyload, ptr %.sroa.089.sroa.5.0..sroa_idx, align 8
  %.sroa.089.sroa.5.sroa.6.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4177.sroa.5.0.copyload, ptr %.sroa.089.sroa.5.sroa.6.0..sroa.089.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.089.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %.sroa.089.sroa.7.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bt, ptr %.sroa.690.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client6ClientECsgsNUVCRJO2f_13influxdb3_lib.exit248, %bb.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsj7DbYNsdxOJ_3url3UrlECsgsNUVCRJO2f_13influxdb3_lib.exit
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client6ClientECsgsNUVCRJO2f_13influxdb3_lib.exit248: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bd

.body.thread:                                     ; preds = %bb.l, %.body.thread270, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239, %bb.ah, %4
  %.pn220255 = phi { ptr, i32 } [ %i.bs, %bb.ah ], [ %.pn, %4 ], [ %lpad.thr_comm.split-lp272, %.body.thread270 ], [ %i.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239 ], [ %i.aa, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4oFq2PzodUt_7reqwest10async_impl6client13ClientBuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(1016) %i.n) #41
          to label %.thread.thread.thread unwind label %bb.at

.thread.thread:                                   ; preds = %bb.be, %.thread
  br i1 %.sroa.0110.0, label %.thread.thread.thread, label %common.resume

bb.be:                                            ; preds = %.thread
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #41
          to label %.thread.thread unwind label %bb.at

.thread.thread.thread:                            ; preds = %.body.thread, %4, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239, %bb.af, %.thread.thread
  %.pn222278283 = phi { ptr, i32 } [ %.pn222, %.thread.thread ], [ %i.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i239 ], [ %.pn220255, %.body.thread ], [ %i.bs, %bb.ah ], [ %.pn, %4 ], [ %i.bq, %bb.af ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsj7DbYNsdxOJ_3url3UrlECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(88) %1) #41
          to label %common.resume unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_CsQ2IRFpYiTc_20object_store_metricsNtB5_18ObjectStoreMetrics3newReRNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull align 8 %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 7 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [128 x i8], align 8               ; 6 uses
  %i.l = alloca [128 x i8], align 8               ; 6 uses
  %i.m = alloca [176 x i8], align 8               ; 7 uses
  %i.n = alloca [176 x i8], align 8               ; 7 uses
  %i.o = alloca [128 x i8], align 8               ; 6 uses
  %i.p = alloca [128 x i8], align 8               ; 6 uses
  %i.q = alloca [128 x i8], align 8               ; 6 uses
  %i.r = alloca [128 x i8], align 8               ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [112 x i8], align 8              ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 6 uses
  %i.ac = alloca [112 x i8], align 8              ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [112 x i8], align 8              ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 6 uses
  %i.ag = alloca [112 x i8], align 8              ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [64 x i8], align 8               ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 6 uses
  %i.ak = alloca [64 x i8], align 8               ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [112 x i8], align 8              ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [112 x i8], align 8              ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [160 x i8], align 8              ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [160 x i8], align 8              ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [112 x i8], align 8              ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [112 x i8], align 8              ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %i.ay = alloca [112 x i8], align 8              ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [112 x i8], align 8              ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 24 uses
  %i.bf = alloca [24 x i8], align 8               ; 28 uses
  %i.bg = alloca [16 x i8], align 8               ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 4 uses
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %2, ptr %i.bi, align 8
  store ptr %3, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %4, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 -1, ptr %i.bf, align 8, !alias.scope !2590
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %5, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2590
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %6, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtCscdodAO9FK5_5alloc6string6StringINtB5_4IntoBz_E4intoCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.be, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtCscdodAO9FK5_5alloc6string6StringINtB5_4IntoBz_E4intoCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %1, ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %2, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %3, ptr %i.bc, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %4, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke void @_RNvMs4_NtCsQ2IRFpYiTc_20object_store_metrics7metricsNtB5_16MetricsWithBytes3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ba, ptr noundef nonnull align 8 %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.bm, %bb.f ] ; 3 uses
  %cond = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ false, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsQ2IRFpYiTc_20object_store_metrics9StoreTypeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #41
          to label %.body186 unwind label %bb.ef

bb.f:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertRNtNtCscdodAO9FK5_5alloc6string6StringINtB5_4IntoBz_E4intoCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.d

.body74:                                          ; preds = %.body71, %bb.n, %bb.k, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.bq, %bb.h ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.n ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body71 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  call void @llvm.experimental.noalias.scope.decl(metadata !2592)
  %i.bn = load ptr, ptr %i.bc, align 8, !alias.scope !2593, !nonnull !27, !noundef !27
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !noalias !2593
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.g:                                             ; preds = %.body74
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs1fnGVdejPSq_15trace_exporters(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ef

bb.h:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 1, ptr %i.r, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i64 112, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2594
  %i.bt = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 20145) 128, i64 noundef range(i64 1, 17) 8) #43, !noalias !2594 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.j, label %bb.m, !prof !32

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #42
          to label %.noexc110 unwind label %bb.k

.noexc110:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsQ2IRFpYiTc_20object_store_metrics7metrics16MetricsWithBytesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.bs)
          to label %.body74 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bt, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.bt, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RNvMs4_NtCsQ2IRFpYiTc_20object_store_metrics7metricsNtB5_16MetricsWithBytes3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ay, ptr noundef nonnull align 8 %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.p unwind label %bb.o

.body71:                                          ; preds = %.body68, %bb.u, %bb.r, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.r ], [ %i.ca, %bb.o ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.u ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body68 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %i.bx = load ptr, ptr %i.bb, align 8, !alias.scope !2597, !nonnull !27, !noundef !27
  %i.by = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !2597
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.n, label %.body74

bb.n:                                             ; preds = %.body71
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsQ2IRFpYiTc_20object_store_metrics7metrics16MetricsWithBytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %.body74 unwind label %bb.ef

bb.o:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body71
end_hunk_0
