Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.00?download=true
inline.NumInlined: 16580
inline.NumDeleted: 4810
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog17put_if_not_exists0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
bb.f:                                             ; preds = %bb.g, %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !19972
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.b) #30
          to label %.body unwind label %bb.f, !noalias !19972

.body:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.p) #30
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.am = extractvalue { i64, i64 } %i.aj, 0
  %i.an = extractvalue { i64, i64 } %i.aj, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.am, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !19972
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.an, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !19972
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr null, ptr %i.aq, align 8, !alias.scope !19972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19972
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store ptr null, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.au = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noundef nonnull %i.ag, i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.q)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.body47

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.aw = extractvalue { ptr, ptr } %i.au, 0      ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ax, ptr %i.az, align 8
  br label %bb.r

.body47:                                          ; preds = %bb.z, %bb.y, %bb.x, %bb.q, %bb.i, %bb.az, %bb.ax
  %.sroa.10.1 = phi ptr [ %.sroa.10.0.copyload, %bb.i ], [ %.sroa.10.0, %bb.az ], [ %.sroa.10.0, %bb.ax ], [ %.sroa.10.0, %bb.q ], [ %.sroa.10.0, %bb.x ], [ %.sroa.10.0, %bb.y ], [ %.sroa.10.0, %bb.z ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.0.copyload, %bb.i ], [ %.sroa.9.0, %bb.az ], [ %.sroa.9.0, %bb.ax ], [ %.sroa.9.0, %bb.q ], [ %.sroa.9.0, %bb.x ], [ %.sroa.9.0, %bb.y ], [ %.sroa.9.0, %bb.z ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0.copyload, %bb.i ], [ %.sroa.8.0, %bb.az ], [ %.sroa.8.0, %bb.ax ], [ %.sroa.8.0, %bb.q ], [ %.sroa.8.0, %bb.x ], [ %.sroa.8.0, %bb.y ], [ %.sroa.8.0, %bb.z ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.copyload, %bb.i ], [ %.sroa.0.0, %bb.az ], [ %.sroa.0.0, %bb.ax ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %bb.x ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %bb.z ]
  %.pn27 = phi { ptr, i32 } [ %i.av, %bb.i ], [ %.pn23.ph, %bb.az ], [ %.pn23.ph, %bb.ax ], [ %i.bh, %bb.q ], [ %i.bu, %bb.x ], [ %i.bu, %bb.y ], [ %i.ca, %bb.z ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ba) #30
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.ba, %bb.m, %bb.q, %bb.az, %bb.ay, %.body47, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.l:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bc = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !19973
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit, %.body47
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %bb.av ], [ %.sroa.10.1, %.body47 ], [ %.sroa.10.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.10.0.copyload, %bb.d ]
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.av ], [ %.sroa.9.1, %.body47 ], [ %.sroa.9.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.9.0.copyload, %bb.d ]
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %bb.av ], [ %.sroa.8.1, %.body47 ], [ %.sroa.8.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.8.0.copyload, %bb.d ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.av ], [ %.sroa.0.1, %.body47 ], [ %.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.0.0.copyload, %bb.d ] ; 2 uses
  %.pn29 = phi { ptr, i32 } [ %i.dw, %bb.av ], [ %.pn27, %.body47 ], [ %i.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.af, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !18, !noundef !16
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #29
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #29
  unreachable

bb.q:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val35 = load ptr, ptr %i.bi, align 8
  %.val36 = load ptr, ptr %i.bj, align 8, !nonnull !16, !align !25, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val35, ptr nonnull %.val36) #30
          to label %.body47 unwind label %bb.k

