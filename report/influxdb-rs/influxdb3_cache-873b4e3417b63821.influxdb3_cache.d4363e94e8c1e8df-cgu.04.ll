Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.04?download=true
inline.NumInlined: 1300
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B4c_NtB4c_14LastCacheStore15to_record_batch0EEB4g_:bb.a
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread, label %bb.b

.noexc:                                           ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.ab

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  store ptr %i.o, ptr %i.b, align 8
  store ptr %i.p, ptr %i.h, align 8
  %i.q = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.r = icmp ult i64 %i.q, 576460752303423488
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB1z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_.exit unwind label %bb.d

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_.exit, %bb.f, %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.q ; 2 uses
  store ptr %i.o, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.p, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %i.q, 1
  store i64 %i.x, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !43, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !alias.scope !43, !nonnull !4, !noundef !4
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit.thread, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_.exit

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !44
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %.noexc

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.g

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_.exit: ; preds = %bb.c
  %i.ae = load i64, ptr %i.a, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = tail call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 1) ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !alias.scope !45, !noundef !4 ; 2 uses
  %i.ah = load i64, ptr %0, align 8, !range !6, !alias.scope !45, !noundef !4
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = icmp ugt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.f, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnENCNvMs8_B2j_NtB2j_14LastCacheStore15to_record_batch0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag, i64 noundef %i.af, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EE7reserveCsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTRNtBH_14LastCacheStateRNtBH_8KeyValueEENCNvMs0_BH_NtBH_9LastCache17to_record_batchess_0EEBL_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %.val5 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !48, !noundef !4 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !6, !alias.scope !48, !noundef !4
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.g, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit_crit_edge unwind label %bb.c

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.q, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB1O_8KeyValueEENCNvMs0_B1O_NtB1O_9LastCache17to_record_batchess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callNtB1O_22ExtendedLastCacheStateNCINvMsj_B12_INtB12_3VecB55_E14extend_trustedBN_E0E0EB1S_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB20_8KeyValueEENCNvMs0_B20_NtB20_9LastCache17to_record_batchess_0EEB24_.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBZ_8KeyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB20_8KeyValueEENCNvMs0_B20_NtB20_9LastCache17to_record_batchess_0EEB24_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtBH_8KeyValueNtBH_14LastCacheStateENCNvMs0_BH_NtBH_9LastCache17to_record_batchess0_0EEBL_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtBM_14LastCacheStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !65 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i16, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit
  %i.n = phi ptr [ %i.e, %.lr.ph ], [ %i.ao, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit ]
  %i.o = phi { ptr, ptr } [ %i.d, %.lr.ph ], [ %i.an, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !66, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !69, !noalias !70, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.q, align 8, !alias.scope !69, !noalias !70, !noundef !4 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.t, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !73
  %i.u = load i64, ptr %i.a, align 8, !range !8, !noalias !72, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = load i64, ptr %i.g, align 8, !range !9, !noalias !72, !noundef !4 ; 4 uses
  br i1 %i.v, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.h, align 8, !noalias !72
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.x) #20, !noalias !73
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i: ; preds = %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !noalias !72, !nonnull !4, !noundef !4 ; 3 uses
  %i.z = icmp ule i64 %i.t, %i.w
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  store i64 %i.w, ptr %i.b, align 8, !alias.scope !74, !noalias !67
  store ptr %i.y, ptr %i.i, align 8, !alias.scope !74, !noalias !67
  store i64 0, ptr %i.j, align 8, !alias.scope !74, !noalias !67
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i
  %i.aa = shl nuw nsw i64 %i.t, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull readonly align 8 %i.s, i64 %i.aa, i1 false), !noalias !75
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !74, !noalias !67
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i: ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i
  %i.ab = icmp eq i64 %i.t, %i.w
  br i1 %i.ab, label %bb.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit

