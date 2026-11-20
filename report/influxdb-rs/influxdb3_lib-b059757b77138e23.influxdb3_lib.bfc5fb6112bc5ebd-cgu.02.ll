Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.02?download=true
inline.NumInlined: 12283
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog17put_if_not_exists0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4tags6TagSetECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.g unwind label %bb.f, !noalias !14322

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !14322
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.b) #28
          to label %.body unwind label %bb.f, !noalias !14322

.body:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.p) #28
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.am = extractvalue { i64, i64 } %i.aj, 0
  %i.an = extractvalue { i64, i64 } %i.aj, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.am, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !14322
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.an, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !14322
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr null, ptr %i.aq, align 8, !alias.scope !14322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14322
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
  br label %.body46

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.aw = extractvalue { ptr, ptr } %i.au, 0
  %i.ax = extractvalue { ptr, ptr } %i.au, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ax, ptr %i.az, align 8
  br label %bb.r

.body46:                                          ; preds = %bb.aa, %bb.z, %bb.y, %bb.q, %bb.i, %bb.ba, %bb.ay
  %.sroa.10.1 = phi ptr [ %.sroa.10.0.copyload, %bb.i ], [ %.sroa.10.0, %bb.ba ], [ %.sroa.10.0, %bb.ay ], [ %.sroa.10.0, %bb.q ], [ %.sroa.10.0, %bb.y ], [ %.sroa.10.0, %bb.z ], [ %.sroa.10.0, %bb.aa ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.0.copyload, %bb.i ], [ %.sroa.9.0, %bb.ba ], [ %.sroa.9.0, %bb.ay ], [ %.sroa.9.0, %bb.q ], [ %.sroa.9.0, %bb.y ], [ %.sroa.9.0, %bb.z ], [ %.sroa.9.0, %bb.aa ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0.copyload, %bb.i ], [ %.sroa.8.0, %bb.ba ], [ %.sroa.8.0, %bb.ay ], [ %.sroa.8.0, %bb.q ], [ %.sroa.8.0, %bb.y ], [ %.sroa.8.0, %bb.z ], [ %.sroa.8.0, %bb.aa ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.copyload, %bb.i ], [ %.sroa.0.0, %bb.ba ], [ %.sroa.0.0, %bb.ay ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %bb.aa ]
  %.pn27 = phi { ptr, i32 } [ %i.av, %bb.i ], [ %.pn23.ph, %bb.ba ], [ %.pn23.ph, %bb.ay ], [ %i.bh, %bb.q ], [ %i.bt, %bb.y ], [ %i.bt, %bb.z ], [ %i.bz, %bb.aa ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ba) #28
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.bb, %bb.m, %bb.q, %bb.ba, %bb.az, %.body46, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.l:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bc = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !14323
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit, %.body46
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %bb.aw ], [ %.sroa.10.1, %.body46 ], [ %.sroa.10.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.10.0.copyload, %bb.d ]
  %.sroa.9.2 = phi i64 [ %.sroa.9.0, %bb.aw ], [ %.sroa.9.1, %.body46 ], [ %.sroa.9.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.9.0.copyload, %bb.d ]
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %bb.aw ], [ %.sroa.8.1, %.body46 ], [ %.sroa.8.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.8.0.copyload, %bb.d ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %bb.aw ], [ %.sroa.0.1, %.body46 ], [ %.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %.sroa.0.0.copyload, %bb.d ] ; 2 uses
  %.pn29 = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %.pn27, %.body46 ], [ %i.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.af, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !range !19, !noundef !15
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #31
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #31
  unreachable

bb.q:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val35 = load ptr, ptr %i.bj, align 8
  %i.bi = getelementptr i8, ptr %1, i64 168
  %.val36 = load ptr, ptr %i.bi, align 8, !nonnull !15, !align !21, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val35, ptr nonnull %.val36) #28
          to label %.body46 unwind label %bb.k