bb.r:                                             ; preds = %bb.b, %bb.j
  %.val1.i = phi ptr [ %i.ax, %bb.j ], [ %.val1.i.pre, %bb.b ]
  %.val.i = phi ptr [ %i.aw, %bb.j ], [ %.val.i.pre, %bb.b ]
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19971)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !16, !noalias !19974, !nonnull !16
  invoke void %i.bl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.q, !inline_history !112

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r
  %i.bm = load i64, ptr %i.o, align 8, !range !111, !noundef !16
  %i.bn = icmp eq i64 %i.bm, -2
  br i1 %i.bn, label %bb.s, label %bb.t

common.ret:                                       ; preds = %bb.aw, %bb.s
  %storemerge = phi i8 [ 1, %bb.aw ], [ 3, %bb.s ]
  store i8 %storemerge, ptr %i.u, align 1
  ret void

bb.s:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.t:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load ptr, ptr %i.bi, align 8            ; 5 uses
  %.val34 = load ptr, ptr %i.bj, align 8, !nonnull !16, !align !25, !noundef !16 ; 5 uses
  %i.bo = load ptr, ptr %.val34, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bo(ptr noundef nonnull %.val)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !22, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.x:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.body47, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !22, !invariant.load !16
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #32
  br label %.body47

bb.z:                                             ; preds = %.thread, %bb.au
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body47

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.w, %bb.v
  %i.cb = load i64, ptr %i.t, align 8, !range !39, !noundef !16 ; 3 uses
  %.not = icmp eq i64 %i.cb, -1
  br i1 %.not, label %.thread, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %4 = icmp ne i64 %i.cb, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.cb, -9223372036854775797
  br i1 %5, label %bb.au, label %.noexc

.thread95:                                        ; preds = %bb.am, %bb.ah, %bb.ag, %bb.at
  %.sroa.079.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.580.0.copyload = load i8, ptr %.sroa.580.0..sroa_idx, align 8 ; 2 uses
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.681.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.pr99 = load i64, ptr %i.t, align 8
  %.not26100 = icmp eq i64 %.pr99, -1
  br i1 %.not26100, label %.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit

.noexc:                                           ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  %i.cc = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cd = and i64 %i.cc, -2
  %switch = icmp eq i64 %i.cd, 4
  br i1 %switch, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.noexc
  %i.ce = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.cf = icmp ult i8 %i.ce, 3
  br i1 %i.cf, label %bb.ac, label %bb.ab, !prof !98

bb.ab:                                            ; preds = %bb.aa
  %i.cg = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i49 = phi i8 [ %i.ce, %bb.aa ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.ch = icmp eq i8 %.sroa.0.0.i49, 0
  br i1 %i.ch, label %bb.ag, label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.ae
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ae:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !16, !align !25, !noundef !16
  %i.ck = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cj, i8 noundef %.sroa.0.0.i49)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ck, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %.noexc, %bb.ac, %bb.af
  %i.cl = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not114 = icmp eq i8 %i.cl, 0
  br i1 %.not114, label %bb.ah, label %.thread95

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 6
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ugt i64 %i.cm, 1
  br i1 %i.co, label %bb.ai, label %.thread95

bb.ai:                                            ; preds = %bb.ah
  %i.cp = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !16, !align !25, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  %.val42 = load ptr, ptr %i.cq, align 8, !nonnull !16, !noundef !16
  %i.cr = getelementptr i8, ptr %i.cp, i64 40
  %.val43 = load i64, ptr %i.cr, align 8, !noundef !16
  store i64 2, ptr %i.h, align 8, !alias.scope !19975
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val42, ptr %.sroa.675.0..sroa_idx, align 8, !alias.scope !19975
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val43, ptr %.sroa.876.0..sroa_idx, align 8, !alias.scope !19975
  %i.cs = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.aj unwind label %bb.ak     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0      ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1      ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !16, !nonnull !16
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  br i1 %i.cx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread95

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cz = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !16, !align !25, !noundef !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @326, ptr %i.e, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.dc, ptr %i.c, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @42, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @327, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @328, ptr %i.dh, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !19976
  %.sroa.4.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i51, align 8, !alias.scope !19976
  %.sroa.5.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i52, align 8, !alias.scope !19976
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.da, ptr %i.di, align 8, !alias.scope !19976
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cp, ptr noundef nonnull %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.am

