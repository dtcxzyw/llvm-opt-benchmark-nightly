Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.12?download=true
inline.NumInlined: 824
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB7_20MemCachedObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore6delete0B9_:bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !invariant.load !16 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !18, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #24
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.n, %bb.m
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !16, !align !43, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !16, !noundef !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !16, !align !43, !noundef !16
  invoke void @_RNvMs6_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB5_5Cache6remove(ptr noundef nonnull align 8 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q, %bb.t
  store i64 %i.q, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.c, %bb.g, %bb.o, %bb.p, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.z, %bb.p ], [ %i.i, %bb.c ], [ %i.n, %bb.g ], [ %i.z, %bb.o ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.313, i64 64, i1 false)
  br label %bb.s

bb.u:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB7_20MemCachedObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore6rename0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !272, !noundef !16
  switch i8 %i.d, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !16, !align !43, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !43, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !43, !noundef !16
  %i.j = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_6rename(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.o, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.p, %bb.g ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.r, align 8
  %i.q = getelementptr i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.q, align 8, !nonnull !16, !align !43, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache(ptr %.val3, ptr nonnull %.val4) #29
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.b, align 8, !range !918, !noundef !16
  %i.t = icmp eq i64 %i.s, -2
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %1, i64 32
  %.val2 = load ptr, ptr %i.u, align 8, !nonnull !16, !align !43, !noundef !16 ; 5 uses
  %i.v = load ptr, ptr %.val2, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !17, !invariant.load !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !18, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !17, !invariant.load !16 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !18, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #24
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB7_20MemCachedObjectStoreNtCs1LivM9IBWqb_12object_store11ObjectStore8get_opts0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [8 x i8], align 8           ; 4 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 4 uses
  %.sroa.12124 = alloca [40 x i8], align 8        ; 5 uses
  %.sroa.0.sroa.0.sroa.10 = alloca [80 x i8], align 8 ; 5 uses
  %i.e = alloca [192 x i8], align 8               ; 15 uses
  %i.f = alloca [136 x i8], align 8               ; 5 uses
  %i.g = alloca [96 x i8], align 8                ; 16 uses
  %i.h = alloca [88 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.568.sroa.3 = alloca [40 x i8], align 8   ; 2 uses
  %i.l = alloca [72 x i8], align 8                ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !range !306, !noundef !16
  switch i8 %i.o, label %default.unreachable177 [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.b
    i8 4, label %bb.bk
  ]

default.unreachable177:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 153 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !16, !align !43, !noundef !16 ; 2 uses
  store i8 0, ptr %i.q, align 2
  store i8 1, ptr %i.p, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val = load ptr, ptr %i.u, align 8, !nonnull !16, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !16, !align !43, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  invoke fastcc void @_RNvMs6_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB5_5Cache3get(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.y, align 8, !range !678, !noundef !16
  %.not = icmp eq i64 %i.aa, 2
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !nonnull !16, !align !43, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.p, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %i.t, i64 136, i1 false)
  %i.ac = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8get_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.f)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.8.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.8.0..sroa_idx66, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body57

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = extractvalue { ptr, ptr } %i.ac, 0
  %i.ah = extractvalue { ptr, ptr } %i.ac, 1
  store ptr %i.ag, ptr %i.t, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.bk

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtBJ_15CacheEntryState5value0EBL_(ptr noundef nonnull align 8 %i.ak) #29
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache10CacheValueEEB1c_.exit54 unwind label %bb.au

bb.m:                                             ; preds = %bb.b, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  invoke fastcc void @_RNCNvMs5_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB7_15CacheEntryState5value0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.l, ptr noundef nonnull align 8 %i.ak, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr %i.l, align 8, !range !918, !noundef !16 ; 3 uses
  %i.am = icmp eq i64 %i.al, -2
  br i1 %i.am, label %bb.o, label %bb.p

common.ret:                                       ; preds = %bb.bm, %bb.bf, %bb.o
  %.sink = phi i8 [ 4, %bb.bm ], [ 1, %bb.bf ], [ 3, %bb.o ]
  store i8 %.sink, ptr %i.n, align 8
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.568.sroa.0.0.copyload = load i64, ptr %.sroa.568.0..sroa_idx, align 8
  %.sroa.568.sroa.2.0..sroa.568.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.568.sroa.2.0.copyload = load i64, ptr %.sroa.568.sroa.2.0..sroa.568.0..sroa_idx.sroa_idx, align 8
  %.sroa.568.sroa.3.0..sroa.568.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.568.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.568.sroa.3.0..sroa.568.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs5_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtBJ_15CacheEntryState5value0EBL_(ptr noundef nonnull align 8 %i.ak)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsidB8gjke19X_15influxdb3_cache13parquet_cache10CacheValueEEB1c_.exit54

bb.r:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %i.al, -1
  br i1 %.not.i, label %bb.s, label %bb.bb

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store ptr %.sroa.3.0.copyload, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.091.0.copyload = load i64, ptr %i.ao, align 8 ; 2 uses
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.592.0.copyload = load i64, ptr %.sroa.592.0..sroa_idx, align 8 ; 3 uses
  %.not.i39 = icmp eq i64 %.sroa.091.0.copyload, -1
  br i1 %.not.i39, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.693.0.copyload = load i64, ptr %.sroa.693.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sroa.592.0.copyload, ptr %.sroa.4.i, align 8, !noalias !982
  store i64 %.sroa.693.0.copyload, ptr %.sroa.7.i, align 8, !noalias !982
  switch i64 %.sroa.091.0.copyload, label %default.unreachable.i [
    i64 0, label %3
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

default.unreachable.i:                            ; preds = %bb.t
  unreachable

3:                                                ; preds = %bb.t
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 128
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %3, %bb.u
  %.sroa.4.0.in.i.i = phi ptr [ %.sroa.7.i, %3 ], [ %i.ap, %bb.u ], [ %.sroa.4.i, %bb.t ]
  %.sroa.7.0.ph = phi i64 [ %.sroa.592.0.copyload, %3 ], [ %.sroa.592.0.copyload, %bb.u ], [ 0, %bb.t ]
  %.sroa.4.0.i.i = load i64, ptr %.sroa.4.0.in.i.i, align 8, !noalias !982, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !986, !noundef !16
  invoke void @_RNvNtCsidB8gjke19X_15influxdb3_cache13parquet_cache11check_range(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, i64 noundef %.sroa.7.0.ph, i64 noundef %.sroa.4.0.i.i, i64 noundef %i.ar)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit: ; preds = %bb.v
  %.pr = load i64, ptr %i.j, align 8, !alias.scope !992, !noalias !995 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  switch i64 %.pr, label %bb.az [
    i64 -2, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit._crit_edge
    i64 -1, label %bb.x
  ]

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit._crit_edge: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit
  %.val36169.pre = load ptr, ptr %i.m, align 8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit.thread

bb.x:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !992, !noalias !995, !noundef !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !992, !noalias !995, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val36 = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.val36, i64 112
  invoke void @_RINvMNtCsuxFxh2mtOX_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.ax, i64 noundef %i.au, i64 noundef %i.aw)
          to label %bb.z unwind label %bb.y

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit.thread: ; preds = %bb.s, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit._crit_edge
  %.val36169 = phi ptr [ %.val36169.pre, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit._crit_edge ], [ %.sroa.3.0.copyload, %bb.s ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val36169, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !997, !nonnull !16, !align !43, !noundef !16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !997, !nonnull !16, !noundef !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.val36169, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %.val36169, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !997, !noundef !16
  %i.be = getelementptr inbounds nuw i8, ptr %.val36169, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !noalias !997, !noundef !16
  invoke void %i.ba(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.bb, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %bb.z unwind label %bb.y, !inline_history !1003

bb.y:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit.thread, %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_3ops5range5RangeyEE3mapINtNtB5_6result6ResultBI_NtCs1LivM9IBWqb_12object_store5ErrorENCNCNvXss_NtCsidB8gjke19X_15influxdb3_cache13parquet_cacheNtB2p_20MemCachedObjectStoreNtB1G_11ObjectStore8get_opts0s_0EB2r_.exit.thread, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.5102.0..sroa.5.0..sroa_idx.i45.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5102.0..sroa.5.0..sroa_idx.i45.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  store i64 0, ptr %i.h, align 8, !alias.scope !1007, !noalias !1004
  %.sroa.4.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i44, align 8, !alias.scope !1007, !noalias !1004
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 -1, ptr %.sroa.5.0..sroa_idx.i45, align 8, !alias.scope !1009
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1010
  %i.bh = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1089) 88, i64 noundef 8) #24, !noalias !1010 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.aa, label %bb.ad, !prof !6

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #28
          to label %.noexc.i unwind label %bb.ab, !noalias !1015

.noexc.i:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtBa_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorEEj1_NtB4_11PartialDrop12partial_dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx.i45, i64 noundef 0, i64 noundef 1)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aw

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bh, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @237, ptr %i.bm, align 8
  store i64 -1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val29 = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val29, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1021
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bn)
          to label %.noexc48 unwind label %bb.ao