bb.r:                                             ; preds = %bb.b, %bb.j
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.j ], [ undef, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.bk = load i64, ptr %i.o, align 8, !range !93, !noundef !15
  %i.bl = icmp eq i64 %i.bk, -2
  br i1 %i.bl, label %bb.t, label %bb.u

common.ret:                                       ; preds = %bb.ax, %bb.t
  %storemerge = phi i8 [ 1, %bb.ax ], [ 3, %bb.t ]
  store i8 %storemerge, ptr %i.u, align 1
  ret void

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %common.ret

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bm = getelementptr i8, ptr %1, i64 168
  %.val34 = load ptr, ptr %i.bm, align 8, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.bn = load ptr, ptr %.val34, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bn(ptr noundef nonnull %.val)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !24, !invariant.load !15 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !25, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.y:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !24, !invariant.load !15 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.body46, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !25, !invariant.load !15
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #30
  br label %.body46

bb.aa:                                            ; preds = %.thread, %bb.av
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.x, %bb.w
  %i.ca = load i64, ptr %i.t, align 8, !range !35, !noundef !15 ; 3 uses
  %.not = icmp eq i64 %i.ca, -1
  br i1 %.not, label %.thread, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %4 = icmp ne i64 %i.ca, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ca, -9223372036854775797
  br i1 %5, label %bb.av, label %.noexc

.thread94:                                        ; preds = %bb.an, %bb.ai, %bb.ah, %bb.au
  %.sroa.078.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.579.0.copyload = load i8, ptr %.sroa.579.0..sroa_idx, align 8 ; 2 uses
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.680.0..sroa_idx, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.pr98 = load i64, ptr %i.t, align 8
  %.not2699 = icmp eq i64 %.pr98, -1
  br i1 %.not2699, label %.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit

.noexc:                                           ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  %i.cb = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cc = and i64 %i.cb, -2
  %switch = icmp eq i64 %i.cc, 4
  br i1 %switch, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %.noexc
  %i.cd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ce = icmp ult i8 %i.cd, 3
  br i1 %i.ce, label %bb.ad, label %bb.ac, !prof !83

bb.ac:                                            ; preds = %bb.ab
  %i.cf = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i48 = phi i8 [ %i.cd, %bb.ab ], [ %i.cf, %bb.ac ] ; 2 uses
  %i.cg = icmp eq i8 %.sroa.0.0.i48, 0
  br i1 %i.cg, label %bb.ah, label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.af:                                            ; preds = %bb.ad
  %i.ci = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.cj = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ci, i8 noundef %.sroa.0.0.i48)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cj, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %.noexc, %bb.ad, %bb.ag
  %i.ck = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not113 = icmp eq i8 %i.ck, 0
  br i1 %.not113, label %bb.ai, label %.thread94

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 6
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ugt i64 %i.cl, 1
  br i1 %i.cn, label %bb.aj, label %.thread94

bb.aj:                                            ; preds = %bb.ai
  %i.co = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %.val42 = load ptr, ptr %i.cp, align 8, !nonnull !15, !noundef !15
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %.val43 = load i64, ptr %i.cq, align 8, !noundef !15
  store i64 2, ptr %i.h, align 8, !alias.scope !14324
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val42, ptr %.sroa.674.0..sroa_idx, align 8, !alias.scope !14324
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val43, ptr %.sroa.875.0..sroa_idx, align 8, !alias.scope !14324
  %i.cr = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ak unwind label %bb.al     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cr, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !15, !nonnull !15
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  br i1 %i.cw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread94

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cy = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @228, ptr %i.e, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.da, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.db, ptr %i.c, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @31, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @229, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @230, ptr %i.dg, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !14325
  %.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i50, align 8, !alias.scope !14325
  %.sroa.5.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i51, align 8, !alias.scope !14325
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cz, ptr %i.dh, align 8, !alias.scope !14325
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.co, ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.an