bb.aq:                                            ; preds = %bb.ak, %bb.ao
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.ao ], [ %i.cy, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ay

bb.ar:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dk = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !16, !align !25, !noundef !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @326, ptr %i.k, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.n, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.dn, ptr %i.i, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @42, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @327, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @328, ptr %i.ds, align 8
  store i64 1, ptr %i.m, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.868.0..sroa_idx, align 8
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.969.0..sroa_idx, align 8
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.dl, ptr %.sroa.1070.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread95

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, %.thread95
  %.sroa.03.089 = phi i64 [ %.sroa.079.0.copyload, %.thread95 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.4.087 = phi i8 [ %.sroa.580.0.copyload, %.thread95 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.du)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.z

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.thread95, %.thread, %bb.au
  %.sroa.03.088 = phi i64 [ %.sroa.03.089, %.thread ], [ -1, %bb.au ], [ %.sroa.079.0.copyload, %.thread95 ]
  %.sroa.4.086 = phi i8 [ %.sroa.4.087, %.thread ], [ 1, %bb.au ], [ %.sroa.580.0.copyload, %.thread95 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.dv)
          to label %bb.aw unwind label %bb.av

bb.au:                                            ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.z

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 0, ptr %i.dx, align 8
  store i64 %.sroa.03.088, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4.086, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6, i64 63, i1 false)
  br label %common.ret

bb.ax:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dy = load i64, ptr %i.t, align 8, !range !39, !noundef !16
  %.not25 = icmp eq i64 %i.dy, -1
  br i1 %.not25, label %bb.az, label %.body47

bb.ay:                                            ; preds = %bb.as, %bb.ad, %bb.aq
  %.pn23.ph = phi { ptr, i32 } [ %i.dt, %bb.as ], [ %i.ci, %bb.ad ], [ %.pn12.pn.pn.pn.pn, %bb.aq ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.n) #30
          to label %bb.ax unwind label %bb.k

bb.az:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.t) #30
          to label %.body47 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.ba, %bb.n
  store i8 0, ptr %i.be, align 8
  store i8 2, ptr %i.u, align 1
  resume { ptr, i32 } %.pn29

