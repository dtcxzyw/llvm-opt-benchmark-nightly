Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.11?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7triggerNtB5_13EnableTriggerNtNtB9_8registry13CatalogRecord5apply:bb.a
.noexc41.i:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8453
  store ptr %i.ae, ptr %i.e, align 8, !noalias !8451
  %i.al = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE8make_mutBR_(ptr noalias noundef align 8 dereferenceable(8) %i.e)
          to label %bb.l unwind label %bb.n, !noalias !8454

bb.l:                                             ; preds = %.noexc41.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 150
  store i8 0, ptr %i.am, align 2, !alias.scope !8455, !noalias !8456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8451
  %i.an = load ptr, ptr %i.e, align 8, !noalias !8451, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdNtNtNtNtNtNtB8_7catalog8versions2v36schema7trigger17TriggerDefinitionE6updateINtNtCscdodAO9FK5_5alloc4sync3ArcB1N_EEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ac, i32 noundef %i.q, ptr noundef nonnull %i.an)
          to label %.noexc42.i unwind label %bb.f, !noalias !8445

.noexc42.i:                                       ; preds = %bb.l
  %i.ao = load i32, ptr %i.d, align 8, !range !14, !noalias !8451, !noundef !5
  %.not36.i.i.i = icmp eq i32 %i.ao, -1
  br i1 %.not36.i.i.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %.noexc42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !8451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8451
  invoke void @_RNvXNtNtCs844E4pPEVZX_17influxdb3_catalog6format5applyNtB2_10ApplyErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtB6_10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id9TriggerIdEE4fromB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc43.i unwind label %bb.f, !noalias !8445

.noexc43.i:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8451
  br label %bb.q

.thread.i:                                        ; preds = %.noexc42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8451
  br label %bb.t

bb.n:                                             ; preds = %.noexc41.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8457)
  call void @llvm.experimental.noalias.scope.decl(metadata !8458)
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !8459, !noalias !8451, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !8460
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.w unwind label %bb.p, !noalias !8454

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !8454
  unreachable

bb.q:                                             ; preds = %.noexc43.i, %.noexc40.i
  %.pr.i = load i64, ptr %i.j, align 8, !noalias !8446 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8451
  %.not35.i = icmp eq i64 %.pr.i, -1
  br i1 %.not35.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.432.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.430.0..sroa_idx.i, i64 16, i1 false), !noalias !8461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8446
  store i64 %.pr.i, ptr %0, align 8, !alias.scope !8445, !noalias !8461
  call void @llvm.experimental.noalias.scope.decl(metadata !8462)
  call void @llvm.experimental.noalias.scope.decl(metadata !8463)
  %i.au = load ptr, ptr %i.k, align 8, !alias.scope !8464, !noalias !8446, !nonnull !5, !noundef !5
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !8465
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs0_NtNtB37_7records7triggerNtB3J_13EnableTriggerNtNtB37_8registry13CatalogRecord5apply0EB8_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k), !noalias !8445
  br label %_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs0_NtNtB37_7records7triggerNtB3J_13EnableTriggerNtNtB37_8registry13CatalogRecord5apply0EB8_.exit

bb.t:                                             ; preds = %bb.q, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8446
  %i.ax = load ptr, ptr %i.k, align 8, !noalias !8446, !nonnull !5, !noundef !5
  call void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE6updateINtNtCscdodAO9FK5_5alloc4sync3ArcB1I_EEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.r, i32 noundef %i.o, ptr noundef nonnull %i.ax), !noalias !8445
  %i.ay = load i32, ptr %i.i, align 8, !range !14, !noalias !8446, !noundef !5
  %.not36.i = icmp eq i32 %i.ay, -1
  br i1 %.not36.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !8446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8446
  call void @_RNvXNtNtCs844E4pPEVZX_17influxdb3_catalog6format5applyNtB2_10ApplyErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtB6_10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE4fromB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8446
  br label %_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs0_NtNtB37_7records7triggerNtB3J_13EnableTriggerNtNtB37_8registry13CatalogRecord5apply0EB8_.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8446
  store i64 -1, ptr %0, align 8, !alias.scope !8445, !noalias !8461
  br label %_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs0_NtNtB37_7records7triggerNtB3J_13EnableTriggerNtNtB37_8registry13CatalogRecord5apply0EB8_.exit

