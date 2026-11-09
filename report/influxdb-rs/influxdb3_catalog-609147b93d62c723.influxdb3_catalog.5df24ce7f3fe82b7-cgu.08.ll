Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.08?download=true
inline.NumInlined: 3953
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB4_18ObjectStoreCatalog37background_persist_catalog_checkpoint0Ba_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [72 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [72 x i8], align 8               ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !44, !noundef !42
  switch i8 %i.ag, label %default.unreachable211 [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.b
  ]

default.unreachable211:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !3288
  %.phi.trans.insert203 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.pre = load ptr, ptr %.phi.trans.insert203, align 8, !alias.scope !3288
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !3289, !nonnull !42, !align !49, !noundef !42
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !3289, !nonnull !42, !noundef !42
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3289, !noundef !42
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !3289, !noundef !42
  invoke void %i.ak(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noundef nonnull align 8 %i.al, ptr noundef %i.an, i64 noundef %i.ap)
          to label %_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit unwind label %bb.d, !inline_history !3249

_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.c
  %i.aq = invoke { ptr, i64 } @_RNvXs5_NtCs1LivM9IBWqb_12object_store7payloadNtB5_10PutPayloadINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ad)
          to label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.body

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvXs2_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %i.as = extractvalue { ptr, i64 } %i.aq, 0
  %i.at = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.au = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_3put(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %bb.e unwind label %bb.r       ; 2 uses

bb.e:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.aw, ptr %i.ay, align 8
  br label %bb.j

.body:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.i, %bb.d, %bb.ce, %bb.bf
  %.pn53 = phi { ptr, i32 } [ %i.ar, %bb.d ], [ %.pn51, %bb.ce ], [ %.pn35, %bb.bf ], [ %i.bd, %bb.i ], [ %i.bw, %bb.r ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !3292, !nonnull !42, !noundef !42
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !3292
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.bi

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #32
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #32
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val108 = load ptr, ptr %i.be, align 8
  %.val109 = load ptr, ptr %i.bf, align 8, !nonnull !42, !align !49, !noundef !42
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog(ptr %.val108, ptr nonnull %.val109) #35
          to label %.body unwind label %bb.bi

bb.j:                                             ; preds = %bb.b, %bb.e
  %.val1.i = phi ptr [ %.val1.i.pre, %bb.b ], [ %i.aw, %bb.e ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.b ], [ %i.av, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !42, !noalias !3293, !nonnull !42
  invoke void %i.bh(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ac, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.i, !inline_history !83

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.j
  %i.bi = load i64, ptr %i.ac, align 8, !range !57, !noundef !42
  %i.bj = icmp eq i64 %i.bi, -2                   ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_.exit, %bb.k
  %storemerge = phi i8 [ 3, %bb.k ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_.exit ]
  store i8 %storemerge, ptr %i.af, align 8
  ret i1 %i.bj

bb.k:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %common.ret

bb.l:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.val106 = load ptr, ptr %i.be, align 8         ; 5 uses
  %.val107 = load ptr, ptr %i.bf, align 8, !nonnull !42, !align !49, !noundef !42 ; 5 uses
  %i.bk = load ptr, ptr %.val107, align 8, !invariant.load !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val106) ]
  invoke void %i.bk(ptr noundef nonnull %.val106)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !53, !invariant.load !42 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.val107, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !54, !invariant.load !42
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val106) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #33
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.p:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !53, !invariant.load !42 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.val107, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !range !54, !invariant.load !42
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106, i64 noundef range(i64 1, 0) %i.bs, i64 noundef range(i64 1, 536870913) %i.bv) #33
  br label %.body

bb.r:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCs844E4pPEVZX_17influxdb3_catalog.exit, %bb.ci
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.o, %bb.n
  %i.bx = load i64, ptr %i.ae, align 8, !range !59, !noundef !42 ; 3 uses
  %.not = icmp eq i64 %i.bx, -1
  br i1 %.not, label %.noexc75, label %2

2:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog.exit
  %3 = icmp ne i64 %i.bx, -9223372036854775800
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.bx, -9223372036854775795
  br i1 %4, label %bb.ci, label %.noexc

.noexc75:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false)
  %i.bz = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.bz, -3
  %switch = icmp ult i64 %.off, 3
  br i1 %switch, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.noexc75
  %i.ca = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 3
  br i1 %i.cb, label %bb.u, label %bb.t, !prof !82

bb.t:                                             ; preds = %bb.s
  %i.cc = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE)
          to label %bb.u unwind label %bb.ao

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.0.i114 = phi i8 [ %i.ca, %bb.s ], [ %i.cc, %bb.t ] ; 2 uses
  %i.cd = icmp eq i8 %.sroa.0.0.i114, 0
  br i1 %i.cd, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.cf = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ce, i8 noundef %.sroa.0.0.i114)
          to label %bb.w unwind label %bb.ao

