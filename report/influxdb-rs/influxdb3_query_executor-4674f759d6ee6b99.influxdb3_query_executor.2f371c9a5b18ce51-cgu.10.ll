Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.10?download=true
inline.NumInlined: 4139
inline.NumDeleted: 1124
begin_hunk_0_@_RNCNvYNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream13blocking_read0Cs43kcu4yvms7_24influxdb3_query_executor:bb.a

bb.f:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.o, ptr %i.q, align 8
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge, %bb.d
  %i.r = phi ptr [ %.pre, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge ], [ %i.f, %bb.d ]
  %i.s = invoke { ptr, ptr } @_RNvXse_NtCsbkGFX030hZe_18wasmtime_wasi_http4bodyNtB5_22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io4poll8Pollable5ready(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r)
          to label %bb.al unwind label %bb.ak     ; 2 uses

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #32
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #32
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val17 = load ptr, ptr %i.v, align 8
  %i.u = getelementptr i8, ptr %1, i64 48
  %.val18 = load ptr, ptr %i.u, align 8, !nonnull !4, !align !41, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val17, ptr nonnull %.val18) #34
          to label %.body unwind label %bb.s

bb.j:                                             ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = invoke noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1u_4pollCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %common.ret, label %bb.l

common.ret:                                       ; preds = %bb.v, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25
  %.sink71 = phi i64 [ 1, %bb.k ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25 ], [ 1, %bb.v ]
  %.sink = phi i8 [ 3, %bb.k ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25 ], [ 4, %bb.v ]
  store i64 %.sink71, ptr %0, align 8
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  %.val15 = load ptr, ptr %i.v, align 8           ; 5 uses
  %i.x = getelementptr i8, ptr %1, i64 48
  %.val16 = load ptr, ptr %i.x, align 8, !nonnull !4, !align !41, !noundef !4 ; 5 uses
  %i.y = load ptr, ptr %.val16, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  invoke void %i.y(ptr noundef nonnull %.val15)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !145, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !145, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #31
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.o, %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !align !41, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  invoke void @_RNvXsd_NtCsbkGFX030hZe_18wasmtime_wasi_http4bodyNtB5_22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream4read(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.al, i64 noundef %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25 unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25: ; preds = %bb.an, %bb.ao, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %common.ret

bb.s:                                             ; preds = %bb.am, %bb.i, %bb.t
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

.body:                                            ; preds = %bb.ac, %bb.am, %bb.aj, %bb.ab, %bb.aa, %bb.q, %bb.p, %bb.i, %bb.t, %bb.ak, %bb.r, %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.ce, %bb.ak ], [ %i.t, %bb.i ], [ %i.m, %bb.e ], [ %i.bc, %bb.aa ], [ %i.ae, %bb.p ], [ %i.ar, %bb.t ], [ %i.bm, %bb.ac ], [ %i.ae, %bb.q ], [ %i.cd, %bb.aj ], [ %i.bc, %bb.ab ], [ %i.cj, %bb.am ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn10

bb.t:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %.val13 = load ptr, ptr %i.at, align 8
  %i.as = getelementptr i8, ptr %1, i64 56
  %.val14 = load ptr, ptr %i.as, align 8, !nonnull !4, !align !41, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val13, ptr nonnull %.val14) #34
          to label %.body unwind label %bb.s

bb.u:                                             ; preds = %bb.al, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.au = invoke noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1u_4pollCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  br i1 %i.au, label %common.ret, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val = load ptr, ptr %i.at, align 8            ; 5 uses
  %i.av = getelementptr i8, ptr %1, i64 56
  %.val12 = load ptr, ptr %i.av, align 8, !nonnull !4, !align !41, !noundef !4 ; 5 uses
  %i.aw = load ptr, ptr %.val12, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.aw(ptr noundef nonnull %.val)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit24, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !145, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit24