bb.ar:                                            ; preds = %bb.al, %bb.ap
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.ap ], [ %i.cx, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.az

bb.as:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dj = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @228, ptr %i.k, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.n, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.dm, ptr %i.i, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @31, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @229, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @230, ptr %i.dr, align 8
  store i64 1, ptr %i.m, align 8
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.867.0..sroa_idx, align 8
  %.sroa.968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.968.0..sroa_idx, align 8
  %.sroa.1069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.dk, ptr %.sroa.1069.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread94

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, %.thread94
  %.sroa.03.088 = phi i64 [ %.sroa.078.0.copyload, %.thread94 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %.sroa.4.086 = phi i8 [ %.sroa.579.0.copyload, %.thread94 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.dt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.thread94, %.thread, %bb.av
  %.sroa.03.087 = phi i64 [ %.sroa.03.088, %.thread ], [ -1, %bb.av ], [ %.sroa.078.0.copyload, %.thread94 ]
  %.sroa.4.085 = phi i8 [ %.sroa.4.086, %.thread ], [ 1, %bb.av ], [ %.sroa.579.0.copyload, %.thread94 ]
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.du)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.aa

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 0, ptr %i.dw, align 8
  store i64 %.sroa.03.087, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.4.085, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6, i64 63, i1 false)
  br label %common.ret

bb.ay:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dx = load i64, ptr %i.t, align 8, !range !35, !noundef !15
  %.not25 = icmp eq i64 %i.dx, -1
  br i1 %.not25, label %bb.ba, label %.body46

bb.az:                                            ; preds = %bb.at, %bb.ae, %bb.ar
  %.pn23.ph = phi { ptr, i32 } [ %i.ds, %bb.at ], [ %i.ch, %bb.ae ], [ %.pn12.pn.pn.pn.pn, %bb.ar ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.n) #28
          to label %bb.ay unwind label %bb.k

bb.ba:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.t) #28
          to label %.body46 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.bb, %bb.n
  store i8 0, ptr %i.be, align 8
  store i8 2, ptr %i.u, align 1
  resume { ptr, i32 } %.pn29

bb.bb:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !14326, !nonnull !15, !noundef !15
  invoke void %i.dz(ptr noundef %.sroa.10.2, ptr noundef %.sroa.8.2, i64 noundef %.sroa.9.2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k, !inline_history !3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog9load_file0CsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14347 {
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
  %i.f = load i8, ptr %i.e, align 8, !range !23, !noundef !15
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
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #31
  unreachable

bb.d:                                             ; preds = %bb.i, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %i.k = phi ptr [ %i.l, %bb.d ], [ %i.ab, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn5.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog15read_file_bytes0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.k) #28
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit32 unwind label %bb.aq

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 225
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !41, !noalias !14348
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.826.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 3 uses
  switch i8 %.pre, label %default.unreachable150 [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.k
    i8 4, label %bb.z
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.m, %bb.e ] ; 2 uses
  %i.o = phi ptr [ %i.h, %.thread ], [ %i.l, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.p, align 8, !noalias !14348
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !noalias !14348, !nonnull !15, !align !21, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !noalias !14348, !nonnull !15, !align !21, !noundef !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.g unwind label %bb.ad, !noalias !14348 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.w, ptr %i.y, align 8, !noalias !14348
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.x, ptr %i.z, align 8, !noalias !14348
  br label %bb.k

.body.i:                                          ; preds = %bb.y, %bb.ad, %bb.s, %bb.r, %bb.j
  %i.aa = phi ptr [ %i.af, %bb.j ], [ %i.af, %bb.r ], [ %i.af, %bb.s ], [ %i.bh, %bb.y ], [ %i.bm, %bb.ad ]
  %i.ab = phi ptr [ %i.ag, %bb.j ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ], [ %i.bi, %bb.y ], [ %i.bn, %bb.ad ]
  %.pn5.i = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.as, %bb.r ], [ %i.as, %bb.s ], [ %i.bg, %bb.y ], [ %i.bo, %bb.ad ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.ac, align 8, !noalias !14348
  store i8 2, ptr %i.aa, align 1, !noalias !14348
  br label %.body

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #31
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #31
          to label %.noexc21 unwind label %bb.d

.noexc21:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14348
  %.val8.i = load ptr, ptr %i.ah, align 8, !noalias !14348
  %i.ae = getelementptr i8, ptr %1, i64 240
  %.val9.i = load ptr, ptr %i.ae, align 8, !noalias !14348, !nonnull !15, !align !21, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val8.i, ptr nonnull %.val9.i) #28
          to label %.body.i unwind label %bb.x, !noalias !14349

bb.k:                                             ; preds = %bb.g, %bb.e
  %i.af = phi ptr [ %i.n, %bb.g ], [ %i.m, %bb.e ] ; 7 uses
  %i.ag = phi ptr [ %i.o, %bb.g ], [ %i.l, %bb.e ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14348
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9GetResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.j, !noalias !14349

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.b, align 8, !range !46, !noalias !14348, !noundef !15
  %i.aj = icmp eq i64 %i.ai, -2
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14348
  br label %bb.ah

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ag, ptr noundef nonnull align 8 dereferenceable(192) %i.b, i64 192, i1 false), !noalias !14348
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store i8 1, ptr %i.ak, align 8, !noalias !14348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14348
  %.val.i = load ptr, ptr %i.ah, align 8, !noalias !14348 ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 240
  %.val7.i = load ptr, ptr %i.al, align 8, !noalias !14348, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.am = load ptr, ptr %.val7.i, align 8, !invariant.load !15, !noalias !14349 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB6_12CatalogStore4list0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.o, %bb.n
  %i.bl = load i64, ptr %1, align 8, !range !16, !noundef !15
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %bb.s, label %.thread

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !align !21, !noundef !15
  store ptr %i.bp, ptr %i.au, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %bb.y

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.bs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %.body40 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !15, !align !21, !noundef !15
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  invoke void @_RNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB4_12CatalogStore8logs_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bx)
          to label %bb.bx unwind label %bb.bw

bb.v:                                             ; preds = %.body82, %bb.h, %bb.en, %bb.em, %bb.dd, %bb.ck, %bb.ca, %.body86, %.body44, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.w:                                             ; preds = %bb.ad, %bb.ac
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body44

.body44:                                          ; preds = %.body25.i, %bb.w
  %i.cb = phi ptr [ %i.cc, %bb.w ], [ %i.cs, %.body25.i ]
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %.pn12.i, %.body25.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtBI_12CatalogStore17snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.cb) #28
          to label %bb.ca unwind label %bb.v

