Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.04?download=true
inline.NumInlined: 1300
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB12_EEE9from_iterCsidB8gjke19X_15influxdb3_cache:bb.a
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRINtNtB18_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.g unwind label %bb.l, !noalias !2207

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noalias !2206, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !2206 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2206
  %i.aa = trunc nuw i64 %i.x to i1
  br i1 %i.aa, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ugt i64 %i.z, %i.p
  br i1 %i.ab, label %bb.i, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRBF_EEECsidB8gjke19X_15influxdb3_cache.exit.i, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 noundef %i.z, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge.i.i unwind label %bb.l

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.v, align 8, !alias.scope !2207
  %.pre = load ptr, ptr %i.u, align 8, !alias.scope !2207
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRBF_EEECsidB8gjke19X_15influxdb3_cache.exit.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %bb.k unwind label %bb.l, !noalias !2207

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRINtNtB9_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRBF_EEECsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge.i.i, %bb.h
  %i.ad = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge.i.i ], [ %i.s, %bb.h ]
  %i.ae = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge.i.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2208
  store ptr %i.v, ptr %i.a, align 8, !noalias !2209
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2209
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2209
  invoke void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRINtNtB19_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callB1Q_NCINvMsj_B17_INtB17_3VecB1Q_E14extend_trustedBP_E0E0ECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRBF_EEECsidB8gjke19X_15influxdb3_cache.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.n ], [ %lpad.thr_comm.i.i, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.g) #21
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRINtNtB1m_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRBF_EEECsidB8gjke19X_15influxdb3_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.e
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRINtNtB1m_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.r, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ah, %bb.r ]
  resume { ptr, i32 } %.pn8

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRINtNtB9_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterRINtNtB1m_4sync3ArcDNtNtCs8eNff9Ojv9L_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1L_5types14StringViewTypeEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB17_4iter8adapters4take4TakeINtNtB4g_3map3MapINtNtNtB17_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB5B_13DistinctCache15to_record_batchs0_0EEE9from_iterB5F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2238 {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 5 uses
  %i.b = alloca [208 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2239, !noundef !5 ; 5 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !2240, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i = load i64, ptr %i.j, align 8, !alias.scope !2241, !noundef !5
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val6.i, i64 %.val.i)
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %spec.select.i.i.i)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.sink.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 208)
  %i.k = load i64, ptr %i.d, align 8, !range !9, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit, !prof !8

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #20
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = icmp ule i64 %.sroa.0.0.i.sink.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.n, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  br i1 %i.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit
  %spec.select.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.57.0.copyload, i64 %.sroa.4.0.copyload)
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %spec.select.i.i.i.i.i) ; 2 uses
  %i.u = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.n
  br i1 %i.u, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i, !prof !23

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef 8, i64 noundef 208)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i_crit_edge unwind label %bb.l

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !2244
  %.pre18 = load i64, ptr %i.t, align 8, !alias.scope !2244
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i_crit_edge, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i
  %i.v = phi i64 [ %.pre18, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i_crit_edge ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit ], [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ] ; 3 uses
  %i.w = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i_crit_edge ], [ %i.q, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit ], [ %i.q, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1K_13DistinctCache15to_record_batchs0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2245
  store i64 %.sroa.03.0.copyload, ptr %i.c, align 8, !noalias !2244
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx5, align 8, !noalias !2244
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.57.0.copyload, ptr %.sroa.57.0..sroa_idx8, align 8, !noalias !2244
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx10, align 8, !noalias !2244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2246
  %i.x = inttoptr i64 %.sroa.03.0.copyload to ptr ; 2 uses
  %i.y = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB1n_13DistinctCache15to_record_batchs0_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1r_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !2247

bb.e:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.g) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.ab = phi i64 [ %i.v, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.k ] ; 3 uses
  %.sroa.0.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ac = add nuw i64 %.sroa.0.013.i.i.i.i, 1     ; 2 uses
  %i.ad = add nuw i64 %.sroa.0.013.i.i.i.i, %.sroa.4.0.copyload ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2248
  %i.ae = load ptr, ptr %i.x, align 8, !noalias !2249, !align !6, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.aa, align 8, !noalias !2249 ; 2 uses
  %i.ag = and i64 %i.af, 1152921504606846968      ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag ; 2 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i28, label %._crit_edge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 64
  %i.aj = add nsw i64 %.sroa.5.0.i.i.i.i.i.i.i29, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ak = shl i64 %i.af, 3
  %.idx = and i64 %i.ak, 56                       ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i.i.i.i31 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i31, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i, label %.lr.ph.a