bb.aa:                                            ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %.val12, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !145, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #31
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit24: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !41, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  invoke void @_RNvXsd_NtCsbkGFX030hZe_18wasmtime_wasi_http4bodyNtB5_22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream4read(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bj, i64 noundef %i.bl)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit24
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11095)
  %i.bn = load ptr, ptr %i.b, align 8, !alias.scope !11098, !noalias !11095, !noundef !4 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !11100 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !11100 ; 3 uses
  br i1 %i.bo, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.1248.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.1248.sroa.0.0.copyload = load ptr, ptr %.sroa.1248.0..sroa_idx49, align 8, !alias.scope !11101 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bu = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bv = icmp eq ptr %i.bs, null
  br i1 %i.bv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !noundef !4 ; 2 uses
  %i.by = icmp ugt i8 %i.bx, 9
  br i1 %i.by, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.bn, ptr %i.a, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bu, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bt, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.1248.sroa.0.0.copyload, ptr %.sroa.655.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25

bb.ah:                                            ; preds = %bb.af
  %i.bz = add nuw nsw i8 %i.bx, 1
  store i8 %i.bz, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !11102, !nonnull !4, !noundef !4
  invoke void %i.cb(ptr noundef %.sroa.1248.sroa.0.0.copyload, ptr noundef %i.bu, i64 noundef %i.bt)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge unwind label %bb.aj, !inline_history !11107

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit_crit_edge: ; preds = %bb.ah
  %.pre = load ptr, ptr %i.bi, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.ai:                                            ; preds = %bb.af
  %i.cc = invoke { i64, ptr } @_RNvMNtCscFUs5937I7W_16wasmtime_wasi_io7streamsNtB2_11StreamError4trap(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 30)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.aj:                                            ; preds = %bb.an, %bb.ah
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.cf = extractvalue { ptr, ptr } %i.s, 0
  %i.cg = extractvalue { ptr, ptr } %i.s, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.cg, ptr %i.ci, align 8
  br label %bb.u

bb.am:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !11108, !nonnull !4, !noundef !4
  invoke void %i.cl(ptr noundef %.sroa.1248.sroa.0.0.copyload, ptr noundef %i.bu, i64 noundef %i.bt)
          to label %.body unwind label %bb.s, !inline_history !11107

bb.an:                                            ; preds = %bb.ai
  %i.cm = extractvalue { i64, ptr } %i.cc, 0
  %i.cn = extractvalue { i64, ptr } %i.cc, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cm, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cn, ptr %i.cp, align 8
  store ptr null, ptr %i.a, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !11113, !nonnull !4, !noundef !4
  invoke void %i.cr(ptr noundef %.sroa.1248.sroa.0.0.copyload, ptr noundef %i.bu, i64 noundef %i.bt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25 unwind label %bb.aj, !inline_history !11107

bb.ao:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bq, ptr %i.cs, align 8, !alias.scope !11118
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bs, ptr %i.ct, align 8, !alias.scope !11118
  store ptr null, ptr %i.a, align 8, !alias.scope !11118
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit25
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream13blocking_skip0Cs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1017, !noundef !4
  switch i8 %i.d, label %default.unreachable32 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
  ]

default.unreachable32:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !align !41, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11121
  store ptr %i.e, ptr %i.a, align 8, !noalias !11121
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !11121
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.i, align 8, !noalias !11121
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !11124
  %i.j = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 16, 2697) 64, i64 noundef 8) #31, !noalias !11124 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #32
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvYNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream13blocking_read0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #34
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11121
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @1638, ptr %i.o, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val4 = load ptr, ptr %i.r, align 8
  %i.q = getelementptr i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.q, align 8, !nonnull !4, !align !41, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor(ptr %.val4, ptr nonnull %.val5) #34
          to label %.body unwind label %bb.u