bb.x:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !23, !noalias !15704
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  switch i8 %.pre, label %default.unreachable153 [
    i8 0, label %bb.y
    i8 1, label %bb.ac
    i8 2, label %bb.ad
    i8 3, label %bb.z
  ]

bb.y:                                             ; preds = %.thread, %bb.x
  %i.ce = phi ptr [ %i.br, %.thread ], [ %i.cd, %bb.x ] ; 3 uses
  %i.cf = phi ptr [ %i.bq, %.thread ], [ %i.cc, %bb.x ] ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !15704, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15704
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  invoke void @_RNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB4_12CatalogStore13snapshot_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cg)
          to label %bb.aa unwind label %bb.ba, !noalias !15705

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15704
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_9get_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch, i64 noundef 0, i64 noundef 64)
          to label %bb.ab unwind label %bb.av, !noalias !15705 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ck = extractvalue { ptr, ptr } %i.cj, 0
  %i.cl = extractvalue { ptr, ptr } %i.cj, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.ck, ptr %i.cm, align 8, !noalias !15704
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.cl, ptr %i.cn, align 8, !noalias !15704
  br label %bb.af

.body.i:                                          ; preds = %bb.be, %bb.bb, %bb.av, %bb.am, %bb.al, %bb.ae
  %i.co = phi ptr [ %i.cv, %bb.ae ], [ %i.cv, %bb.be ], [ %i.cv, %bb.al ], [ %i.cv, %bb.bb ], [ %i.cv, %bb.am ], [ %i.ea, %bb.av ]
  %i.cp = phi ptr [ %i.cw, %bb.ae ], [ %i.cw, %bb.be ], [ %i.cw, %bb.al ], [ %i.cw, %bb.bb ], [ %i.cw, %bb.am ], [ %i.eb, %bb.av ]
  %.pn10.i = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %i.eu, %bb.be ], [ %i.dh, %bb.al ], [ %.pn5.i, %bb.bb ], [ %i.dh, %bb.am ], [ %i.ec, %bb.av ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.cq) #28
          to label %.body25.i unwind label %bb.bc, !noalias !15705

.body25.i:                                        ; preds = %bb.bf, %bb.ba, %bb.ay, %.body.i
  %i.cr = phi ptr [ %i.co, %.body.i ], [ %i.cv, %bb.ay ], [ %i.en, %bb.ba ], [ %i.cv, %bb.bf ]
  %i.cs = phi ptr [ %i.cp, %.body.i ], [ %i.cw, %bb.ay ], [ %i.eo, %bb.ba ], [ %i.cw, %bb.bf ]
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %.body.i ], [ %i.el, %bb.ay ], [ %i.ep, %bb.ba ], [ %i.fa, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15704
  store i8 2, ptr %i.cr, align 8, !noalias !15704
  br label %.body44

bb.ac:                                            ; preds = %bb.x
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #31
          to label %.noexc46.a unwind label %bb.w

.noexc46.a:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.x
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #31
          to label %.noexc47 unwind label %bb.w

.noexc47:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15704
  %.val15.i = load ptr, ptr %i.cx, align 8, !noalias !15704
  %i.cu = getelementptr i8, ptr %1, i64 224
  %.val16.i = load ptr, ptr %i.cu, align 8, !noalias !15704, !nonnull !15, !align !21, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val15.i, ptr nonnull %.val16.i) #28
          to label %.body.i unwind label %bb.bc, !noalias !15705