bb.w:                                             ; preds = %bb.v
  br i1 %i.cf, label %bb.ai, label %bb.x

bb.x:                                             ; preds = %.noexc75, %bb.u, %bb.w
  %i.cg = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not197 = icmp eq i8 %i.cg, 0
  br i1 %.not197, label %bb.y, label %.noexc72

bb.y:                                             ; preds = %bb.x
  %i.ch = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 6
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ugt i64 %i.ch, 2
  br i1 %i.cj, label %bb.z, label %.noexc72

bb.z:                                             ; preds = %bb.y
  %i.ck = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cl = getelementptr i8, ptr %i.ck, i64 32
  %.val104 = load ptr, ptr %i.cl, align 8, !nonnull !42, !noundef !42
  %i.cm = getelementptr i8, ptr %i.ck, i64 40
  %.val105 = load i64, ptr %i.cm, align 8, !noundef !42
  store i64 3, ptr %i.x, align 8, !alias.scope !3294
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.val104, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3294
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.val105, ptr %.sroa.8154.0..sroa_idx, align 8, !alias.scope !3294
  %i.cn = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.aa unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.co = extractvalue { ptr, ptr } %i.cn, 0      ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.cn, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !42, !nonnull !42
  %i.cs = invoke noundef zeroext i1 %i.cr(ptr noundef %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.noexc72

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.cu = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @30, ptr %i.u, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.u, ptr %i.v, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @31, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.cx, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @32, ptr %i.da, align 8
  store i64 1, ptr %i.w, align 8, !alias.scope !3295
  %.sroa.4.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i116, align 8, !alias.scope !3295
  %.sroa.5.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i117, align 8, !alias.scope !3295
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.cv, ptr %i.db, align 8, !alias.scope !3295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ad

bb.ah:                                            ; preds = %bb.ab, %bb.af
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %i.ct, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bh

bb.ai:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dd = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint010___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @30, ptr %i.y, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.y, ptr %i.z, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @31, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @32, ptr %i.dj, align 8
  store i64 1, ptr %i.aa, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.de, ptr %.sroa.9.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint00Bc_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bh

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.noexc72

.noexc72:                                         ; preds = %bb.ak, %bb.x, %bb.y, %bb.ad
  %i.dl = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off200 = add i64 %i.dl, -2
  %switch201 = icmp ult i64 %.off200, 4
  br i1 %switch201, label %.thread187, label %bb.al

bb.al:                                            ; preds = %.noexc72
  %i.dm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.dn = icmp ult i8 %i.dm, 3
  br i1 %i.dn, label %bb.an, label %bb.am, !prof !82

bb.am:                                            ; preds = %bb.al
  %i.do = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0.0.i120 = phi i8 [ %i.dm, %bb.al ], [ %i.do, %bb.am ] ; 2 uses
  %i.dp = icmp eq i8 %.sroa.0.0.i120, 0
  br i1 %i.dp, label %.thread187, label %bb.ap

bb.ao:                                            ; preds = %bb.v, %bb.t, %bb.am, %bb.ap
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.ds = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dr, i8 noundef %.sroa.0.0.i120)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ds, label %bb.bc, label %.thread187

.thread187:                                       ; preds = %.noexc72, %bb.an, %bb.aq
  %i.dt = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not198 = icmp eq i8 %i.dt, 0
  br i1 %.not198, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %.thread187
  %i.du = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 6
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ugt i64 %i.du, 3
  br i1 %i.dw, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.dx = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dy = getelementptr i8, ptr %i.dx, i64 32
  %.val102 = load ptr, ptr %i.dy, align 8, !nonnull !42, !noundef !42
  %i.dz = getelementptr i8, ptr %i.dx, i64 40
  %.val103 = load i64, ptr %i.dz, align 8, !noundef !42
  store i64 4, ptr %i.p, align 8, !alias.scope !3296
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.val102, ptr %.sroa.6165.0..sroa_idx, align 8, !alias.scope !3296
  %.sroa.8166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.val103, ptr %.sroa.8166.0..sroa_idx, align 8, !alias.scope !3296
  %i.ea = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.at unwind label %bb.au     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0      ; 2 uses
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1      ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !invariant.load !42, !nonnull !42
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  br i1 %i.ef, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eh = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @33, ptr %i.m, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ab, ptr %i.l, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @31, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.l, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @34, ptr %i.em, align 8
  store i64 1, ptr %i.o, align 8, !alias.scope !3297
  %.sroa.4.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i125, align 8, !alias.scope !3297
  %.sroa.5.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i126, align 8, !alias.scope !3297
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ei, ptr %i.en, align 8, !alias.scope !3297
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dx, ptr noundef nonnull %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ec, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aw