bb.ba:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !19977, !nonnull !16, !noundef !16
  invoke void %i.ea(ptr noundef %.sroa.10.2, ptr noundef %.sroa.8.2, i64 noundef %.sroa.9.2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k, !inline_history !1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog9load_file0CsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20002 {
bb.a:
  %.sroa.826.i.sroa.8 = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.516.i = alloca [32 x i8], align 8        ; 6 uses
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.1390 = alloca [32 x i8], align 16        ; 3 uses
  %.sroa.16 = alloca [24 x i8], align 8           ; 2 uses
  %i.c = alloca [96 x i8], align 16               ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.1056.sroa.8 = alloca [32 x i8], align 8  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !44, !noundef !16
  switch i8 %i.f, label %default.unreachable150 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable150:                           ; preds = %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.g = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.g, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.826.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 225
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #29
  unreachable

bb.d:                                             ; preds = %bb.i, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %i.k = phi ptr [ %i.l, %bb.d ], [ %i.ab, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn5.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog15read_file_bytes0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.k) #30
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit32 unwind label %bb.ap

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 225
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !47, !noalias !20003
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.826.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 3 uses
  switch i8 %.pre, label %default.unreachable150 [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %._crit_edge.i
    i8 4, label %bb.y
  ]

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !20004, !noalias !20003
  %.phi.trans.insert42.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert42.i, align 8, !alias.scope !20004, !noalias !20003
  br label %bb.k

bb.f:                                             ; preds = %.thread, %bb.e
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.m, %bb.e ] ; 2 uses
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.p, align 8, !noalias !20003
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !noalias !20003, !nonnull !16, !align !25, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !noalias !20003, !nonnull !16, !align !25, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.g unwind label %bb.ac, !noalias !20003 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.w, ptr %i.y, align 8, !noalias !20003
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.x, ptr %i.z, align 8, !noalias !20003
  br label %bb.k

.body.i:                                          ; preds = %bb.x, %bb.ac, %bb.r, %bb.q, %bb.j
  %i.aa = phi ptr [ %i.ae, %bb.j ], [ %i.ae, %bb.q ], [ %i.ae, %bb.r ], [ %i.bi, %bb.x ], [ %i.bn, %bb.ac ]
  %i.ab = phi ptr [ %i.af, %bb.j ], [ %i.af, %bb.q ], [ %i.af, %bb.r ], [ %i.bj, %bb.x ], [ %i.bo, %bb.ac ]
  %.pn5.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.at, %bb.q ], [ %i.at, %bb.r ], [ %i.bh, %bb.x ], [ %i.bp, %bb.ac ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.ac, align 8, !noalias !20003
  store i8 2, ptr %i.aa, align 1, !noalias !20003
  br label %.body

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #29
          to label %.noexc21 unwind label %bb.d

.noexc21:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20003
  %.val8.i = load ptr, ptr %i.ag, align 8, !noalias !20003
  %.val9.i = load ptr, ptr %i.ah, align 8, !noalias !20003, !nonnull !16, !align !25, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val8.i, ptr nonnull %.val9.i) #30
          to label %.body.i unwind label %bb.w, !noalias !20005

bb.k:                                             ; preds = %bb.g, %._crit_edge.i
  %i.ae = phi ptr [ %i.m, %._crit_edge.i ], [ %i.n, %bb.g ] ; 7 uses
  %i.af = phi ptr [ %i.l, %._crit_edge.i ], [ %i.o, %bb.g ] ; 9 uses
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %._crit_edge.i ], [ %i.x, %bb.g ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %._crit_edge.i ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20003
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20004)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !16, !noalias !20006, !nonnull !16
  invoke void %i.aj(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.j, !noalias !20005, !inline_history !114

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.b, align 8, !range !23, !noalias !20003, !noundef !16
  %i.al = icmp eq i64 %i.ak, -2
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20003
  br label %bb.ag
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB6_12CatalogStore4list0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !16, !align !25, !noundef !16
  store ptr %i.bq, ptr %i.at, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %bb.x

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.bt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body40 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !16, !align !25, !noundef !16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  invoke void @_RNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB4_12CatalogStore8logs_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by)
          to label %bb.bv unwind label %bb.bu

bb.u:                                             ; preds = %bb.h, %.body82, %bb.el, %bb.ek, %bb.db, %bb.ci, %bb.by, %.body86, %.body44, %.body
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.v:                                             ; preds = %bb.ac, %bb.ab
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body44

.body44:                                          ; preds = %.body25.i, %bb.v
  %i.cc = phi ptr [ %i.cd, %bb.v ], [ %i.ct, %.body25.i ]
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %.pn12.i, %.body25.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtBI_12CatalogStore17snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.cc) #30
          to label %bb.by unwind label %bb.u

bb.w:                                             ; preds = %bb.a
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.pre = load i8, ptr %.phi.trans.insert144, align 8, !range !44, !noalias !21530
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  switch i8 %.pre, label %default.unreachable158 [
    i8 0, label %bb.x
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.y
  ]