bb.af:                                            ; preds = %bb.ab, %bb.z
  %i.cv = phi ptr [ %i.ce, %bb.ab ], [ %i.cd, %bb.z ] ; 14 uses
  %i.cw = phi ptr [ %i.cf, %bb.ab ], [ %i.cc, %bb.z ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15704
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ae, !noalias !15705

bb.ag:                                            ; preds = %bb.af
  %i.cy = load i64, ptr %i.k, align 8, !range !93, !noalias !15704, !noundef !15
  %i.cz = icmp eq i64 %i.cy, -2
  br i1 %i.cz, label %bb.bh, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15704
  %.val.i = load ptr, ptr %i.cx, align 8, !noalias !15704 ; 5 uses
  %i.da = getelementptr i8, ptr %1, i64 224
  %.val14.i = load ptr, ptr %i.da, align 8, !noalias !15704, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.db = load ptr, ptr %.val14.i, align 8, !invariant.load !15, !noalias !15705 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.db(ptr noundef nonnull %.val.i)
          to label %bb.aj unwind label %bb.al, !noalias !15705

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !24, !invariant.load !15, !noalias !15705 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !range !25, !invariant.load !15, !noalias !15705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dd, i64 noundef range(i64 1, 536870913) %i.dg) #30, !noalias !15705
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.al:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !range !24, !invariant.load !15, !noalias !15705 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.body.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !range !25, !invariant.load !15, !noalias !15705
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dj, i64 noundef range(i64 1, 536870913) %i.dm) #30, !noalias !15705
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ak, %bb.aj
  %i.dn = load i64, ptr %i.l, align 8, !range !35, !noalias !15704, !noundef !15 ; 3 uses
  %.not.i43 = icmp eq i64 %i.dn, -1
  br i1 %.not.i43, label %bb.an, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %4 = icmp ne i64 %i.dn, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.dn, -9223372036854775801
  br i1 %5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bd

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.do, align 8, !noalias !15704 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !15704 ; 4 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !15704 ; 4 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.16.0.copyload.i = load ptr, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !15704 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15704
  store ptr %.sroa.8.0.copyload.i, ptr %i.j, align 8, !alias.scope !15706, !noalias !15704
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.12.0.copyload.i, ptr %i.dp, align 8, !alias.scope !15706, !noalias !15704
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.dq, align 8, !alias.scope !15706, !noalias !15704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15704
  invoke void @_RINvMNtNtCs844E4pPEVZX_17influxdb3_catalog6format6headerNtB3_6Header9read_fromRShECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ap unwind label %bb.ao, !noalias !15705

bb.ao:                                            ; preds = %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.an
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i

.body19.i:                                        ; preds = %bb.ar, %bb.ao
  %eh.lpad-body20.i = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.dv, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15704
  br label %bb.bb

bb.ap:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !15707)
  call void @llvm.experimental.noalias.scope.decl(metadata !15708)
  %i.ds = load i64, ptr %i.i, align 16, !range !14, !alias.scope !15708, !noalias !15704, !noundef !15
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.du, i64 32, i1 false), !noalias !15710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15711
  store ptr %i.f, ptr %i.e, align 8, !noalias !15711
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !15711
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @120, ptr noundef nonnull %i.e)
          to label %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.ar, !noalias !15712

bb.ar:                                            ; preds = %bb.aq
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #28
          to label %.body19.i unwind label %bb.as, !noalias !15713

bb.as:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !15713
  unreachable

_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15711
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.at unwind label %bb.ao, !noalias !15705

bb.at:                                            ; preds = %_RNCNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtB8_12CatalogStore17snapshot_sequence00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15704
  %i.dx = invoke { ptr, ptr } @_RNvXsg_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_EINtNtBV_7convert4FromNtNtB9_6string6StringE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.6.i)
          to label %bb.ax unwind label %bb.aw, !noalias !15705 ; 2 uses