bb.ba:                                            ; preds = %bb.au, %bb.ay
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ay ], [ %i.eg, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bh

bb.bb:                                            ; preds = %bb.aw, %bb.ar, %.thread187, %bb.be
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(48) %i.ab)
          to label %.thread unwind label %bb.bg

bb.bc:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ep = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @33, ptr %i.r, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 47 to ptr), ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ab, ptr %i.q, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @31, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.q, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @34, ptr %i.eu, align 8
  store i64 1, ptr %i.t, align 8
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.7158.0..sroa_idx, align 8
  %.sroa.8159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 2, ptr %.sroa.8159.0..sroa_idx, align 8
  %.sroa.9160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.eq, ptr %.sroa.9160.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s_0Bc_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.t)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bb

bb.bf:                                            ; preds = %bb.bh, %bb.bg
  %.pn35 = phi { ptr, i32 } [ %i.ew, %bb.bg ], [ %.pn31.pn.pn, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.body

bb.bg:                                            ; preds = %bb.bb
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.thread:                                          ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cg

bb.bh:                                            ; preds = %bb.ba, %bb.ah, %bb.aj, %bb.ao, %bb.bd
  %.pn31.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.bd ], [ %i.dk, %bb.aj ], [ %.pn25.pn.pn.pn, %bb.ba ], [ %.pn13.pn.pn, %bb.ah ], [ %i.dq, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #35
          to label %bb.bf unwind label %bb.bi

bb.bi:                                            ; preds = %bb.cp, %.body140, %bb.f, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit, %bb.co, %bb.cj, %bb.bh
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

.noexc:                                           ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false)
  %i.ey = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ez = icmp eq i64 %i.ey, 5
  br i1 %i.ez, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %.noexc
  %i.fa = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 3
  br i1 %i.fb, label %bb.bl, label %bb.bk, !prof !82

bb.bk:                                            ; preds = %bb.bj
  %i.fc = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.0.0.i129 = phi i8 [ %i.fa, %bb.bj ], [ %i.fc, %bb.bk ] ; 2 uses
  %i.fd = icmp eq i8 %.sroa.0.0.i129, 0
  br i1 %i.fd, label %bb.bp, label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bn
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bn:                                            ; preds = %bb.bl
  %i.ff = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.fg = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ff, i8 noundef %.sroa.0.0.i129)
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.fg, label %bb.cb, label %bb.bp

bb.bp:                                            ; preds = %.noexc, %bb.bl, %bb.bo
  %i.fh = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not195 = icmp eq i8 %i.fh, 0
  br i1 %.not195, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.fi = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, 6
  call void @llvm.assume(i1 %i.fj)
  %.not196 = icmp eq i64 %i.fi, 0
  br i1 %.not196, label %bb.ca, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fk = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fl = getelementptr i8, ptr %i.fk, i64 32
  %.val100 = load ptr, ptr %i.fl, align 8, !nonnull !42, !noundef !42
  %i.fm = getelementptr i8, ptr %i.fk, i64 40
  %.val101 = load i64, ptr %i.fm, align 8, !noundef !42
  store i64 1, ptr %i.f, align 8, !alias.scope !3298
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.val100, ptr %.sroa.6177.0..sroa_idx, align 8, !alias.scope !3298
  %.sroa.8178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.val101, ptr %.sroa.8178.0..sroa_idx, align 8, !alias.scope !3298
  %i.fn = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bs unwind label %bb.bt     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !42, !nonnull !42
  %i.fs = invoke noundef zeroext i1 %i.fr(ptr noundef %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.fs, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fu = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @35, ptr %i.c, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.fw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @31, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.b, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @36, ptr %i.fz, align 8
  store i64 1, ptr %i.e, align 8, !alias.scope !3299
  %.sroa.4.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i134, align 8, !alias.scope !3299
  %.sroa.5.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i135, align 8, !alias.scope !3299
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.fv, ptr %i.ga, align 8, !alias.scope !3299
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fk, ptr noundef nonnull %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bv

bb.bz:                                            ; preds = %bb.bt, %bb.bx
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.bx ], [ %i.ft, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.co

bb.ca:                                            ; preds = %bb.bv, %bb.bq, %bb.bp, %bb.cd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %.thread189 unwind label %bb.cf

bb.cb:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.gc = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_10___CALLSITE, align 8, !nonnull !42, !align !49, !noundef !42
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @35, ptr %i.h, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @31, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.g, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @36, ptr %i.gh, align 8
  store i64 1, ptr %i.j, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.8171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 2, ptr %.sroa.8171.0..sroa_idx, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.gd, ptr %.sroa.9172.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v2NtB6_18ObjectStoreCatalog37background_persist_catalog_checkpoint0s0_0Bc_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.co

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ca

bb.ce:                                            ; preds = %bb.co, %bb.cf
  %.pn51 = phi { ptr, i32 } [ %i.gj, %bb.cf ], [ %.pn47.pn.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.body

bb.cf:                                            ; preds = %bb.ca
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.thread189:                                       ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cg

bb.cg:                                            ; preds = %.thread, %.thread189, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !3302, !nonnull !42, !noundef !42
  %i.gm = atomicrmw add ptr %i.gl, i64 -1 release, align 8, !noalias !3302
  %i.gn = icmp eq i64 %i.gm, 1
  br i1 %i.gn, label %bb.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit139

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit139 unwind label %bb.cj

bb.ci:                                            ; preds = %2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) %i.ae)
          to label %bb.cg unwind label %bb.r