bb.e:                                             ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._crit_edge.i.i unwind label %bb.f, !noalias !70

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.i, align 8, !alias.scope !76, !noalias !67
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g, !noalias !70

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !70
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit: ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i, %._crit_edge.i.i
  %i.ae = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.y, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_.exit.i.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.t
  store ptr %i.n, ptr %i.af, align 8, !noalias !77
  %2 = add nuw i64 %i.t, 1
  store i64 %2, ptr %i.j, align 8, !alias.scope !76, !noalias !67
  %.sroa.0.0.copyload4 = load i64, ptr %i.b, align 8, !noalias !66 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !67
  %.not = icmp eq i64 %.sroa.0.0.copyload4, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.copyload4, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store ptr %i.p, ptr %.sroa.76.0..sroa_idx, align 8
  %i.ag = load i64, ptr %i.k, align 8, !noundef !4 ; 5 uses
  %i.ah = icmp ult i64 %i.ag, 288230376151711744
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit: ; preds = %bb.j, %bb.h
  %i.ak = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.am = add nuw nsw i64 %i.ag, 1
  store i64 %i.am, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.an = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtBM_14LastCacheStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !65 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtB1Q_14LastCacheStateENCNvMs0_B1Q_NtB1Q_9LastCache17to_record_batchess0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.thread, label %bb.b

bb.i:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %.val = load i64, ptr %i.l, align 8, !noundef !4
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag, i64 noundef %i.aq, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22ExtendedLastCacheStateE7reserveBJ_.exit unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !92, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !95, !nonnull !4, !noundef !4
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !95
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column11FieldColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !98, !nonnull !4, !noundef !4
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !98
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column15TimestampColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.i = load ptr, ptr %i.b, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !101
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column9TagColumnE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnEEB1R_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !106, !alias.scope !107, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequexEECsidB8gjke19X_15influxdb3_cache.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecxENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume.i.i:                                ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.m, %bb.r ], [ %i.c, %bb.c ], [ %i.e, %bb.f ], [ %i.g, %bb.i ], [ %i.i, %bb.l ], [ %i.k, %bb.o ], [ %i.o, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequexEECsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecxENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnEBH_.exit

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtB18_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeINtNtB4_6option6OptionxEEECsidB8gjke19X_15influxdb3_cache.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtBQ_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeINtNtB4_6option6OptionxEEECsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionxEENtNtNtBQ_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnEBH_.exit

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtB18_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeINtNtB4_6option6OptionyEEECsidB8gjke19X_15influxdb3_cache.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtBQ_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeINtNtB4_6option6OptionyEEECsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionyEENtNtNtBQ_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache11CacheColumnEBH_.exit

bb.k:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtB18_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeINtNtB4_6option6OptiondEEECsidB8gjke19X_15influxdb3_cache.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptiondEENtNtNtBQ_3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataECsidB8gjke19X_15influxdb3_cache:bb.a
  %i.c = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(136) %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add nuw nsw i64 %.sroa.0.18, 1           ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.0.18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(136) %i.i) #21
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTaINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEEECsidB8gjke19X_15influxdb3_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1042, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.b, !noalias !1042, !inline_history !18

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #22, !noalias !1042
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #22, !noalias !1042
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBb_5types14StringViewTypeENtB9_5Array9into_data6vtableCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array9into_dataCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1049, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !1049, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i, !prof !7

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !1050, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCsidB8gjke19X_15influxdb3_cache.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1050, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1050
  br label %_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCsidB8gjke19X_15influxdb3_cache.exit