bb.i:                                             ; preds = %.lr.ph.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.a = icmp eq ptr %i.al, %2
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.a, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.i
  %3 = phi ptr [ %i.al, %bb.i ], [ %i.ah, %._crit_edge ] ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.a = load i64, ptr %3, align 8, !alias.scope !2250, !noalias !2251, !noundef !5
  %i.am = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.a, %i.ad
  br i1 %i.am, label %.loopexit.i.i.i.i.i.i, label %bb.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.h
  %.sroa.0.05.i.i.i.i.i.i.i30 = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %bb.g ] ; 9 uses
  %.sroa.5.0.i.i.i.i.i.i.i29 = phi i64 [ %i.aj, %bb.h ], [ %i.ag, %bb.g ]
  %.val13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i.i.i.i30, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.an = icmp eq i64 %.val13.i.i.i.i.i.i.i.i, %i.ad
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 8
  %.val13.i.1.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.ap = icmp eq i64 %.val13.i.1.i.i.i.i.i.i.i, %i.ad
  %i.aq = or i1 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 16
  %.val13.i.2.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.as = icmp eq i64 %.val13.i.2.i.i.i.i.i.i.i, %i.ad
  %i.at = or i1 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 24
  %.val13.i.3.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.av = icmp eq i64 %.val13.i.3.i.i.i.i.i.i.i, %i.ad
  %i.aw = or i1 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 32
  %.val13.i.4.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.ay = icmp eq i64 %.val13.i.4.i.i.i.i.i.i.i, %i.ad
  %i.az = or i1 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 40
  %.val13.i.5.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.bb = icmp eq i64 %.val13.i.5.i.i.i.i.i.i.i, %i.ad
  %i.bc = or i1 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 48
  %.val13.i.6.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.be = icmp eq i64 %.val13.i.6.i.i.i.i.i.i.i, %i.ad
  %i.bf = or i1 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i30, i64 56
  %.val13.i.7.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !2250, !noalias !2252, !noundef !5
  %i.bh = icmp eq i64 %.val13.i.7.i.i.i.i.i.i.i, %i.ad
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %.loopexit.i.i.i.i.i.i, label %bb.h

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE13with_capacityCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.b, i64 noundef 1024)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !2247

.loopexit.i.i.i.i.i.i:                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i, %.lr.ph.a
  invoke void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE13with_capacityCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.a, i64 noundef 1024)
          to label %.noexc11.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i, !noalias !2247

.noexc11.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !2253
  br label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i

_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i: ; preds = %bb.i, %._crit_edge, %.noexc11.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i.i.i, %.noexc11.i.i.i.i ], [ -1, %._crit_edge ], [ -1, %bb.i ]
  store i64 %.sroa.03.0.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !2254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.z, i64 200, i1 false), !noalias !2254
  br label %bb.k

.loopexit.split-lp.loopexit.i.i.i.i:              ; preds = %.loopexit.i.i.i.i.i.i, %bb.j
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i:     ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1m_5types14StringViewTypeEEE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i
  %lpad.loopexit.split-lp15.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i
  %.val8.i.i.i.i = phi i64 [ %i.ab, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %i.v, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ]
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp15.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ]
  store i64 %.val8.i.i.i.i, ptr %i.t, align 8, !alias.scope !2244, !noalias !2255
  br label %.body

bb.k:                                             ; preds = %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2248
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false), !noalias !2247
  %i.bk = add i64 %i.ab, 1                        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ac, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit, label %bb.f

bb.l:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.l ], [ %lpad.phi.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builder22GenericByteViewBuilderNtNtB1A_5types14StringViewTypeEEEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.e) #21
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %bb.k, %bb.e
  %.val6.i.i.i.i = phi i64 [ %i.v, %bb.e ], [ %i.bk, %bb.k ]
  store i64 %.val6.i.i.i.i, ptr %i.t, align 8, !alias.scope !2244, !noalias !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.m:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB17_4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1G_NtB1G_13DistinctCache4push0EE9from_iterB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2262 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.b, align 8, !range !9, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1j_NtB1j_13DistinctCache4push0EEB1n_.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #20
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1j_NtB1j_13DistinctCache4push0EEB1n_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2263
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !2263
  store ptr %i.r, ptr %i.a, align 8, !noalias !2263
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !2263
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB26_13DistinctCache4push0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callINtNtBc_6option6OptionNtB26_5ValueENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5e_3VecB4w_E14extend_trustedBN_E0E0EB2a_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1j_NtB1j_13DistinctCache4push0EEB1n_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1j_NtB1j_13DistinctCache4push0EEB1n_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB17_4iter8adapters4take4TakeINtNtB3n_3map3MapINtNtNtB17_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMB1H_NtB1H_13DistinctCache15to_record_batchs_0EEE9from_iterB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2279 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2280, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !2280, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i = load ptr, ptr %i.g, align 8, !alias.scope !2280, !nonnull !5, !noundef !5
  %i.h = ptrtoint ptr %.val6.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 1
  %.sroa.0.0.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.k)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.sink.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i.sink.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.l = load i64, ptr %i.b, align 8, !range !9, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !10, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit, !prof !8

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #20
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = icmp ule i64 %.sroa.0.0.i.sink.i, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.o, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.u, align 8
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  br i1 %i.f, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEE7reserveB1m_.exit.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit.i.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload), "nonnull"(ptr %.sroa.56.0.copyload) ]
  %i.v = ptrtoint ptr %.sroa.56.0.copyload to i64
  %i.w = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 1
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.y) ; 2 uses
  %i.z = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.o
  br i1 %i.z, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEE7reserveB1m_.exit.i.i, !prof !23

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2m_13DistinctCache15to_record_batchs_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2q_.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEE7reserveB1m_.exit.i.i_crit_edge unwind label %bb.f

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEE7reserveB1m_.exit.i.i_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !2283
end_hunk_0