bb.cj:                                            ; preds = %bb.ch
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_(ptr noalias noundef align 8 dereferenceable(24) %0) #35
          to label %.body140 unwind label %bb.bi

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit139: ; preds = %bb.cg, %bb.ch
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.ck

bb.ck:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit139
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body140 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit139
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_.exit unwind label %bb.cm

.body140:                                         ; preds = %bb.cm, %bb.ck, %bb.cj
  %.pn55 = phi { ptr, i32 } [ %i.go, %bb.cj ], [ %i.hb, %bb.cm ], [ %i.gp, %bb.ck ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !3305, !noundef !42
  %i.gu = load ptr, ptr %i.gr, align 8, !alias.scope !3305, !nonnull !42, !align !49, !noundef !42
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !3305, !nonnull !42, !noundef !42
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !3305, !noundef !42
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !3305, !noundef !42
  invoke void %i.gw(ptr noundef %i.gt, ptr noundef %i.gy, i64 noundef %i.ha)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.bi, !inline_history !3

bb.cm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body140

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !3308, !noundef !42
  %i.hf = load ptr, ptr %i.hc, align 8, !alias.scope !3308, !nonnull !42, !align !49, !noundef !42
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !3308, !nonnull !42, !noundef !42
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !3308, !noundef !42
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !3308, !noundef !42
  invoke void %i.hh(ptr noundef %i.he, ptr noundef %i.hj, i64 noundef %i.hl)
          to label %common.ret unwind label %bb.cn, !inline_history !3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.cp, %.body140, %bb.cn
  %.pn57 = phi { ptr, i32 } [ %i.hm, %bb.cn ], [ %.pn55, %.body140 ], [ %.pn53, %bb.cp ]
  store i8 2, ptr %i.af, align 8
  resume { ptr, i32 } %.pn57

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs844E4pPEVZX_17influxdb3_catalog.exit

bb.co:                                            ; preds = %bb.bz, %bb.bm, %bb.cc
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.cc ], [ %.pn41.pn.pn.pn, %bb.bz ], [ %i.fe, %bb.bm ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(72) %i.k) #35
          to label %bb.ce unwind label %bb.bi

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.body, %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v215CatalogFilePathEBJ_(ptr noalias noundef align 8 dereferenceable(24) %0) #35
          to label %bb.cp unwind label %bb.bi

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs844E4pPEVZX_17influxdb3_catalog.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !3311, !noundef !42
  %i.hq = load ptr, ptr %i.hn, align 8, !alias.scope !3311, !nonnull !42, !align !49, !noundef !42
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !3311, !nonnull !42, !noundef !42
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !3311, !noundef !42
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !3311, !noundef !42
  invoke void %i.hs(ptr noundef %i.hp, ptr noundef %i.hu, i64 noundef %i.hw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %bb.bi, !inline_history !3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB4_19CurrentCatalogUsage18operation_observer0Ba_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3431 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3 = alloca [16 x i8], align 8            ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !range !44, !noundef !42
  switch i8 %i.m, label %default.unreachable196 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
  ]

default.unreachable196:                           ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #32
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !44, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  switch i8 %.pre, label %default.unreachable196 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.p = phi ptr [ %i.mo, %.thread ], [ %i.o, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !3432, !nonnull !42, !align !49, !noundef !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.r, ptr %i.s, align 8, !noalias !3432
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32
          to label %.noexc20 unwind label %bb.d

.noexc20:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.p, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs0_NtNtCs4NRVxsYgnAr_4core6future7poll_fnINtB5_6PollFnNCNCNvMNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtB11_8ReceiverNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7channel8versions2v220CatalogUpdateMessageE4recv00ENtNtB7_6future6Future4pollB27_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.t, align 8, !noalias !3432
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.w = load i64, ptr %i.k, align 8, !range !51, !alias.scope !3433, !noundef !42 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1                     ; 3 uses
  %spec.select.i = select i1 %i.x, i8 3, i8 1
  store i8 %spec.select.i, ptr %i.t, align 8, !noalias !3432
end_hunk_0