_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsidB8gjke19X_15influxdb3_cache.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1050
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE11extend_withCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1076, !noundef !4 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !1076, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %1, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge unwind label %bb.c

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge, %bb.a
  %i.j = phi i64 [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit_crit_edge ], [ %i.e, %bb.a ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = icmp ult i64 %i.j, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.o = icmp ugt i64 %1, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.x = add i64 %i.j, %1
  %i.y = add i64 %i.x, -1
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.q, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit
  %.sroa.0.070 = phi ptr [ %i.n, %.lr.ph ], [ %i.bz, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit ] ; 3 uses
  %.sroa.03.069 = phi i64 [ 1, %.lr.ph ], [ %i.by, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit ]
  %storemerge66 = phi i64 [ %i.j, %.lr.ph ], [ %i.ca, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.z = load i64, ptr %2, align 8, !range !10, !alias.scope !1077, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 2
  br i1 %.not.i, label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit, label %_RNvXsG_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

_RNvXsG_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.d
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1078, !nonnull !4, !noundef !4 ; 2 uses
  %.val3.i.i = load i64, ptr %i.q, align 8, !alias.scope !1078, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1080
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %.val3.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %_RNvXsG_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
  %i.aa = load i64, ptr %i.b, align 8, !range !8, !noalias !1080, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %i.r, align 8, !range !9, !noalias !1080, !noundef !4 ; 5 uses
  br i1 %i.ab, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i, !prof !7

bb.e:                                             ; preds = %.noexc15
  %i.ad = load i64, ptr %i.s, align 8, !noalias !1080
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ad) #20
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %.noexc15
  %i.ae = load ptr, ptr %i.s, align 8, !noalias !1080, !nonnull !4, !noundef !4 ; 4 uses
  %i.af = icmp ule i64 %.val3.i.i, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1080
  store i64 %i.ac, ptr %i.c, align 8, !noalias !1080
  store ptr %i.ae, ptr %i.t, align 8, !noalias !1080
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i, i64 %.val3.i.i
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %.noexc14, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i, %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
  %.sroa.015.044.i.i = phi ptr [ %i.ak, %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.val2.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i ] ; 4 uses
  %.sroa.7.043.i.i.a = phi i64 [ %i.al, %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i ] ; 7 uses
  %.sroa.10.042.i.i = phi i64 [ %i.ai, %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ac, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i ]
  %i.ai = add i64 %.sroa.10.042.i.i, -1           ; 2 uses
  %i.aj = icmp eq ptr %.sroa.015.044.i.i, %i.ag
  br i1 %i.aj, label %.noexc14, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.044.i.i, i64 24
  %i.al = add nuw nsw i64 %.sroa.7.043.i.i.a, 1
  %i.am = getelementptr i8, ptr %.sroa.015.044.i.i, i64 8
  %.val12.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1079, !noalias !1081, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.015.044.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.an, align 8, !alias.scope !1079, !noalias !1081, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1083
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %.val13.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1080

.noexc.i.i:                                       ; preds = %bb.f
  %i.ao = load i64, ptr %i.a, align 8, !range !8, !noalias !1083, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.v, align 8, !range !9, !noalias !1083, !noundef !4 ; 5 uses
  br i1 %i.ap, label %bb.g, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i, !prof !7

bb.g:                                             ; preds = %.noexc.i.i
  %i.ar = load i64, ptr %i.w, align 8, !noalias !1083
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ar) #20
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1080