bb.w:                                             ; preds = %bb.o, %bb.n, %bb.f
  %.pn.ph.i = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.ap, %bb.o ], [ %i.ab, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8466)
  call void @llvm.experimental.noalias.scope.decl(metadata !8467)
  %i.az = load ptr, ptr %i.k, align 8, !alias.scope !8468, !noalias !8446, !nonnull !5, !noundef !5
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !8469
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit45.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit45.i unwind label %bb.y, !noalias !8445

bb.y:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !8445
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit45.i: ; preds = %bb.x, %bb.w
  resume { ptr, i32 } %.pn.ph.i

_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE12modify_by_iduNtNtNtB8_6format5apply10ApplyErrorNCNvXs0_NtNtB37_7records7triggerNtB3J_13EnableTriggerNtNtB37_8registry13CatalogRecord5apply0EB8_.exit: ; preds = %bb.d, %bb.r, %bb.s, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records8databaseNtB5_18HardDeleteDatabaseNtNtB9_8registry13CatalogRecord5apply(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias noundef align 8 dereferenceable(1680) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load i32, ptr %1, align 4, !noundef !5   ; 5 uses
  store i32 %i.j, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.l = call noundef align 8 ptr @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE3getBO_EB26_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !8507 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8, !noalias !8507, !nonnull !5, !noundef !5 ; 6 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !8507
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8508
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @22, ptr %i.p, align 8, !noalias !8508
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 9, ptr %i.q, align 8, !noalias !8508
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8508
  store i32 2, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @22, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXNtNtCs844E4pPEVZX_17influxdb3_catalog6format5applyNtB2_10ApplyErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtB6_10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE4fromB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit

.thread44:                                        ; preds = %bb.u, %.noexc31, %bb.h, %bb.w, %.noexc30
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8508
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @22, ptr %i.r, align 8, !noalias !8508
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 9, ptr %i.s, align 8, !noalias !8508
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.j, ptr %i.t, align 4, !noalias !8508
  store i32 2, ptr %i.c, align 8, !noalias !8508
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs844E4pPEVZX_17influxdb3_catalog10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEEBG_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c), !noalias !8507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8508
  store ptr %i.m, ptr %i.h, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 449
  %i.v = load i8, ptr %i.u, align 1, !range !38, !noundef !5
  switch i8 %i.v, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 -1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 416 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.aa = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE8make_mutBR_(ptr noalias noundef align 8 dereferenceable(8) %i.h)
          to label %bb.w unwind label %.thread44  ; 3 uses

bb.i:                                             ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit29
  %i.ab = phi ptr [ %i.m, %bb.e ], [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit29 ]
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8509)
  call void @llvm.experimental.noalias.scope.decl(metadata !8510)
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !8511
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.af = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  store ptr %i.af, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  invoke fastcc void @_RNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records8database25capture_db_name_in_tokens(ptr noalias noundef align 8 dereferenceable(1680) %2, i32 noundef %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ag)
          to label %bb.o unwind label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.q, %bb.o, %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8512)
  call void @llvm.experimental.noalias.scope.decl(metadata !8513)
  %i.ak = load ptr, ptr %i.g, align 8, !alias.scope !8514, !nonnull !5, !noundef !5
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !8514
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.thread unwind label %bb.v

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8515
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 248
  invoke void @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1V_E14remove_by_leftBN_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.an, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !8516)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !8516, !noalias !8515, !noundef !5 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc24
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !8517
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.q, %bb.p, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8515
  %i.at = invoke noundef ptr @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE12shift_removeBO_EB26_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc26 unwind label %bb.m   ; 3 uses

