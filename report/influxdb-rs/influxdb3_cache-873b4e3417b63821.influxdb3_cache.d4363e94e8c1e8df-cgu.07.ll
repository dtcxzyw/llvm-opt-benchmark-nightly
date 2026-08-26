Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.07?download=true
inline.NumInlined: 410
inline.NumDeleted: 150
begin_hunk_0_@_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCsidB8gjke19X_15influxdb3_cache:bb.a
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsidB8gjke19X_15influxdb3_cache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsidB8gjke19X_15influxdb3_cache.exit
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream8and_thenINtB5_7AndThenINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1o_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3F_5ErrorENtNtB1o_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyB3e_ENCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB5z_20MemCachedObjectStoreNtB3F_11ObjectStore13delete_stream0EB2o_9poll_nextB5B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.9.sroa.12 = alloca [16 x i8], align 8    ; 8 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.c = load i64, ptr %1, align 8, !range !94, !noundef !3 ; 3 uses
  %.not110 = icmp eq i64 %i.c, -3
  br i1 %.not110, label %bb.c, label %._crit_edge

._crit_edge.thread:                               ; preds = %bb.k, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  store i64 -2, ptr %1, align 8, !alias.scope !489, !noalias !494
  br label %bb.r

._crit_edge:                                      ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  store i64 -2, ptr %1, align 8, !alias.scope !501, !noalias !502
  %.not.i.i = icmp eq i64 %i.c, -2
  br i1 %.not.i.i, label %bb.b, label %bb.r, !prof !505

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #23, !noalias !506
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2t_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !94, !noundef !3 ; 2 uses
  switch i64 %i.g, label %bb.g [
    i64 -3, label %bb.d
    i64 -2, label %bb.e
    i64 -1, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -3, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %bb.e
  %.sroa.0.0 = phi i64 [ %.lcssa97127, %bb.r ], [ -2, %bb.e ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %.sroa.415.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.436.0..sroa_idx, i64 16, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.657.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.516.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12, i64 16, i1 false)
  store i64 %i.g, ptr %0, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.415.sroa.0.0.copyload, ptr %.sroa.455.0..sroa_idx, align 8
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.035.0.copyload = load i64, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.436.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.12, i64 16, i1 false)
  store i64 %.sroa.035.0.copyload, ptr %i.a, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.i, !noalias !507

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j, !noalias !507

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !507
  unreachable

common.resume:                                    ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body68, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i ], [ %i.h, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.p
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.m, %bb.p ], [ %i.k, %bb.m ]
  store i64 -9223372036854775794, ptr %1, align 8, !noalias !510
  br label %common.resume

bb.k:                                             ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %1, align 8, !range !94, !alias.scope !513, !noalias !510, !noundef !3
  switch i64 %i.j, label %bb.o [
    i64 -3, label %._crit_edge.thread
    i64 -2, label %._crit_edge.thread
    i64 -1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i unwind label %bb.m, !noalias !510

bb.m:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i unwind label %bb.n, !noalias !510

bb.n:                                             ; preds = %bb.m
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !510
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %._crit_edge.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12)
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.lcssa97127 = phi i64 [ -9223372036854775794, %._crit_edge.thread ], [ %i.c, %._crit_edge ]
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa.0.0..sroa_idx.i.i, i64 64, i1 false)
  store i64 -3, ptr %1, align 8, !noalias !516
  br label %bb.f

bb.s:                                             ; preds = %bb.q, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream8and_thenINtB5_7AndThenINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1o_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB3F_5ErrorENtNtB1o_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyB3e_ENCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB5z_20MemCachedObjectStoreNtB3F_11ObjectStore13delete_stream0EB2o_9size_hintB5B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !94, !noundef !3
  %i.c = icmp ne i64 %i.b, -3
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs1LivM9IBWqb_12object_store4path4PathNtB2s_5ErrorENtNtBK_6marker4SendEL_EEB1K_9size_hintCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  %i.f = load i64, ptr %i.a, align 8, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !35, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = trunc nuw i64 %i.h to i1                 ; 2 uses
  %i.l = add i64 %i.j, %i.d                       ; 2 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %.sroa.43.0 = select i1 %i.k, i64 %i.l, i64 undef
  %narrow = select i1 %i.k, i1 %i.m, i1 false
  %.sroa.02.0 = zext i1 %narrow to i64
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 %i.d)
  store i64 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_4ChanNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache20EventualCacheRequestNtNtB7_7bounded9SemaphoreENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBZ_(ptr noundef nonnull align 128 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 4)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 2, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 9, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 9, ptr noundef nonnull @55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  %i.j = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCsaIKnL9StOw_6anyhow7wrapperINtB5_12DisplayErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !519, !noalias !522, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !519, !noalias !522, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !519
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !524
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.a, align 8, !noalias !524
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 8, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 13, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 5, ptr noundef nonnull readonly %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !524
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsIdnmPPg5ba_10data_types14TimestampRangeNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !528
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !528
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !528
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsIdnmPPg5ba_10data_types15TimestampMinMaxNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !532
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCsj9JzdWj4GcM_12arrow_schema11SortOptionsNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !536
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %i.a, align 8, !noalias !536
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 10, ptr noundef nonnull readonly dereferenceable(2) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !536
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !540
  store ptr %i.b, ptr %i.a, align 8, !noalias !540
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !540
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !544
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.a, align 8, !noalias !544
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 7, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !544
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !548, !noalias !551, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !548, !noalias !551, !noundef !3
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !548
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !553
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !553
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !553
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !557
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 7, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !561, !noalias !564, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  store ptr %i.c, ptr %i.a, align 8, !noalias !566
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !566
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRRSjNtB6_5Debug3fmtCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !570
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !576
end_hunk_0