.noexc14.i.i:                                     ; preds = %bb.g
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i: ; preds = %.noexc.i.i
  %i.as = load ptr, ptr %i.w, align 8, !noalias !1083, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = icmp ule i64 %.val13.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1083
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val12.i.i, i64 %.val13.i.i
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i, %bb.j
  %.sroa.012.041.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %.val12.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.7.040.i.i.i.i.i = phi i64 [ %i.bc, %bb.j ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.10.039.i.i.i.i.i = phi i64 [ %i.aw, %bb.j ], [ %i.aq, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i ]
  %i.aw = add i64 %.sroa.10.039.i.i.i.i.i, -1     ; 2 uses
  %i.ax = icmp eq ptr %.sroa.012.041.i.i.i.i.i, %i.au
  br i1 %i.ax, label %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.ay = load <2 x ptr>, ptr %.sroa.012.041.i.i.i.i.i, align 8, !alias.scope !1085, !noalias !1086
  %i.az = load ptr, ptr %.sroa.012.041.i.i.i.i.i, align 8, !alias.scope !1085, !noalias !1086, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !1087
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bc = add nuw nsw i64 %.sroa.7.040.i.i.i.i.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !19, !alias.scope !1085, !noalias !1086, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.041.i.i.i.i.i, i64 17
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !1085, !noalias !1086
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.7.040.i.i.i.i.i ; 3 uses
  store <2 x ptr> %i.ay, ptr %i.bi, align 8, !noalias !1083
  %.sroa.529.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i8 %i.bf, ptr %.sroa.529.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1083
  %.sroa.630.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 17
  store i8 %i.bh, ptr %.sroa.630.0..sroa_idx.i.i.i.i.i, align 1, !noalias !1083
  %i.bj = icmp eq i64 %i.aw, 0
  br i1 %i.bj, label %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.7.043.i.i.a ; 3 uses
  store i64 %i.aq, ptr %i.bk, align 8, !noalias !1080
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.as, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !1080
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val13.i.i, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !1080
  %i.bl = icmp eq i64 %i.ai, 0
  br i1 %i.bl, label %.noexc14, label %.lr.ph.i.i

bb.k:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body18

.body18:                                          ; preds = %.body.i, %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !1080
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.g
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.043.i.i.a, ptr %i.u, align 8, !noalias !1080
  %3 = icmp eq i64 %.sroa.7.043.i.i.a, 0
  br i1 %3, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i, label %.lr.ph144

bb.l:                                             ; preds = %.lr.ph144
  %i.bn = icmp eq i64 %i.bp, %.sroa.7.043.i.i.a
  br i1 %i.bn, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i, label %.lr.ph144

.lr.ph144:                                        ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.sroa.0.0.i.i.i143 = phi i64 [ %i.bp, %bb.l ], [ 0, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.0.0.i.i.i143
  %i.bp = add nuw nsw i64 %.sroa.0.0.i.i.i143, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.l unwind label %bb.n, !noalias !1088

bb.m:                                             ; preds = %.lr.ph147
  %i.bq = add nuw nsw i64 %.sroa.0.1.i.i.i145, 1  ; 2 uses
  %i.br = icmp eq i64 %i.bq, %.sroa.7.043.i.i.a
  br i1 %i.br, label %.body.i, label %.lr.ph147

bb.n:                                             ; preds = %.lr.ph144
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bt = icmp eq i64 %i.bp, %.sroa.7.043.i.i.a
  br i1 %i.bt, label %.body.i, label %.lr.ph147

.lr.ph147:                                        ; preds = %bb.n, %bb.m
  %.sroa.0.1.i.i.i145 = phi i64 [ %i.bq, %bb.m ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %.sroa.0.1.i.i.i145
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.bu) #21
          to label %bb.m unwind label %bb.o, !noalias !1088

bb.o:                                             ; preds = %.lr.ph147
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !1088
  unreachable

.body.i:                                          ; preds = %bb.m, %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body18 unwind label %bb.p, !noalias !1080

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %bb.l, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.k

bb.p:                                             ; preds = %.body.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !1080
  unreachable

.noexc14:                                         ; preds = %_RNvXsC_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_14LexRequirementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit.i.i
  store i64 %.val3.i.i, ptr %i.u, align 8, !noalias !1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1080
  br label %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit

bb.q:                                             ; preds = %._crit_edge
  store i64 %i.j, ptr %i.d, align 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(32) %2)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %bb.q
  ret void

._crit_edge.thread:                               ; preds = %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit, %._crit_edge
  %.sroa.0.0.lcssa100 = phi ptr [ %i.n, %._crit_edge ], [ %i.bz, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit ]
  %storemerge.lcssa99 = phi i64 [ %i.j, %._crit_edge ], [ %i.y, %_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa100, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.bx = add i64 %storemerge.lcssa99, 1
  store i64 %i.bx, ptr %i.d, align 8
  br label %bb.r

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RNvXsG_NtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_exprNtB5_20OrderingRequirementsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp149, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr14LexRequirementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache.exit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ]
  store i64 %storemerge66, ptr %i.d, align 8
  br label %bb.u

_RNvXs4_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtNtB7_5clone5Clone5cloneCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %.noexc14, %bb.d
  %i.by = add nuw i64 %.sroa.03.069, 1            ; 2 uses
  store i64 %i.z, ptr %.sroa.0.070, align 8
  %.sroa.5.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.070, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.070, i64 32 ; 2 uses
  %i.ca = add i64 %storemerge66, 1
  %exitcond.not = icmp eq i64 %i.by, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.s:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.t:                                             ; preds = %bb.u
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(32) %2) #21
          to label %bb.t unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE11extend_withCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1091, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !1091, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %i.l = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 %2, i64 %i.l, i1 false)
  %i.m = add i64 %i.f, %1
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.n
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs7fnekraeopg_15datafusion_expr12table_source27TableProviderFilterPushDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.n, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i8 %2, ptr %.sroa.0.0.lcssa29, align 1
  %i.o = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.o, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE11extend_withCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1094, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !1094, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.l = icmp ugt i64 %1, 1
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %i.m = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false)
  %i.n = add i64 %i.g, %1
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs8eNff9Ojv9L_24datafusion_physical_plan15filter_pushdown10PushedDownE7reserveCsidB8gjke19X_15influxdb3_cache.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa29, align 1
  %i.p = add i64 %storemerge.lcssa28, 1