bb.j:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.s = load i64, ptr %i.b, align 8, !range !130, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.l, label %bb.m

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit9, %bb.l
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit9 ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.024.0.copyload = load ptr, ptr %i.u, align 8 ; 2 uses
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.325.0.copyload = load i64, ptr %.sroa.325.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.v = getelementptr i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.v, align 8, !nonnull !4, !align !41, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val3, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.w(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !145, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !137, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !145, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #31
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.p, %bb.o
  %i.ai = icmp eq ptr %.sroa.024.0.copyload, null
  %i.aj = ptrtoint ptr %.sroa.5.0.copyload to i64 ; 2 uses
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit9, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit
  %i.ak = inttoptr i64 %.sroa.325.0.copyload to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !11127, !nonnull !4, !noundef !4
  invoke void %i.am(ptr noundef %.sroa.7.sroa.0.0.copyload, ptr noundef %i.ak, i64 noundef %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit9 unwind label %bb.t, !inline_history !11107

.body:                                            ; preds = %bb.r, %bb.q, %bb.i, %bb.d, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.r ], [ %i.an, %bb.t ], [ %i.ac, %bb.q ], [ %i.l, %bb.d ], [ %i.p, %bb.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs43kcu4yvms7_24influxdb3_query_executor.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.s
  %.sroa.0.0 = phi i64 [ -1, %bb.s ], [ %.sroa.325.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11StreamErrorENtNtB4_6marker4SendEL_EEECs43kcu4yvms7_24influxdb3_query_executor.exit ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %.sroa.3.0..sroa_idx, align 8
  br label %common.ret

bb.u:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNCNvYNtNtCsbkGFX030hZe_18wasmtime_wasi_http4body22HostIncomingBodyStreamNtNtCscFUs5937I7W_16wasmtime_wasi_io7streams11InputStream6cancel0Cs43kcu4yvms7_24influxdb3_query_executor(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !2629, !noundef !4
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8
  ret i1 false

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs43kcu4yvms7_24influxdb3_query_executor(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !41, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !11132, !noalias !11135 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11132, !noalias !11135 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !11132, !noalias !11135
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11141)
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !11144, !noalias !11145, !noundef !4 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !11144, !noalias !11145
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32, !noalias !11146
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #32, !noalias !11145
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !11145
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEE3newCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  %i.a = load i64, ptr %1, align 8, !range !820, !alias.scope !11147, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs43kcu4yvms7_24influxdb3_query_executor.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCseCDlJsl44RV_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.d, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !679, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCseCDlJsl44RV_5tokio4util12sharded_listINtB2_11ShardedListINtNtNtB6_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB17_9scheduler14current_thread6HandleEEE10lock_shardCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ %.sroa.02.1, %bb.d ]
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio7runtime4taskINtB5_4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio7runtime4task8NotifiedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit, %bb.f
  %.sroa.02.1 = phi i1 [ false, %bb.f ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit ], [ true, %bb.h ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic i8, ptr %i.j acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvMs_NtNtCseCDlJsl44RV_5tokio4util12sharded_listINtB4_10ShardGuardINtNtNtB8_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEEE4pushCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.m)
          to label %bb.i unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = cmpxchg ptr %.sroa.0.0.copyload, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit, label %bb.h, !prof !3

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCsgIGNhOnZR2a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.0.copyload, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.d

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio7runtime4task8NotifiedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs43kcu4yvms7_24influxdb3_query_executor.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio7runtime4task8NotifiedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs43kcu4yvms7_24influxdb3_query_executor.exit8: ; preds = %bb.j, %bb.i
  %.sroa.0.0 = phi ptr [ %i.p, %bb.i ], [ null, %bb.j ]
  ret ptr %.sroa.0.0

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.g, %bb.h
  %i.q = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvMs_NtNtNtCseCDlJsl44RV_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.q)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4util12sharded_list10ShardGuardINtNtNtBI_7runtime4task4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB1C_9scheduler14current_thread6HandleEEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio7runtime4taskINtB5_4TaskINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio7runtime4task8NotifiedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs43kcu4yvms7_24influxdb3_query_executor.exit8

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio7runtime4task8NotifiedINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtBG_9scheduler14current_thread6HandleEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.b
end_hunk_0