bb.x:                                             ; preds = %.thread, %bb.w
  %i.cf = phi ptr [ %i.bs, %.thread ], [ %i.ce, %bb.w ] ; 3 uses
  %i.cg = phi ptr [ %i.br, %.thread ], [ %i.cd, %bb.w ] ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !21530, !nonnull !16, !align !25, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21530
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  invoke void @_RNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB4_12CatalogStore13snapshot_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ch)
          to label %bb.z unwind label %bb.ay, !noalias !21531

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21530
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val.i.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !21532, !noalias !21530
  %.phi.trans.insert66.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val1.i.pre.i = load ptr, ptr %.phi.trans.insert66.i, align 8, !alias.scope !21532, !noalias !21530
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_9get_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci, i64 noundef 0, i64 noundef 64)
          to label %bb.aa unwind label %bb.at, !noalias !21531 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cl = extractvalue { ptr, ptr } %i.ck, 0      ; 2 uses
  %i.cm = extractvalue { ptr, ptr } %i.ck, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cl, ptr %i.cn, align 8, !noalias !21530
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.cm, ptr %i.co, align 8, !noalias !21530
  br label %bb.ae

.body.i:                                          ; preds = %bb.bc, %bb.az, %bb.at, %bb.ak, %bb.aj, %bb.ad
  %i.cp = phi ptr [ %i.cv, %bb.ad ], [ %i.cv, %bb.bc ], [ %i.cv, %bb.aj ], [ %i.cv, %bb.az ], [ %i.cv, %bb.ak ], [ %i.ec, %bb.at ]
  %i.cq = phi ptr [ %i.cw, %bb.ad ], [ %i.cw, %bb.bc ], [ %i.cw, %bb.aj ], [ %i.cw, %bb.az ], [ %i.cw, %bb.ak ], [ %i.ed, %bb.at ]
  %.pn10.i = phi { ptr, i32 } [ %i.cu, %bb.ad ], [ %i.ew, %bb.bc ], [ %i.dj, %bb.aj ], [ %.pn5.i, %bb.az ], [ %i.dj, %bb.ak ], [ %i.ee, %bb.at ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.cr) #30
          to label %.body25.i unwind label %bb.ba, !noalias !21531

.body25.i:                                        ; preds = %bb.bd, %bb.ay, %bb.aw, %.body.i
  %i.cs = phi ptr [ %i.cp, %.body.i ], [ %i.cv, %bb.aw ], [ %i.ep, %bb.ay ], [ %i.cv, %bb.bd ]
  %i.ct = phi ptr [ %i.cq, %.body.i ], [ %i.cw, %bb.aw ], [ %i.eq, %bb.ay ], [ %i.cw, %bb.bd ]
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %.body.i ], [ %i.en, %bb.aw ], [ %i.er, %bb.ay ], [ %i.fc, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21530
  store i8 2, ptr %i.cs, align 8, !noalias !21530
  br label %.body44

bb.ab:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @546) #29
          to label %.noexc46.a unwind label %bb.v

.noexc46.a:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.w
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @546) #29
          to label %.noexc47 unwind label %bb.v

.noexc47:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21530
  %.val17.i = load ptr, ptr %i.cx, align 8, !noalias !21530
  %.val18.i = load ptr, ptr %i.cy, align 8, !noalias !21530, !nonnull !16, !align !25, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val17.i, ptr nonnull %.val18.i) #30
          to label %.body.i unwind label %bb.ba, !noalias !21531

