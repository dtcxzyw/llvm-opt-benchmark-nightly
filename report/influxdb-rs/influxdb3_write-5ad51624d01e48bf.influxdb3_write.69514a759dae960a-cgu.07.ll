Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.07?download=true
inline.NumInlined: 2366
inline.NumDeleted: 1166
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore16put_with_retries0Cs92BnbMq7p8c_15influxdb3_write:bb.a
  %i.gf = load i8, ptr %i.ge, align 1, !range !32, !noundef !15
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit19

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit17
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #34
          to label %bb.bx unwind label %bb.bo

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit19: ; preds = %bb.ca, %bb.bz, %bb.cb, %bb.bx
  store i8 2, ptr %i.m, align 8
  resume { ptr, i32 } %.pn6

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !2929, !noundef !15 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit19, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gk = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !2930
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.cb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit19

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_NtCs1LivM9IBWqb_12object_store5ErrorEEp6OutputbNtNtBP_6marker4SendNtB2g_4SyncEL_E9drop_slowCs6Y3vYp7Mdwn_18object_store_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit19 unwind label %bb.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore19delete_with_retries0Cs92BnbMq7p8c_15influxdb3_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !2946 {
bb.a:
  %i.a = alloca [752 x i8], align 8               ; 8 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !26, !noundef !15
  switch i8 %i.e, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.f
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 0, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.l = load <2 x ptr>, ptr %i.h, align 8
  store <2 x ptr> %i.l, ptr %i.k, align 8, !noalias !2947
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store i8 0, ptr %i.m, align 8, !noalias !2947
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2948
  %i.n = tail call noundef align 8 dereferenceable_or_null(752) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 752, i64 noundef 8) #29, !noalias !2948 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.g, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 752) #35
          to label %.noexc.i unwind label %bb.d, !noalias !2949

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 dereferenceable(752) %i.a) #34
          to label %.body unwind label %bb.e, !noalias !2949

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !2949
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.n, ptr noundef nonnull align 8 dereferenceable(752) %i.a, i64 752, i1 false), !noalias !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2947
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @1580, ptr %i.s, align 8
  br label %bb.k

.body:                                            ; preds = %bb.d, %bb.q, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.p, %bb.d ], [ %i.ao, %bb.r ], [ %i.ai, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ai, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.u = load i8, ptr %i.t, align 2, !range !32, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.w, label %bb.v

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #35
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val7 = load ptr, ptr %i.y, align 8
  %i.x = getelementptr i8, ptr %1, i64 112
  %.val8 = load ptr, ptr %i.x, align 8, !nonnull !15, !align !18, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val7, ptr nonnull %.val8) #34
          to label %.body unwind label %bb.u