end_hunk_1
begin_hunk_2_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIB12_RNtB1F_4NodeEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtB16_4iter8adapters4take4TakeINtNtB3A_3map3MapINtNtB3A_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterB11_TxIB12_B2N_EEENCNvMs_B1F_B2N_19evaluate_predicates0ENCB5I_s_0EEE9from_iterB1J_:bb.a
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBS_RNtB1v_4NodeEEEINtB2_10SpecExtendBQ_INtNtNtNtBW_4iter8adapters4take4TakeINtNtB3g_3map3MapINtNtB3g_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterBR_TxIBS_B2C_EEENCNvMs_B1v_B2C_19evaluate_predicates0ENCB5l_s_0EEE11spec_extendB1z_.exit

bb.r:                                             ; preds = %.noexc9
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1754
  store ptr %i.av, ptr %i.a, align 8, !noalias !1755
  store ptr %i.aw, ptr %i.ar, align 8, !noalias !1755
  %i.ax = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtBV_4Node19evaluate_predicates0INtB7_5FnMutTRTRINtNtBb_6option6OptionNtBV_5ValueERTxIB2D_B1Q_EEEEE8call_mutBZ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc10 unwind label %bb.ab

.noexc10:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1754
  br i1 %i.ax, label %bb.s, label %bb.q