bb.au:                                            ; preds = %bb.ap
  %.sroa.1049.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.1049.16.copyload.i = load i64, ptr %.sroa.1049.16..sroa_idx.i, align 16, !alias.scope !15714, !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15704
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !15715, !nonnull !15, !noundef !15
  invoke void %i.dz(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i unwind label %bb.av, !noalias !15705, !inline_history !3

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ax, %bb.au, %bb.aa
  %i.ea = phi ptr [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.cv, %bb.ax ], [ %i.cv, %bb.au ], [ %i.ce, %bb.aa ]
  %i.eb = phi ptr [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.cw, %bb.ax ], [ %i.cw, %bb.au ], [ %i.cf, %bb.aa ]
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aw:                                            ; preds = %bb.at
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ax:                                            ; preds = %bb.at
  %i.ee = extractvalue { ptr, ptr } %i.dx, 0
  %i.ef = extractvalue { ptr, ptr } %i.dx, 1
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15704
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !15716, !nonnull !15, !noundef !15
  invoke void %i.ej(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i unwind label %bb.av, !noalias !15705, !inline_history !3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i: ; preds = %bb.ax
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.ay, !noalias !15705

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %.body25.i unwind label %bb.az, !noalias !15705

bb.az:                                            ; preds = %bb.ay
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !15705
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit24.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %bb.bi unwind label %bb.ba, !noalias !15705

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.y
  %i.en = phi ptr [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.ce, %bb.y ]
  %i.eo = phi ptr [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.cw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.cf, %bb.y ]
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

bb.bb:                                            ; preds = %bb.aw, %.body19.i
  %.pn5.i = phi { ptr, i32 } [ %i.ed, %bb.aw ], [ %eh.lpad-body20.i, %.body19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15704
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !15717, !nonnull !15, !noundef !15
  invoke void %i.er(ptr noundef %.sroa.16.0.copyload.i, ptr noundef %.sroa.8.0.copyload.i, i64 noundef %.sroa.12.0.copyload.i)
          to label %.body.i unwind label %bb.bc, !noalias !15705, !inline_history !3

bb.bc:                                            ; preds = %bb.bb, %bb.ae, %.body.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !15705
  unreachable

bb.bd:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !15704
  %i.et = invoke { ptr, ptr } @_RNvXsd_NtNtCscdodAO9FK5_5alloc5boxed7convertINtB7_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_EINtNtBV_7convert4FromNtCs1LivM9IBWqb_12object_store5ErrorE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i unwind label %bb.be, !noalias !15705 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15704
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.bd
  %i.ev = extractvalue { ptr, ptr } %i.et, 0
  %i.ew = extractvalue { ptr, ptr } %i.et, 1
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15704
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %bb.au
  %.sroa.050.063.i = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ false, %bb.au ]
  %.sroa.5.062.i = phi i64 [ %i.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ 1, %bb.au ]
  %.sroa.951.061.i = phi i64 [ %i.ey, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.1049.16.copyload.i, %bb.au ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i unwind label %bb.bf, !noalias !15705

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %.body25.i unwind label %bb.bg, !noalias !15705

bb.bg:                                            ; preds = %bb.bf
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !15705
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %bb.bi unwind label %bb.ba, !noalias !15705

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.thread69.i unwind label %bb.av, !noalias !15705

bb.bh:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15704
  store i8 3, ptr %i.cv, align 8, !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.951.1.i = phi i64 [ %.sroa.951.061.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.eh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 3 uses
  %.sroa.5.1.i = phi i64 [ %.sroa.5.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ %i.eg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 3 uses
  %.sroa.050.1.i = phi i1 [ %.sroa.050.063.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i32.i ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15704
  store i8 1, ptr %i.cv, align 8, !noalias !15704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs_NtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalogNtBI_12CatalogStore17snapshot_sequence0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.cw)
          to label %bb.bj unwind label %bb.cb

bb.bj:                                            ; preds = %bb.bi
  %i.fc = inttoptr i64 %.sroa.5.1.i to ptr
  %i.fd = inttoptr i64 %.sroa.951.1.i to ptr
  br i1 %.sroa.050.1.i, label %bb.cc, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %.sroa.5.1.i, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %.sroa.951.1.i, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg)
          to label %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.body49

_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.bk
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !15
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %i.fl, i64 12, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  store i8 0, ptr %i.fn, align 4
  store i64 %.sroa.5.1.i, ptr %i.s, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.951.1.i, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.fk, ptr %i.fq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !15718, !noundef !15 ; 3 uses
  %i.ft = load i64, ptr %i.fi, align 8, !range !24, !alias.scope !15718, !noundef !15
  %i.fu = icmp eq i64 %i.fs, %i.ft
  br i1 %i.fu, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %bb.bp unwind label %bb.bn, !noalias !15719

bb.bn:                                            ; preds = %bb.bm
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #28
          to label %.body49 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

.body49:                                          ; preds = %bb.bn, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.bl ], [ %i.fv, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ca

bb.bp:                                            ; preds = %bb.bm, %_RNvXs9_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !15718, !nonnull !15, !noundef !15
  %i.fz = getelementptr inbounds nuw [64 x i8], ptr %i.fy, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fz, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %i.ga = add i64 %i.fs, 1
  store i64 %i.ga, ptr %i.fr, align 8, !alias.scope !15718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.fg)
          to label %bb.bs unwind label %bb.br

bb.bq:                                            ; preds = %bb.ca, %bb.br
  %.pn8 = phi { ptr, i32 } [ %i.gc, %bb.br ], [ %.pn5.pn, %bb.ca ] ; 2 uses
  %i.gb = load i64, ptr %1, align 8, !range !16, !noundef !15
  %.not = icmp eq i64 %i.gb, -1
  br i1 %.not, label %bb.ck, label %.body

bb.br:                                            ; preds = %bb.cc, %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bp
  %i.gd = load i64, ptr %1, align 8, !range !16, !noundef !15
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54

bb.bt:                                            ; preds = %bb.bs
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.gf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54 unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54: ; preds = %bb.bt, %bb.bs
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %.body40 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gj = phi ptr [ %i.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit ], [ %i.gg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit54 ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bw

.body40:                                          ; preds = %bb.ek, %bb.dp, %bb.cf, %bb.t, %bb.bw, %bb.bu, %.body, %.body86
  %.pn24 = phi { ptr, i32 } [ %.pn10, %.body ], [ %.pn22, %.body86 ], [ %i.bu, %bb.t ], [ %i.gh, %bb.bu ], [ %i.jt, %bb.dp ], [ %i.hl, %bb.cf ], [ %i.gn, %bb.bw ], [ %i.lp, %bb.ek ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.gl = load i8, ptr %i.gk, align 2, !range !19, !noundef !15
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.en, label %.body72

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i56.invoke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i103, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i89, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.go = load ptr, ptr %i.bw, align 8, !nonnull !15, !align !21, !noundef !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_4list(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.by)
          to label %bb.bz unwind label %bb.do     ; 2 uses

.body82:                                          ; preds = %bb.dg, %bb.by, %bb.em, %bb.ec
  %.pn20 = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ec ], [ %.pn16.pn.pn, %bb.em ], [ %i.gu, %bb.by ], [ %i.ja, %bb.dg ]
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 0, ptr %i.gr, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val35 = load ptr, ptr %i.gs, align 8
  %i.gt = getelementptr i8, ptr %1, i64 248
  %.val36 = load ptr, ptr %i.gt, align 8, !nonnull !15, !align !21, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB2E_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val35, ptr nonnull %.val36) #28
          to label %.body86 unwind label %bb.v

bb.by:                                            ; preds = %bb.dh
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.bz:                                            ; preds = %bb.bx
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gw = extractvalue { ptr, ptr } %i.gq, 0
  %i.gx = extractvalue { ptr, ptr } %i.gq, 1
  store ptr %i.gw, ptr %i.gv, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.gx, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 0, ptr %i.gz, align 8, !alias.scope !15720
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr inttoptr (i64 8 to ptr), ptr %i.ha, align 8, !alias.scope !15720
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 0, ptr %i.hb, align 8, !alias.scope !15720
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 1, ptr %i.hc, align 1
  br label %bb.dc

.body86:                                          ; preds = %bb.ei, %bb.ej, %bb.dn, %bb.dm, %bb.do, %.body82
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body82 ], [ %i.jl, %bb.dm ], [ %i.jl, %bb.dn ], [ %i.jr, %bb.do ], [ %i.li, %bb.ej ], [ %i.li, %bb.ei ]
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.hd) #28
          to label %.body40 unwind label %bb.v

bb.ca:                                            ; preds = %.body44, %bb.cb, %.body49
  %.pn5.pn = phi { ptr, i32 } [ %.pn, %.body49 ], [ %i.hf, %bb.cb ], [ %eh.lpad-body45, %.body44 ]
end_hunk_1