bb.ae:                                            ; preds = %bb.aa, %bb.y
  %i.cv = phi ptr [ %i.ce, %bb.y ], [ %i.cf, %bb.aa ] ; 14 uses
  %i.cw = phi ptr [ %i.cd, %bb.y ], [ %i.cg, %bb.aa ] ; 13 uses
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %bb.y ], [ %i.cm, %bb.aa ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %bb.y ], [ %i.cl, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21530
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21532)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !16, !noalias !21533, !nonnull !16
  invoke void %i.da(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ad, !noalias !21531, !inline_history !21534

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ae
  %i.db = load i64, ptr %i.k, align 8, !range !111, !noalias !21530, !noundef !16
  %i.dc = icmp eq i64 %i.db, -2
  br i1 %i.dc, label %bb.bf, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21530
  %.val15.i = load ptr, ptr %i.cx, align 8, !noalias !21530 ; 5 uses
  %.val16.i = load ptr, ptr %i.cy, align 8, !noalias !21530, !nonnull !16, !align !25, !noundef !16 ; 5 uses
  %i.dd = load ptr, ptr %.val16.i, align 8, !invariant.load !16, !noalias !21531 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  invoke void %i.dd(ptr noundef nonnull %.val15.i)
          to label %bb.ah unwind label %bb.aj, !noalias !21531

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !21, !invariant.load !16, !noalias !21531 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !22, !invariant.load !16, !noalias !21531
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 536870913) %i.di) #32, !noalias !21531
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.aj:                                            ; preds = %bb.ag
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !range !21, !invariant.load !16, !noalias !21531 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.body.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !range !22, !invariant.load !16, !noalias !21531
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i, i64 noundef range(i64 1, 0) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #32, !noalias !21531
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ai, %bb.ah
  %i.dp = load i64, ptr %i.l, align 8, !range !39, !noalias !21530, !noundef !16 ; 3 uses
  %.not.i43 = icmp eq i64 %i.dp, -1
  br i1 %.not.i43, label %bb.al, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %4 = icmp ne i64 %i.dp, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.dp, -9223372036854775801
  br i1 %5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bb

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dq, align 8, !noalias !21530 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !21530 ; 4 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !21530 ; 4 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.16.0.copyload.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !21530 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21530
  store ptr %.sroa.8.0.copyload.i, ptr %i.j, align 8, !alias.scope !21535, !noalias !21530
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.12.0.copyload.i, ptr %i.dr, align 8, !alias.scope !21535, !noalias !21530
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.ds, align 8, !alias.scope !21535, !noalias !21530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21530
  invoke void @_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6headerNtB3_6Header9read_fromRShECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.an unwind label %bb.am, !noalias !21531

bb.am:                                            ; preds = %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.al
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

.body19.i:                                        ; preds = %bb.ap, %bb.am
  %eh.lpad-body20.i = phi { ptr, i32 } [ %i.dt, %bb.am ], [ %i.dx, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21530
  br label %bb.az

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !21536)
  call void @llvm.experimental.noalias.scope.decl(metadata !21537)
  %i.du = load i64, ptr %i.i, align 16, !range !17, !alias.scope !21537, !noalias !21530, !noundef !16
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dw, i64 32, i1 false), !noalias !21539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21540
  store ptr %i.f, ptr %i.e, align 8, !noalias !21540
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !21540
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @183, ptr noundef nonnull %i.e)
          to label %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.ap, !noalias !21541

bb.ap:                                            ; preds = %bb.ao
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #30
          to label %.body19.i unwind label %bb.aq, !noalias !21542

bb.aq:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21542
  unreachable

_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21540
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ar unwind label %bb.am, !noalias !21531

bb.ar:                                            ; preds = %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21530
  %i.dz = invoke { ptr, ptr } @_RNvXsg_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_EINtNtBV_7convert4FromNtNtB9_6string6StringE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.i)
          to label %bb.av unwind label %bb.au, !noalias !21531 ; 2 uses