.noexc48:                                         ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %.val29, i64 88
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1019, !noalias !1016, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1021
  %i.bq = getelementptr inbounds nuw i8, ptr %.val29, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !20, !alias.scope !1019, !noalias !1016, !noundef !16
  %.not.i46 = icmp eq i64 %i.br, -1
  br i1 %.not.i46, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1021
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.aj unwind label %bb.ai, !noalias !1016

bb.af:                                            ; preds = %.noexc48
  store i64 -1, ptr %i.c, align 8, !noalias !1021
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %.val29, i64 64 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !20, !alias.scope !1019, !noalias !1016, !noundef !16
  %.not4.i = icmp eq i64 %i.bt, -1
  br i1 %.not4.i, label %bb.ap, label %bb.ak

bb.ah:                                            ; preds = %bb.al, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.al ], [ %i.bu, %bb.ai ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.body49 unwind label %bb.an, !noalias !1016

bb.ai:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1021
  br label %bb.ag

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1021
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.am unwind label %bb.al, !noalias !1016

bb.al:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.ah unwind label %bb.an, !noalias !1016

bb.am:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload1.i = load i64, ptr %i.a, align 8, !noalias !1021
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1021
  br label %bb.ap

bb.an:                                            ; preds = %bb.al, %bb.ah
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !1016
  unreachable

.body49:                                          ; preds = %bb.ao, %bb.ah
  %.pn12 = phi { ptr, i32 } [ %.pn.i, %bb.ah ], [ %i.bx, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store16GetResultPayloadECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(32) %i.i) #29
          to label %bb.aw unwind label %bb.au

bb.ao:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.ap:                                            ; preds = %bb.am, %bb.ag
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.am ], [ -1, %bb.ag ]
  %i.by = getelementptr inbounds nuw i8, ptr %.val29, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1019
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.by, i64 12, i1 false), !alias.scope !1021
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %i.bp, ptr %i.ca, align 8, !alias.scope !1016, !noalias !1019
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1019
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.0.0.i, ptr %i.cc, align 8, !alias.scope !1016, !noalias !1019
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i47, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1021
  %.val28 = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16
  %i.cd = getelementptr i8, ptr %.val28, i64 128
end_hunk_0