bb.s:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1753
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !1756, !noundef !4 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !1756
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %.not.i.i.i.i.i8 = icmp eq ptr %.val.i.i.i.i, null ; 2 uses
  br i1 %.not.i.i.i.i.i8, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !1758
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.0.i.i.i.i.i = phi i64 [ undef, %bb.s ], [ %.val3.i.i.i.i, %bb.t ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !8, !alias.scope !1757, !noalias !1756, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.01.0.i.i.i.i.i = select i1 %i.bd, ptr %i.be, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1759
  store ptr %.val.i.i.i.i, ptr %i.c, align 8, !noalias !1759
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.7.8..sroa_idx.i.i, align 8, !noalias !1759
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %.sroa.8.8..sroa_idx.i.i, align 8, !noalias !1759
  %i.bf = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1760, !noundef !4 ; 5 uses
  %i.bg = icmp ult i64 %i.bf, 384307168202282326
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.i, align 8, !range !6, !alias.scope !1760, !noundef !4
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBF_RNtB1i_4NodeEEE7reserveB1m_.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBF_RNtB1i_4NodeEEE7reserveB1m_.exit.i.i: ; preds = %bb.z, %bb.v
  %i.bj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1760, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bl = add nuw nsw i64 %i.bf, 1
  store i64 %i.bl, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1759
  %i.bm = load i64, ptr %i.an, align 8, !alias.scope !1761, !noundef !4 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBS_RNtB1v_4NodeEEEINtB2_10SpecExtendBQ_INtNtNtNtBW_4iter8adapters4take4TakeINtNtB3g_3map3MapINtNtB3g_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterBR_TxIBS_B2C_EEENCNvMs_B1v_B2C_19evaluate_predicates0ENCB5l_s_0EEE11spec_extendB1z_.exit, label %bb.p

bb.w:                                             ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i.i8, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = atomicrmw add ptr %.val.i.i.i.i, i64 -1 release, align 8, !noalias !1762
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.aa

bb.z:                                             ; preds = %bb.v
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bf, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBF_RNtB1i_4NodeEEE7reserveB1m_.exit.i.i unwind label %bb.w

bb.aa:                                            ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ab:                                            ; preds = %bb.r, %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.ab ], [ %i.bo, %bb.y ], [ %i.bo, %bb.x ], [ %i.bo, %bb.w ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIB19_RNtB1w_4NodeEEEEB1A_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #21
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBD_RNtB10_4NodeEEEB14_.exit unwind label %bb.ac

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBS_RNtB1v_4NodeEEEINtB2_10SpecExtendBQ_INtNtNtNtBW_4iter8adapters4take4TakeINtNtB3g_3map3MapINtNtB3g_6filter6FilterINtNtNtNtB6_11collections5btree3map4IterBR_TxIBS_B2C_EEENCNvMs_B1v_B2C_19evaluate_predicates0ENCB5l_s_0EEE11spec_extendB1z_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBF_RNtB1i_4NodeEEE7reserveB1m_.exit.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterINtNtBb_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1X_NtB2k_4NodeEEENCNvMs_B2k_B3t_19evaluate_predicates0ENtNtNtB9_6traits8iterator8Iterator4nextB2o_.exit.thread.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.i

bb.ac:                                            ; preds = %bb.l, %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEIBD_RNtB10_4NodeEEEB14_.exit: ; preds = %bb.k, %bb.j, %bb.l, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.y, %bb.l ], [ %i.y, %bb.j ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB14_8KeyValueEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3set4IterB2c_ENCNvMs5_B14_NtB14_12LastCacheKey18evaluate_predicate0EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1785
  store ptr %i.f, ptr %i.c, align 8, !noalias !1786
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs5_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtBW_12LastCacheKey18evaluate_predicate0INtB7_5FnMutTRNtBW_8KeyValueEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.j = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.k, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #20
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.d
  %i.p = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = icmp ugt i64 %i.m, 3
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.s, align 8
  store i64 %i.m, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.noexc10, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1789
  store ptr %i.t, ptr %i.a, align 8, !noalias !1790
  br label %bb.g

bb.g:                                             ; preds = %.noexc9, %bb.f
  %i.u = invoke noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB18_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.v = invoke { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs5_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtBW_12LastCacheKey18evaluate_predicate0INtB7_5FnMutTRNtBW_8KeyValueEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.h
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc9
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1789
  %i.y = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1791, !noundef !4 ; 5 uses
  %i.z = icmp ult i64 %i.y, 576460752303423488
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1791, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i, label %.noexc10

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i, %bb.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1791, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  store ptr %i.w, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.x, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %i.y, 1
  store i64 %i.af, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1791
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1785
  store i64 0, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ah, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBP_8KeyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB1b_8KeyValueEEEB1f_.exit unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB1b_8KeyValueEEEB1f_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp33
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB14_8KeyValueEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB2c_B12_ENCNvMs5_B14_NtB14_12LastCacheKey18evaluate_predicates_0EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1814
  store ptr %i.f, ptr %i.c, align 8, !noalias !1815
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtBM_14LastCacheStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = call { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs5_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtBW_12LastCacheKey18evaluate_predicates_0INtB7_5FnMutTTRNtBW_8KeyValueRNtBW_14LastCacheStateEEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.i) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.l = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.p, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #20
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = icmp ugt i64 %i.o, 3
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8
  store i64 %i.o, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.noexc10, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1818
  store ptr %i.v, ptr %i.a, align 8, !noalias !1819
  br label %bb.g

bb.g:                                             ; preds = %.noexc9, %bb.f
  %i.w = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtBM_14LastCacheStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = invoke { ptr, ptr } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs5_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtBW_12LastCacheKey18evaluate_predicates_0INtB7_5FnMutTTRNtBW_8KeyValueRNtBW_14LastCacheStateEEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.y)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.h
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not10.i.i.i.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %.noexc9
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1818
  %i.ac = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1820, !noundef !4 ; 5 uses
  %i.ad = icmp ult i64 %i.ac, 576460752303423488
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load i64, ptr %i.e, align 8, !range !6, !alias.scope !1820, !noundef !4
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i, label %.noexc10

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ac, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i, %bb.i
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1820, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ac ; 2 uses
  store ptr %i.aa, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ab, ptr %i.ai, align 8
  %i.aj = add nuw nsw i64 %i.ac, 1
  store i64 %i.aj, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1820
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1814
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBH_8KeyValueEE7reserveBL_.exit.i.i
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtBP_8KeyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB1b_8KeyValueEEEB1f_.exit unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache14LastCacheStateRNtB1b_8KeyValueEEEB1f_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp33
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB50_4sync3ArceEE4intoENcNtNtB3s_5cache5Value0ENtNtNtB9_6traits8iterator8Iterator4nextB3u_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 16               ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1847
  store ptr %i.f, ptr %i.e, align 8, !noalias !1848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1849
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %0), !noalias !1850
  %i.g = load i128, ptr %i.d, align 16, !range !1851, !noalias !1849, !noundef !4 ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i128 %i.g, -1
  br i1 %.not.i21.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.h = phi i128 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.8.0..sroa_idx6.i.i.i.i, i64 48, i1 false), !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1852
  store i128 %i.h, ptr %i.b, align 16, !noalias !1853
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0INtB7_5FnMutTNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueEE8call_mutBW_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %i.b), !noalias !1854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1852
  %i.i = load i64, ptr %i.c, align 8, !range !11, !noalias !1852, !noundef !4 ; 2 uses
  %.not.i3.i.i.i.i = icmp eq i64 %i.i, -1
  br i1 %.not.i3.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1849
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %0), !noalias !1850
  %i.j = load i128, ptr %i.d, align 16, !range !1851, !noalias !1849, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i128 %i.j, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread, label %bb.b

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1847
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1847
  store i64 %i.i, ptr %i.a, align 8, !noalias !1855
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.k = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1858, !noalias !1859, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1858, !noalias !1859, !noundef !4
  %i.n = invoke { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.f unwind label %bb.e, !noalias !1860 ; 2 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i unwind label %bb.g, !noalias !1861

bb.f:                                             ; preds = %bb.d
  %i.p = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = invoke noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offseteECsidB8gjke19X_15influxdb3_cache(ptr noundef nonnull %i.r, i64 noundef %i.q)
          to label %bb.h unwind label %bb.e, !noalias !1860

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !1861
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.f
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1855
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread, %bb.h
  %.sroa.3.0 = phi i64 [ %i.q, %bb.h ], [ undef, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread ]
  %.sroa.0.0 = phi ptr [ %i.v, %bb.h ], [ null, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCslWccy9wMl4f_17datafusion_common6scalar11ScalarValueENCNvNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache14table_function20convert_filter_exprs0ENvYNtNtCscdodAO9FK5_5alloc6string6StringINtNtBb_7convert4IntoINtNtB4W_4sync3ArceEE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3q_.exit.thread ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter6ValuesNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCNvMs1_NtB3o_6legacyNtB50_9ColumnSet4iter0ENCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5I_9LastCache3news_0ENCB5C_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB5M_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.03 = alloca [27 x i8], align 8           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1910
  store ptr %i.e, ptr %i.c, align 8, !noalias !1911
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !noalias !1911
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1912, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1912 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i.i.i, %i.h
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionTRNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtB1l_6legacy16ColumnDefinitionEuINtNtNtBa_3ops12control_flow11ControlFlowB2O_ENCNvMs1_B3v_NtB3v_9ColumnSet4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2O_QNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB6n_9LastCache3news_0E0E0B6r_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionTRNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtB1l_6legacy16ColumnDefinitionEuINtNtNtBa_3ops12control_flow11ControlFlowB2O_ENCNvMs1_B3v_NtB3v_9ColumnSet4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2O_QNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB6n_9LastCache3news_0E0E0B6r_.exit.thread.i.i.i.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !1912
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1914
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %.val.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !10, !alias.scope !1917, !noalias !1918, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1917, !noalias !1918, !nonnull !4, !noundef !4
  %switch.idx.mult.i.i.i.i.i.i = shl nuw nsw i64 %.val.i.i.i.i.i.i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i.i.i, i64 %switch.idx.mult.i.i.i.i.i.i ; 2 uses
end_hunk_2