bb.as:                                            ; preds = %bb.an
  %.sroa.1049.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.1049.16.copyload.i = load i64, ptr %.sroa.1049.16..sroa_idx.i, align 16, !alias.scope !21543, !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !21544, !nonnull !16, !noundef !16
  invoke void %i.eb(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i unwind label %bb.at, !noalias !21531, !inline_history !1

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.av, %bb.as, %bb.z
  %i.ec = phi ptr [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.cv, %bb.av ], [ %i.cv, %bb.as ], [ %i.cf, %bb.z ]
  %i.ed = phi ptr [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.cw, %bb.av ], [ %i.cw, %bb.as ], [ %i.cg, %bb.z ]
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.au:                                            ; preds = %bb.ar
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.av:                                            ; preds = %bb.ar
  %i.eg = extractvalue { ptr, ptr } %i.dz, 0
  %i.eh = extractvalue { ptr, ptr } %i.dz, 1
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !21545, !nonnull !16, !noundef !16
  invoke void %i.el(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i unwind label %bb.at, !noalias !21531, !inline_history !1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i: ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.aw, !noalias !21531

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %.body25.i unwind label %bb.ax, !noalias !21531

bb.ax:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21531
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %bb.bg unwind label %bb.ay, !noalias !21531

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.x
  %i.ep = phi ptr [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.cf, %bb.x ]
  %i.eq = phi ptr [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.cg, %bb.x ]
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

bb.az:                                            ; preds = %bb.au, %.body19.i
  %.pn5.i = phi { ptr, i32 } [ %i.ef, %bb.au ], [ %eh.lpad-body20.i, %.body19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21530
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !noalias !21546, !nonnull !16, !noundef !16
  invoke void %i.et(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %.body.i unwind label %bb.ba, !noalias !21531, !inline_history !1

bb.ba:                                            ; preds = %bb.az, %bb.ad, %.body.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21531
  unreachable

bb.bb:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !21530
  %i.ev = invoke { ptr, ptr } @_RNvXsd_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_EINtNtBV_7convert4FromNtCs1LivM9IBWqb_12object_store5ErrorE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i unwind label %bb.bc, !noalias !21531 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21530
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.bb
  %i.ex = extractvalue { ptr, ptr } %i.ev, 0
  %i.ey = extractvalue { ptr, ptr } %i.ev, 1
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21530
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %bb.as
  %.sroa.050.063.i = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ false, %bb.as ]
  %.sroa.5.062.i = phi i64 [ %i.ez, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ 1, %bb.as ]
  %.sroa.951.061.i = phi i64 [ %i.fa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.1049.16.copyload.i, %bb.as ]
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i unwind label %bb.bd, !noalias !21531

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %.body25.i unwind label %bb.be, !noalias !21531

bb.be:                                            ; preds = %bb.bd
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21531
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %bb.bg unwind label %bb.ay, !noalias !21531

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread72.i unwind label %bb.at, !noalias !21531

bb.bf:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21530
  store i8 3, ptr %i.cv, align 8, !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.951.1.i = phi i64 [ %.sroa.951.061.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.ej, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 3 uses
  %.sroa.5.1.i = phi i64 [ %.sroa.5.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.ei, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 3 uses
  %.sroa.050.1.i = phi i1 [ %.sroa.050.063.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21530
  store i8 1, ptr %i.cv, align 8, !noalias !21530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtBI_12CatalogStore17snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.cw)
          to label %bb.bh unwind label %bb.bz

bb.bh:                                            ; preds = %bb.bg
  %i.fe = inttoptr i64 %.sroa.5.1.i to ptr
  %i.ff = inttoptr i64 %.sroa.951.1.i to ptr
  br i1 %.sroa.050.1.i, label %bb.ca, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %.sroa.5.1.i, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %.sroa.951.1.i, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.body49

_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.bi
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !16
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fo, ptr noundef nonnull align 8 dereferenceable(12) %i.fn, i64 12, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  store i8 0, ptr %i.fp, align 4
  store i64 %.sroa.5.1.i, ptr %i.s, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.951.1.i, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.fm, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !21547, !noundef !16 ; 3 uses
  %i.fv = load i64, ptr %i.fk, align 8, !range !21, !alias.scope !21547, !noundef !16
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %bb.bn unwind label %bb.bl, !noalias !21548

bb.bl:                                            ; preds = %bb.bk
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #30
          to label %.body49 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body49:                                          ; preds = %bb.bl, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.bj ], [ %i.fx, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.by

bb.bn:                                            ; preds = %bb.bk, %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !21547, !nonnull !16, !noundef !16
  %i.gb = getelementptr inbounds nuw [64 x i8], ptr %i.ga, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gb, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %i.gc = add i64 %i.fu, 1
  store i64 %i.gc, ptr %i.ft, align 8, !alias.scope !21547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.fi)
          to label %bb.bq unwind label %bb.bp

bb.bo:                                            ; preds = %bb.by, %bb.bp
  %.pn8 = phi { ptr, i32 } [ %i.ge, %bb.bp ], [ %.pn5.pn, %bb.by ] ; 2 uses
  %i.gd = load i64, ptr %1, align 8, !range !19, !noundef !16
  %.not = icmp eq i64 %i.gd, -1
  br i1 %.not, label %bb.ci, label %.body

bb.bp:                                            ; preds = %bb.ca, %bb.bn
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bn
  %i.gf = load i64, ptr %1, align 8, !range !19, !noundef !16
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54

bb.br:                                            ; preds = %bb.bq
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.gh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54 unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54: ; preds = %bb.br, %bb.bq
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke unwind label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %.body40 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gl = phi ptr [ %i.bu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.gi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54 ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bu

.body40:                                          ; preds = %bb.ei, %bb.dn, %bb.cd, %bb.s, %bb.bu, %bb.bs, %.body, %.body86
  %.pn24 = phi { ptr, i32 } [ %.pn10, %.body ], [ %.pn22, %.body86 ], [ %i.bv, %bb.s ], [ %i.gj, %bb.bs ], [ %i.jv, %bb.dn ], [ %i.hn, %bb.cd ], [ %i.gp, %bb.bu ], [ %i.lr, %bb.ei ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.gn = load i8, ptr %i.gm, align 2, !range !18, !noundef !16
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.el, label %.body72

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i103, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i89, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.bv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gq = load ptr, ptr %i.bx, align 8, !nonnull !16, !align !25, !noundef !16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_4list(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.bz)
          to label %bb.bx unwind label %bb.dm     ; 2 uses

.body82:                                          ; preds = %bb.de, %bb.bw, %bb.ek, %bb.ea
  %.pn20 = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ea ], [ %.pn16.pn.pn, %bb.ek ], [ %i.gw, %bb.bw ], [ %i.jc, %bb.de ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 0, ptr %i.gt, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val31 = load ptr, ptr %i.gu, align 8
  %i.gv = getelementptr i8, ptr %1, i64 248
  %.val32 = load ptr, ptr %i.gv, align 8, !nonnull !16, !align !25, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2E_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val31, ptr nonnull %.val32) #30
          to label %.body86 unwind label %bb.u

bb.bw:                                            ; preds = %bb.df
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.bx:                                            ; preds = %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gy = extractvalue { ptr, ptr } %i.gs, 0
  %i.gz = extractvalue { ptr, ptr } %i.gs, 1
  store ptr %i.gy, ptr %i.gx, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 0, ptr %i.hb, align 8, !alias.scope !21549
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr inttoptr (i64 8 to ptr), ptr %i.hc, align 8, !alias.scope !21549
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 0, ptr %i.hd, align 8, !alias.scope !21549
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 1, ptr %i.he, align 1
  br label %bb.da

.body86:                                          ; preds = %bb.eg, %bb.eh, %bb.dl, %bb.dk, %bb.dm, %.body82
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body82 ], [ %i.jn, %bb.dk ], [ %i.jn, %bb.dl ], [ %i.jt, %bb.dm ], [ %i.lk, %bb.eh ], [ %i.lk, %bb.eg ]
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.hf) #30
          to label %.body40 unwind label %bb.u

bb.by:                                            ; preds = %.body44, %bb.bz, %.body49
  %.pn5.pn = phi { ptr, i32 } [ %.pn, %.body49 ], [ %i.hh, %bb.bz ], [ %eh.lpad-body45, %.body44 ]
end_hunk_1