bb.k:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.b, align 8, !range !28, !noundef !15
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.m, label %bb.n

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.m
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit ], [ 3, %bb.m ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 112
  %.val6 = load ptr, ptr %i.ab, align 8, !nonnull !15, !align !18, !noundef !15 ; 5 uses
  %i.ac = load ptr, ptr %.val6, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !23, !invariant.load !15 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !24, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !invariant.load !15 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !24, !invariant.load !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #29
  br label %.body

bb.r:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.p
  %i.ap = load i64, ptr %i.c, align 8, !range !46, !noundef !15 ; 4 uses
  %.not = icmp eq i64 %i.ap, -1
  br i1 %.not, label %bb.s, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit
  %4 = icmp ne i64 %i.ap, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ap, -9223372036854775801
  br i1 %5, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, %3
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.t, %bb.s
  %.sroa.0.014 = phi i64 [ %i.ap, %bb.s ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.014, ptr %0, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %common.ret

bb.t:                                             ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.r

bb.u:                                             ; preds = %bb.z, %bb.j, %bb.w
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.v:                                             ; preds = %bb.w, %.body
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.as = load i8, ptr %i.ar, align 1, !range !32, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit

bb.w:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #34
          to label %bb.v unwind label %bb.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.y, %bb.x, %bb.z, %bb.v
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2952, !noundef !15 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !2953
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_NtCs1LivM9IBWqb_12object_store5ErrorEEp6OutputbNtNtBP_6marker4SendNtB2g_4SyncEL_E9drop_slowCs6Y3vYp7Mdwn_18object_store_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries0Cs92BnbMq7p8c_15influxdb3_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !2980 {
bb.a:
  %.sroa.630 = alloca [64 x i8], align 8          ; 8 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [312 x i8], align 8               ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [320 x i8], align 8               ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [272 x i8], align 8               ; 5 uses
  %i.h = alloca [312 x i8], align 8               ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.1024 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !26, !noundef !15
  switch i8 %i.m, label %default.unreachable42 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable42:                            ; preds = %bb.h, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 745 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !15, !align !18, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.n, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !15, !align !18, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %.thread unwind label %bb.c

.body7:                                           ; preds = %bb.bk, %bb.c, %bb.d
  %.pn4 = phi { ptr, i32 } [ %.pn2, %bb.d ], [ %i.x, %bb.c ], [ %i.et, %bb.bk ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 745 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !range !32, !noundef !15
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store11RetryParamsECs92BnbMq7p8c_15influxdb3_write.exit

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.thread:                                          ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 746
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i8 0, ptr %i.n, align 1
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  store i8 0, ptr %i.y, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.z = load ptr, ptr %i.r, align 8, !nonnull !15, !align !18, !noundef !15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @113, ptr %.sroa.715.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 6, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.z, ptr %.sroa.917.0..sroa_idx, align 8
  %.sroa.1018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.p, ptr %.sroa.1018.0..sroa_idx, align 8
  %.sroa.1119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.t, ptr %.sroa.1119.0..sroa_idx, align 8
  %.sroa.1220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_RNvYNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store20RetryableObjectStore23raw_delete_with_retries00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBJ_5ErrorEE9call_onceCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.1220.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 416
  br label %bb.i

bb.d:                                             ; preds = %bb.bi, %.body
  %.pn2 = phi { ptr, i32 } [ %i.er, %bb.bi ], [ %eh.lpad-body, %.body ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #34
          to label %.body7 unwind label %bb.bm

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #35
  unreachable

bb.g:                                             ; preds = %bb.ab, %bb.aa
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtCs1LivM9IBWqb_12object_store5ErrorEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.g
  %i.af = phi ptr [ %i.ag, %bb.g ], [ %i.co, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtCs1LivM9IBWqb_12object_store5ErrorEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn11.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtCs1LivM9IBWqb_12object_store5ErrorEEp6OutputbNtNtB4_6marker4SendNtB2t_4SyncEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs6Y3vYp7Mdwn_18object_store_utils22retryable_object_store15retry_operationuNCNCNvYINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_ENtBG_20RetryableObjectStore23raw_delete_with_retries0s_0NCNCB1Y_s_00E0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.af) #34
          to label %bb.d unwind label %bb.bm

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !25, !noalias !2981
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 4 uses
  switch i8 %.pre, label %default.unreachable42 [
    i8 0, label %bb.i
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ai = phi ptr [ %i.ac, %.thread ], [ %i.ah, %bb.h ] ; 6 uses
  %i.aj = phi ptr [ %i.ab, %.thread ], [ %i.ag, %bb.h ] ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 418 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 417 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 419 ; 2 uses
  store i8 1, ptr %i.am, align 1, !noalias !2981
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !noalias !2981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2981
  store i8 1, ptr %i.ak, align 2, !noalias !2981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2981
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2981, !nonnull !15, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.as = load i64, ptr %i.ar, align 8, !noalias !2981, !noundef !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2981, !nonnull !15, !align !18, !noundef !15
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2981, !noundef !15 ; 2 uses
  store i8 1, ptr %i.al, align 1, !noalias !2981
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2981, !nonnull !15, !align !18, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2981, !nonnull !15, !align !18, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982)
end_hunk_0