.noexc26:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArceEEEECs844E4pPEVZX_17influxdb3_catalog.exit.i
  store ptr %i.at, ptr %i.a, align 8, !noalias !8515
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.noexc26
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !8518
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.r, %.noexc26, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8515
  call void @llvm.experimental.noalias.scope.decl(metadata !8519)
  call void @llvm.experimental.noalias.scope.decl(metadata !8520)
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !8521, !nonnull !5, !noundef !5
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !8521
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit29

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit29 unwind label %.thread44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit29: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load ptr, ptr %i.h, align 8, !alias.scope !8511
  br label %bb.i

bb.v:                                             ; preds = %bb.z, %bb.n
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.w:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  invoke void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEIBQ_INtNtCscdodAO9FK5_5alloc4sync3ArceEEEE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %.noexc30 unwind label %.thread44

.noexc30:                                         ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  invoke void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCsaaj5M71uUq9_5bimap3mem3RefINtNtCscdodAO9FK5_5alloc4sync3ArceEEIBQ_NtCsbFlE7Gjht9i_12influxdb3_id7TableIdEEE5clearCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %.noexc31 unwind label %.thread44

.noexc31:                                         ; preds = %.noexc30
  invoke void @_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEE5clearB25_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.aa)
          to label %_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtNtB7_7catalog8versions2v36schema5table15TableDefinitionE5clearB7_.exit unwind label %.thread44

_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtNtB7_7catalog8versions2v36schema5table15TableDefinitionE5clearB7_.exit: ; preds = %.noexc31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtNtNtB8_7catalog8versions2v36schema8database14DatabaseSchemaE6updateINtNtCscdodAO9FK5_5alloc4sync3ArcB1I_EEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.k, i32 noundef %i.j, ptr noundef nonnull %i.bd)
  %i.be = load i32, ptr %i.f, align 8, !range !14, !noundef !5
  %.not22 = icmp eq i32 %i.be, -1
  br i1 %.not22, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtNtB7_7catalog8versions2v36schema5table15TableDefinitionE5clearB7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXNtNtCs844E4pPEVZX_17influxdb3_catalog6format5applyNtB2_10ApplyErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtB6_10repository15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id4DbIdEE4fromB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit

bb.y:                                             ; preds = %_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtNtNtB7_7catalog8versions2v36schema5table15TableDefinitionE5clearB7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit: ; preds = %bb.d, %bb.x, %bb.y, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit34: ; preds = %.thread, %bb.z
  resume { ptr, i32 } %.pn43

.thread:                                          ; preds = %bb.n, %bb.m, %.thread44
  %.pn43 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread44 ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8522)
  call void @llvm.experimental.noalias.scope.decl(metadata !8523)
  %i.bf = load ptr, ptr %i.h, align 8, !alias.scope !8524, !nonnull !5, !noundef !5
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !8524
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit34

bb.z:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEB1k_.exit34 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 2 ptr @_RNvXs0_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB5_9SeriesKeyINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %.not.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB4_9SeriesKey14get_series_key.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEE8try_initNCINvB2_11get_or_initNCNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB2B_9SeriesKey14get_series_key0E0zEB2J_(ptr noundef nonnull align 8 %i.a, ptr noundef nonnull align 8 %0) ; 0 uses
  br label %_RNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB4_9SeriesKey14get_series_key.exit

_RNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB4_9SeriesKey14get_series_key.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB4_9SeriesKey14get_series_key.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %1
  ret ptr %i.i

bb.d:                                             ; preds = %_RNvMs_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26legacyNtB4_9SeriesKey14get_series_key.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generations0_1__NtB5_28SetGenerationDurationDecoderNtNtCs87O7Q65ve1k_7bitcode5coder4View8populate(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 {
end_hunk_0
