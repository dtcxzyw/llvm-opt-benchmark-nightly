Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.00?download=true
inline.NumInlined: 8785
inline.NumDeleted: 2783
begin_hunk_0_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0B5_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i73.i: ; preds = %bb.ijh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaln)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBL_7HttpApi35clear_retention_period_for_database020ClearRetentionPeriodEBN_.exit77.i unwind label %bb.ijb, !noalias !13546

bb.ijk:                                           ; preds = %bb.ijl, %bb.iiv, %bb.iit
  %.pn17.i5502 = phi { ptr, i32 } [ %i.aalq, %bb.ijl ], [ %i.aakn, %bb.iiv ], [ %i.aakl, %bb.iit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !13539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !13539
  br label %bb.iic

bb.ijl:                                           ; preds = %bb.iiu
  %i.aalq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(112) %i.da) #26
          to label %bb.ijk unwind label %bb.ijm, !noalias !13546

bb.ijm:                                           ; preds = %bb.ijl, %bb.iih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit58.i5479, %bb.iie, %bb.iic
  %i.aalr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13546
  unreachable

bb.ijn:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog35clear_retention_period_for_database0ECsbakdBCgU4AF_16influxdb3_server.exit.i5485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.16.i5473, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6114.i, i64 64, i1 false), !noalias !13539
  %.sroa.4.i.sroa.5.4.insert.ext.i5487 = zext nneg i8 %i.aajy to i64
  %.sroa.4.i.sroa.5.5.insert.ext.i5488 = zext i56 %.sroa.3.sroa.0.0.copyload.i5483 to i64
  %.sroa.4.i.sroa.5.5.insert.shift.i5489 = shl nuw i64 %.sroa.4.i.sroa.5.5.insert.ext.i5488, 8
  %.sroa.4.i.sroa.5.5.insert.insert.i5490 = or disjoint i64 %.sroa.4.i.sroa.5.5.insert.shift.i5489, %.sroa.4.i.sroa.5.4.insert.ext.i5487
  %i.aals = inttoptr i64 %.sroa.4.i.sroa.5.5.insert.insert.i5490 to ptr
  %i.aalt = ptrtoint ptr %.sroa.4113.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !13539
  br label %bb.ijh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493: ; preds = %bb.iid, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBL_7HttpApi35clear_retention_period_for_database020ClearRetentionPeriodEBN_.exit77.i
  %i.aalu = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aalu)
          to label %bb.ijp unwind label %bb.ijf, !noalias !13546

bb.ijo:                                           ; preds = %bb.iij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !13539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !13539
  store i8 3, ptr %i.aajv, align 8, !noalias !13539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i5473)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6114.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.146641)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ijp:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i
  %i.aalv = phi ptr [ %i.aajf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %i.aajv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %i.aalw = phi ptr [ %i.aajg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %i.aajw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.5133.sroa.6.1.i = phi i16 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.5133.sroa.5.1.i = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %i.aakv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.5133.sroa.0.1.i = phi i8 [ %.sroa.5133.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %i.aakt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.15.1.i5494 = phi i64 [ %.sroa.15.0.i5492, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.14135.1.i = phi ptr [ %.sroa.14135.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.14.1.i5495 = phi i16 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.13.1.i = phi i8 [ %.sroa.13.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.7.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.11134.1.i = phi i8 [ %.sroa.11134.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %.sroa.12127.sroa.6.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.0132.1.i = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit.i5493 ], [ %i.aakq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsbakdBCgU4AF_16influxdb3_server.exit71.i ]
  %.sroa.5133.sroa.6.0.insert.ext.i = zext i16 %.sroa.5133.sroa.6.1.i to i32
  %.sroa.5133.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.5133.sroa.6.0.insert.ext.i, 16
  %.sroa.5133.sroa.5.0.insert.ext.i = zext i8 %.sroa.5133.sroa.5.1.i to i32
  %.sroa.5133.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5133.sroa.5.0.insert.ext.i, 8
  %.sroa.5133.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.5133.sroa.5.0.insert.shift.i, %.sroa.5133.sroa.6.0.insert.shift.i
  %.sroa.5133.sroa.0.0.insert.ext.i = zext i8 %.sroa.5133.sroa.0.1.i to i32
  %.sroa.5133.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.5133.sroa.5.0.insert.insert.i, %.sroa.5133.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146641, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.16.i5473, i64 96, i1 false), !noalias !13601
  store i8 1, ptr %i.aalv, align 8, !noalias !13539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i5473)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6114.i)
  store i64 %.sroa.0132.1.i, ptr %i.aow, align 8
  %.sroa.86635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %.sroa.5133.sroa.0.0.insert.insert.i, ptr %.sroa.86635.0..sroa_idx, align 8
  %.sroa.96636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i8 %.sroa.11134.1.i, ptr %.sroa.96636.0..sroa_idx, align 4
  %.sroa.106637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 13
  store i8 %.sroa.13.1.i, ptr %.sroa.106637.0..sroa_idx, align 1
  %.sroa.116638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 14
  store i16 %.sroa.14.1.i5495, ptr %.sroa.116638.0..sroa_idx, align 2
  %.sroa.126639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store ptr %.sroa.14135.1.i, ptr %.sroa.126639.0..sroa_idx, align 8
  %.sroa.136640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  store i64 %.sroa.15.1.i5494, ptr %.sroa.136640.0..sroa_idx, align 8
  %.sroa.146641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146641.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146641, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.146641)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi35clear_retention_period_for_database0EBL_(ptr noundef nonnull align 16 %i.aalw)
          to label %bb.jw unwind label %bb.ijq

bb.ijq:                                           ; preds = %bb.ijp
  %i.aalx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit

bb.ijr:                                           ; preds = %bb.ijv, %bb.iju
  %i.aaly = landingpad { ptr, i32 }
          cleanup
  br label %.body5601

.body5601:                                        ; preds = %bb.iop, %bb.ijr
  %i.aalz = phi ptr [ %i.aama, %bb.ijr ], [ %i.aaww, %bb.iop ]
  %eh.lpad-body5602 = phi { ptr, i32 } [ %i.aaly, %bb.ijr ], [ %.pn43.i5544, %bb.iop ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166659)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176660)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186661)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18create_plugin_file0EBL_(ptr noundef nonnull align 8 %i.aalz) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit unwind label %bb.bh

bb.ijs:                                           ; preds = %bb.a
  %.phi.trans.insert8006 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %.pre8007 = load i8, ptr %.phi.trans.insert8006, align 16, !range !687, !noalias !13602
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166659)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176660)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.186661)
  %i.aama = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i5533)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3142.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5143.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.3.i)
  %i.aamb = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, i64 16 ; 6 uses
  %i.aamc = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 7 uses
  switch i8 %.pre8007, label %default.unreachable8727 [
    i8 0, label %bb.ijt
    i8 1, label %bb.iju
    i8 2, label %bb.ijv
    i8 3, label %bb.ijx
    i8 4, label %bb.ikh
    i8 5, label %bb.ikv
  ]

bb.ijt:                                           ; preds = %.thread8807.a, %bb.ijs
  %i.aamd = phi ptr [ %i.cbp, %.thread8807.a ], [ %i.aamc, %bb.ijs ]
  %i.aame = phi ptr [ %i.cbo, %.thread8807.a ], [ %i.aamb, %bb.ijs ]
  %i.aamf = phi ptr [ %i.cbn, %.thread8807.a ], [ %i.aama, %bb.ijs ] ; 2 uses
  %i.aamg = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aamh = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aami = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.aamj = load ptr, ptr %i.aami, align 8, !noalias !13602, !nonnull !11, !align !78, !noundef !11 ; 2 uses
  store ptr %i.aamj, ptr %i.aamh, align 16, !noalias !13602
  store i8 1, ptr %i.aamg, align 1, !noalias !13602
  %i.aamk = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aamk, ptr noundef nonnull align 8 dereferenceable(240) %i.aamf, i64 240, i1 false), !noalias !13602
  %i.aaml = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.aamj, ptr %i.aaml, align 8, !noalias !13602
  %.sroa.8.0..sroa_idx.i5598 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.aamk, ptr %.sroa.8.0..sroa_idx.i5598, align 16, !noalias !13602
  %.sroa.10117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %.sroa.10117.0..sroa_idx.i, align 16, !noalias !13602
  br label %bb.ijx

bb.iju:                                           ; preds = %bb.ijs
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #29
          to label %.noexc5599 unwind label %bb.ijr

.noexc5599:                                       ; preds = %bb.iju
  unreachable

bb.ijv:                                           ; preds = %bb.ijs
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #29
          to label %.noexc5600 unwind label %bb.ijr

.noexc5600:                                       ; preds = %bb.ijv
  unreachable

bb.ijw:                                           ; preds = %bb.ijx
  %i.aamm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13602
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.aamq) #26
          to label %.body89.i unwind label %bb.ikf, !noalias !13606

bb.ijx:                                           ; preds = %bb.ijs, %bb.ijt
  %i.aamn = phi ptr [ %i.aamc, %bb.ijs ], [ %i.aamd, %bb.ijt ] ; 5 uses
  %i.aamo = phi ptr [ %i.aamb, %bb.ijs ], [ %i.aame, %bb.ijt ]
  %i.aamp = phi ptr [ %i.aama, %bb.ijs ], [ %i.aamf, %bb.ijt ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !13602
  %i.aamq = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.cx, ptr noundef nonnull align 8 %i.aamq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ijy unwind label %bb.ijw, !noalias !13606

bb.ijy:                                           ; preds = %bb.ijx
  %i.aamr = load i32, ptr %i.cx, align 8, !range !6291, !noalias !13602, !noundef !11 ; 3 uses
  %i.aams = icmp eq i32 %i.aamr, -2
  br i1 %i.aams, label %bb.ijz, label %bb.ika

bb.ijz:                                           ; preds = %bb.ijy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13602
  br label %bb.ios

bb.ika:                                           ; preds = %bb.ijy
  %.sroa.3.0..sroa_idx.i5595 = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.sroa.3.0.copyload.i5596 = load i32, ptr %.sroa.3.0..sroa_idx.i5595, align 4, !noalias !13602 ; 3 uses
  %.sroa.4.0..sroa_idx.i5597 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i5597, align 8, !noalias !13602 ; 2 uses
  %.sroa.6119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.6119.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6119.0..sroa_idx.i, align 8, !noalias !13602
  %.sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.aamt = load <2 x i64>, ptr %.sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.i, align 8, !noalias !13602
  %.sroa.6119.sroa.2.sroa.2.sroa.2.0..sroa.6119.sroa.2.sroa.2.0..sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6119.sroa.2.sroa.2.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6119.sroa.2.sroa.2.sroa.2.0..sroa.6119.sroa.2.sroa.2.0..sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !13602
  %.sroa.6119.sroa.2.sroa.3.0..sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6119.sroa.2.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6119.sroa.2.sroa.3.0..sroa.6119.sroa.2.0..sroa.6119.0..sroa_idx.sroa_idx.sroa_idx.i, i64 40, i1 false), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13602
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.aamq)
          to label %bb.ikc unwind label %bb.ikb, !noalias !13606

bb.ikb:                                           ; preds = %bb.ika
  %i.aamu = landingpad { ptr, i32 }
          cleanup
  br label %.body89.i

bb.ikc:                                           ; preds = %bb.ika
  %.not.i59.i = icmp eq i32 %i.aamr, -1
  br i1 %.not.i59.i, label %bb.ikd, label %bb.ike

bb.ikd:                                           ; preds = %bb.ikc
  %i.aamv = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.4.0.copyload.i, ptr %i.aamv, align 8, !noalias !13602
  %i.aamw = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aamx = load ptr, ptr %i.aamw, align 16, !noalias !13602, !nonnull !11, !align !78, !noundef !11
  %i.aamy = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aamy, align 1, !noalias !13602
  %i.aamz = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aamq, ptr noundef nonnull align 8 dereferenceable(240) %i.aamz, i64 240, i1 false), !noalias !13602
  %.sroa.8137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.aamx, ptr %.sroa.8137.0..sroa_idx.i, align 8, !noalias !13602
  %.sroa.10139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2280
  store i8 0, ptr %.sroa.10139.0..sroa_idx.i, align 8, !noalias !13602
  br label %bb.ikh

bb.ike:                                           ; preds = %bb.ikc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6119.sroa.2.sroa.2.sroa.2.i, i64 16, i1 false), !noalias !13602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6119.sroa.2.sroa.3.i, i64 40, i1 false), !noalias !13602
  %.sroa.6217.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %i.aamr to i8
  %.sroa.13218.sroa.0.0.extract.trunc219.i = trunc i32 %.sroa.3.0.copyload.i5596 to i8
  %.sroa.13218.sroa.6.0.extract.shift222.i = lshr i32 %.sroa.3.0.copyload.i5596, 8
  %.sroa.13218.sroa.6.0.extract.trunc223.i = trunc i32 %.sroa.13218.sroa.6.0.extract.shift222.i to i8
  %.sroa.13218.sroa.7.0.extract.shift228.i = and i32 %.sroa.3.0.copyload.i5596, -65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i, %bb.ikt, %bb.ike
  %i.aana = phi ptr [ %i.aasv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %i.aann, %bb.ikt ], [ %i.aamn, %bb.ike ] ; 2 uses
  %i.aanb = phi ptr [ %i.aasx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %i.aanp, %bb.ikt ], [ %i.aamp, %bb.ike ] ; 2 uses
  %.sroa.13218.sroa.7.0.i = phi i32 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.13218.sroa.7.0.extract.shift232.i, %bb.ikt ], [ %.sroa.13218.sroa.7.0.extract.shift228.i, %bb.ike ]
  %.sroa.13218.sroa.6.0.i = phi i8 [ %.sroa.13218.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.13218.sroa.6.0.extract.trunc227.i, %bb.ikt ], [ %.sroa.13218.sroa.6.0.extract.trunc223.i, %bb.ike ]
  %.sroa.13218.sroa.0.0.i = phi i8 [ %.sroa.13218.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.13218.sroa.0.0.extract.trunc221.i, %bb.ikt ], [ %.sroa.13218.sroa.0.0.extract.trunc219.i, %bb.ike ]
  %.sroa.20.0.i5550 = phi ptr [ %.sroa.20.2.i5548, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.3142.sroa.4.0.copyload.i, %bb.ikt ], [ %.sroa.6119.sroa.0.0.copyload.i, %bb.ike ]
  %.sroa.18.0.i5551 = phi i64 [ %.sroa.18.2.i5549, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.3142.sroa.2.0.copyload.i, %bb.ikt ], [ %.sroa.4.0.copyload.i, %bb.ike ]
  %.sroa.6217.sroa.0.0.i = phi i8 [ %.sroa.6217.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %.sroa.6217.sroa.0.0.extract.trunc239.i, %bb.ikt ], [ %.sroa.6217.sroa.0.0.extract.trunc.i, %bb.ike ]
  %i.aanc = phi <2 x i64> [ %i.aawf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i ], [ %i.aant, %bb.ikt ], [ %i.aamt, %bb.ike ]
  %i.aand = getelementptr inbounds nuw i8, ptr %1, i64 1185 ; 2 uses
  %i.aane = load i8, ptr %i.aand, align 1, !range !777, !noalias !13602, !noundef !11
  %i.aanf = trunc nuw i8 %i.aane to i1
  br i1 %i.aanf, label %bb.ioo, label %bb.ion

bb.ikf:                                           ; preds = %bb.ior, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.ioi, %.body84.i, %.body63.i5539, %bb.iks, %bb.ikg, %bb.ijw
  %i.aang = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13606
  unreachable

.body89.i:                                        ; preds = %bb.ikg, %bb.ikn, %bb.ikp, %bb.ijw, %bb.ikb, %bb.iol, %bb.iod, %bb.iob, %.body84.i
  %i.aanh = phi ptr [ %i.aasv, %bb.iol ], [ %i.aamn, %bb.ikb ], [ %i.aavr, %.body84.i ], [ %i.aasv, %bb.iob ], [ %i.aasv, %bb.iod ], [ %i.aamn, %bb.ijw ], [ %i.aann, %bb.ikp ], [ %i.aann, %bb.ikn ], [ %i.aann, %bb.ikg ] ; 2 uses
  %i.aani = phi ptr [ %i.aasx, %bb.iol ], [ %i.aamp, %bb.ikb ], [ %i.aavs, %.body84.i ], [ %i.aasx, %bb.iob ], [ %i.aasx, %bb.iod ], [ %i.aamp, %bb.ijw ], [ %i.aanp, %bb.ikp ], [ %i.aanp, %bb.ikn ], [ %i.aanp, %bb.ikg ] ; 2 uses
  %.pn40.pn.i = phi { ptr, i32 } [ %i.aaws, %bb.iol ], [ %i.aamu, %bb.ikb ], [ %.pn36.i5543, %.body84.i ], [ %i.aavw, %bb.iob ], [ %i.aavy, %bb.iod ], [ %i.aamm, %bb.ijw ], [ %i.aaoa, %bb.ikp ], [ %i.aanx, %bb.ikn ], [ %i.aanm, %bb.ikg ] ; 2 uses
  %i.aanj = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aank = load i8, ptr %i.aanj, align 1, !range !777, !noalias !13602, !noundef !11
  %i.aanl = trunc nuw i8 %i.aank to i1
  br i1 %i.aanl, label %bb.ior, label %bb.iop

bb.ikg:                                           ; preds = %bb.ikh
  %i.aanm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13602
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_(ptr noundef nonnull align 8 %i.aanq) #26
          to label %.body89.i unwind label %bb.ikf, !noalias !13606

bb.ikh:                                           ; preds = %bb.ijs, %bb.ikd
  %i.aann = phi ptr [ %i.aamc, %bb.ijs ], [ %i.aamn, %bb.ikd ] ; 6 uses
  %i.aano = phi ptr [ %i.aamb, %bb.ijs ], [ %i.aamo, %bb.ikd ]
  %i.aanp = phi ptr [ %i.aama, %bb.ijs ], [ %i.aamp, %bb.ikd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !13602
  %i.aanq = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB8_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0Ba_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.cw, ptr noundef nonnull align 8 %i.aanq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.iki unwind label %bb.ikg, !noalias !13606

bb.iki:                                           ; preds = %bb.ikh
  %i.aanr = load i32, ptr %i.cw, align 8, !range !6291, !noalias !13602, !noundef !11 ; 3 uses
  %i.aans = icmp eq i32 %i.aanr, -2
  br i1 %i.aans, label %bb.ikj, label %bb.ikk

bb.ikj:                                           ; preds = %bb.iki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13602
  br label %bb.ios

bb.ikk:                                           ; preds = %bb.iki
  %.sroa.3142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.3142.sroa.0.0.copyload.i = load i32, ptr %.sroa.3142.0..sroa_idx.i, align 4, !noalias !13602 ; 3 uses
  %.sroa.3142.sroa.2.0..sroa.3142.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.3142.sroa.2.0.copyload.i = load i64, ptr %.sroa.3142.sroa.2.0..sroa.3142.0..sroa_idx.sroa_idx.i, align 8, !noalias !13602 ; 2 uses
  %.sroa.3142.sroa.4.0..sroa.3142.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.3142.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3142.sroa.4.0..sroa.3142.0..sroa_idx.sroa_idx.i, align 8, !noalias !13602 ; 2 uses
  %.sroa.3142.sroa.6.0..sroa.3142.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.aant = load <2 x i64>, ptr %.sroa.3142.sroa.6.0..sroa.3142.0..sroa_idx.sroa_idx.i, align 8, !noalias !13602 ; 2 uses
  %.sroa.3142.sroa.6.sroa.3.sroa.3.0..sroa.3142.sroa.6.sroa.3.0..sroa.3142.sroa.6.0..sroa.3142.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3142.sroa.6.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3142.sroa.6.sroa.3.sroa.3.0..sroa.3142.sroa.6.sroa.3.0..sroa.3142.sroa.6.0..sroa.3142.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !13602
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5143.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5143.0..sroa_idx.i, i64 40, i1 false), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13602
  %i.aanu = getelementptr inbounds nuw i8, ptr %1, i64 2280
  %i.aanv = load i8, ptr %i.aanu, align 8, !range !672, !noalias !13602, !noundef !11
  switch i8 %i.aanv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i [
    i8 0, label %bb.ikl
    i8 3, label %bb.ikm
  ]

bb.ikl:                                           ; preds = %bb.ikk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.aanq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i unwind label %bb.ikp, !noalias !13606

bb.ikm:                                           ; preds = %bb.ikk
  %i.aanw = getelementptr inbounds nuw i8, ptr %1, i64 1680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0EBL_(ptr noundef nonnull align 8 %i.aanw)
          to label %bb.iko unwind label %bb.ikn, !noalias !13606

bb.ikn:                                           ; preds = %bb.ikm
  %i.aanx = landingpad { ptr, i32 }
          cleanup
  %i.aany = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.aany, align 1, !noalias !13602
  br label %.body89.i

bb.iko:                                           ; preds = %bb.ikm
  %i.aanz = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.aanz, align 1, !noalias !13602
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i

bb.ikp:                                           ; preds = %bb.ikl
  %i.aaoa = landingpad { ptr, i32 }
          cleanup
  br label %.body89.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i: ; preds = %bb.iko, %bb.ikl, %bb.ikk
  %.not.i61.i5586 = icmp eq i32 %i.aanr, -1
  br i1 %.not.i61.i5586, label %bb.ikq, label %bb.ikt

bb.ikq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i
  %.sroa.3238.sroa.2.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3238.sroa.2.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3142.sroa.6.sroa.3.sroa.3.i, i64 16, i1 false), !noalias !13602
  store i64 %.sroa.3142.sroa.2.0.copyload.i, ptr %i.aanq, align 8, !noalias !13602
  %.sroa.2237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  store ptr %.sroa.3142.sroa.4.0.copyload.i, ptr %.sroa.2237.0..sroa_idx.i, align 16, !noalias !13602
  %.sroa.3238.0..sroa_idx.i = getelementptr i8, ptr %1, i64 1208 ; 2 uses
  store <2 x i64> %i.aant, ptr %.sroa.3238.0..sroa_idx.i, align 8, !noalias !13602
  %i.aaob = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aaoc = load ptr, ptr %i.aaob, align 16, !noalias !13602, !nonnull !11, !align !78, !noundef !11
  %i.aaod = getelementptr inbounds nuw i8, ptr %i.aaoc, i64 104
  %.val58.i5587 = load ptr, ptr %i.aaod, align 8, !noalias !13606, !nonnull !11, !noundef !11 ; 2 uses
  %i.aaoe = atomicrmw add ptr %.val58.i5587, i64 1 monotonic, align 8, !noalias !13606
  %i.aaof = icmp slt i64 %i.aaoe, 0
  br i1 %i.aaof, label %bb.ikr, label %.thread.i5588

bb.ikr:                                           ; preds = %bb.ikq
  call void @llvm.trap()
  unreachable

.thread.i5588:                                    ; preds = %bb.ikq
  %i.aaog = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 3 uses
  store ptr %.val58.i5587, ptr %i.aaog, align 8, !noalias !13602
  %.val56.i5589 = load ptr, ptr %.sroa.2237.0..sroa_idx.i, align 16, !noalias !13602, !nonnull !11, !noundef !11 ; 2 uses
  %.val57.i5590 = load i64, ptr %.sroa.3238.0..sroa_idx.i, align 8, !noalias !13602, !noundef !11 ; 2 uses
  %.val54.i5591 = load ptr, ptr %.sroa.3238.sroa.2.sroa.2.0..sroa_idx.i, align 8, !noalias !13602, !nonnull !11, !noundef !11 ; 2 uses
  %i.aaoh = getelementptr i8, ptr %1, i64 1232
  %.val55.i5592 = load i64, ptr %i.aaoh, align 16, !noalias !13602, !noundef !11 ; 2 uses
  %i.aaoi = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  store ptr %i.aaog, ptr %i.aaoi, align 16, !noalias !13602
  %.sroa.8162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store ptr %.val56.i5589, ptr %.sroa.8162.0..sroa_idx.i, align 8, !noalias !13602
  %.sroa.9163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i64 %.val57.i5590, ptr %.sroa.9163.0..sroa_idx.i, align 16, !noalias !13602
  %.sroa.10164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store ptr %.val54.i5591, ptr %.sroa.10164.0..sroa_idx.i, align 8, !noalias !13602
  %.sroa.11165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store i64 %.val55.i5592, ptr %.sroa.11165.0..sroa_idx.i, align 16, !noalias !13602
  %.sroa.13.0..sroa_idx.i5593 = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  store i8 0, ptr %.sroa.13.0..sroa_idx.i5593, align 16, !noalias !13602
  br label %bb.ikw

bb.iks:                                           ; preds = %bb.imp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aatd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.ikf, !noalias !13606

bb.ikt:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0EBM_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5143.i, i64 40, i1 false), !noalias !13602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3142.sroa.6.sroa.3.sroa.3.i, i64 16, i1 false), !noalias !13602
  %.sroa.6217.sroa.0.0.extract.trunc239.i = trunc nuw nsw i32 %i.aanr to i8
  %.sroa.13218.sroa.0.0.extract.trunc221.i = trunc i32 %.sroa.3142.sroa.0.0.copyload.i to i8
  %.sroa.13218.sroa.6.0.extract.shift226.i = lshr i32 %.sroa.3142.sroa.0.0.copyload.i, 8
  %.sroa.13218.sroa.6.0.extract.trunc227.i = trunc i32 %.sroa.13218.sroa.6.0.extract.shift226.i to i8
  %.sroa.13218.sroa.7.0.extract.shift232.i = and i32 %.sroa.3142.sroa.0.0.copyload.i, -65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i

bb.iku:                                           ; preds = %bb.ilj, %bb.ili
  %i.aaoj = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i5539

.body63.i5539:                                    ; preds = %.body49.i.i5537, %bb.iku
  %i.aaok = phi ptr [ %i.aamc, %bb.iku ], [ %i.aapu, %.body49.i.i5537 ]
  %i.aaol = phi ptr [ %i.aama, %bb.iku ], [ %i.aapv, %.body49.i.i5537 ]
  %i.aaom = phi ptr [ %i.aaon, %bb.iku ], [ %i.aapx, %.body49.i.i5537 ]
  %eh.lpad-body64.i = phi { ptr, i32 } [ %i.aaoj, %bb.iku ], [ %.pn31.pn.i.i5538, %.body49.i.i5537 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl18create_plugin_file0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aaom) #26
          to label %bb.imp unwind label %bb.ikf, !noalias !13606

bb.ikv:                                           ; preds = %bb.ijs
  %.phi.trans.insert.i5534 = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 4 uses
  %.pre.i5535 = load i8, ptr %.phi.trans.insert.i5534, align 16, !range !832, !noalias !13607
  %i.aaon = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 5 uses
  switch i8 %.pre.i5535, label %default.unreachable8727 [
    i8 0, label %._crit_edge8008
    i8 1, label %bb.ili
    i8 2, label %bb.ilj
    i8 3, label %bb.ill
    i8 4, label %bb.imd
  ]

._crit_edge8008:                                  ; preds = %bb.ikv
  %.pre8009 = load ptr, ptr %i.aaon, align 16, !noalias !13607
  %.phi.trans.insert8010 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %.pre8011 = load ptr, ptr %.phi.trans.insert8010, align 8, !noalias !13607
  %.phi.trans.insert8012 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %.pre8013 = load i64, ptr %.phi.trans.insert8012, align 16, !noalias !13607
  %.phi.trans.insert8014 = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %.pre8015 = load ptr, ptr %.phi.trans.insert8014, align 8, !noalias !13607
  %.phi.trans.insert8016 = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %.pre8017 = load i64, ptr %.phi.trans.insert8016, align 16, !noalias !13607
  br label %bb.ikw

bb.ikw:                                           ; preds = %._crit_edge8008, %.thread.i5588
  %i.aaoo = phi ptr [ %i.aann, %.thread.i5588 ], [ %i.aamc, %._crit_edge8008 ] ; 8 uses
  %i.aaop = phi ptr [ %i.aano, %.thread.i5588 ], [ %i.aamb, %._crit_edge8008 ] ; 5 uses
  %i.aaoq = phi ptr [ %i.aanp, %.thread.i5588 ], [ %i.aama, %._crit_edge8008 ] ; 8 uses
  %i.aaor = phi i64 [ %.val55.i5592, %.thread.i5588 ], [ %.pre8017, %._crit_edge8008 ]
  %i.aaos = phi ptr [ %.val54.i5591, %.thread.i5588 ], [ %.pre8015, %._crit_edge8008 ]
  %i.aaot = phi i64 [ %.val57.i5590, %.thread.i5588 ], [ %.pre8013, %._crit_edge8008 ]
  %i.aaou = phi ptr [ %.val56.i5589, %.thread.i5588 ], [ %.pre8011, %._crit_edge8008 ]
  %i.aaov = phi ptr [ %i.aaog, %.thread.i5588 ], [ %.pre8009, %._crit_edge8008 ]
  %i.aaow = phi ptr [ %.sroa.13.0..sroa_idx.i5593, %.thread.i5588 ], [ %.phi.trans.insert.i5534, %._crit_edge8008 ] ; 8 uses
  %i.aaox = phi ptr [ %i.aaoi, %.thread.i5588 ], [ %i.aaon, %._crit_edge8008 ] ; 8 uses
  %i.aaoy = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store ptr %i.aaos, ptr %i.aaoy, align 8, !noalias !13607
  %i.aaoz = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store i64 %i.aaor, ptr %i.aaoz, align 16, !noalias !13607
  %.val34.i.i5579 = load ptr, ptr %i.aaov, align 8, !noalias !13611, !nonnull !11, !noundef !11 ; 4 uses
  %i.aapa = getelementptr inbounds nuw i8, ptr %.val34.i.i5579, i64 104
  %i.aapb = load i8, ptr %i.aapa, align 8, !range !777, !noalias !13611, !noundef !11
  %i.aapc = trunc nuw i8 %i.aapb to i1
  br i1 %i.aapc, label %bb.imo, label %bb.ikx

bb.ikx:                                           ; preds = %bb.ikw
  %i.aapd = getelementptr inbounds nuw i8, ptr %.val34.i.i5579, i64 16
  %i.aape = load i64, ptr %i.aapd, align 8, !range !10, !alias.scope !13612, !noalias !13611, !noundef !11
  %.not.i.i.i5580 = icmp eq i64 %i.aape, -1
  br i1 %.not.i.i.i5580, label %bb.iky, label %bb.ilb

bb.iky:                                           ; preds = %bb.ikx
  %i.aapf = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 30)
          to label %bb.imo unwind label %bb.ikz, !noalias !13611

bb.ikz:                                           ; preds = %bb.iky
  %i.aapg = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i.i5537

bb.ila:                                           ; preds = %bb.ilb
  %i.aaph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13607
  br label %.body49.i.i5537

bb.ilb:                                           ; preds = %bb.ikx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !13607
  %i.aapi = getelementptr i8, ptr %.val34.i.i5579, i64 24
  %.val37.i.i5581 = load ptr, ptr %i.aapi, align 8, !noalias !13611, !nonnull !11, !noundef !11
  %i.aapj = getelementptr i8, ptr %.val34.i.i5579, i64 32
  %.val38.i.i = load i64, ptr %i.aapj, align 8, !noalias !13611, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val37.i.i5581, i64 noundef %.val38.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aaou, i64 noundef %i.aaot)
          to label %bb.ilc unwind label %bb.ila, !noalias !13611

bb.ilc:                                           ; preds = %bb.ilb
  call void @llvm.experimental.noalias.scope.decl(metadata !13615)
  %i.aapk = load i8, ptr %i.ci, align 8, !range !7294, !alias.scope !13618, !noalias !13620, !noundef !11 ; 2 uses
  %.not.i41.i.i = icmp eq i8 %i.aapk, -1
  br i1 %.not.i41.i.i, label %bb.ild, label %bb.ilh

bb.ild:                                           ; preds = %bb.ilc
  %i.aapl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.887.sroa.6.7.copyload167.i.i = load ptr, ptr %i.aapl, align 8, !alias.scope !13621, !noalias !13607
  %.sroa.887.sroa.9.7..sroa_idx168.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.887.sroa.9.i.sroa.0.0.copyload291.i = load i64, ptr %.sroa.887.sroa.9.7..sroa_idx168.i.i, align 8, !alias.scope !13621, !noalias !13607 ; 2 uses
  %.sroa.887.sroa.9.i.sroa.8.0..sroa.887.sroa.9.7..sroa_idx168.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.887.sroa.9.i.sroa.8.0.copyload293.i = load i64, ptr %.sroa.887.sroa.9.i.sroa.8.0..sroa.887.sroa.9.7..sroa_idx168.i.sroa_idx.i, align 8, !alias.scope !13621, !noalias !13607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13607
  %i.aapm = getelementptr i8, ptr %1, i64 1312
  store i64 %.sroa.887.sroa.9.i.sroa.0.0.copyload291.i, ptr %i.aapm, align 16, !noalias !13607
  %.sroa.887.sroa.9.i.sroa.8.0..sroa.4170.0..sroa_idx.i.sroa_idx.i = getelementptr i8, ptr %1, i64 1320
  store i64 %.sroa.887.sroa.9.i.sroa.8.0.copyload293.i, ptr %.sroa.887.sroa.9.i.sroa.8.0..sroa.4170.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !13607
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store ptr %.sroa.887.sroa.6.7.copyload167.i.i, ptr %3, align 8, !noalias !13607
  %i.aapn = inttoptr i64 %.sroa.887.sroa.9.i.sroa.0.0.copyload291.i to ptr
  %i.aapo = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aapn, i64 noundef %.sroa.887.sroa.9.i.sroa.8.0.copyload293.i)
          to label %bb.ilf unwind label %bb.ile, !noalias !13611 ; 2 uses

bb.ile:                                           ; preds = %bb.ild
  %i.aapp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i5536

bb.ilf:                                           ; preds = %bb.ild
  %i.aapq = extractvalue { ptr, i64 } %i.aapo, 0  ; 2 uses
  %.not14.i.i = icmp eq ptr %i.aapq, null
  br i1 %.not14.i.i, label %bb.ilu, label %bb.ilg

bb.ilg:                                           ; preds = %bb.ilf
  %i.aapr = extractvalue { ptr, i64 } %i.aapo, 1
  %i.aaps = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store ptr %i.aapq, ptr %i.aaps, align 8, !noalias !13607
  %.sroa.8109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store i64 %i.aapr, ptr %.sroa.8109.0..sroa_idx.i.i, align 16, !noalias !13607
  %.sroa.10111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  store i8 0, ptr %.sroa.10111.0..sroa_idx.i.i, align 16, !noalias !13607
  br label %bb.ill

bb.ilh:                                           ; preds = %bb.ilc
  %.sroa.887.0..sroa_idx88.i.i5582 = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %.sroa.887.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.887.0..sroa_idx88.i.i5582, align 1, !alias.scope !13621, !noalias !13607
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx88.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.887.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx88.sroa_idx.i.i, align 8, !alias.scope !13621, !noalias !13607
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx88.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.aapt = load <2 x i64>, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx88.sroa_idx.i.i, align 8, !alias.scope !13621, !noalias !13607
  %.sroa.10.0..sroa_idx90.i.i5583 = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx90.i.i5583, i64 56, i1 false), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !13607
  %.sroa.4.i.sroa.3.0.insert.ext.i.i = zext nneg i8 %i.aapk to i64
  %.sroa.4.i.sroa.3.1.insert.ext.i.i = zext i56 %.sroa.887.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i.sroa.3.1.insert.shift.i.i = shl nuw i64 %.sroa.4.i.sroa.3.1.insert.ext.i.i, 8
  %.sroa.4.i.sroa.3.1.insert.insert.i.i = or disjoint i64 %.sroa.4.i.sroa.3.1.insert.shift.i.i, %.sroa.4.i.sroa.3.0.insert.ext.i.i
  br label %bb.imo

.body49.i.i5537:                                  ; preds = %bb.imm, %bb.imk, %.body.i.i5536, %bb.ilw, %bb.ila, %bb.ikz
  %i.aapu = phi ptr [ %i.aaoo, %bb.ikz ], [ %i.aaoo, %bb.ila ], [ %i.aarw, %bb.imk ], [ %i.aarl, %.body.i.i5536 ], [ %i.aarc, %bb.ilw ], [ %i.aaso, %bb.imm ]
  %i.aapv = phi ptr [ %i.aaoq, %bb.ikz ], [ %i.aaoq, %bb.ila ], [ %i.aary, %bb.imk ], [ %i.aarm, %.body.i.i5536 ], [ %i.aare, %bb.ilw ], [ %i.aasp, %bb.imm ]
  %i.aapw = phi ptr [ %i.aaow, %bb.ikz ], [ %i.aaow, %bb.ila ], [ %i.aarz, %bb.imk ], [ %i.aarn, %.body.i.i5536 ], [ %i.aarf, %bb.ilw ], [ %i.aasq, %bb.imm ]
  %i.aapx = phi ptr [ %i.aaox, %bb.ikz ], [ %i.aaox, %bb.ila ], [ %i.aasa, %bb.imk ], [ %i.aaro, %.body.i.i5536 ], [ %i.aarg, %bb.ilw ], [ %i.aasr, %bb.imm ]
  %.pn31.pn.i.i5538 = phi { ptr, i32 } [ %i.aapg, %bb.ikz ], [ %i.aaph, %bb.ila ], [ %i.aasm, %bb.imk ], [ %.pn25.pn.pn.i.i, %.body.i.i5536 ], [ %i.aari, %bb.ilw ], [ %i.aass, %bb.imm ]
  store i8 2, ptr %i.aapw, align 8, !noalias !13607
  br label %.body63.i5539

bb.ili:                                           ; preds = %bb.ikv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29
          to label %.noexc65.i5578 unwind label %bb.iku, !noalias !13606

.noexc65.i5578:                                   ; preds = %bb.ili
  unreachable

bb.ilj:                                           ; preds = %bb.ikv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #29
          to label %.noexc66.i unwind label %bb.iku, !noalias !13606

.noexc66.i:                                       ; preds = %bb.ilj
  unreachable

bb.ilk:                                           ; preds = %bb.ill
  %i.aapy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aaqe) #26
          to label %.body.i.i5536 unwind label %bb.ily, !noalias !13611

bb.ill:                                           ; preds = %bb.ilg, %bb.ikv
  %i.aapz = phi ptr [ %i.aaoo, %bb.ilg ], [ %i.aamc, %bb.ikv ] ; 6 uses
  %i.aaqa = phi ptr [ %i.aaop, %bb.ilg ], [ %i.aamb, %bb.ikv ] ; 2 uses
  %i.aaqb = phi ptr [ %i.aaoq, %bb.ilg ], [ %i.aama, %bb.ikv ] ; 5 uses
  %i.aaqc = phi ptr [ %i.aaow, %bb.ilg ], [ %.phi.trans.insert.i5534, %bb.ikv ] ; 6 uses
  %i.aaqd = phi ptr [ %i.aaox, %bb.ilg ], [ %i.aaon, %bb.ikv ] ; 5 uses
  %i.aaqe = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 2 uses
  %i.aaqf = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aaqe, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ilm unwind label %bb.ilk, !noalias !13611 ; 2 uses

bb.ilm:                                           ; preds = %bb.ill
  %i.aaqg = extractvalue { i64, ptr } %i.aaqf, 0
  %i.aaqh = extractvalue { i64, ptr } %i.aaqf, 1  ; 2 uses
  %i.aaqi = trunc nuw i64 %i.aaqg to i1
  br i1 %i.aaqi, label %bb.imn, label %bb.iln

bb.iln:                                           ; preds = %bb.ilm
  %i.aaqj = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.aaqk = load i8, ptr %i.aaqj, align 16, !range !672, !noalias !13607, !noundef !11
  %cond.i.i.i5576 = icmp eq i8 %i.aaqk, 3
  br i1 %cond.i.i.i5576, label %bb.ilo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.ilo:                                           ; preds = %bb.iln
  %i.aaql = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 3 uses
  %i.aaqm = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.aaqn = load i8, ptr %i.aaqm, align 8, !range !672, !noalias !13607, !noundef !11
  switch i8 %i.aaqn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i [
    i8 0, label %bb.ilp
    i8 3, label %bb.ils
  ]

bb.ilp:                                           ; preds = %bb.ilo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaql)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i unwind label %bb.ilq, !noalias !13611

bb.ilq:                                           ; preds = %bb.ilp
  %i.aaqo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaql)
          to label %.body.i.i5536 unwind label %bb.ilr, !noalias !13611

bb.ilr:                                           ; preds = %bb.ilq
  %i.aaqp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13611
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %bb.ilp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaql)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.ilt, !noalias !13611

bb.ils:                                           ; preds = %bb.ilo
  %i.aaqq = getelementptr inbounds nuw i8, ptr %1, i64 1392
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aaqq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.ilt, !noalias !13611

bb.ilt:                                           ; preds = %bb.ils, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.aaqr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i5536

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.ils, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %bb.ilo, %bb.iln
  %.not.i44.i.i5577 = icmp eq ptr %i.aaqh, null
  br i1 %.not.i44.i.i5577, label %bb.ilu, label %bb.ilv

bb.ilu:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.ilf
  %i.aaqs = phi ptr [ %i.aapz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aaoo, %bb.ilf ]
  %i.aaqt = phi ptr [ %i.aaqa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aaop, %bb.ilf ]
  %i.aaqu = phi ptr [ %i.aaqb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aaoq, %bb.ilf ]
  %i.aaqv = phi ptr [ %i.aaqc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aaow, %bb.ilf ]
  %i.aaqw = phi ptr [ %i.aaqd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aaox, %bb.ilf ]
  %i.aaqx = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.aaqy = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.aaqz = load ptr, ptr %i.aaqy, align 8, !noalias !13607, !nonnull !11, !noundef !11
  %i.aara = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.aarb = load i64, ptr %i.aara, align 16, !noalias !13607, !noundef !11
  %.sroa.8138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.aaqz, ptr %.sroa.8138.0..sroa_idx.i.i, align 8, !noalias !13607
  %.sroa.9139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store i64 %i.aarb, ptr %.sroa.9139.0..sroa_idx.i.i, align 16, !noalias !13607
  %.sroa.11141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store ptr %i.aaqx, ptr %.sroa.11141.0..sroa_idx.i.i, align 16, !noalias !13607
  %.sroa.13143.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1497
  store i8 0, ptr %.sroa.13143.0..sroa_idx.i.i, align 1, !noalias !13607
  br label %bb.imd

bb.ilv:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.aarc = phi ptr [ %i.aapz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aarw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ] ; 3 uses
  %i.aard = phi ptr [ %i.aaqa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aarx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ]
  %i.aare = phi ptr [ %i.aaqb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aary, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ] ; 3 uses
  %i.aarf = phi ptr [ %i.aaqc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aarz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ] ; 3 uses
  %i.aarg = phi ptr [ %i.aaqd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aasa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ] ; 3 uses
  %.sroa.17.0.in.i.i = phi ptr [ %i.aaqh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.aase, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i ]
  %i.aarh = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.ilw, !noalias !13611

bb.ilw:                                           ; preds = %bb.ilv
  %i.aari = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarh)
          to label %.body49.i.i5537 unwind label %bb.ilx, !noalias !13611

bb.ilx:                                           ; preds = %bb.ilw
  %i.aarj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13611
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ilv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarh)
          to label %bb.imo unwind label %bb.imm, !noalias !13611

bb.ily:                                           ; preds = %.body.i.i5536, %bb.ilk
  %i.aark = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body53.i.i

.body53.i.i:                                      ; preds = %bb.imb, %bb.ily
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13611
  unreachable

.body.i.i5536:                                    ; preds = %bb.imh, %bb.imc, %bb.ilz, %bb.ilt, %bb.ilq, %bb.ilk, %bb.ile
  %i.aarl = phi ptr [ %i.aapz, %bb.ilq ], [ %i.aaoo, %bb.ile ], [ %i.aapz, %bb.ilk ], [ %i.aapz, %bb.ilt ], [ %i.aarw, %bb.imc ], [ %i.aarw, %bb.ilz ], [ %i.aarw, %bb.imh ]
  %i.aarm = phi ptr [ %i.aaqb, %bb.ilq ], [ %i.aaoq, %bb.ile ], [ %i.aaqb, %bb.ilk ], [ %i.aaqb, %bb.ilt ], [ %i.aary, %bb.imc ], [ %i.aary, %bb.ilz ], [ %i.aary, %bb.imh ]
  %i.aarn = phi ptr [ %i.aaqc, %bb.ilq ], [ %i.aaow, %bb.ile ], [ %i.aaqc, %bb.ilk ], [ %i.aaqc, %bb.ilt ], [ %i.aarz, %bb.imc ], [ %i.aarz, %bb.ilz ], [ %i.aarz, %bb.imh ]
  %i.aaro = phi ptr [ %i.aaqd, %bb.ilq ], [ %i.aaox, %bb.ile ], [ %i.aaqd, %bb.ilk ], [ %i.aaqd, %bb.ilt ], [ %i.aasa, %bb.imc ], [ %i.aasa, %bb.ilz ], [ %i.aasa, %bb.imh ]
  %.pn25.pn.pn.i.i = phi { ptr, i32 } [ %i.aaqo, %bb.ilq ], [ %i.aapp, %bb.ile ], [ %i.aapy, %bb.ilk ], [ %i.aaqr, %bb.ilt ], [ %i.aarq, %bb.imc ], [ %i.aarq, %bb.ilz ], [ %i.aasi, %bb.imh ]
  %i.aarp = getelementptr inbounds nuw i8, ptr %1, i64 1304
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.aarp) #26
          to label %.body49.i.i5537 unwind label %bb.ily, !noalias !13611

bb.ilz:                                           ; preds = %bb.imd
  %i.aarq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aarr = getelementptr inbounds nuw i8, ptr %1, i64 1497
  %i.aars = load i8, ptr %i.aarr, align 1, !range !672, !noalias !13607, !noundef !11
  %cond.i52.i.i = icmp eq i8 %i.aars, 3
  br i1 %cond.i52.i.i, label %bb.ima, label %.body.i.i5536

bb.ima:                                           ; preds = %bb.ilz
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aasb)
          to label %bb.imc unwind label %bb.imb, !noalias !13611

bb.imb:                                           ; preds = %bb.ima
  %i.aart = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aaru = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aaru, align 8, !noalias !13607
  br label %.body53.i.i

bb.imc:                                           ; preds = %bb.ima
  %i.aarv = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aarv, align 8, !noalias !13607
  br label %.body.i.i5536

bb.imd:                                           ; preds = %bb.ilu, %bb.ikv
  %i.aarw = phi ptr [ %i.aaqs, %bb.ilu ], [ %i.aamc, %bb.ikv ] ; 8 uses
  %i.aarx = phi ptr [ %i.aaqt, %bb.ilu ], [ %i.aamb, %bb.ikv ] ; 2 uses
  %i.aary = phi ptr [ %i.aaqu, %bb.ilu ], [ %i.aama, %bb.ikv ] ; 7 uses
  %i.aarz = phi ptr [ %i.aaqv, %bb.ilu ], [ %.phi.trans.insert.i5534, %bb.ikv ] ; 8 uses
  %i.aasa = phi ptr [ %i.aaqw, %bb.ilu ], [ %i.aaon, %bb.ikv ] ; 7 uses
  %i.aasb = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 3 uses
  %i.aasc = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aasb, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ime unwind label %bb.ilz, !noalias !13611 ; 2 uses

bb.ime:                                           ; preds = %bb.imd
  %i.aasd = extractvalue { i64, ptr } %i.aasc, 0
  %i.aase = extractvalue { i64, ptr } %i.aasc, 1  ; 2 uses
  %i.aasf = trunc nuw i64 %i.aasd to i1
  br i1 %i.aasf, label %bb.imn, label %bb.imf

bb.imf:                                           ; preds = %bb.ime
  %i.aasg = getelementptr inbounds nuw i8, ptr %1, i64 1497
  %i.aash = load i8, ptr %i.aasg, align 1, !range !672, !noalias !13607, !noundef !11
  %cond.i55.i.i = icmp eq i8 %i.aash, 3
  br i1 %cond.i55.i.i, label %bb.img, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i

bb.img:                                           ; preds = %bb.imf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aasb)
          to label %bb.imi unwind label %bb.imh, !noalias !13611

bb.imh:                                           ; preds = %bb.img
  %i.aasi = landingpad { ptr, i32 }
          cleanup
  %i.aasj = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aasj, align 8, !noalias !13607
  br label %.body.i.i5536

bb.imi:                                           ; preds = %bb.img
  %i.aask = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aask, align 8, !noalias !13607
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i: ; preds = %bb.imi, %bb.imf
  %.not.i59.i.i = icmp eq ptr %i.aase, null
  br i1 %.not.i59.i.i, label %bb.imj, label %bb.ilv

bb.imj:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsbakdBCgU4AF_16influxdb3_server.exit58.i.i
  %i.aasl = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i unwind label %bb.imk, !noalias !13611

bb.imk:                                           ; preds = %bb.imj
  %i.aasm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasl)
          to label %.body49.i.i5537 unwind label %bb.iml, !noalias !13611

bb.iml:                                           ; preds = %bb.imk
  %i.aasn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13611
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i: ; preds = %bb.imj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasl)
          to label %bb.imo unwind label %bb.imm, !noalias !13611

bb.imm:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.aaso = phi ptr [ %i.aarw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %i.aasp = phi ptr [ %i.aary, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aare, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %i.aasq = phi ptr [ %i.aarz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %i.aasr = phi ptr [ %i.aasa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %i.aass = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i.i5537

bb.imn:                                           ; preds = %bb.ime, %bb.ilm
  %i.aast = phi ptr [ %i.aarw, %bb.ime ], [ %i.aapz, %bb.ilm ]
  %i.aasu = phi ptr [ %i.aarz, %bb.ime ], [ %i.aaqc, %bb.ilm ]
  %.sink.i.ph.i5575 = phi i8 [ 4, %bb.ime ], [ 3, %bb.ilm ]
  store i8 %.sink.i.ph.i5575, ptr %i.aasu, align 8, !noalias !13607
  br label %bb.ios

bb.imo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %bb.ilh, %bb.iky, %bb.ikw
  %i.aasv = phi ptr [ %i.aaoo, %bb.ikw ], [ %i.aaoo, %bb.iky ], [ %i.aarw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aaoo, %bb.ilh ] ; 15 uses
  %i.aasw = phi ptr [ %i.aaop, %bb.ikw ], [ %i.aaop, %bb.iky ], [ %i.aarx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aard, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aaop, %bb.ilh ]
  %i.aasx = phi ptr [ %i.aaoq, %bb.ikw ], [ %i.aaoq, %bb.iky ], [ %i.aary, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aare, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aaoq, %bb.ilh ] ; 15 uses
  %i.aasy = phi ptr [ %i.aaow, %bb.ikw ], [ %i.aaow, %bb.iky ], [ %i.aarz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aaow, %bb.ilh ]
  %i.aasz = phi ptr [ %i.aaox, %bb.ikw ], [ %i.aaox, %bb.iky ], [ %i.aasa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %i.aarg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aaox, %bb.ilh ]
  %.sroa.11152.1.i.i = phi i64 [ 34, %bb.ikw ], [ 27, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ 28, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.4.i.sroa.3.1.insert.insert.i.i, %bb.ilh ] ; 2 uses
  %.sroa.17.1.i.i = phi ptr [ undef, %bb.ikw ], [ %i.aapf, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ %.sroa.17.0.in.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.887.sroa.6.0.copyload.i.i, %bb.ilh ] ; 2 uses
  %.not.i67.i5546 = phi i1 [ false, %bb.ikw ], [ false, %bb.iky ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ false, %bb.ilh ]
  %.sroa.0150.1.i.i = phi i8 [ 4, %bb.ikw ], [ 4, %bb.iky ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ 4, %bb.ilh ] ; 2 uses
  %i.aata = phi <2 x i64> [ undef, %bb.ikw ], [ undef, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i66.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.aapt, %bb.ilh ] ; 2 uses
  store i8 1, ptr %i.aasy, align 8, !noalias !13607
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl18create_plugin_file0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aasz)
          to label %bb.imr unwind label %bb.imq, !noalias !13606

bb.imp:                                           ; preds = %bb.imq, %.body63.i5539
  %i.aatb = phi ptr [ %i.aasv, %bb.imq ], [ %i.aaok, %.body63.i5539 ] ; 2 uses
  %i.aatc = phi ptr [ %i.aasx, %bb.imq ], [ %i.aaol, %.body63.i5539 ] ; 2 uses
  %.pn7.i5540 = phi { ptr, i32 } [ %i.aath, %bb.imq ], [ %eh.lpad-body64.i, %.body63.i5539 ] ; 2 uses
  %i.aatd = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13622)
  call void @llvm.experimental.noalias.scope.decl(metadata !13625)
  %i.aate = load ptr, ptr %i.aatd, align 8, !alias.scope !13628, !noalias !13602, !nonnull !11, !noundef !11
  %i.aatf = atomicrmw sub ptr %i.aate, i64 1 release, align 8, !noalias !13629
  %i.aatg = icmp eq i64 %i.aatf, 1
  br i1 %i.aatg, label %bb.iks, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.imq:                                           ; preds = %bb.imo
  %i.aath = landingpad { ptr, i32 }
          cleanup
  br label %bb.imp

bb.imr:                                           ; preds = %bb.imo
  br i1 %.not.i67.i5546, label %bb.ims, label %bb.ioj

bb.ims:                                           ; preds = %bb.imr
  %i.aati = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13630)
  call void @llvm.experimental.noalias.scope.decl(metadata !13633)
  %i.aatj = load ptr, ptr %i.aati, align 8, !alias.scope !13636, !noalias !13602, !nonnull !11, !noundef !11
  %i.aatk = atomicrmw sub ptr %i.aatj, i64 1 release, align 8, !noalias !13637
  %i.aatl = icmp eq i64 %i.aatk, 1
  br i1 %i.aatl, label %bb.imt, label %.noexc.i5561

bb.imt:                                           ; preds = %bb.ims
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aati)
          to label %.noexc.i5561 unwind label %bb.imu, !noalias !13606

bb.imu:                                           ; preds = %bb.iok, %bb.imt
  %i.aatm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

.noexc.i5561:                                     ; preds = %bb.imt, %bb.ims
  %i.aatn = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !13602
  %.off.i5562 = add i64 %i.aatn, -3
  %switch.i5563 = icmp ult i64 %.off.i5562, 3
  br i1 %switch.i5563, label %bb.inc, label %bb.imv

bb.imv:                                           ; preds = %.noexc.i5561
  %i.aato = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, i64 16) monotonic, align 8, !noalias !13602 ; 2 uses
  %i.aatp = icmp ult i8 %i.aato, 3
  br i1 %i.aatp, label %bb.imy, label %bb.imw, !prof !6356

bb.imw:                                           ; preds = %bb.imv
  %i.aatq = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE)
          to label %bb.imy unwind label %bb.imx, !noalias !13606

bb.imx:                                           ; preds = %bb.imw
  %i.aatr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.imy:                                           ; preds = %bb.imw, %bb.imv
  %.sroa.0.0.i71.i5564 = phi i8 [ %i.aato, %bb.imv ], [ %i.aatq, %bb.imw ] ; 2 uses
  %i.aats = icmp eq i8 %.sroa.0.0.i71.i5564, 0
  br i1 %i.aats, label %bb.inc, label %bb.ina

bb.imz:                                           ; preds = %bb.ina
  %i.aatt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.ina:                                           ; preds = %bb.imy
  %i.aatu = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !13602, !nonnull !11, !align !78, !noundef !11
  %i.aatv = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aatu, i8 noundef %.sroa.0.0.i71.i5564)
          to label %bb.inb unwind label %bb.imz, !noalias !13606

bb.inb:                                           ; preds = %bb.ina
  br i1 %i.aatv, label %bb.inp, label %bb.inc

bb.inc:                                           ; preds = %bb.inb, %bb.imy, %.noexc.i5561
  %i.aatw = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13602
  %.not.i5565 = icmp eq i8 %i.aatw, 0
  br i1 %.not.i5565, label %bb.ind, label %bb.ino

bb.ind:                                           ; preds = %bb.inc
  %i.aatx = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13602 ; 2 uses
  %i.aaty = icmp ult i64 %i.aatx, 6
  call void @llvm.assume(i1 %i.aaty)
  %i.aatz = icmp samesign ugt i64 %i.aatx, 2
  br i1 %i.aatz, label %bb.ine, label %bb.ino

bb.ine:                                           ; preds = %bb.ind
  %i.aaua = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !13602, !nonnull !11, !align !78, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !13602
  %i.aaub = getelementptr i8, ptr %i.aaua, i64 32
  %.val52.i5570 = load ptr, ptr %i.aaub, align 8, !noalias !13606, !nonnull !11, !noundef !11
  %i.aauc = getelementptr i8, ptr %i.aaua, i64 40
  %.val53.i5571 = load i64, ptr %i.aauc, align 8, !noalias !13606, !noundef !11
  store i64 3, ptr %i.cr, align 8, !alias.scope !13638, !noalias !13602
  %.sroa.6197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %.val52.i5570, ptr %.sroa.6197.0..sroa_idx.i, align 8, !alias.scope !13638, !noalias !13602
  %.sroa.8198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %.val53.i5571, ptr %.sroa.8198.0..sroa_idx.i, align 8, !alias.scope !13638, !noalias !13602
  %i.aaud = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ing unwind label %bb.inf, !noalias !13606 ; 2 uses

bb.inf:                                           ; preds = %bb.ine
  %i.aaue = landingpad { ptr, i32 }
          cleanup
  br label %bb.inn

bb.ing:                                           ; preds = %bb.ine
  %i.aauf = extractvalue { ptr, ptr } %i.aaud, 0  ; 2 uses
  %i.aaug = extractvalue { ptr, ptr } %i.aaud, 1  ; 2 uses
  %i.aauh = getelementptr inbounds nuw i8, ptr %i.aaug, i64 24
  %i.aaui = load ptr, ptr %i.aauh, align 8, !invariant.load !11, !noalias !13606, !nonnull !11
  %i.aauj = invoke noundef zeroext i1 %i.aaui(ptr noundef %i.aauf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %bb.ini unwind label %bb.inh, !noalias !13606

bb.inh:                                           ; preds = %bb.ing
  %i.aauk = landingpad { ptr, i32 }
          cleanup
  br label %bb.inn

bb.ini:                                           ; preds = %bb.ing
  br i1 %i.aauj, label %bb.ink, label %bb.inj

bb.inj:                                           ; preds = %bb.inm, %bb.ini
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13602
  br label %bb.ino

bb.ink:                                           ; preds = %bb.ini
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !13602
  %i.aaul = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !13602, !nonnull !11, !align !78, !noundef !11
  %i.aaum = getelementptr inbounds nuw i8, ptr %i.aaul, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !13602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !13602
  %i.aaun = getelementptr inbounds nuw i8, ptr %1, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !13602
  %i.aauo = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %i.aaun, ptr %i.cn, align 8, !noalias !13602
  %.sroa.5200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5200.0..sroa_idx.i, align 8, !noalias !13602
  %i.aaup = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.aauo, ptr %i.aaup, align 8, !noalias !13602
  %.sroa.5202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5202.0..sroa_idx.i, align 8, !noalias !13602
  store ptr @241, ptr %i.co, align 8, !noalias !13602
  %i.aauq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %i.aauq, align 8, !noalias !13602
  store ptr %i.co, ptr %i.cp, align 8, !noalias !13602
  %i.aaur = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @13, ptr %i.aaur, align 8, !noalias !13602
  store i64 1, ptr %i.cq, align 8, !alias.scope !13642, !noalias !13645
  %.sroa.4.0..sroa_idx.i75.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cp, ptr %.sroa.4.0..sroa_idx.i75.i, align 8, !alias.scope !13642, !noalias !13645
  %.sroa.5.0..sroa_idx.i76.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i76.i, align 8, !alias.scope !13642, !noalias !13645
  %i.aaus = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.aaum, ptr %i.aaus, align 8, !alias.scope !13642, !noalias !13645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !13602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !13602
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aaua, ptr noundef nonnull %i.aauf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aaug, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq)
          to label %bb.inm unwind label %bb.inl, !noalias !13606

bb.inl:                                           ; preds = %bb.ink
  %i.aaut = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !13602
  br label %bb.inn

bb.inm:                                           ; preds = %bb.ink
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !13602
  br label %bb.inj

bb.inn:                                           ; preds = %bb.inl, %bb.inh, %bb.inf
  %.pn16.pn.pn.i = phi { ptr, i32 } [ %i.aaut, %bb.inl ], [ %i.aauk, %bb.inh ], [ %i.aaue, %bb.inf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13602
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.ino:                                           ; preds = %bb.inr, %bb.inj, %bb.ind, %bb.inc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !13602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !13602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !13602
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ck)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5567 unwind label %bb.ins, !noalias !13606

bb.inp:                                           ; preds = %bb.inb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !13602
  %i.aauu = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !13602, !nonnull !11, !align !78, !noundef !11
  %i.aauv = getelementptr inbounds nuw i8, ptr %i.aauu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !13602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !13602
  %i.aauw = getelementptr inbounds nuw i8, ptr %1, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !13602
  %i.aaux = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %i.aauw, ptr %i.cs, align 8, !noalias !13602
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5190.0..sroa_idx.i, align 8, !noalias !13602
  %i.aauy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.aaux, ptr %i.aauy, align 8, !noalias !13602
  %.sroa.5192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5192.0..sroa_idx.i, align 8, !noalias !13602
  store ptr @241, ptr %i.ct, align 8, !noalias !13602
  %i.aauz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cs, ptr %i.aauz, align 8, !noalias !13602
  store ptr %i.ct, ptr %i.cu, align 8, !noalias !13602
  %i.aava = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr @13, ptr %i.aava, align 8, !noalias !13602
  store i64 1, ptr %i.cv, align 8, !noalias !13602
  %.sroa.6186.0..sroa_idx.i5572 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cu, ptr %.sroa.6186.0..sroa_idx.i5572, align 8, !noalias !13602
  %.sroa.7187.0..sroa_idx.i5573 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 1, ptr %.sroa.7187.0..sroa_idx.i5573, align 8, !noalias !13602
  %.sroa.8188.0..sroa_idx.i5574 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.aauv, ptr %.sroa.8188.0..sroa_idx.i5574, align 8, !noalias !13602
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file00Bb_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cv)
          to label %bb.inr unwind label %bb.inq, !noalias !13606

bb.inq:                                           ; preds = %bb.inp
  %i.aavb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !13602
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.inr:                                           ; preds = %bb.inp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !13602
  br label %bb.ino

bb.ins:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5567, %bb.ino
  %i.aavc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !13602
  br label %bb.ioh

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5567: ; preds = %bb.ino
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ck, i16 noundef 200)
          to label %bb.int unwind label %bb.ins, !noalias !13606

bb.int:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !13602
  %i.aavd = invoke { ptr, ptr } @_RNvCs4dh2fNjPIep_13iox_http_util19empty_response_body()
          to label %bb.inv unwind label %bb.ioi, !noalias !13606 ; 2 uses

bb.inu:                                           ; preds = %bb.inv
  %i.aave = landingpad { ptr, i32 }
          cleanup
  br label %bb.ioh

bb.inv:                                           ; preds = %bb.int
  %i.aavf = extractvalue { ptr, ptr } %i.aavd, 0
  %i.aavg = extractvalue { ptr, ptr } %i.aavd, 1
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder4bodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3f_6marker4SendNtB3M_4SyncEL_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.cl, ptr noundef nonnull %i.aavf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aavg)
          to label %bb.inw unwind label %bb.inu, !noalias !13606

bb.inw:                                           ; preds = %bb.inv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !13602
  call void @llvm.experimental.noalias.scope.decl(metadata !13648)
  %i.aavh = load i64, ptr %i.cm, align 8, !range !59, !alias.scope !13651, !noalias !13653, !noundef !11 ; 2 uses
  %i.aavi = icmp eq i64 %i.aavh, -1
  %i.aavj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.aavk = load i8, ptr %i.aavj, align 8, !alias.scope !13654, !noalias !13602 ; 2 uses
  %i.aavl = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.aavm = load i8, ptr %i.aavl, align 1, !alias.scope !13654, !noalias !13602 ; 2 uses
  br i1 %i.aavi, label %bb.ioe, label %bb.inx

bb.inx:                                           ; preds = %bb.inw
  %.sroa.12211.0..sroa_idx212.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %.sroa.12211.sroa.0.0.copyload.i = load i16, ptr %.sroa.12211.0..sroa_idx212.i, align 2, !alias.scope !13655, !noalias !13602
  %.sroa.12211.sroa.6.0..sroa.12211.0..sroa_idx212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %.sroa.12211.sroa.6.0.copyload.i = load i32, ptr %.sroa.12211.sroa.6.0..sroa.12211.0..sroa_idx212.sroa_idx.i, align 4, !alias.scope !13655, !noalias !13602 ; 3 uses
  %.sroa.12211.sroa.7.0..sroa.12211.0..sroa_idx212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.12211.sroa.7.0.copyload.i = load i64, ptr %.sroa.12211.sroa.7.0..sroa.12211.0..sroa_idx212.sroa_idx.i, align 8, !alias.scope !13655, !noalias !13602
  %.sroa.12211.sroa.8.0..sroa.12211.0..sroa_idx212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %.sroa.12211.sroa.8.0.copyload.i = load ptr, ptr %.sroa.12211.sroa.8.0..sroa.12211.0..sroa_idx212.sroa_idx.i, align 8, !alias.scope !13655, !noalias !13602
  %.sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.aavn = load <2 x i64>, ptr %.sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.i, align 8, !alias.scope !13655, !noalias !13602
  %.sroa.12211.sroa.9.sroa.6.sroa.6.0..sroa.12211.sroa.9.sroa.6.0..sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12211.sroa.9.sroa.6.sroa.6.0..sroa.12211.sroa.9.sroa.6.0..sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !13602
  %.sroa.12211.sroa.9.sroa.7.0..sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12211.sroa.9.sroa.7.0..sroa.12211.sroa.9.0..sroa.12211.0..sroa_idx212.sroa_idx.sroa_idx.i, i64 40, i1 false), !noalias !13602
  %.sroa.12211.sroa.10.0..sroa.12211.0..sroa_idx212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i5533, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12211.sroa.10.0..sroa.12211.0..sroa_idx212.sroa_idx.i, i64 24, i1 false), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !13602
  %.sroa.13218.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.12211.sroa.6.0.copyload.i to i8
  %.sroa.13218.sroa.6.0.extract.shift.i = lshr i32 %.sroa.12211.sroa.6.0.copyload.i, 8
  %.sroa.13218.sroa.6.0.extract.trunc.i = trunc i32 %.sroa.13218.sroa.6.0.extract.shift.i to i8
  %.sroa.13218.sroa.7.0.extract.shift.i = and i32 %.sroa.12211.sroa.6.0.copyload.i, -65536
  %i.aavo = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5568 unwind label %bb.iny, !noalias !13606

bb.iny:                                           ; preds = %bb.inx
  %i.aavp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavo)
          to label %.body84.i unwind label %bb.inz, !noalias !13606

bb.inz:                                           ; preds = %bb.iny
  %i.aavq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13606
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5568: ; preds = %bb.inx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5569 unwind label %bb.ioa, !noalias !13606

.body84.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.iof, %bb.ioa, %bb.iny
  %i.aavr = phi ptr [ %i.aawk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.aasv, %bb.iny ], [ %i.aasv, %bb.ioa ], [ %i.aasv, %bb.iof ]
  %i.aavs = phi ptr [ %i.aawl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.aasx, %bb.iny ], [ %i.aasx, %bb.ioa ], [ %i.aasx, %bb.iof ]
  %.pn36.i5543 = phi { ptr, i32 } [ %.pn33.pn.i5542, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.aavp, %bb.iny ], [ %i.aavu, %bb.ioa ], [ %i.aawh, %bb.iof ]
  %i.aavt = getelementptr inbounds nuw i8, ptr %1, i64 1192
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavt) #26
          to label %.body89.i unwind label %bb.ikf, !noalias !13606

bb.ioa:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i94.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5568
  %i.aavu = landingpad { ptr, i32 }
          cleanup
  br label %.body84.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5569: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5568
  %i.aavv = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i88.i unwind label %bb.iob, !noalias !13606

bb.iob:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5569
  %i.aavw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavv)
          to label %.body89.i unwind label %bb.ioc, !noalias !13606

bb.ioc:                                           ; preds = %bb.iob
  %i.aavx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13606
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i88.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5569
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aavv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i unwind label %bb.iod, !noalias !13606

bb.iod:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i88.i
  %i.aavy = landingpad { ptr, i32 }
          cleanup
  br label %.body89.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i88.i
  %i.aavz = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aavz, align 1, !noalias !13602
  %i.aawa = zext i16 %.sroa.12211.sroa.0.0.copyload.i to i32
  %i.aawb = shl nuw i32 %i.aawa, 16
  %i.aawc = zext i8 %i.aavm to i32
  %i.aawd = shl nuw nsw i32 %i.aawc, 8
  %i.aawe = or disjoint i32 %i.aawb, %i.aawd
  br label %bb.iot

bb.ioe:                                           ; preds = %bb.inw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !13602
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i: ; preds = %bb.ioj, %bb.iok, %bb.ioe
  %.sroa.13218.sroa.6.2.i = phi i8 [ %i.aavm, %bb.ioe ], [ 0, %bb.iok ], [ 0, %bb.ioj ]
  %.sroa.13218.sroa.0.2.i = phi i8 [ %i.aavk, %bb.ioe ], [ undef, %bb.iok ], [ undef, %bb.ioj ]
  %.sroa.20.2.i5548 = phi ptr [ undef, %bb.ioe ], [ %.sroa.17.1.i.i, %bb.iok ], [ %.sroa.17.1.i.i, %bb.ioj ]
  %.sroa.18.2.i5549 = phi i64 [ undef, %bb.ioe ], [ %.sroa.11152.1.i.i, %bb.iok ], [ %.sroa.11152.1.i.i, %bb.ioj ]
  %.sroa.6217.sroa.0.2.i = phi i8 [ 34, %bb.ioe ], [ %.sroa.0150.1.i.i, %bb.iok ], [ %.sroa.0150.1.i.i, %bb.ioj ]
  %i.aawf = phi <2 x i64> [ undef, %bb.ioe ], [ %i.aata, %bb.iok ], [ %i.aata, %bb.ioj ]
  %i.aawg = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i94.i unwind label %bb.iof, !noalias !13606

bb.iof:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i
  %i.aawh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawg)
          to label %.body84.i unwind label %bb.iog, !noalias !13606

bb.iog:                                           ; preds = %bb.iof
  %i.aawi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13606
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i94.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit98.i unwind label %bb.ioa, !noalias !13606

bb.ioh:                                           ; preds = %bb.ioi, %bb.inu, %bb.ins
  %.pn25.i5566 = phi { ptr, i32 } [ %i.aawj, %bb.ioi ], [ %i.aave, %bb.inu ], [ %i.aavc, %bb.ins ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !13602
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.ioi:                                           ; preds = %bb.int
  %i.aawj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(112) %i.cl) #26
          to label %bb.ioh unwind label %bb.ikf, !noalias !13606

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.iks, %bb.imp, %bb.imu, %bb.ioh, %bb.inq, %bb.inn, %bb.imz, %bb.imx
  %i.aawk = phi ptr [ %i.aasv, %bb.imz ], [ %i.aasv, %bb.ioh ], [ %i.aasv, %bb.inq ], [ %i.aasv, %bb.inn ], [ %i.aasv, %bb.imx ], [ %i.aasv, %bb.imu ], [ %i.aatb, %bb.imp ], [ %i.aatb, %bb.iks ]
  %i.aawl = phi ptr [ %i.aasx, %bb.imz ], [ %i.aasx, %bb.ioh ], [ %i.aasx, %bb.inq ], [ %i.aasx, %bb.inn ], [ %i.aasx, %bb.imx ], [ %i.aasx, %bb.imu ], [ %i.aatc, %bb.imp ], [ %i.aatc, %bb.iks ]
  %.pn33.pn.i5542 = phi { ptr, i32 } [ %i.aatt, %bb.imz ], [ %.pn25.i5566, %bb.ioh ], [ %i.aavb, %bb.inq ], [ %.pn16.pn.pn.i, %bb.inn ], [ %i.aatr, %bb.imx ], [ %i.aatm, %bb.imu ], [ %.pn7.i5540, %bb.imp ], [ %.pn7.i5540, %bb.iks ]
  %i.aawm = getelementptr inbounds nuw i8, ptr %1, i64 1216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawm) #26
          to label %.body84.i unwind label %bb.ikf, !noalias !13606

bb.ioj:                                           ; preds = %bb.imr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, i64 16, i1 false), !noalias !13602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.aasw, i64 40, i1 false), !noalias !13602
  %i.aawn = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13656)
  call void @llvm.experimental.noalias.scope.decl(metadata !13659)
  %i.aawo = load ptr, ptr %i.aawn, align 8, !alias.scope !13662, !noalias !13602, !nonnull !11, !noundef !11
  %i.aawp = atomicrmw sub ptr %i.aawo, i64 1 release, align 8, !noalias !13663
  %i.aawq = icmp eq i64 %i.aawp, 1
  br i1 %i.aawq, label %bb.iok, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i

bb.iok:                                           ; preds = %bb.ioj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aawn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsbakdBCgU4AF_16influxdb3_server.exit100.i unwind label %bb.imu, !noalias !13606

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit98.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i94.i
  %i.aawr = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i unwind label %bb.iol, !noalias !13606

bb.iol:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit98.i
  %i.aaws = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawr)
          to label %.body89.i unwind label %bb.iom, !noalias !13606

bb.iom:                                           ; preds = %bb.iol
  %i.aawt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13606
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i102.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit98.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aawr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i unwind label %bb.iod, !noalias !13606

bb.ion:                                           ; preds = %bb.ioo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i
  store i8 0, ptr %i.aand, align 1, !noalias !13602
  br label %bb.iot

bb.ioo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit106.i
  %i.aawu = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aawu)
          to label %bb.ion unwind label %bb.ioq, !noalias !13606

bb.iop:                                           ; preds = %bb.ior, %bb.ioq, %.body89.i
  %i.aawv = phi ptr [ %i.aana, %bb.ioq ], [ %i.aanh, %bb.ior ], [ %i.aanh, %.body89.i ]
  %i.aaww = phi ptr [ %i.aanb, %bb.ioq ], [ %i.aani, %bb.ior ], [ %i.aani, %.body89.i ]
  %.pn43.i5544 = phi { ptr, i32 } [ %i.aawy, %bb.ioq ], [ %.pn40.pn.i, %bb.ior ], [ %.pn40.pn.i, %.body89.i ]
  %i.aawx = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aawx, align 1, !noalias !13602
  store i8 2, ptr %i.aawv, align 8, !noalias !13602
  br label %.body5601

bb.ioq:                                           ; preds = %bb.ioo
  %i.aawy = landingpad { ptr, i32 }
          cleanup
  br label %bb.iop

bb.ior:                                           ; preds = %.body89.i
  %i.aawz = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aawz) #26
          to label %bb.iop unwind label %bb.ikf, !noalias !13606

bb.ios:                                           ; preds = %bb.ijz, %bb.ikj, %bb.imn
  %i.aaxa = phi ptr [ %i.aamn, %bb.ijz ], [ %i.aann, %bb.ikj ], [ %i.aast, %bb.imn ]
  %.sink.i5560.ph = phi i8 [ 3, %bb.ijz ], [ 4, %bb.ikj ], [ 5, %bb.imn ]
  store i8 %.sink.i5560.ph, ptr %i.aaxa, align 8, !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i5533)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3142.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5143.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166659)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176660)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186661)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.iot:                                           ; preds = %bb.ion, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i
  %i.aaxb = phi ptr [ %i.aana, %bb.ion ], [ %i.aasv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %i.aaxc = phi ptr [ %i.aanb, %bb.ion ], [ %i.aasx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.13218.sroa.7.1.i = phi i32 [ %.sroa.13218.sroa.7.0.i, %bb.ion ], [ %.sroa.13218.sroa.7.0.extract.shift.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.13218.sroa.6.1.i = phi i8 [ %.sroa.13218.sroa.6.0.i, %bb.ion ], [ %.sroa.13218.sroa.6.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.13218.sroa.0.1.i = phi i8 [ %.sroa.13218.sroa.0.0.i, %bb.ion ], [ %.sroa.13218.sroa.0.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.20.1.i5553 = phi ptr [ %.sroa.20.0.i5550, %bb.ion ], [ %.sroa.12211.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.18.1.i5554 = phi i64 [ %.sroa.18.0.i5551, %bb.ion ], [ %.sroa.12211.sroa.7.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.0216.1.i = phi i64 [ -1, %bb.ion ], [ %i.aavh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.6217.sroa.0.1.i = phi i8 [ %.sroa.6217.sroa.0.0.i, %bb.ion ], [ %i.aavk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.6217.sroa.6.0.insert.insert.i = phi i32 [ 0, %bb.ion ], [ %i.aawe, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %i.aaxd = phi <2 x i64> [ %i.aanc, %bb.ion ], [ %i.aavn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit92.i ]
  %.sroa.6217.sroa.0.0.insert.ext.i = zext i8 %.sroa.6217.sroa.0.1.i to i32
  %.sroa.6217.sroa.0.0.insert.insert.i = or i32 %.sroa.6217.sroa.6.0.insert.insert.i, %.sroa.6217.sroa.0.0.insert.ext.i
  %.sroa.13218.sroa.6.0.insert.ext.i = zext i8 %.sroa.13218.sroa.6.1.i to i32
  %.sroa.13218.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13218.sroa.6.0.insert.ext.i, 8
  %.sroa.13218.sroa.6.0.insert.insert.i = or i32 %.sroa.13218.sroa.6.0.insert.shift.i, %.sroa.13218.sroa.7.1.i
  %.sroa.13218.sroa.0.0.insert.ext.i = zext i8 %.sroa.13218.sroa.0.1.i to i32
  %.sroa.13218.sroa.0.0.insert.insert.i = or i32 %.sroa.13218.sroa.6.0.insert.insert.i, %.sroa.13218.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166659, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, i64 16, i1 false), !noalias !13664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176660, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, i64 40, i1 false), !noalias !13664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186661, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i5533, i64 24, i1 false), !noalias !13664
  store i8 1, ptr %i.aaxb, align 8, !noalias !13602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i5533)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3142.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5143.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6119.sroa.2.sroa.3.i)
  store i64 %.sroa.0216.1.i, ptr %i.aow, align 8
  %.sroa.106653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %.sroa.6217.sroa.0.0.insert.insert.i, ptr %.sroa.106653.0..sroa_idx, align 8
  %.sroa.116654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 %.sroa.13218.sroa.0.0.insert.insert.i, ptr %.sroa.116654.0..sroa_idx, align 4
  %.sroa.126655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store i64 %.sroa.18.1.i5554, ptr %.sroa.126655.0..sroa_idx, align 8
  %.sroa.136656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  store ptr %.sroa.20.1.i5553, ptr %.sroa.136656.0..sroa_idx, align 8
  %.sroa.146657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  store <2 x i64> %i.aaxd, ptr %.sroa.146657.0..sroa_idx, align 8
  %.sroa.166659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166659.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166659, i64 16, i1 false)
  %.sroa.176660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176660, i64 40, i1 false)
  %.sroa.186661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186661.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186661, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166659)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176660)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186661)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18create_plugin_file0EBL_(ptr noundef nonnull align 8 %i.aaxc)
          to label %bb.jw unwind label %bb.iou

bb.iou:                                           ; preds = %bb.iot
  %i.aaxe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit

bb.iov:                                           ; preds = %bb.ioz, %bb.ioy
  %i.aaxf = landingpad { ptr, i32 }
          cleanup
  br label %.body5702

.body5702:                                        ; preds = %bb.iuz, %bb.iov
  %i.aaxg = phi ptr [ %i.aaxh, %bb.iov ], [ %i.abkk, %bb.iuz ]
  %eh.lpad-body5703 = phi { ptr, i32 } [ %i.aaxf, %bb.iov ], [ %.pn50.i5615, %bb.iuz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166679)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176680)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18update_plugin_file0EBL_(ptr noundef nonnull align 8 %i.aaxg) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit unwind label %bb.bh

bb.iow:                                           ; preds = %bb.a
  %.phi.trans.insert7989 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %.pre7990 = load i8, ptr %.phi.trans.insert7989, align 16, !range !687, !noalias !13665
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166679)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176680)
  %i.aaxh = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i5603)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14200.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3164.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5165.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6141.sroa.4.i)
  %i.aaxi = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 7 uses
  switch i8 %.pre7990, label %default.unreachable8727 [
    i8 0, label %bb.iox
    i8 1, label %bb.ioy
    i8 2, label %bb.ioz
    i8 3, label %bb.ipb
    i8 4, label %bb.ipl
    i8 5, label %bb.ipz
  ]

bb.iox:                                           ; preds = %.thread8808, %bb.iow
  %i.aaxj = phi ptr [ %i.cgv, %.thread8808 ], [ %i.aaxi, %bb.iow ]
  %i.aaxk = phi ptr [ %i.cgu, %.thread8808 ], [ %i.aaxh, %bb.iow ] ; 2 uses
  %i.aaxl = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aaxm = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aaxn = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.aaxo = load ptr, ptr %i.aaxn, align 8, !noalias !13665, !nonnull !11, !align !78, !noundef !11 ; 2 uses
  store ptr %i.aaxo, ptr %i.aaxm, align 16, !noalias !13665
  store i8 1, ptr %i.aaxl, align 1, !noalias !13665
  %i.aaxp = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aaxp, ptr noundef nonnull align 8 dereferenceable(240) %i.aaxk, i64 240, i1 false), !noalias !13665
  %i.aaxq = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.aaxo, ptr %i.aaxq, align 8, !noalias !13665
  %.sroa.8.0..sroa_idx.i5698 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.aaxp, ptr %.sroa.8.0..sroa_idx.i5698, align 16, !noalias !13665
  %.sroa.10139.0..sroa_idx.i5699 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %.sroa.10139.0..sroa_idx.i5699, align 16, !noalias !13665
  br label %bb.ipb

bb.ioy:                                           ; preds = %bb.iow
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #29
          to label %.noexc5700 unwind label %bb.iov

.noexc5700:                                       ; preds = %bb.ioy
  unreachable

bb.ioz:                                           ; preds = %bb.iow
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #29
          to label %.noexc5701 unwind label %bb.iov

.noexc5701:                                       ; preds = %bb.ioz
  unreachable

bb.ipa:                                           ; preds = %bb.ipb
  %i.aaxr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13665
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.aaxu) #26
          to label %.body105.i unwind label %bb.ipj, !noalias !13669

bb.ipb:                                           ; preds = %bb.iow, %bb.iox
  %i.aaxs = phi ptr [ %i.aaxi, %bb.iow ], [ %i.aaxj, %bb.iox ] ; 5 uses
  %i.aaxt = phi ptr [ %i.aaxh, %bb.iow ], [ %i.aaxk, %bb.iox ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !13665
  %i.aaxu = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.ch, ptr noundef nonnull align 8 %i.aaxu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ipc unwind label %bb.ipa, !noalias !13669

bb.ipc:                                           ; preds = %bb.ipb
  %i.aaxv = load i32, ptr %i.ch, align 8, !range !6291, !noalias !13665, !noundef !11 ; 3 uses
  %i.aaxw = icmp eq i32 %i.aaxv, -2
  br i1 %i.aaxw, label %bb.ipd, label %bb.ipe

bb.ipd:                                           ; preds = %bb.ipc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13665
  br label %bb.ivc

bb.ipe:                                           ; preds = %bb.ipc
  %.sroa.3.0..sroa_idx.i5693 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.sroa.3.0.copyload.i5694 = load i32, ptr %.sroa.3.0..sroa_idx.i5693, align 4, !noalias !13665 ; 3 uses
  %.sroa.4.0..sroa_idx.i5695 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.4.0.copyload.i5696 = load i64, ptr %.sroa.4.0..sroa_idx.i5695, align 8, !noalias !13665 ; 3 uses
  %.sroa.6141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.6141.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6141.0..sroa_idx.i, align 8, !noalias !13665
  %.sroa.6141.sroa.2.0..sroa.6141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.6141.sroa.2.0.copyload.i = load i64, ptr %.sroa.6141.sroa.2.0..sroa.6141.0..sroa_idx.sroa_idx.i, align 8, !noalias !13665
  %.sroa.6141.sroa.3.0..sroa.6141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.sroa.6141.sroa.3.0.copyload.i = load i64, ptr %.sroa.6141.sroa.3.0..sroa.6141.0..sroa_idx.sroa_idx.i, align 8, !noalias !13665
  %.sroa.6141.sroa.4.0..sroa.6141.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6141.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6141.sroa.4.0..sroa.6141.0..sroa_idx.sroa_idx.i, i64 56, i1 false), !noalias !13665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !13665
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.aaxu)
          to label %bb.ipg unwind label %bb.ipf, !noalias !13669

bb.ipf:                                           ; preds = %bb.ipe
  %i.aaxx = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i

bb.ipg:                                           ; preds = %bb.ipe
  %.not.i66.i = icmp eq i32 %i.aaxv, -1
  br i1 %.not.i66.i, label %bb.iph, label %bb.ipi

bb.iph:                                           ; preds = %bb.ipg
  %i.aaxy = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.4.0.copyload.i5696, ptr %i.aaxy, align 8, !noalias !13665
  %i.aaxz = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aaya = load ptr, ptr %i.aaxz, align 16, !noalias !13665, !nonnull !11, !align !78, !noundef !11
  %i.aayb = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aayb, align 1, !noalias !13665
  %i.aayc = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aaxu, ptr noundef nonnull align 8 dereferenceable(240) %i.aayc, i64 240, i1 false), !noalias !13665
  %.sroa.8159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.aaya, ptr %.sroa.8159.0..sroa_idx.i, align 8, !noalias !13665
  %.sroa.10161.0..sroa_idx.i5697 = getelementptr inbounds nuw i8, ptr %1, i64 2280
  store i8 0, ptr %.sroa.10161.0..sroa_idx.i5697, align 8, !noalias !13665
  br label %bb.ipl

bb.ipi:                                           ; preds = %bb.ipg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.i5603, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6141.sroa.4.i, i64 56, i1 false), !noalias !13665
  %.sroa.6260.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %i.aaxv to i8
  %.sroa.13.sroa.0272.0.extract.trunc273.i = trunc i32 %.sroa.3.0.copyload.i5694 to i8
  %.sroa.13.sroa.6.0.extract.shift276.i = lshr i32 %.sroa.3.0.copyload.i5694, 8
  %.sroa.13.sroa.6.0.extract.trunc277.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift276.i to i8
  %.sroa.13.sroa.7.0.extract.shift282.i = and i32 %.sroa.3.0.copyload.i5694, -65536
  %.sroa.18.sroa.0.0.extract.trunc262.i = trunc i64 %.sroa.4.0.copyload.i5696 to i8
  %.sroa.18.sroa.5.0.extract.shift265.i = lshr i64 %.sroa.4.0.copyload.i5696, 8
  %.sroa.18.sroa.5.0.extract.trunc266.i = trunc nuw i64 %.sroa.18.sroa.5.0.extract.shift265.i to i56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit128.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit128.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i, %bb.ipx, %bb.ipi
  %i.aayd = phi ptr [ %i.aaxs, %bb.ipi ], [ %i.aayp, %bb.ipx ], [ %i.abge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ] ; 2 uses
  %i.aaye = phi ptr [ %i.aaxt, %bb.ipi ], [ %i.aayq, %bb.ipx ], [ %i.abgf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ] ; 2 uses
  %.sroa.13.sroa.6.0.i = phi i8 [ %.sroa.13.sroa.6.0.extract.trunc277.i, %bb.ipi ], [ %.sroa.13.sroa.6.0.extract.trunc281.i, %bb.ipx ], [ %.sroa.13.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.13.sroa.0272.0.i = phi i8 [ %.sroa.13.sroa.0272.0.extract.trunc273.i, %bb.ipi ], [ %.sroa.13.sroa.0272.0.extract.trunc275.i, %bb.ipx ], [ %.sroa.13.sroa.0272.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.13.sroa.7.0.i = phi i32 [ %.sroa.13.sroa.7.0.extract.shift282.i, %bb.ipi ], [ %.sroa.13.sroa.7.0.extract.shift286.i, %bb.ipx ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.18.sroa.5.sroa.0.0.i = phi i56 [ %.sroa.18.sroa.5.0.extract.trunc266.i, %bb.ipi ], [ %.sroa.18.sroa.5.0.extract.trunc264.i, %bb.ipx ], [ %.sroa.18.sroa.5.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.18.sroa.0.0.i5625 = phi i8 [ %.sroa.18.sroa.0.0.extract.trunc262.i, %bb.ipi ], [ %.sroa.18.sroa.0.0.extract.trunc261.i, %bb.ipx ], [ %.sroa.18.sroa.0.2.i5622, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.24.0.i5626 = phi i64 [ %.sroa.6141.sroa.3.0.copyload.i, %bb.ipi ], [ %.sroa.3164.sroa.8.0.copyload.i, %bb.ipx ], [ %.sroa.24.2.i5623, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.23.0.i = phi i64 [ %.sroa.6141.sroa.2.0.copyload.i, %bb.ipi ], [ %.sroa.3164.sroa.6.0.copyload.i, %bb.ipx ], [ %.sroa.23.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.21.0.i5627 = phi ptr [ %.sroa.6141.sroa.0.0.copyload.i, %bb.ipi ], [ %.sroa.3164.sroa.4.0.copyload.i, %bb.ipx ], [ %.sroa.21.2.i5624, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %.sroa.6260.sroa.0.0.i = phi i8 [ %.sroa.6260.sroa.0.0.extract.trunc.i, %bb.ipi ], [ %.sroa.6260.sroa.0.0.extract.trunc297.i, %bb.ipx ], [ %.sroa.6260.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i124.i ]
  %i.aayf = getelementptr inbounds nuw i8, ptr %1, i64 1185 ; 2 uses
  %i.aayg = load i8, ptr %i.aayf, align 1, !range !777, !noalias !13665, !noundef !11
  %i.aayh = trunc nuw i8 %i.aayg to i1
  br i1 %i.aayh, label %bb.iuy, label %bb.iux

bb.ipj:                                           ; preds = %bb.ivb, %bb.iur, %bb.iuq, %.body99.i, %.body94.i, %.body70.i5609, %bb.ipw, %bb.ipk, %bb.ipa
  %i.aayi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13669
  unreachable

.body105.i:                                       ; preds = %bb.ipk, %bb.ipr, %bb.ipt, %bb.ipa, %bb.ipf, %bb.iuv, %bb.iuj, %bb.iuh, %.body99.i
  %i.aayj = phi ptr [ %i.abge, %bb.iuv ], [ %i.aaxs, %bb.ipf ], [ %i.abjf, %.body99.i ], [ %i.abge, %bb.iuh ], [ %i.abge, %bb.iuj ], [ %i.aaxs, %bb.ipa ], [ %i.aayp, %bb.ipt ], [ %i.aayp, %bb.ipr ], [ %i.aayp, %bb.ipk ] ; 2 uses
  %i.aayk = phi ptr [ %i.abgf, %bb.iuv ], [ %i.aaxt, %bb.ipf ], [ %i.abjg, %.body99.i ], [ %i.abgf, %bb.iuh ], [ %i.abgf, %bb.iuj ], [ %i.aaxt, %bb.ipa ], [ %i.aayq, %bb.ipt ], [ %i.aayq, %bb.ipr ], [ %i.aayq, %bb.ipk ] ; 2 uses
  %.pn47.pn.i = phi { ptr, i32 } [ %i.abkf, %bb.iuv ], [ %i.aaxx, %bb.ipf ], [ %.pn43.i5614, %.body99.i ], [ %i.abjk, %bb.iuh ], [ %i.abjm, %bb.iuj ], [ %i.aaxr, %bb.ipa ], [ %i.aaza, %bb.ipt ], [ %i.aayx, %bb.ipr ], [ %i.aayo, %bb.ipk ] ; 2 uses
  %i.aayl = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aaym = load i8, ptr %i.aayl, align 1, !range !777, !noalias !13665, !noundef !11
  %i.aayn = trunc nuw i8 %i.aaym to i1
  br i1 %i.aayn, label %bb.ivb, label %bb.iuz

bb.ipk:                                           ; preds = %bb.ipl
  %i.aayo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !13665
end_hunk_0
begin_hunk_1_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0B5_:bb.a
  %i.abki = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.abki)
          to label %bb.iux unwind label %bb.iva, !noalias !13669

bb.iuz:                                           ; preds = %bb.ivb, %bb.iva, %.body105.i
  %i.abkj = phi ptr [ %i.aayd, %bb.iva ], [ %i.aayj, %bb.ivb ], [ %i.aayj, %.body105.i ]
  %i.abkk = phi ptr [ %i.aaye, %bb.iva ], [ %i.aayk, %bb.ivb ], [ %i.aayk, %.body105.i ]
  %.pn50.i5615 = phi { ptr, i32 } [ %i.abkm, %bb.iva ], [ %.pn47.pn.i, %bb.ivb ], [ %.pn47.pn.i, %.body105.i ]
  %i.abkl = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.abkl, align 1, !noalias !13665
  store i8 2, ptr %i.abkj, align 8, !noalias !13665
  br label %.body5702

bb.iva:                                           ; preds = %bb.iuy
  %i.abkm = landingpad { ptr, i32 }
          cleanup
  br label %bb.iuz

bb.ivb:                                           ; preds = %.body105.i
  %i.abkn = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.abkn) #26
          to label %bb.iuz unwind label %bb.ipj, !noalias !13669

bb.ivc:                                           ; preds = %bb.ipd, %bb.ipn, %bb.isq
  %i.abko = phi ptr [ %i.aaxs, %bb.ipd ], [ %i.aayp, %bb.ipn ], [ %i.abgc, %bb.isq ]
  %.sink.i5638.ph = phi i8 [ 3, %bb.ipd ], [ 4, %bb.ipn ], [ 5, %bb.isq ]
  store i8 %.sink.i5638.ph, ptr %i.abko, align 8, !noalias !13665
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i5603)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14200.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3164.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5165.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6141.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166679)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176680)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ivd:                                           ; preds = %bb.iux, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i
  %i.abkp = phi ptr [ %i.aayd, %bb.iux ], [ %i.abge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %i.abkq = phi ptr [ %i.aaye, %bb.iux ], [ %i.abgf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.13.sroa.6.1.i = phi i8 [ %.sroa.13.sroa.6.0.i, %bb.iux ], [ %.sroa.13.sroa.6.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.13.sroa.0272.1.i = phi i8 [ %.sroa.13.sroa.0272.0.i, %bb.iux ], [ %.sroa.13.sroa.0272.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.13.sroa.7.1.i = phi i32 [ %.sroa.13.sroa.7.0.i, %bb.iux ], [ %.sroa.13.sroa.7.0.extract.shift.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.18.sroa.5.sroa.0.1.i = phi i64 [ %i.abkh, %bb.iux ], [ %.sroa.18.sroa.5.0.extract.shift.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.18.sroa.0.1.i5628 = phi i8 [ %.sroa.18.sroa.0.0.i5625, %bb.iux ], [ %.sroa.18.sroa.0.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.24.1.i5629 = phi i64 [ %.sroa.24.0.i5626, %bb.iux ], [ %.sroa.12254.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.23.1.i = phi i64 [ %.sroa.23.0.i, %bb.iux ], [ %.sroa.12254.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.21.1.i5630 = phi ptr [ %.sroa.21.0.i5627, %bb.iux ], [ %.sroa.12254.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.0259.1.i = phi i64 [ -1, %bb.iux ], [ %i.abiq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.6260.sroa.0.1.i = phi i8 [ %.sroa.6260.sroa.0.0.i, %bb.iux ], [ %i.abit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.6260.sroa.6.0.insert.insert.i = phi i32 [ 0, %bb.iux ], [ %i.abjs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit108.i ]
  %.sroa.6260.sroa.0.0.insert.ext.i = zext i8 %.sroa.6260.sroa.0.1.i to i32
  %.sroa.6260.sroa.0.0.insert.insert.i = or i32 %.sroa.6260.sroa.6.0.insert.insert.i, %.sroa.6260.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.6.0.insert.ext.i = zext i8 %.sroa.13.sroa.6.1.i to i32
  %.sroa.13.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.6.0.insert.ext.i, 8
  %.sroa.13.sroa.6.0.insert.insert.i = or i32 %.sroa.13.sroa.7.1.i, %.sroa.13.sroa.6.0.insert.shift.i
  %.sroa.13.sroa.0272.0.insert.ext.i = zext i8 %.sroa.13.sroa.0272.1.i to i32
  %.sroa.13.sroa.0272.0.insert.insert.i = or i32 %.sroa.13.sroa.6.0.insert.insert.i, %.sroa.13.sroa.0272.0.insert.ext.i
  %.sroa.18.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.18.sroa.5.sroa.0.1.i, 8
  %.sroa.18.sroa.0.0.insert.ext.i = zext i8 %.sroa.18.sroa.0.1.i5628 to i64
  %.sroa.18.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.18.sroa.5.0.insert.shift.i, %.sroa.18.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166679, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.i5603, i64 56, i1 false), !noalias !13794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176680, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.27.i, i64 24, i1 false), !noalias !13794
  store i8 1, ptr %i.abkp, align 8, !noalias !13665
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i5603)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14200.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3164.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5165.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6141.sroa.4.i)
  store i64 %.sroa.0259.1.i, ptr %i.aow, align 8
  %.sroa.106673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %.sroa.6260.sroa.0.0.insert.insert.i, ptr %.sroa.106673.0..sroa_idx, align 8
  %.sroa.116674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 %.sroa.13.sroa.0272.0.insert.insert.i, ptr %.sroa.116674.0..sroa_idx, align 4
  %.sroa.126675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store i64 %.sroa.18.sroa.0.0.insert.insert.i, ptr %.sroa.126675.0..sroa_idx, align 8
  %.sroa.136676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  store ptr %.sroa.21.1.i5630, ptr %.sroa.136676.0..sroa_idx, align 8
  %.sroa.146677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  store i64 %.sroa.23.1.i, ptr %.sroa.146677.0..sroa_idx, align 8
  %.sroa.156678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 40
  store i64 %.sroa.24.1.i5629, ptr %.sroa.156678.0..sroa_idx, align 8
  %.sroa.166679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166679.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166679, i64 56, i1 false)
  %.sroa.176680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176680.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176680, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166679)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176680)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18update_plugin_file0EBL_(ptr noundef nonnull align 8 %i.abkq)
          to label %bb.jw unwind label %bb.ive

bb.ive:                                           ; preds = %bb.ivd
  %i.abkr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit

bb.ivf:                                           ; preds = %bb.ivj, %bb.ivi
  %i.abks = landingpad { ptr, i32 }
          cleanup
  br label %.body5863

.body5863:                                        ; preds = %bb.jlb, %bb.ivf
  %i.abkt = phi ptr [ %i.abku, %bb.ivf ], [ %i.acxv, %bb.jlb ]
  %eh.lpad-body5864 = phi { ptr, i32 } [ %i.abks, %bb.ivf ], [ %.pn53.i, %bb.jlb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166698)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176699)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi24replace_plugin_directory0EBL_(ptr noundef nonnull align 8 %i.abkt) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit unwind label %bb.bh

bb.ivg:                                           ; preds = %bb.a
  %.phi.trans.insert7977 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %.pre7978 = load i8, ptr %.phi.trans.insert7977, align 16, !range !687, !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166698)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176699)
  %i.abku = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i5706)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i5707)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11229.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6185.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10173.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6138.sroa.4.i)
  %i.abkv = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 23 uses
  switch i8 %.pre7978, label %default.unreachable8727 [
    i8 0, label %bb.ivh
    i8 1, label %bb.ivi
    i8 2, label %bb.ivj
    i8 3, label %bb.ivl
    i8 4, label %bb.ivu
    i8 5, label %bb.ixd
  ]

bb.ivh:                                           ; preds = %.thread8809, %bb.ivg
  %i.abkw = phi ptr [ %i.cgo, %.thread8809 ], [ %i.abkv, %bb.ivg ]
  %i.abkx = phi ptr [ %i.cgn, %.thread8809 ], [ %i.abku, %bb.ivg ] ; 2 uses
  %i.abky = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.abkz = getelementptr inbounds nuw i8, ptr %1, i64 1187
  store i8 0, ptr %i.abkz, align 1, !noalias !13795
  %i.abla = getelementptr inbounds nuw i8, ptr %1, i64 1186
  store i8 0, ptr %i.abla, align 2, !noalias !13795
  %i.ablb = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.ablc = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.abld = load ptr, ptr %i.ablc, align 8, !noalias !13795, !nonnull !11, !align !78, !noundef !11 ; 2 uses
  store ptr %i.abld, ptr %i.ablb, align 16, !noalias !13795
  store i8 1, ptr %i.abky, align 1, !noalias !13795
  %i.able = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.able, ptr noundef nonnull align 8 dereferenceable(240) %i.abkx, i64 240, i1 false), !noalias !13795
  %i.ablf = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.abld, ptr %i.ablf, align 8, !noalias !13795
  %.sroa.8.0..sroa_idx.i5860 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.able, ptr %.sroa.8.0..sroa_idx.i5860, align 16, !noalias !13795
  %.sroa.10136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %.sroa.10136.0..sroa_idx.i, align 16, !noalias !13795
  br label %bb.ivl

bb.ivi:                                           ; preds = %bb.ivg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #29
          to label %.noexc5861.a unwind label %bb.ivf

.noexc5861.a:                                     ; preds = %bb.ivi
  unreachable

bb.ivj:                                           ; preds = %bb.ivg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #29
          to label %.noexc5862 unwind label %bb.ivf

.noexc5862:                                       ; preds = %bb.ivj
  unreachable

bb.ivk:                                           ; preds = %bb.ivl
  %i.ablg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13795
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.ablj) #26
          to label %.body108.i unwind label %bb.ivs, !noalias !13799

bb.ivl:                                           ; preds = %bb.ivg, %bb.ivh
  %i.ablh = phi ptr [ %i.abkv, %bb.ivg ], [ %i.abkw, %bb.ivh ] ; 5 uses
  %i.abli = phi ptr [ %i.abku, %bb.ivg ], [ %i.abkx, %bb.ivh ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !13795
  %i.ablj = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 5 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.bi, ptr noundef nonnull align 8 %i.ablj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ivm unwind label %bb.ivk, !noalias !13799

bb.ivm:                                           ; preds = %bb.ivl
  %i.ablk = load i32, ptr %i.bi, align 8, !range !6291, !noalias !13795, !noundef !11 ; 3 uses
  %i.abll = icmp eq i32 %i.ablk, -2
  br i1 %i.abll, label %bb.ivn, label %bb.ivo

bb.ivn:                                           ; preds = %bb.ivm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13795
  br label %bb.jlh

bb.ivo:                                           ; preds = %bb.ivm
  %.sroa.3.0..sroa_idx.i5853 = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.3.0.copyload.i5854 = load i32, ptr %.sroa.3.0..sroa_idx.i5853, align 4, !noalias !13795 ; 3 uses
  %.sroa.4.0..sroa_idx.i5855 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4.0.copyload.i5856 = load i64, ptr %.sroa.4.0..sroa_idx.i5855, align 8, !noalias !13795 ; 2 uses
  %.sroa.6138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.6138.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6138.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.6138.sroa.2.0..sroa.6138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ablm = load <2 x i64>, ptr %.sroa.6138.sroa.2.0..sroa.6138.0..sroa_idx.sroa_idx.i, align 8, !noalias !13795
  %.sroa.6138.sroa.4.0..sroa.6138.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6138.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6138.sroa.4.0..sroa.6138.0..sroa_idx.sroa_idx.i, i64 56, i1 false), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !13795
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0EBL_(ptr noundef nonnull align 8 %i.ablj)
          to label %bb.ivq unwind label %bb.ivp, !noalias !13799

bb.ivp:                                           ; preds = %bb.ivo
  %i.abln = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i

bb.ivq:                                           ; preds = %bb.ivo
  %.not.i67.i5857 = icmp eq i32 %i.ablk, -1
  br i1 %.not.i67.i5857, label %.thread.i5858, label %bb.ivr

.thread.i5858:                                    ; preds = %bb.ivq
  %i.ablo = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.4.0.copyload.i5856, ptr %i.ablo, align 8, !noalias !13795
  %i.ablp = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.ablq = load ptr, ptr %i.ablp, align 16, !noalias !13795, !nonnull !11, !align !78, !noundef !11 ; 2 uses
  %i.ablr = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.ablr, align 1, !noalias !13795
  %i.abls = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ablj, ptr noundef nonnull align 8 dereferenceable(240) %i.abls, i64 240, i1 false), !noalias !13795
  %.sroa.8156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.ablq, ptr %.sroa.8156.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.10158.0..sroa_idx.i5859 = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 2 uses
  store i8 0, ptr %.sroa.10158.0..sroa_idx.i5859, align 8, !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i5709)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.i.i5704)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i.i5705), !noalias !13795
  br label %bb.ivv

bb.ivr:                                           ; preds = %bb.ivq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.i5706, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6138.sroa.4.i, i64 56, i1 false), !noalias !13795
  %.sroa.6279.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %i.ablk to i8
  %.sroa.13280.sroa.0.0.extract.trunc283.i = trunc i32 %.sroa.3.0.copyload.i5854 to i8
  %.sroa.13280.sroa.6.0.extract.shift286.i = lshr i32 %.sroa.3.0.copyload.i5854, 8
  %.sroa.13280.sroa.6.0.extract.trunc287.i = trunc i32 %.sroa.13280.sroa.6.0.extract.shift286.i to i8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i, %bb.ixb, %bb.ivr
  %i.ablt = phi ptr [ %i.ablh, %bb.ivr ], [ %i.abpe, %bb.ixb ], [ %i.actv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ] ; 2 uses
  %i.ablu = phi ptr [ %i.abli, %bb.ivr ], [ %i.abpf, %bb.ixb ], [ %i.actw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ] ; 2 uses
  %.sroa.18281.0.i = phi i64 [ %.sroa.4.0.copyload.i5856, %bb.ivr ], [ %i.abpg, %bb.ixb ], [ %.sroa.18281.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.21282.0.i = phi ptr [ %.sroa.6138.sroa.0.0.copyload.i, %bb.ivr ], [ %.sroa.943.1.i334.i, %bb.ixb ], [ %.sroa.21282.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.13280.sroa.0.0.i = phi i8 [ %.sroa.13280.sroa.0.0.extract.trunc283.i, %bb.ivr ], [ %.sroa.13280.sroa.0.0.extract.trunc284.i, %bb.ixb ], [ %.sroa.13280.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.13280.sroa.6.0.i = phi i8 [ %.sroa.13280.sroa.6.0.extract.trunc287.i, %bb.ivr ], [ %.sroa.13280.sroa.6.0.extract.trunc289.i, %bb.ixb ], [ %.sroa.13280.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.13280.sroa.7.0.i = phi i32 [ %.sroa.3.0.copyload.i5854, %bb.ivr ], [ %.sroa.441.1.i330.i, %bb.ixb ], [ %.sroa.13280.sroa.7.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.6279.sroa.0.0.i = phi i8 [ %.sroa.6279.sroa.0.0.extract.trunc.i, %bb.ivr ], [ %.sroa.6279.sroa.0.0.extract.trunc298.i, %bb.ixb ], [ %.sroa.6279.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.6279.sroa.6.0.i = phi i8 [ 0, %bb.ivr ], [ 0, %bb.ixb ], [ %.sroa.6279.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %.sroa.6279.sroa.7.0.i = phi i16 [ 0, %bb.ivr ], [ 0, %bb.ixb ], [ %.sroa.6279.sroa.7.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %i.ablv = phi <2 x i64> [ %i.ablm, %bb.ivr ], [ %i.abpj, %bb.ixb ], [ %i.acxg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i ]
  %i.ablw = getelementptr inbounds nuw i8, ptr %1, i64 1185 ; 2 uses
  %i.ablx = load i8, ptr %i.ablw, align 1, !range !777, !noalias !13795, !noundef !11
  %i.ably = trunc nuw i8 %i.ablx to i1
  br i1 %i.ably, label %bb.jla, label %bb.jkz

bb.ivs:                                           ; preds = %bb.jlg, %bb.jlf, %bb.jle, %bb.jld, %bb.jkv, %bb.jku, %.body80.i, %bb.iwz, %.body.i5810, %bb.ivk
  %i.ablz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13799
  unreachable

.body108.i:                                       ; preds = %.body.i5810, %bb.ivk, %bb.ivp, %bb.jle, %bb.jkr, %bb.jkn, %bb.jkl
  %i.abma = phi ptr [ %i.actv, %bb.jkr ], [ %i.ablh, %bb.ivp ], [ %i.aboy, %bb.jle ], [ %i.actv, %bb.jkl ], [ %i.actv, %bb.jkn ], [ %i.ablh, %bb.ivk ], [ %i.abmg, %.body.i5810 ] ; 2 uses
  %i.abmb = phi ptr [ %i.actw, %bb.jkr ], [ %i.abli, %bb.ivp ], [ %i.aboz, %bb.jle ], [ %i.actw, %bb.jkl ], [ %i.actw, %bb.jkn ], [ %i.abli, %bb.ivk ], [ %i.abmh, %.body.i5810 ] ; 2 uses
  %.pn50.pn.i = phi { ptr, i32 } [ %i.acxk, %bb.jkr ], [ %i.abln, %bb.ivp ], [ %.pn44.pn.pn.i5714, %bb.jle ], [ %i.acxa, %bb.jkl ], [ %i.acxc, %bb.jkn ], [ %i.ablg, %bb.ivk ], [ %eh.lpad-body.i5811, %.body.i5810 ] ; 2 uses
  %i.abmc = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.abmd = load i8, ptr %i.abmc, align 1, !range !777, !noalias !13795, !noundef !11
  %i.abme = trunc nuw i8 %i.abmd to i1
  br i1 %i.abme, label %bb.jlg, label %bb.jlb

bb.ivt:                                           ; preds = %bb.iwb, %bb.iwa
  %i.abmf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5810

.body.i5810:                                      ; preds = %bb.iwq, %bb.ivt
  %i.abmg = phi ptr [ %i.abkv, %bb.ivt ], [ %i.abod, %bb.iwq ]
  %i.abmh = phi ptr [ %i.abku, %bb.ivt ], [ %i.aboe, %bb.iwq ]
  %i.abmi = phi ptr [ %i.abmj, %bb.ivt ], [ %i.abog, %bb.iwq ]
  %eh.lpad-body.i5811 = phi { ptr, i32 } [ %i.abmf, %bb.ivt ], [ %.pn7.i.i5809, %bb.iwq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i5709)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestE0EBM_(ptr noundef nonnull align 8 %i.abmi) #26
          to label %.body108.i unwind label %bb.ivs, !noalias !13799

bb.ivu:                                           ; preds = %bb.ivg
  %.phi.trans.insert.i5805 = getelementptr inbounds nuw i8, ptr %1, i64 2280 ; 3 uses
  %.pre.i5806 = load i8, ptr %.phi.trans.insert.i5805, align 8, !range !672, !noalias !13800
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i5709)
  %i.abmj = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.i.i5704)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i.i5705), !noalias !13795
  switch i8 %.pre.i5806, label %default.unreachable8727 [
    i8 0, label %._crit_edge7979
    i8 1, label %bb.iwa
    i8 2, label %bb.iwb
    i8 3, label %bb.iwd
  ]

._crit_edge7979:                                  ; preds = %bb.ivu
  %.phi.trans.insert7980 = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %.pre7981 = load ptr, ptr %.phi.trans.insert7980, align 8, !noalias !13800
  br label %bb.ivv

bb.ivv:                                           ; preds = %._crit_edge7979, %.thread.i5858
  %i.abmk = phi ptr [ %i.ablh, %.thread.i5858 ], [ %i.abkv, %._crit_edge7979 ] ; 3 uses
  %i.abml = phi ptr [ %i.abli, %.thread.i5858 ], [ %i.abku, %._crit_edge7979 ] ; 3 uses
  %i.abmm = phi ptr [ %i.ablq, %.thread.i5858 ], [ %.pre7981, %._crit_edge7979 ]
  %i.abmn = phi ptr [ %.sroa.10158.0..sroa_idx.i5859, %.thread.i5858 ], [ %.phi.trans.insert.i5805, %._crit_edge7979 ] ; 3 uses
  %i.abmo = phi ptr [ %i.ablj, %.thread.i5858 ], [ %i.abmj, %._crit_edge7979 ] ; 4 uses
  %i.abmp = getelementptr inbounds nuw i8, ptr %1, i64 2281 ; 2 uses
  store i8 1, ptr %i.abmp, align 1, !noalias !13800
  %i.abmq = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.abmq, ptr noundef nonnull align 8 dereferenceable(240) %i.abmo, i64 240, i1 false), !noalias !13800
  %i.abmr = invoke noundef zeroext i1 @_RNvNtCsbakdBCgU4AF_16influxdb3_server4http17json_content_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.abmq)
          to label %bb.ivx unwind label %bb.ivw, !noalias !13804

bb.ivw:                                           ; preds = %bb.ivv
  %i.abms = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807

bb.ivx:                                           ; preds = %bb.ivv
  br i1 %i.abmr, label %bb.ivz, label %bb.ivy

bb.ivy:                                           ; preds = %bb.iwh, %bb.ivx
  %i.abmt = phi ptr [ %i.abnj, %bb.iwh ], [ %i.abmk, %bb.ivx ] ; 2 uses
  %i.abmu = phi ptr [ %i.abnk, %bb.iwh ], [ %i.abml, %bb.ivx ] ; 2 uses
  %.sroa.527.i.sink.i5824 = phi ptr [ %.sroa.527.i.i5705, %bb.iwh ], [ getelementptr inbounds nuw (i8, ptr @29, i64 32), %bb.ivx ]
  %i.abmv = phi ptr [ %i.abnl, %bb.iwh ], [ %i.abmn, %bb.ivx ] ; 2 uses
  %i.abmw = phi ptr [ %i.abnm, %bb.iwh ], [ %i.abmo, %bb.ivx ]
  %.sroa.040.0.i.i5825 = phi i32 [ %i.abno, %bb.iwh ], [ 15, %bb.ivx ]
  %.sroa.441.0.i.i5826 = phi i32 [ %.sroa.3.sroa.0.0.copyload.i.i5813, %bb.iwh ], [ undef, %bb.ivx ]
  %.sroa.642.0.i.i5827 = phi ptr [ %.sroa.3.sroa.2.0.copyload.i.i5815, %bb.iwh ], [ null, %bb.ivx ]
  %.sroa.943.0.i.i5828 = phi ptr [ %.sroa.3.sroa.4.0.copyload.i.i5817, %bb.iwh ], [ undef, %bb.ivx ]
  %.sroa.10.0.i.i5829 = phi i64 [ %.sroa.3.sroa.6.0.copyload.i.i5819, %bb.iwh ], [ -9223372036854775806, %bb.ivx ]
  %.sroa.1144.0.i.i5830 = phi ptr [ %.sroa.3.sroa.8.0.copyload.i.i5821, %bb.iwh ], [ undef, %bb.ivx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i.i5704, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i.sink.i5824, i64 56, i1 false), !noalias !13800
  %i.abmx = getelementptr inbounds nuw i8, ptr %1, i64 2281 ; 2 uses
  %i.abmy = load i8, ptr %i.abmx, align 1, !range !777, !noalias !13800, !noundef !11
  %i.abmz = trunc nuw i8 %i.abmy to i1
  br i1 %i.abmz, label %bb.iwp, label %.thread321.i

bb.ivz:                                           ; preds = %bb.ivx
  store i8 0, ptr %i.abmp, align 1, !noalias !13800
  %i.abna = getelementptr inbounds nuw i8, ptr %1, i64 1680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.abna, ptr noundef nonnull align 16 dereferenceable(240) %i.abmq, i64 240, i1 false), !noalias !13800
  %.sroa.8.0..sroa_idx.i.i5850 = getelementptr inbounds nuw i8, ptr %1, i64 1920
  store ptr %i.abmm, ptr %.sroa.8.0..sroa_idx.i.i5850, align 16, !noalias !13800
  %.sroa.1025.0..sroa_idx.i.i5851 = getelementptr inbounds nuw i8, ptr %1, i64 2272
  store i8 0, ptr %.sroa.1025.0..sroa_idx.i.i5851, align 16, !noalias !13800
  br label %bb.iwd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807: ; preds = %bb.iwn, %bb.iwi, %bb.iwg, %bb.iwc, %bb.ivw
  %i.abnb = phi ptr [ %i.abnj, %bb.iwi ], [ %i.abmk, %bb.ivw ], [ %i.abnj, %bb.iwn ], [ %i.abnj, %bb.iwc ], [ %i.abnj, %bb.iwg ] ; 2 uses
  %i.abnc = phi ptr [ %i.abnk, %bb.iwi ], [ %i.abml, %bb.ivw ], [ %i.abnk, %bb.iwn ], [ %i.abnk, %bb.iwc ], [ %i.abnk, %bb.iwg ] ; 2 uses
  %i.abnd = phi ptr [ %i.abnl, %bb.iwi ], [ %i.abmn, %bb.ivw ], [ %i.abnl, %bb.iwn ], [ %i.abnl, %bb.iwc ], [ %i.abnl, %bb.iwg ] ; 2 uses
  %i.abne = phi ptr [ %i.abnm, %bb.iwi ], [ %i.abmo, %bb.ivw ], [ %i.abnm, %bb.iwn ], [ %i.abnm, %bb.iwc ], [ %i.abnm, %bb.iwg ] ; 2 uses
  %.pn3.pn.pn.i.i5808 = phi { ptr, i32 } [ %i.abnr, %bb.iwi ], [ %i.abms, %bb.ivw ], [ %i.aboa, %bb.iwn ], [ %i.abni, %bb.iwc ], [ %i.abnq, %bb.iwg ] ; 2 uses
  %i.abnf = getelementptr inbounds nuw i8, ptr %1, i64 2281
  %i.abng = load i8, ptr %i.abnf, align 1, !range !777, !noalias !13800, !noundef !11
  %i.abnh = trunc nuw i8 %i.abng to i1
  br i1 %i.abnh, label %bb.iws, label %bb.iwq

bb.iwa:                                           ; preds = %bb.ivu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
          to label %.noexc68.i5849 unwind label %bb.ivt, !noalias !13799

.noexc68.i5849:                                   ; preds = %bb.iwa
  unreachable

bb.iwb:                                           ; preds = %bb.ivu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #29
          to label %.noexc69.i unwind label %bb.ivt, !noalias !13799

.noexc69.i:                                       ; preds = %bb.iwb
  unreachable

bb.iwc:                                           ; preds = %bb.iwd
  %i.abni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13800
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0EBL_(ptr noundef nonnull align 8 %i.abnn) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 unwind label %bb.iwo, !noalias !13805

bb.iwd:                                           ; preds = %bb.ivz, %bb.ivu
  %i.abnj = phi ptr [ %i.abkv, %bb.ivu ], [ %i.abmk, %bb.ivz ] ; 9 uses
  %i.abnk = phi ptr [ %i.abku, %bb.ivu ], [ %i.abml, %bb.ivz ] ; 8 uses
  %i.abnl = phi ptr [ %.phi.trans.insert.i5805, %bb.ivu ], [ %i.abmn, %bb.ivz ] ; 7 uses
  %i.abnm = phi ptr [ %i.abmj, %bb.ivu ], [ %i.abmo, %bb.ivz ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !13800
  %i.abnn = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 3 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi9read_body0B9_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.ar, ptr noundef nonnull align 8 %i.abnn, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.iwe unwind label %bb.iwc, !noalias !13805

bb.iwe:                                           ; preds = %bb.iwd
  %i.abno = load i32, ptr %i.ar, align 8, !range !6291, !noalias !13800, !noundef !11 ; 3 uses
  %i.abnp = icmp eq i32 %i.abno, -2
  br i1 %i.abnp, label %bb.iwt, label %bb.iwf

bb.iwf:                                           ; preds = %bb.iwe
  %.sroa.3.0..sroa_idx.i.i5812 = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.3.sroa.0.0.copyload.i.i5813 = load i32, ptr %.sroa.3.0..sroa_idx.i.i5812, align 4, !noalias !13800
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i5814 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3.sroa.2.0.copyload.i.i5815 = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i5814, align 8, !noalias !13800 ; 5 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i5816 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.3.sroa.4.0.copyload.i.i5817 = load ptr, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i5816, align 8, !noalias !13800 ; 4 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i5818 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3.sroa.6.0.copyload.i.i5819 = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i.i5818, align 8, !noalias !13800 ; 4 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i.i5820 = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.3.sroa.8.0.copyload.i.i5821 = load ptr, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i.i5820, align 8, !noalias !13800 ; 3 uses
  %.sroa.527.0..sroa_idx.i.i5822 = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i.i5705, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.0..sroa_idx.i.i5822, i64 56, i1 false), !noalias !13800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13800
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0EBL_(ptr noundef nonnull align 8 %i.abnn)
          to label %bb.iwh unwind label %bb.iwg, !noalias !13805

bb.iwg:                                           ; preds = %bb.iwf
  %i.abnq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807

bb.iwh:                                           ; preds = %bb.iwf
  %.not.i.i.i5823 = icmp eq i32 %i.abno, -1
  br i1 %.not.i.i.i5823, label %bb.iwj, label %bb.ivy

bb.iwi:                                           ; preds = %bb.iwj
  %i.abnr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i.i5815) ]
  %i.abns = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i.i5815, i64 32
  %i.abnt = load ptr, ptr %i.abns, align 8, !noalias !13806, !nonnull !11, !noundef !11
  invoke void %i.abnt(ptr noundef %.sroa.3.sroa.8.0.copyload.i.i5821, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i.i5817, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i5819)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 unwind label %bb.iwo, !noalias !13805, !inline_history !1035

bb.iwj:                                           ; preds = %bb.iwh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !13800
  invoke void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_sliceNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.sroa.4.0.copyload.i.i5817, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i5819)
          to label %bb.iwk unwind label %bb.iwi, !noalias !13805

bb.iwk:                                           ; preds = %bb.iwj
  call void @llvm.experimental.noalias.scope.decl(metadata !13811)
  %i.abnu = load i64, ptr %i.aq, align 8, !range !10, !alias.scope !13814, !noalias !13816, !noundef !11 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0B5_:bb.a

bb.iwm:                                           ; preds = %bb.iwk
  %i.abnx = inttoptr i64 %i.abnu to ptr
  %.sroa.943.8..sroa_idx.i.i5832 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.943.8.copyload.i.i5833 = load ptr, ptr %.sroa.943.8..sroa_idx.i.i5832, align 8, !alias.scope !13817, !noalias !13800
  %.sroa.10.8..sroa_idx.i.i5834 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.10.8.copyload.i.i5835 = load i64, ptr %.sroa.10.8..sroa_idx.i.i5834, align 8, !alias.scope !13817, !noalias !13800
  %.sroa.1144.8..sroa_idx.i.i5836 = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.1144.8.copyload.i.i5837 = load ptr, ptr %.sroa.1144.8..sroa_idx.i.i5836, align 8, !alias.scope !13817, !noalias !13800
  %.sroa.1245.8..sroa_idx.i.i5838 = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1245.i.i5704, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1245.8..sroa_idx.i.i5838, i64 16, i1 false), !alias.scope !13817, !noalias !13800
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoEB2K_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoEB2K_.exit.i.i: ; preds = %bb.iwm, %bb.iwl
  %.sroa.642.2.i.i5839 = phi ptr [ %i.abnw, %bb.iwl ], [ %i.abnx, %bb.iwm ] ; 2 uses
  %.sroa.943.2.i.i5840 = phi ptr [ undef, %bb.iwl ], [ %.sroa.943.8.copyload.i.i5833, %bb.iwm ] ; 2 uses
  %.sroa.10.2.i.i5841 = phi i64 [ undef, %bb.iwl ], [ %.sroa.10.8.copyload.i.i5835, %bb.iwm ] ; 2 uses
  %.sroa.1144.2.i.i5842 = phi ptr [ undef, %bb.iwl ], [ %.sroa.1144.8.copyload.i.i5837, %bb.iwm ] ; 3 uses
  %.sink.i.i.i5843 = phi i32 [ 38, %bb.iwl ], [ -1, %bb.iwm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !13800
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i.i5815) ]
  %i.abny = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i.i5815, i64 32
  %i.abnz = load ptr, ptr %i.abny, align 8, !noalias !13818, !nonnull !11, !noundef !11
  invoke void %i.abnz(ptr noundef %.sroa.3.sroa.8.0.copyload.i.i5821, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i.i5817, i64 noundef %.sroa.3.sroa.6.0.copyload.i.i5819)
          to label %bb.iwu unwind label %bb.iwn, !noalias !13805, !inline_history !1035

bb.iwn:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoEB2K_.exit.i.i
  %i.aboa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807

bb.iwo:                                           ; preds = %bb.iws, %bb.iwi, %bb.iwc
  %i.abob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13805
  unreachable

.thread321.i:                                     ; preds = %bb.iwp, %bb.ivy
  store i8 0, ptr %i.abmx, align 1, !noalias !13800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i5709, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i.i5704, i64 56, i1 false), !noalias !13823
  store i8 1, ptr %i.abmv, align 8, !noalias !13800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i.i5704)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i.i5705), !noalias !13795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10173.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i5709, i64 56, i1 false), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i5709)
  br label %bb.ixb

bb.iwp:                                           ; preds = %bb.ivy
  %i.aboc = getelementptr inbounds nuw i8, ptr %1, i64 1440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aboc)
          to label %.thread321.i unwind label %bb.iwr, !noalias !13805

bb.iwq:                                           ; preds = %bb.iws, %bb.iwr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807
  %i.abod = phi ptr [ %i.abmt, %bb.iwr ], [ %i.abnb, %bb.iws ], [ %i.abnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 ]
  %i.aboe = phi ptr [ %i.abmu, %bb.iwr ], [ %i.abnc, %bb.iws ], [ %i.abnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 ]
  %i.abof = phi ptr [ %i.abmv, %bb.iwr ], [ %i.abnd, %bb.iws ], [ %i.abnd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 ]
  %i.abog = phi ptr [ %i.abmw, %bb.iwr ], [ %i.abne, %bb.iws ], [ %i.abne, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 ]
  %.pn7.i.i5809 = phi { ptr, i32 } [ %i.aboi, %bb.iwr ], [ %.pn3.pn.pn.i.i5808, %bb.iws ], [ %.pn3.pn.pn.i.i5808, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807 ]
  %i.aboh = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.aboh, align 1, !noalias !13800
  store i8 2, ptr %i.abof, align 8, !noalias !13800
  br label %.body.i5810

bb.iwr:                                           ; preds = %bb.iwp
  %i.aboi = landingpad { ptr, i32 }
          cleanup
  br label %bb.iwq

bb.iws:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i5807
  %i.aboj = getelementptr inbounds nuw i8, ptr %1, i64 1440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aboj) #26
          to label %bb.iwq unwind label %bb.iwo, !noalias !13805

bb.iwt:                                           ; preds = %bb.iwe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !13800
  store i8 3, ptr %i.abnl, align 8, !noalias !13800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i.i5704)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i.i5705), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i5709)
  br label %bb.jlh

bb.iwu:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoEB2K_.exit.i.i
  %i.abok = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.abok, align 1, !noalias !13800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i5709, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i.i5704, i64 56, i1 false), !noalias !13823
  store i8 1, ptr %i.abnl, align 8, !noalias !13800
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i.i5704)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i.i5705), !noalias !13795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10173.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i5709, i64 56, i1 false), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i5709)
  br i1 %.not.i5831, label %bb.ixb, label %bb.iwv

bb.iwv:                                           ; preds = %bb.iwu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6185.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10173.i, i64 16, i1 false), !noalias !13795
  store ptr %.sroa.642.2.i.i5839, ptr %i.abnm, align 8, !noalias !13795
  %.sroa.2.0..sroa_idx.i5844 = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  store ptr %.sroa.943.2.i.i5840, ptr %.sroa.2.0..sroa_idx.i5844, align 16, !noalias !13795
  %.sroa.3183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 2 uses
  store i64 %.sroa.10.2.i.i5841, ptr %.sroa.3183.0..sroa_idx.i, align 8, !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13795
  %i.abol = getelementptr inbounds nuw i8, ptr %1, i64 1187
  store ptr %.sroa.1144.2.i.i5842, ptr %i.bh, align 8, !noalias !13795
  %.sroa.6185.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6185.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6185.i, i64 16, i1 false), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13795
  store i8 0, ptr %i.abol, align 1, !noalias !13795
  %i.abom = ptrtoint ptr %.sroa.1144.2.i.i5842 to i64
  %.sroa.5195.0.copyload.i = load ptr, ptr %.sroa.6185.24..sroa_idx.i, align 8, !noalias !13795, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.6196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.6196.0.copyload.i = load i64, ptr %.sroa.6196.0..sroa_idx.i, align 8, !noalias !13795 ; 2 uses
  %i.abon = icmp ult i64 %.sroa.6196.0.copyload.i, 192153584101141163
  call void @llvm.assume(i1 %i.abon)
  %i.aboo = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5195.0.copyload.i, i64 %.sroa.6196.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !13824
  store ptr %.sroa.5195.0.copyload.i, ptr %i.ap, align 8, !alias.scope !13831, !noalias !13835
  %.sroa.5191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.5195.0.copyload.i, ptr %.sroa.5191.0..sroa_idx.i, align 8, !alias.scope !13831, !noalias !13835
  %.sroa.6192.0..sroa_idx.i5845 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.abom, ptr %.sroa.6192.0..sroa_idx.i5845, align 8, !alias.scope !13831, !noalias !13835
  %.sroa.7193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aboo, ptr %.sroa.7193.0..sroa_idx.i, align 8, !alias.scope !13831, !noalias !13835
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTNtNtB8_6string6StringBY_EEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB4o_7HttpApi24replace_plugin_directory00EE9from_iterB4q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.iwx unwind label %bb.iww, !noalias !13799

bb.iww:                                           ; preds = %bb.iwv
  %i.abop = landingpad { ptr, i32 }
          cleanup
  br label %bb.ixa

bb.iwx:                                           ; preds = %bb.iwv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !13824
  %i.aboq = getelementptr inbounds nuw i8, ptr %1, i64 1186 ; 2 uses
  store i8 1, ptr %i.aboq, align 2, !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13795
  %i.abor = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.abos = load ptr, ptr %i.abor, align 16, !noalias !13795, !nonnull !11, !align !78, !noundef !11
  %i.abot = getelementptr inbounds nuw i8, ptr %i.abos, i64 104
  %.val66.i5846 = load ptr, ptr %i.abot, align 8, !noalias !13799, !nonnull !11, !noundef !11 ; 2 uses
  %i.abou = atomicrmw add ptr %.val66.i5846, i64 1 monotonic, align 8, !noalias !13799
  %i.abov = icmp slt i64 %i.abou, 0
  br i1 %i.abov, label %bb.iwy, label %.thread442.i

bb.iwy:                                           ; preds = %bb.iwx
  call void @llvm.trap()
  unreachable

.thread442.i:                                     ; preds = %bb.iwx
  %i.abow = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  store ptr %.val66.i5846, ptr %i.abow, align 16, !noalias !13795
  %.val64.i5847 = load ptr, ptr %.sroa.2.0..sroa_idx.i5844, align 16, !noalias !13795, !nonnull !11, !noundef !11 ; 2 uses
  %.val65.i5848 = load i64, ptr %.sroa.3183.0..sroa_idx.i, align 8, !noalias !13795, !noundef !11 ; 2 uses
  store i8 0, ptr %i.aboq, align 2, !noalias !13795
  %i.abox = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abox, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !13795
  %.sroa.9215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.abow, ptr %.sroa.9215.0..sroa_idx.i, align 16, !noalias !13795
  %.sroa.10216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store ptr %.val64.i5847, ptr %.sroa.10216.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.11217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i64 %.val65.i5848, ptr %.sroa.11217.0..sroa_idx.i, align 16, !noalias !13795
  %.sroa.13219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1624 ; 2 uses
  store i8 0, ptr %.sroa.13219.0..sroa_idx.i, align 8, !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i5708)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i.i)
  br label %bb.ixe

bb.iwz:                                           ; preds = %bb.jiz
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acub)
          to label %.body103.i5712 unwind label %bb.ivs, !noalias !13799

bb.ixa:                                           ; preds = %bb.jld, %.body103.i5712, %bb.iww
  %i.aboy = phi ptr [ %i.acwr, %bb.jld ], [ %i.acwr, %.body103.i5712 ], [ %i.abnj, %bb.iww ]
  %i.aboz = phi ptr [ %i.acws, %bb.jld ], [ %i.acws, %.body103.i5712 ], [ %i.abnk, %bb.iww ]
  %.pn44.pn.pn.i5714 = phi { ptr, i32 } [ %.pn44.pn.i5713, %bb.jld ], [ %.pn44.pn.i5713, %.body103.i5712 ], [ %i.abop, %bb.iww ]
  %i.abpa = getelementptr inbounds nuw i8, ptr %1, i64 1186
  store i8 0, ptr %i.abpa, align 2, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13795
  %i.abpb = getelementptr inbounds nuw i8, ptr %1, i64 1187 ; 2 uses
  %i.abpc = load i8, ptr %i.abpb, align 1, !range !777, !noalias !13795, !noundef !11
  %i.abpd = trunc nuw i8 %i.abpc to i1
  br i1 %i.abpd, label %bb.jlf, label %bb.jle

bb.ixb:                                           ; preds = %bb.iwu, %.thread321.i
  %i.abpe = phi ptr [ %i.abmt, %.thread321.i ], [ %i.abnj, %bb.iwu ]
  %i.abpf = phi ptr [ %i.abmu, %.thread321.i ], [ %i.abnk, %bb.iwu ]
  %.sroa.1144.1.i338.i = phi ptr [ %.sroa.1144.0.i.i5830, %.thread321.i ], [ %.sroa.1144.2.i.i5842, %bb.iwu ]
  %.sroa.10.1.i336.i = phi i64 [ %.sroa.10.0.i.i5829, %.thread321.i ], [ %.sroa.10.2.i.i5841, %bb.iwu ]
  %.sroa.943.1.i334.i = phi ptr [ %.sroa.943.0.i.i5828, %.thread321.i ], [ %.sroa.943.2.i.i5840, %bb.iwu ]
  %.sroa.642.1.i332.i = phi ptr [ %.sroa.642.0.i.i5827, %.thread321.i ], [ %.sroa.642.2.i.i5839, %bb.iwu ]
  %.sroa.441.1.i330.i = phi i32 [ %.sroa.441.0.i.i5826, %.thread321.i ], [ undef, %bb.iwu ] ; 3 uses
  %.sroa.040.1.i329.i = phi i32 [ %.sroa.040.0.i.i5825, %.thread321.i ], [ %.sink.i.i.i5843, %bb.iwu ]
  %.sroa.10173.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10173.i, i64 16
  %.sroa.28.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.28.i5706, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.28.64..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10173.56..sroa_idx.i, i64 40, i1 false), !noalias !13795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i5706, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10173.i, i64 16, i1 false), !noalias !13795
  %.sroa.6279.sroa.0.0.extract.trunc298.i = trunc nuw nsw i32 %.sroa.040.1.i329.i to i8
  %.sroa.13280.sroa.0.0.extract.trunc284.i = trunc i32 %.sroa.441.1.i330.i to i8
  %.sroa.13280.sroa.6.0.extract.shift288.i = lshr i32 %.sroa.441.1.i330.i, 8
  %.sroa.13280.sroa.6.0.extract.trunc289.i = trunc i32 %.sroa.13280.sroa.6.0.extract.shift288.i to i8
  %i.abpg = ptrtoint ptr %.sroa.642.1.i332.i to i64
  %i.abph = ptrtoint ptr %.sroa.1144.1.i338.i to i64
  %i.abpi = insertelement <2 x i64> poison, i64 %.sroa.10.1.i336.i, i64 0
  %i.abpj = insertelement <2 x i64> %i.abpi, i64 %i.abph, i64 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i

bb.ixc:                                           ; preds = %bb.izk, %bb.izj
  %i.abpk = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

.body80.i:                                        ; preds = %.body515.i.i, %bb.ixc
  %i.abpl = phi ptr [ %i.abkv, %bb.ixc ], [ %i.acti, %.body515.i.i ]
  %i.abpm = phi ptr [ %i.abku, %bb.ixc ], [ %i.actj, %.body515.i.i ]
  %i.abpn = phi ptr [ %i.abpo, %bb.ixc ], [ %i.actl, %.body515.i.i ]
  %eh.lpad-body81.i = phi { ptr, i32 } [ %i.abpk, %bb.ixc ], [ %.pn180.i.i, %.body515.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i5708)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl24replace_plugin_directory0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.abpn) #26
          to label %bb.jiz unwind label %bb.ivs, !noalias !13799

bb.ixd:                                           ; preds = %bb.ivg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13795
  %.phi.trans.insert409.i = getelementptr inbounds nuw i8, ptr %1, i64 1624 ; 18 uses
  %.pre410.i = load i8, ptr %.phi.trans.insert409.i, align 8, !range !2053, !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i5708)
  %i.abpo = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i.i)
  switch i8 %.pre410.i, label %default.unreachable8727 [
    i8 0, label %._crit_edge7982
    i8 1, label %bb.izj
    i8 2, label %bb.izk
    i8 3, label %bb.izm
    i8 4, label %bb.izz
    i8 5, label %bb.jdd
    i8 6, label %bb.jbg
    i8 7, label %bb.jeh
    i8 8, label %bb.jev
    i8 9, label %bb.jfm
    i8 10, label %bb.jgi
    i8 11, label %bb.jgq
    i8 12, label %bb.jhi
  ]

._crit_edge7982:                                  ; preds = %bb.ixd
  %.phi.trans.insert7983 = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %.pre7984 = load ptr, ptr %.phi.trans.insert7983, align 16, !noalias !13836
  %.phi.trans.insert7985 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %.pre7986 = load ptr, ptr %.phi.trans.insert7985, align 8, !noalias !13836
  %.phi.trans.insert7987 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %.pre7988 = load i64, ptr %.phi.trans.insert7987, align 16, !noalias !13836
  br label %bb.ixe

bb.ixe:                                           ; preds = %._crit_edge7982, %.thread442.i
  %i.abpp = phi ptr [ %i.abnj, %.thread442.i ], [ %i.abkv, %._crit_edge7982 ] ; 16 uses
  %i.abpq = phi ptr [ %i.abnk, %.thread442.i ], [ %i.abku, %._crit_edge7982 ] ; 16 uses
  %i.abpr = phi i64 [ %.val65.i5848, %.thread442.i ], [ %.pre7988, %._crit_edge7982 ]
  %i.abps = phi ptr [ %.val64.i5847, %.thread442.i ], [ %.pre7986, %._crit_edge7982 ]
  %i.abpt = phi ptr [ %i.abow, %.thread442.i ], [ %.pre7984, %._crit_edge7982 ] ; 3 uses
  %i.abpu = phi ptr [ %.sroa.13219.0..sroa_idx.i, %.thread442.i ], [ %.phi.trans.insert409.i, %._crit_edge7982 ] ; 16 uses
  %i.abpv = phi ptr [ %i.abox, %.thread442.i ], [ %i.abpo, %._crit_edge7982 ] ; 17 uses
  %i.abpw = getelementptr inbounds nuw i8, ptr %1, i64 1628
  %i.abpx = getelementptr inbounds nuw i8, ptr %1, i64 1625
  store i32 256, ptr %i.abpx, align 1, !noalias !13836
  %i.abpy = getelementptr inbounds nuw i8, ptr %1, i64 1272 ; 3 uses
  store ptr %i.abps, ptr %i.abpy, align 8, !noalias !13836
  %i.abpz = getelementptr i8, ptr %1, i64 1280    ; 2 uses
  store i64 %i.abpr, ptr %i.abpz, align 16, !noalias !13836
  %i.abqa = getelementptr inbounds nuw i8, ptr %1, i64 1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abqa, ptr noundef nonnull align 8 dereferenceable(24) %i.abpv, i64 24, i1 false), !noalias !13836
  %.val194.i.i = load ptr, ptr %i.abpt, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %i.abqb = getelementptr inbounds nuw i8, ptr %.val194.i.i, i64 104
  %i.abqc = load i8, ptr %i.abqb, align 8, !range !777, !noalias !13840, !noundef !11
  %i.abqd = trunc nuw i8 %i.abqc to i1
  br i1 %i.abqd, label %bb.izc, label %bb.ixf

bb.ixf:                                           ; preds = %bb.ixe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !13836
  store i64 -1, ptr %i.ao, align 8, !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !13836
  %.val193.i.i = load ptr, ptr %i.abpt, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %i.abqe = getelementptr inbounds nuw i8, ptr %.val193.i.i, i64 112
  %.val183.i.i = load ptr, ptr %i.abqe, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %i.abqf = getelementptr inbounds nuw i8, ptr %.val183.i.i, i64 16
  invoke void @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog14list_db_schema(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noundef nonnull align 8 %i.abqf)
          to label %bb.ixh unwind label %bb.ixg, !noalias !13840

bb.ixg:                                           ; preds = %bb.ixf
  %i.abqg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13836
  br label %.thread1035.i.i

bb.ixh:                                           ; preds = %bb.ixf
  %.sroa.03.0.copyload.i.i.i5768 = load i64, ptr %i.an, align 8, !alias.scope !13841, !noalias !13844
  %.sroa.44.0..sroa_idx.i.i.i5769 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.44.0.copyload.i.i.i5770 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i5769, align 8, !alias.scope !13841, !noalias !13844, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i.i5771 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.55.0.copyload.i.i.i5772 = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i5771, align 8, !alias.scope !13841, !noalias !13844 ; 3 uses
  %i.abqh = icmp ult i64 %.sroa.55.0.copyload.i.i.i5772, 1152921504606846976
  call void @llvm.assume(i1 %i.abqh)
  %.idx1099.i.i = shl nuw nsw i64 %.sroa.55.0.copyload.i.i.i5772, 3
  %i.abqi = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i.i5770, i64 %.idx1099.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13836
  store ptr %.sroa.44.0.copyload.i.i.i5770, ptr %i.am, align 8, !noalias !13836
  %.sroa.5.0..sroa_idx.i.i5773 = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  store ptr %.sroa.44.0.copyload.i.i.i5770, ptr %.sroa.5.0..sroa_idx.i.i5773, align 8, !noalias !13836
  %.sroa.6.0..sroa_idx.i.i5774 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.03.0.copyload.i.i.i5768, ptr %.sroa.6.0..sroa_idx.i.i5774, align 8, !noalias !13836
  %.sroa.7.0..sroa_idx.i.i5775 = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  store ptr %i.abqi, ptr %.sroa.7.0..sroa_idx.i.i5775, align 8, !noalias !13836
  %i.abqj = icmp eq i64 %.sroa.55.0.copyload.i.i.i5772, 0
  br i1 %i.abqj, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %.lr.ph.i.i5776

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit232.i.i, %bb.ixh
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit226.i.i unwind label %bb.ixv, !noalias !13840

.lr.ph.i.i5776:                                   ; preds = %bb.ixh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780
  %i.abqk = phi ptr [ %i.abwd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780 ], [ %.sroa.44.0.copyload.i.i.i5770, %bb.ixh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13846)
  %i.abql = getelementptr inbounds nuw i8, ptr %i.abqk, i64 8
  store ptr %i.abql, ptr %.sroa.5.0..sroa_idx.i.i5773, align 8, !alias.scope !13846, !noalias !13836
  %i.abqm = load ptr, ptr %i.abqk, align 8, !noalias !13849, !nonnull !11, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13836
  store ptr %i.abqm, ptr %i.al, align 8, !noalias !13836
  %i.abqn = getelementptr i8, ptr %i.abqm, i64 216
  %.val219.i.i = load ptr, ptr %i.abqn, align 8, !noalias !13840, !nonnull !11, !noundef !11 ; 2 uses
  %i.abqo = getelementptr i8, ptr %i.abqm, i64 224
  %.val220.i.i = load i64, ptr %i.abqo, align 8, !noalias !13840, !noundef !11 ; 2 uses
  %.idx.i.i5777 = mul nuw nsw i64 %.val220.i.i, 24
  %i.abqp = getelementptr inbounds nuw i8, ptr %.val219.i.i, i64 %.idx.i.i5777
  %.val222.i.i = load ptr, ptr %i.abpy, align 8, !noalias !13836
  %.val223.i.i = load i64, ptr %i.abpz, align 16, !noalias !13836 ; 2 uses
  %i.abqq = icmp eq i64 %.val220.i.i, 0
  br i1 %i.abqq, label %.loopexit.i.i5779, label %.lr.ph.i.i.i.i5778

.lr.ph.i.i.i.i5778:                               ; preds = %.lr.ph.i.i5776, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.abqr = phi ptr [ %i.abqs, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i ], [ %.val219.i.i, %.lr.ph.i.i5776 ] ; 3 uses
  %i.abqs = getelementptr inbounds nuw i8, ptr %i.abqr, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13850)
  %i.abqt = load ptr, ptr %i.abqr, align 8, !alias.scope !13850, !noalias !13853, !nonnull !11, !noundef !11 ; 2 uses
  %i.abqu = getelementptr inbounds nuw i8, ptr %i.abqt, i64 104
  %i.abqv = load i64, ptr %i.abqu, align 8, !noalias !13859, !noundef !11
  %i.abqw = icmp eq i64 %i.abqv, %.val223.i.i
  br i1 %i.abqw, label %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i

_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i5778
  %i.abqx = getelementptr inbounds nuw i8, ptr %i.abqt, i64 96
  %i.abqy = load ptr, ptr %i.abqx, align 8, !noalias !13859, !nonnull !11, !noundef !11
  %i.abqz = getelementptr inbounds nuw i8, ptr %i.abqy, i64 16
  %bcmp.i.i.i.i.i.i5792 = call i32 @bcmp(ptr nonnull %i.abqz, ptr nonnull readonly %.val222.i.i, i64 %.val223.i.i), !noalias !13859
  %bcmp.i.fr.i.i.i.i.i5793 = freeze i32 %bcmp.i.i.i.i.i.i5792
  %i.abra = icmp eq i32 %bcmp.i.fr.i.i.i.i.i5793, 0
  br i1 %i.abra, label %bb.ixj, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i, %.lr.ph.i.i.i.i5778
  %i.abrb = icmp eq ptr %i.abqs, %i.abqp
  br i1 %i.abrb, label %.loopexit.i.i5779, label %.lr.ph.i.i.i.i5778

.loopexit.i.i5779:                                ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %.lr.ph.i.i5776
  %i.abrc = atomicrmw sub ptr %i.abqm, i64 1 release, align 8, !noalias !13860
  %i.abrd = icmp eq i64 %i.abrc, 1
  br i1 %i.abrd, label %bb.ixi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780

bb.ixi:                                           ; preds = %.loopexit.i.i5779
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780 unwind label %.loopexit1095.i.i, !noalias !13840

bb.ixj:                                           ; preds = %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0525.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !13836
  %i.abre = getelementptr inbounds nuw i8, ptr %i.abqm, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13865
  store i64 0, ptr %i.aa, align 8, !noalias !13865
  %.sroa.42.0..sroa_idx.i.i.i.i5794 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i5794, align 8, !noalias !13865
  %.sroa.53.0..sroa_idx.i.i.i.i5795 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i5795, align 8, !noalias !13865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13865
  %i.abrf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 1610612768, ptr %i.abrf, align 8, !noalias !13865
  %.sroa.4.0..sroa_idx.i.i.i.i5796 = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i5796, align 4, !noalias !13865
  %.sroa.5.0..sroa_idx.i.i.i.i5797 = getelementptr inbounds nuw i8, ptr %i.z, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i5797, align 2, !noalias !13865
  store ptr %i.aa, ptr %i.z, align 8, !noalias !13865
  %i.abrg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @385, ptr %i.abrg, align 8, !noalias !13865
  %i.abrh = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abre, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.ixl unwind label %bb.ixk, !noalias !13872

bb.ixk:                                           ; preds = %bb.ixm, %bb.ixj
  %i.abri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #26
          to label %.body.i.i5798 unwind label %bb.ixn, !noalias !13872

bb.ixl:                                           ; preds = %bb.ixj
  br i1 %i.abrh, label %bb.ixm, label %bb.ixp, !prof !6181

bb.ixm:                                           ; preds = %bb.ixl
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @386, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @353, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @388) #29
          to label %.noexc.i.i.i.i5804 unwind label %bb.ixk, !noalias !13872

.noexc.i.i.i.i5804:                               ; preds = %bb.ixm
  unreachable

bb.ixn:                                           ; preds = %bb.ixk
  %i.abrj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13872
  unreachable

.body.i.i5798:                                    ; preds = %bb.ixk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13836
  br label %bb.izf

bb.ixo:                                           ; preds = %bb.ixq, %bb.ixp
  %i.abrk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #26
          to label %bb.ize unwind label %bb.izd, !noalias !13840

bb.ixp:                                           ; preds = %bb.ixl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !13873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13865
  %.val221.i.i = load ptr, ptr %i.abqr, align 8, !noalias !13840, !nonnull !11, !noundef !11 ; 2 uses
  %i.abrl = getelementptr i8, ptr %.val221.i.i, i64 56
  %.val224.i.i = load ptr, ptr %i.abrl, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %i.abrm = getelementptr i8, ptr %.val221.i.i, i64 64
  %.val225.i.i = load i64, ptr %i.abrm, align 8, !noalias !13840, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13874
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef range(i64 0, -9223372036854775808) %.val225.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc229.i.i unwind label %bb.ixo, !noalias !13840

.noexc229.i.i:                                    ; preds = %bb.ixp
  %i.abrn = load i64, ptr %i.y, align 8, !range !24, !noalias !13874, !noundef !11
  %i.abro = trunc nuw i64 %i.abrn to i1
  %i.abrp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.abrq = load i64, ptr %i.abrp, align 8, !range !6180, !noalias !13874, !noundef !11 ; 4 uses
  %i.abrr = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.abro, label %bb.ixq, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i5799, !prof !6181

bb.ixq:                                           ; preds = %.noexc229.i.i
  %i.abrs = load i64, ptr %i.abrr, align 8, !noalias !13874
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.abrq, i64 %i.abrs) #29
          to label %.noexc230.i.i unwind label %bb.ixo, !noalias !13840

.noexc230.i.i:                                    ; preds = %bb.ixq
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i5799: ; preds = %.noexc229.i.i
  %i.abrt = load ptr, ptr %i.abrr, align 8, !noalias !13874, !nonnull !11, !noundef !11 ; 3 uses
  %i.abru = icmp ule i64 %.val225.i.i, %i.abrq
  call void @llvm.assume(i1 %i.abru)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !13874
  %.not.i.i.i.i.i5800 = icmp eq i64 %.val225.i.i, 0
  br i1 %.not.i.i.i.i.i5800, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.ixr

bb.ixr:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i5799
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abrt, ptr nonnull readonly align 1 %.val224.i.i, i64 range(i64 0, -9223372036854775808) %.val225.i.i, i1 false), !noalias !13882
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.ixr, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i5799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0525.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13836
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.ao)
          to label %bb.ixt unwind label %bb.ixs, !noalias !13840

bb.ixs:                                           ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.abrv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0525.i.i, i64 24, i1 false), !noalias !13836
  %.sroa.7526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.abrq, ptr %.sroa.7526.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.8529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.abrt, ptr %.sroa.8529.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.9.0..sroa_idx.i.i5801 = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 %.val225.i.i, ptr %.sroa.9.0..sroa_idx.i.i5801, align 8, !noalias !13836
  br label %bb.izf

bb.ixt:                                           ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0525.i.i, i64 24, i1 false), !noalias !13836
  %.sroa.7526.0..sroa_idx527.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.abrq, ptr %.sroa.7526.0..sroa_idx527.i.i, align 8, !noalias !13836
  %.sroa.8529.0..sroa_idx530.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.abrt, ptr %.sroa.8529.0..sroa_idx530.i.i, align 8, !noalias !13836
  %.sroa.9.0..sroa_idx532.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i64 %.val225.i.i, ptr %.sroa.9.0..sroa_idx532.i.i, align 8, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0525.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13883)
  call void @llvm.experimental.noalias.scope.decl(metadata !13886)
  %i.abrw = load ptr, ptr %i.al, align 8, !alias.scope !13889, !noalias !13836, !nonnull !11, !noundef !11
  %i.abrx = atomicrmw sub ptr %i.abrw, i64 1 release, align 8, !noalias !13890
  %i.abry = icmp eq i64 %i.abrx, 1
  br i1 %i.abry, label %bb.ixu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit232.i.i

bb.ixu:                                           ; preds = %bb.ixt
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit232.i.i unwind label %.loopexit.split-lp.i.i5802, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i: ; preds = %bb.izg, %bb.izf, %.loopexit.split-lp.i.i5802, %.loopexit1095.i.i
  %.pn54.i.i = phi { ptr, i32 } [ %.pn51.pn.i.i, %bb.izf ], [ %.pn51.pn.i.i, %bb.izg ], [ %lpad.loopexit.i.i5791, %.loopexit1095.i.i ], [ %lpad.loopexit.split-lp.i.i5803, %.loopexit.split-lp.i.i5802 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13836
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5781 unwind label %bb.izd, !noalias !13840

.loopexit1095.i.i:                                ; preds = %bb.ixi
  %lpad.loopexit.i.i5791 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i

.loopexit.split-lp.i.i5802:                       ; preds = %bb.ixu
  %lpad.loopexit.split-lp.i.i5803 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit232.i.i: ; preds = %bb.ixu, %bb.ixt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13836
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5781: ; preds = %bb.ixv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i
  %.pn57.i.i5782 = phi { ptr, i32 } [ %i.abrz, %bb.ixv ], [ %.pn54.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13836
  br label %.thread1035.i.i

bb.ixv:                                           ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  %i.abrz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5781

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit226.i.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8536.sroa.11.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13836
  %.sroa.0540.0.copyload.i.i = load i64, ptr %i.ao, align 8, !noalias !13836 ; 3 uses
  %.not.i.i76.i = icmp eq i64 %.sroa.0540.0.copyload.i.i, -1
  br i1 %.not.i.i76.i, label %bb.ixw, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit226.i.i
  %.sroa.6542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.absa = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.0540.0.copyload.i.i, ptr %i.absa, align 8, !alias.scope !13891, !noalias !13895
  %.sroa.6542.0..sroa_idx543.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6542.0..sroa_idx543.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6542.0..sroa_idx.i.i, i64 40, i1 false), !noalias !13836
  %i.absb = inttoptr i64 %.sroa.0540.0.copyload.i.i to ptr
  br label %bb.ixy

bb.ixw:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit226.i.i
  invoke fastcc void @_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.abpy)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.ixx, !noalias !13840

bb.ixx:                                           ; preds = %bb.ixw
  %i.absc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8536.sroa.11.sroa.8.i.i)
  br label %bb.izh

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.ixw
  %.pr.i.i5789 = load i32, ptr %i.aj, align 8, !alias.scope !13897, !noalias !13900 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13902)
  %.not.i234.i.i = icmp eq i32 %.pr.i.i5789, -1
  br i1 %.not.i234.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i.i, label %bb.izb

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.phi.trans.insert.i.i5790 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.8536.sroa.6.4.copyload929.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i5790, align 8, !alias.scope !13903, !noalias !13836
  br label %bb.ixy

bb.ixy:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  %.sroa.8536.sroa.6.4.copyload929.i.i = phi ptr [ %.sroa.8536.sroa.6.4.copyload929.pre.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i.i ], [ %i.absb, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i ]
  %.sroa.8536.sroa.9.4..sroa_idx930.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.8536.sroa.9.4.copyload931.i.i = load ptr, ptr %.sroa.8536.sroa.9.4..sroa_idx930.i.i, align 8, !alias.scope !13903, !noalias !13836
  %.sroa.8536.sroa.10.4..sroa_idx932.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.8536.sroa.11.sroa.8.0..sroa.8536.sroa.11.4..sroa_idx934.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.0..sroa.8536.sroa.11.4..sroa_idx934.sroa_idx.i.i, i64 16, i1 false), !alias.scope !13903, !noalias !13836
  %.sroa.4936.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %1, i64 1344 ; 2 uses
  %i.absd = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %.sroa.2.0..sroa_idx.i.i5783 = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %.sroa.3.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 2 uses
  %i.abse = load <2 x i64>, ptr %.sroa.8536.sroa.10.4..sroa_idx932.i.i, align 8, !alias.scope !13903, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4936.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.i.i, i64 16, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8536.sroa.11.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13836
  store i8 1, ptr %i.abpw, align 4, !noalias !13836
  store ptr %.sroa.8536.sroa.6.4.copyload929.i.i, ptr %i.absd, align 16, !noalias !13836
  store ptr %.sroa.8536.sroa.9.4.copyload931.i.i, ptr %.sroa.2.0..sroa_idx.i.i5783, align 8, !noalias !13836
  store <2 x i64> %i.abse, ptr %.sroa.3.0..sroa_idx.i77.i, align 16, !noalias !13836
  %.val192.i.i = load ptr, ptr %i.abpt, align 8, !noalias !13840, !nonnull !11, !noundef !11 ; 3 uses
  %i.absf = getelementptr inbounds nuw i8, ptr %.val192.i.i, i64 16
  %i.absg = load i64, ptr %i.absf, align 8, !range !10, !alias.scope !13904, !noalias !13840, !noundef !11
  %.not.i235.i.i = icmp eq i64 %i.absg, -1
  br i1 %.not.i235.i.i, label %bb.ixz, label %bb.iyc

bb.ixz:                                           ; preds = %bb.ixy
  %i.absh = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 30)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i unwind label %bb.iya, !noalias !13840

bb.iya:                                           ; preds = %bb.ixz
  %i.absi = landingpad { ptr, i32 }
          cleanup
  br label %.body486.i.i

bb.iyb:                                           ; preds = %bb.iyc
  %i.absj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !13836
  br label %.body486.i.i

bb.iyc:                                           ; preds = %bb.ixy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !13836
  %i.absk = getelementptr i8, ptr %.val192.i.i, i64 24 ; 3 uses
  %.val213.i.i = load ptr, ptr %i.absk, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %i.absl = getelementptr i8, ptr %.val192.i.i, i64 32 ; 3 uses
  %.val214.i.i = load i64, ptr %i.absl, align 8, !noalias !13840, !noundef !11
  %.val190.i.i = load ptr, ptr %.sroa.4936.sroa.2.0..sroa_idx.i.i, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %i.absm = getelementptr i8, ptr %1, i64 1352
  %.val191.i.i = load i64, ptr %i.absm, align 8, !noalias !13836, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val213.i.i, i64 noundef %.val214.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val190.i.i, i64 noundef %.val191.i.i)
          to label %bb.iyd unwind label %bb.iyb, !noalias !13840

bb.iyd:                                           ; preds = %bb.iyc
  call void @llvm.experimental.noalias.scope.decl(metadata !13907)
  %i.absn = load i8, ptr %i.ai, align 8, !range !7294, !alias.scope !13910, !noalias !13912, !noundef !11 ; 2 uses
  %.not.i239.i.i = icmp eq i8 %i.absn, -1
  br i1 %.not.i239.i.i, label %bb.iye, label %bb.iyy

bb.iye:                                           ; preds = %bb.iyd
  %i.abso = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8569.sroa.6.7.copyload951.i.i = load ptr, ptr %i.abso, align 8, !alias.scope !13913, !noalias !13836
  %.sroa.8569.sroa.10.7..sroa_idx954.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.absp = getelementptr inbounds nuw i8, ptr %1, i64 1368
  %i.absq = load <2 x i64>, ptr %.sroa.8569.sroa.10.7..sroa_idx954.i.i, align 8, !alias.scope !13913, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !13836
  store ptr %.sroa.8569.sroa.6.7.copyload951.i.i, ptr %5, align 16, !noalias !13836
  store <2 x i64> %i.absq, ptr %i.absp, align 8, !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13836
  store ptr %4, ptr %i.ag, align 8, !noalias !13836
  %.sroa.5578.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5578.0..sroa_idx.i.i, align 8, !noalias !13836
  invoke fastcc void @_RNvNtCscdodAO9FK5_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ah, ptr noundef nonnull @162, ptr noundef nonnull %i.ag)
          to label %bb.iyg unwind label %bb.iyf, !noalias !13840

bb.iyf:                                           ; preds = %bb.iye
  %i.absr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13836
  br label %.body480.i.i

bb.iyg:                                           ; preds = %bb.iye
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !13836
  %i.abss = getelementptr inbounds nuw i8, ptr %1, i64 1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abss, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !alias.scope !13914, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13836
  store ptr %4, ptr %i.ae, align 8, !noalias !13836
  %.sroa.5580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5580.0..sroa_idx.i.i, align 8, !noalias !13836
  invoke fastcc void @_RNvNtCscdodAO9FK5_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull @163, ptr noundef nonnull %i.ae)
          to label %bb.iyj unwind label %bb.iyh, !noalias !13840

bb.iyh:                                           ; preds = %bb.iyg
  %i.abst = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13836
  br label %.body255.i.i

bb.iyi:                                           ; preds = %bb.iyj
  %i.absu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13836
  br label %.body252.i.i

bb.iyj:                                           ; preds = %bb.iyg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13836
  %i.absv = getelementptr inbounds nuw i8, ptr %1, i64 1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.absv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !alias.scope !13918, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13836
  %.val211.i.i = load ptr, ptr %i.absk, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %.val212.i.i = load i64, ptr %i.absl, align 8, !noalias !13840, !noundef !11
  %i.absw = getelementptr i8, ptr %1, i64 1392
  %.val188.i.i = load ptr, ptr %i.absw, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %i.absx = getelementptr i8, ptr %1, i64 1400
  %.val189.i.i = load i64, ptr %i.absx, align 8, !noalias !13836, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val211.i.i, i64 noundef %.val212.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val188.i.i, i64 noundef %.val189.i.i)
          to label %bb.iyk unwind label %bb.iyi, !noalias !13840

bb.iyk:                                           ; preds = %bb.iyj
  call void @llvm.experimental.noalias.scope.decl(metadata !13922)
  %i.absy = load i8, ptr %i.ad, align 8, !range !7294, !alias.scope !13925, !noalias !13927, !noundef !11 ; 2 uses
  %.not.i242.i.i = icmp eq i8 %i.absy, -1
  br i1 %.not.i242.i.i, label %bb.iym, label %bb.iyv

bb.iyl:                                           ; preds = %bb.iym
  %i.absz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13836
  br label %.body277.i.i

bb.iym:                                           ; preds = %bb.iyk
  %i.abta = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8583.sroa.6.7.copyload959.i.i = load ptr, ptr %i.abta, align 8, !alias.scope !13928, !noalias !13836
  %.sroa.8583.sroa.9.7..sroa_idx960.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.abtb = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 2 uses
  %.sroa.4965.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1440 ; 2 uses
  %.sroa.5966.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.abtc = load <2 x i64>, ptr %.sroa.8583.sroa.9.7..sroa_idx960.i.i, align 8, !alias.scope !13928, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13836
  store ptr %.sroa.8583.sroa.6.7.copyload959.i.i, ptr %i.abtb, align 8, !noalias !13836
  store <2 x i64> %i.abtc, ptr %.sroa.4965.0..sroa_idx.i.i, align 16, !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13836
  %.val209.i.i = load ptr, ptr %i.absk, align 8, !noalias !13840, !nonnull !11, !noundef !11
  %.val210.i.i = load i64, ptr %i.absl, align 8, !noalias !13840, !noundef !11
  %i.abtd = getelementptr i8, ptr %1, i64 1416
  %.val186.i.i = load ptr, ptr %i.abtd, align 8, !noalias !13836, !nonnull !11, !noundef !11
  %i.abte = getelementptr i8, ptr %1, i64 1424
  %.val187.i.i = load i64, ptr %i.abte, align 16, !noalias !13836, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val209.i.i, i64 noundef %.val210.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val186.i.i, i64 noundef %.val187.i.i)
          to label %bb.iyn unwind label %bb.iyl, !noalias !13840

bb.iyn:                                           ; preds = %bb.iym
  call void @llvm.experimental.noalias.scope.decl(metadata !13929)
  %i.abtf = load i8, ptr %i.ac, align 8, !range !7294, !alias.scope !13932, !noalias !13934, !noundef !11 ; 2 uses
  %.not.i247.i.i = icmp eq i8 %i.abtf, -1
  br i1 %.not.i247.i.i, label %bb.iyo, label %bb.iys

bb.iyo:                                           ; preds = %bb.iyn
  %i.abtg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8593.sroa.6.7.copyload967.i.i = load ptr, ptr %i.abtg, align 8, !alias.scope !13935, !noalias !13836
  %.sroa.8593.sroa.10.7..sroa_idx970.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.abth = getelementptr inbounds nuw i8, ptr %1, i64 1464
  %i.abti = load <2 x i64>, ptr %.sroa.8593.sroa.10.7..sroa_idx970.i.i, align 8, !alias.scope !13935, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13836
  store ptr %.sroa.8593.sroa.6.7.copyload967.i.i, ptr %6, align 16, !noalias !13836
  store <2 x i64> %i.abti, ptr %i.abth, align 8, !noalias !13836
  %.val207.i.i = load ptr, ptr %.sroa.4965.0..sroa_idx.i.i, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %.val208.i.i = load i64, ptr %.sroa.5966.0..sroa_idx.i.i, align 8, !noalias !13836, !noundef !11
  %i.abtj = invoke fastcc noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6exists(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val207.i.i, i64 noundef %.val208.i.i)
          to label %bb.iyq unwind label %bb.iyp, !noalias !13840

bb.iyp:                                           ; preds = %bb.iyo
  %i.abtk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.iyq:                                           ; preds = %bb.iyo
  br i1 %i.abtj, label %bb.iyr, label %.thread.i.i5766

bb.iyr:                                           ; preds = %bb.iyq
  %i.abtl = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.abtb, ptr %i.abtl, align 16, !noalias !13836
  %.sroa.9617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store i8 0, ptr %.sroa.9617.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.izm

bb.iys:                                           ; preds = %bb.iyn
  %.sroa.8593.0..sroa_idx594.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.sroa.8593.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.8593.0..sroa_idx594.i.i, align 1, !alias.scope !13935, !noalias !13836
  %.sroa.8593.sroa.6.0..sroa.8593.0..sroa_idx594.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8593.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.8593.sroa.6.0..sroa.8593.0..sroa_idx594.sroa_idx.i.i, align 8, !alias.scope !13935, !noalias !13836
  %.sroa.8593.sroa.9.0..sroa.8593.0..sroa_idx594.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.abtm = load <2 x i64>, ptr %.sroa.8593.sroa.9.0..sroa.8593.0..sroa_idx594.sroa_idx.i.i, align 8, !alias.scope !13935, !noalias !13836
  %.sroa.10596.0..sroa_idx597.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10596.0..sroa_idx597.i.i, i64 56, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13836
  %.sroa.4.i249.sroa.3.0.insert.ext.i.i = zext nneg i8 %i.abtf to i64
  %.sroa.4.i249.sroa.3.1.insert.ext.i.i = zext i56 %.sroa.8593.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i249.sroa.3.1.insert.shift.i.i = shl nuw i64 %.sroa.4.i249.sroa.3.1.insert.ext.i.i, 8
  %.sroa.4.i249.sroa.3.1.insert.insert.i.i = or disjoint i64 %.sroa.4.i249.sroa.3.1.insert.shift.i.i, %.sroa.4.i249.sroa.3.0.insert.ext.i.i
  %i.abtn = inttoptr i64 %.sroa.4.i249.sroa.3.1.insert.insert.i.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit280.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit280.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i, %bb.iys
  %i.abto = phi ptr [ %i.abpp, %bb.iys ], [ %i.abxm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ] ; 3 uses
  %i.abtp = phi ptr [ %i.abpq, %bb.iys ], [ %i.abxn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ] ; 3 uses
  %i.abtq = phi ptr [ %i.abpu, %bb.iys ], [ %i.abxo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ] ; 3 uses
  %i.abtr = phi ptr [ %i.abpv, %bb.iys ], [ %i.abxp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ] ; 3 uses
  %.sroa.30.0.i.i = phi ptr [ %i.abtn, %bb.iys ], [ %.sroa.30.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %.sroa.48.0.i.i = phi ptr [ %.sroa.8593.sroa.6.0.copyload.i.i, %bb.iys ], [ %.sroa.48.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.abts = phi <2 x i64> [ %i.abtm, %bb.iys ], [ %i.abxq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.abtt = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abtt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 unwind label %bb.iyt, !noalias !13840

bb.iyt:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit280.i.i
  %i.abtu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abtt)
          to label %.body252.i.i unwind label %bb.iyu, !noalias !13840

bb.iyu:                                           ; preds = %bb.iyt
  %i.abtv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit280.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abtt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit.i.i5716 unwind label %bb.jhv, !noalias !13840

.body277.i.i:                                     ; preds = %bb.jhs, %bb.jgc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.izw, %bb.iyl
  %i.abtw = phi ptr [ %i.abpp, %bb.iyl ], [ %i.abxu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abxm, %bb.izw ], [ %i.acqn, %bb.jhs ], [ %i.acmz, %bb.jgc ]
  %i.abtx = phi ptr [ %i.abpq, %bb.iyl ], [ %i.abxv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abxn, %bb.izw ], [ %i.acqo, %bb.jhs ], [ %i.acna, %bb.jgc ]
  %i.abty = phi ptr [ %i.abpu, %bb.iyl ], [ %i.abxw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abxo, %bb.izw ], [ %i.acqp, %bb.jhs ], [ %i.acnb, %bb.jgc ]
  %i.abtz = phi ptr [ %i.abpv, %bb.iyl ], [ %i.abxx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abxp, %bb.izw ], [ %i.acqq, %bb.jhs ], [ %i.acnc, %bb.jgc ]
  %.pn157.pn.i.i = phi { ptr, i32 } [ %i.absz, %bb.iyl ], [ %.pn154.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abxs, %bb.izw ], [ %i.acqr, %bb.jhs ], [ %i.acng, %bb.jgc ]
  %i.abua = getelementptr inbounds nuw i8, ptr %1, i64 1432
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.abua) #26
          to label %.body252.i.i unwind label %bb.izd, !noalias !13840

bb.iyv:                                           ; preds = %bb.iyk
  %.sroa.8583.0..sroa_idx584.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.8583.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.8583.0..sroa_idx584.i.i, align 1, !alias.scope !13928, !noalias !13836
  %.sroa.8583.sroa.6.0..sroa.8583.0..sroa_idx584.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8583.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.8583.sroa.6.0..sroa.8583.0..sroa_idx584.sroa_idx.i.i, align 8, !alias.scope !13928, !noalias !13836
  %.sroa.8583.sroa.9.0..sroa.8583.0..sroa_idx584.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.abub = load <2 x i64>, ptr %.sroa.8583.sroa.9.0..sroa.8583.0..sroa_idx584.sroa_idx.i.i, align 8, !alias.scope !13928, !noalias !13836
  %.sroa.10586.0..sroa_idx587.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10586.0..sroa_idx587.i.i, i64 56, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13836
  %.sroa.4.i244.sroa.3.0.insert.ext.i.i = zext nneg i8 %i.absy to i64
  %.sroa.4.i244.sroa.3.1.insert.ext.i.i = zext i56 %.sroa.8583.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i244.sroa.3.1.insert.shift.i.i = shl nuw i64 %.sroa.4.i244.sroa.3.1.insert.ext.i.i, 8
  %.sroa.4.i244.sroa.3.1.insert.insert.i.i = or disjoint i64 %.sroa.4.i244.sroa.3.1.insert.shift.i.i, %.sroa.4.i244.sroa.3.0.insert.ext.i.i
  %i.abuc = inttoptr i64 %.sroa.4.i244.sroa.3.1.insert.insert.i.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit.i.i5716

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit.i.i5716: ; preds = %bb.iyv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715
  %i.abud = phi ptr [ %i.abpp, %bb.iyv ], [ %i.abto, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ] ; 7 uses
  %i.abue = phi ptr [ %i.abpq, %bb.iyv ], [ %i.abtp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ] ; 7 uses
  %i.abuf = phi ptr [ %i.abpu, %bb.iyv ], [ %i.abtq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ] ; 7 uses
  %i.abug = phi ptr [ %i.abpv, %bb.iyv ], [ %i.abtr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ] ; 7 uses
  %.sroa.30.1.i.i = phi ptr [ %i.abuc, %bb.iyv ], [ %.sroa.30.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %.sroa.48.1.i.i = phi ptr [ %.sroa.8583.sroa.6.0.copyload.i.i, %bb.iyv ], [ %.sroa.48.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.abuh = phi <2 x i64> [ %i.abub, %bb.iyv ], [ %i.abts, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.abui = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abui)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717 unwind label %bb.iyw, !noalias !13840

bb.iyw:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit.i.i5716
  %i.abuj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abui)
          to label %.body255.i.i unwind label %bb.iyx, !noalias !13840

bb.iyx:                                           ; preds = %bb.iyw
  %i.abuk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit.i.i5716
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abui)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i5718 unwind label %bb.jhy, !noalias !13840

.body252.i.i:                                     ; preds = %bb.jhv, %bb.jht, %.body277.i.i, %bb.iyt, %bb.iyi
  %i.abul = phi ptr [ %i.abpp, %bb.iyi ], [ %i.abtw, %.body277.i.i ], [ %i.abto, %bb.iyt ], [ %i.acqv, %bb.jhv ], [ %i.acmz, %bb.jht ]
  %i.abum = phi ptr [ %i.abpq, %bb.iyi ], [ %i.abtx, %.body277.i.i ], [ %i.abtp, %bb.iyt ], [ %i.acqw, %bb.jhv ], [ %i.acna, %bb.jht ]
  %i.abun = phi ptr [ %i.abpu, %bb.iyi ], [ %i.abty, %.body277.i.i ], [ %i.abtq, %bb.iyt ], [ %i.acqx, %bb.jhv ], [ %i.acnb, %bb.jht ]
  %i.abuo = phi ptr [ %i.abpv, %bb.iyi ], [ %i.abtz, %.body277.i.i ], [ %i.abtr, %bb.iyt ], [ %i.acqy, %bb.jhv ], [ %i.acnc, %bb.jht ]
  %.pn160.pn.i.i = phi { ptr, i32 } [ %i.absu, %bb.iyi ], [ %.pn157.pn.i.i, %.body277.i.i ], [ %i.abtu, %bb.iyt ], [ %i.acqz, %bb.jhv ], [ %i.acqt, %bb.jht ]
  %i.abup = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abup) #26
          to label %.body255.i.i unwind label %bb.izd, !noalias !13840

.body255.i.i:                                     ; preds = %bb.jhy, %bb.jhw, %.body252.i.i, %bb.iyw, %bb.iyh
  %i.abuq = phi ptr [ %i.abpp, %bb.iyh ], [ %i.abul, %.body252.i.i ], [ %i.abud, %bb.iyw ], [ %i.acrd, %bb.jhy ], [ %i.acmz, %bb.jhw ]
  %i.abur = phi ptr [ %i.abpq, %bb.iyh ], [ %i.abum, %.body252.i.i ], [ %i.abue, %bb.iyw ], [ %i.acre, %bb.jhy ], [ %i.acna, %bb.jhw ]
  %i.abus = phi ptr [ %i.abpu, %bb.iyh ], [ %i.abun, %.body252.i.i ], [ %i.abuf, %bb.iyw ], [ %i.acrf, %bb.jhy ], [ %i.acnb, %bb.jhw ]
  %i.abut = phi ptr [ %i.abpv, %bb.iyh ], [ %i.abuo, %.body252.i.i ], [ %i.abug, %bb.iyw ], [ %i.acrg, %bb.jhy ], [ %i.acnc, %bb.jhw ]
  %.pn163.i.i = phi { ptr, i32 } [ %i.abst, %bb.iyh ], [ %.pn160.pn.i.i, %.body252.i.i ], [ %i.abuj, %bb.iyw ], [ %i.acrh, %bb.jhy ], [ %i.acrb, %bb.jhw ]
  %i.abuu = getelementptr inbounds nuw i8, ptr %1, i64 1384
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abuu) #26
          to label %.body480.i.i unwind label %bb.izd, !noalias !13840

.body480.i.i:                                     ; preds = %bb.jii, %bb.jib, %bb.jhz, %.body255.i.i, %bb.iyf
  %i.abuv = phi ptr [ %i.abpp, %bb.iyf ], [ %i.abuq, %.body255.i.i ], [ %i.acmz, %bb.jhz ], [ %i.acrl, %bb.jib ], [ %i.abud, %bb.jii ]
  %i.abuw = phi ptr [ %i.abpq, %bb.iyf ], [ %i.abur, %.body255.i.i ], [ %i.acna, %bb.jhz ], [ %i.acrm, %bb.jib ], [ %i.abue, %bb.jii ]
  %i.abux = phi ptr [ %i.abpu, %bb.iyf ], [ %i.abus, %.body255.i.i ], [ %i.acnb, %bb.jhz ], [ %i.acrn, %bb.jib ], [ %i.abuf, %bb.jii ]
  %i.abuy = phi ptr [ %i.abpv, %bb.iyf ], [ %i.abut, %.body255.i.i ], [ %i.acnc, %bb.jhz ], [ %i.acro, %bb.jib ], [ %i.abug, %bb.jii ]
  %.pn165.i.i = phi { ptr, i32 } [ %i.absr, %bb.iyf ], [ %.pn163.i.i, %.body255.i.i ], [ %i.acrj, %bb.jhz ], [ %i.acrp, %bb.jib ], [ %i.acsq, %bb.jii ]
  %i.abuz = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.abuz) #26
          to label %.body486.i.i unwind label %bb.izd, !noalias !13840

bb.iyy:                                           ; preds = %bb.iyd
  %.sroa.8569.0..sroa_idx570.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.sroa.8569.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.8569.0..sroa_idx570.i.i, align 1, !alias.scope !13913, !noalias !13836
  %.sroa.8569.sroa.6.0..sroa.8569.0..sroa_idx570.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8569.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.8569.sroa.6.0..sroa.8569.0..sroa_idx570.sroa_idx.i.i, align 8, !alias.scope !13913, !noalias !13836
  %.sroa.8569.sroa.9.0..sroa.8569.0..sroa_idx570.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.abva = load <2 x i64>, ptr %.sroa.8569.sroa.9.0..sroa.8569.0..sroa_idx570.sroa_idx.i.i, align 8, !alias.scope !13913, !noalias !13836
  %.sroa.10572.0..sroa_idx573.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10572.0..sroa_idx573.i.i, i64 56, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !13836
  %.sroa.4.i.sroa.3.0.insert.ext.i.i5784 = zext nneg i8 %i.absn to i64
  %.sroa.4.i.sroa.3.1.insert.ext.i.i5785 = zext i56 %.sroa.8569.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i.sroa.3.1.insert.shift.i.i5786 = shl nuw i64 %.sroa.4.i.sroa.3.1.insert.ext.i.i5785, 8
  %.sroa.4.i.sroa.3.1.insert.insert.i.i5787 = or disjoint i64 %.sroa.4.i.sroa.3.1.insert.shift.i.i5786, %.sroa.4.i.sroa.3.0.insert.ext.i.i5784
  %i.abvb = inttoptr i64 %.sroa.4.i.sroa.3.1.insert.insert.i.i5787 to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i, %bb.iyy, %bb.ixz
  %i.abvc = phi ptr [ %i.abud, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abpp, %bb.iyy ], [ %i.abpp, %bb.ixz ] ; 5 uses
  %i.abvd = phi ptr [ %i.abue, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abpq, %bb.iyy ], [ %i.abpq, %bb.ixz ] ; 5 uses
  %i.abve = phi ptr [ %i.abuf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abpu, %bb.iyy ], [ %i.abpu, %bb.ixz ] ; 5 uses
  %i.abvf = phi ptr [ %i.abug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abpv, %bb.iyy ], [ %i.abpv, %bb.ixz ] ; 5 uses
  %.sroa.30.2.i.i = phi ptr [ %.sroa.30.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abvb, %bb.iyy ], [ inttoptr (i64 27 to ptr), %bb.ixz ]
  %.sroa.48.2.i.i = phi ptr [ %.sroa.48.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %.sroa.8569.sroa.6.0.copyload.i.i, %bb.iyy ], [ %i.absh, %bb.ixz ]
  %i.abvg = phi <2 x i64> [ %i.abuh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.abva, %bb.iyy ], [ undef, %bb.ixz ]
  %i.abvh = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abvh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i unwind label %bb.iyz, !noalias !13840

bb.iyz:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i
  %i.abvi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abvh)
          to label %.body260.i.i unwind label %bb.iza, !noalias !13840

bb.iza:                                           ; preds = %bb.iyz
  %i.abvj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abvh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit263.i.i unwind label %bb.jih, !noalias !13840

.body486.i.i:                                     ; preds = %bb.jik, %bb.jie, %bb.jic, %.body480.i.i, %bb.iyb, %bb.iya
  %i.abvk = phi ptr [ %i.abpp, %bb.iya ], [ %i.abpp, %bb.iyb ], [ %i.abuv, %.body480.i.i ], [ %i.acmz, %bb.jic ], [ %i.acrt, %bb.jie ], [ %i.abud, %bb.jik ]
  %i.abvl = phi ptr [ %i.abpq, %bb.iya ], [ %i.abpq, %bb.iyb ], [ %i.abuw, %.body480.i.i ], [ %i.acna, %bb.jic ], [ %i.acru, %bb.jie ], [ %i.abue, %bb.jik ]
  %i.abvm = phi ptr [ %i.abpu, %bb.iya ], [ %i.abpu, %bb.iyb ], [ %i.abux, %.body480.i.i ], [ %i.acnb, %bb.jic ], [ %i.acrv, %bb.jie ], [ %i.abuf, %bb.jik ]
  %i.abvn = phi ptr [ %i.abpv, %bb.iya ], [ %i.abpv, %bb.iyb ], [ %i.abuy, %.body480.i.i ], [ %i.acnc, %bb.jic ], [ %i.acrw, %bb.jie ], [ %i.abug, %bb.jik ]
  %.pn169.pn.i.i = phi { ptr, i32 } [ %i.absi, %bb.iya ], [ %i.absj, %bb.iyb ], [ %.pn165.i.i, %.body480.i.i ], [ %i.acrr, %bb.jic ], [ %i.acrx, %bb.jie ], [ %i.acst, %bb.jik ]
  %i.abvo = getelementptr inbounds nuw i8, ptr %1, i64 1336
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abvo) #26
          to label %.body260.i.i unwind label %bb.izd, !noalias !13840

bb.izb:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.sroa.8536.0..sroa_idx537.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.8536.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.8536.0..sroa_idx537.i.i, align 4, !alias.scope !13903, !noalias !13836
  %.sroa.8536.sroa.6.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.8536.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.8536.sroa.6.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i, align 8, !alias.scope !13903, !noalias !13836
  %.sroa.8536.sroa.9.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.8536.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.8536.sroa.9.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i, align 8, !alias.scope !13903, !noalias !13836
  %.sroa.8536.sroa.10.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.abvp = load <2 x i64>, ptr %.sroa.8536.sroa.10.0..sroa.8536.0..sroa_idx537.sroa_idx.i.i, align 8, !alias.scope !13903, !noalias !13836
  %.sroa.8536.sroa.11.sroa.8.0..sroa.8536.sroa.11.0..sroa.8536.0..sroa_idx537.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.0..sroa.8536.sroa.11.0..sroa.8536.0..sroa_idx537.sroa_idx.sroa_idx.i.i, i64 16, i1 false), !alias.scope !13903, !noalias !13836
  %.sroa.10.0..sroa_idx539.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.57.sroa.15.sroa.14.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.57.sroa.15.sroa.14.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.57.sroa.15.sroa.14.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx539.i.i, i64 40, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.15.sroa.14.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8536.sroa.11.sroa.8.i.i, i64 16, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8536.sroa.11.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13836
  br label %bb.izc

bb.izc:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i, %bb.izb, %bb.ixe
  %i.abvq = phi ptr [ %i.abpp, %bb.izb ], [ %i.abvc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ %i.abpp, %bb.ixe ] ; 4 uses
  %i.abvr = phi ptr [ %i.abpq, %bb.izb ], [ %i.abvd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ %i.abpq, %bb.ixe ] ; 3 uses
  %i.abvs = phi ptr [ %i.abpu, %bb.izb ], [ %i.abve, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ %i.abpu, %bb.ixe ] ; 3 uses
  %i.abvt = phi ptr [ %i.abpv, %bb.izb ], [ %i.abvf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ %i.abpv, %bb.ixe ] ; 3 uses
  %.sroa.30.3.i.i = phi ptr [ %.sroa.8536.sroa.6.0.copyload.i.i, %bb.izb ], [ %.sroa.30.2.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ inttoptr (i64 34 to ptr), %bb.ixe ]
  %.sroa.48.3.i.i = phi ptr [ %.sroa.8536.sroa.9.0.copyload.i.i, %bb.izb ], [ %.sroa.48.2.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ undef, %bb.ixe ]
  %.sroa.17.3.i.i = phi i32 [ %.sroa.8536.sroa.0.0.copyload.i.i, %bb.izb ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ undef, %bb.ixe ]
  %.sroa.0829.3.i.i = phi i32 [ %.pr.i.i5789, %bb.izb ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ 4, %bb.ixe ] ; 2 uses
  %i.abvu = phi <2 x i64> [ %i.abvp, %bb.izb ], [ %i.abvg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i ], [ undef, %bb.ixe ]
  %i.abvv = getelementptr inbounds nuw i8, ptr %1, i64 1626 ; 2 uses
  %i.abvw = load i8, ptr %i.abvv, align 2, !range !777, !noalias !13836, !noundef !11
  %i.abvx = trunc nuw i8 %i.abvw to i1
  br i1 %i.abvx, label %bb.jip, label %bb.jiw

bb.izd:                                           ; preds = %bb.jiv, %bb.jiu, %bb.jhh, %bb.jhg, %bb.jgp, %bb.jgh, %bb.jfl, %bb.jeu, %bb.jeg, %bb.jef, %.body375.i.i, %.body349.i.i, %bb.jdc, %.body327.i.i, %.body307.i.i, %.body283.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.izl, %.thread1035.i.i, %bb.izg, %.body486.i.i, %.body480.i.i, %.body255.i.i, %.body252.i.i, %.body277.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i, %bb.ixo
  %i.abvy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

bb.ize:                                           ; preds = %bb.ixo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !13836
  br label %bb.izf

bb.izf:                                           ; preds = %bb.ize, %bb.ixs, %.body.i.i5798
  %.pn51.pn.i.i = phi { ptr, i32 } [ %i.abri, %.body.i.i5798 ], [ %i.abrv, %bb.ixs ], [ %i.abrk, %bb.ize ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0525.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13936)
  call void @llvm.experimental.noalias.scope.decl(metadata !13939)
  %i.abvz = load ptr, ptr %i.al, align 8, !alias.scope !13942, !noalias !13836, !nonnull !11, !noundef !11
  %i.abwa = atomicrmw sub ptr %i.abvz, i64 1 release, align 8, !noalias !13943
  %i.abwb = icmp eq i64 %i.abwa, 1
  br i1 %i.abwb, label %bb.izg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i

bb.izg:                                           ; preds = %bb.izf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit265.i.i unwind label %bb.izd, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5780: ; preds = %bb.ixi, %.loopexit.i.i5779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !13836
  %i.abwc = load ptr, ptr %.sroa.7.0..sroa_idx.i.i5775, align 8, !alias.scope !13944, !noalias !13836, !nonnull !11, !noundef !11
  %i.abwd = load ptr, ptr %.sroa.5.0..sroa_idx.i.i5773, align 8, !alias.scope !13944, !noalias !13836, !nonnull !11, !noundef !11 ; 2 uses
  %i.abwe = icmp eq ptr %i.abwd, %i.abwc
  br i1 %i.abwe, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %.lr.ph.i.i5776

bb.izh:                                           ; preds = %.thread1035.i.i, %bb.ixx
  %.pn176.pn1038.i.i = phi { ptr, i32 } [ %.pn57.pn.i.i, %.thread1035.i.i ], [ %i.absc, %bb.ixx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !13836
  br label %bb.izi

.thread1035.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5781, %bb.ixg
  %.pn57.pn.i.i = phi { ptr, i32 } [ %.pn57.i.i5782, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5781 ], [ %i.abqg, %bb.ixg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.ao) #26
          to label %bb.izh unwind label %bb.izd, !noalias !13840

bb.izi:                                           ; preds = %.body510.i.i, %bb.izh
  %i.abwf = phi ptr [ %i.abpp, %bb.izh ], [ %i.acsy, %.body510.i.i ] ; 2 uses
  %i.abwg = phi ptr [ %i.abpq, %bb.izh ], [ %i.acsz, %.body510.i.i ] ; 2 uses
  %i.abwh = phi ptr [ %i.abpu, %bb.izh ], [ %i.acta, %.body510.i.i ] ; 2 uses
  %i.abwi = phi ptr [ %i.abpv, %bb.izh ], [ %i.actb, %.body510.i.i ] ; 2 uses
  %.pn176.pn.pn.i.i = phi { ptr, i32 } [ %.pn176.pn1038.i.i, %bb.izh ], [ %.pn174.i.i, %.body510.i.i ] ; 2 uses
  %i.abwj = getelementptr inbounds nuw i8, ptr %1, i64 1626
  %i.abwk = load i8, ptr %i.abwj, align 2, !range !777, !noalias !13836, !noundef !11
  %i.abwl = trunc nuw i8 %i.abwk to i1
  br i1 %i.abwl, label %bb.jiv, label %.body515.i.i

bb.izj:                                           ; preds = %bb.ixd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #29
          to label %.noexc78.i unwind label %bb.ixc, !noalias !13799

.noexc78.i:                                       ; preds = %bb.izj
  unreachable

bb.izk:                                           ; preds = %bb.ixd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #29
          to label %.noexc79.i5767 unwind label %bb.ixc, !noalias !13799

.noexc79.i5767:                                   ; preds = %bb.izk
  unreachable

bb.izl:                                           ; preds = %bb.izm
  %i.abwm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.abwr) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.izm:                                           ; preds = %bb.iyr, %bb.ixd
  %i.abwn = phi ptr [ %i.abpp, %bb.iyr ], [ %i.abkv, %bb.ixd ] ; 6 uses
  %i.abwo = phi ptr [ %i.abpq, %bb.iyr ], [ %i.abku, %bb.ixd ] ; 5 uses
  %i.abwp = phi ptr [ %i.abpu, %bb.iyr ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 6 uses
  %i.abwq = phi ptr [ %i.abpv, %bb.iyr ], [ %i.abpo, %bb.ixd ] ; 5 uses
  %i.abwr = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.abws = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.abwr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.izn unwind label %bb.izl, !noalias !13840 ; 2 uses

bb.izn:                                           ; preds = %bb.izm
  %i.abwt = extractvalue { i64, ptr } %i.abws, 0
  %i.abwu = extractvalue { i64, ptr } %i.abws, 1
  %i.abwv = trunc nuw i64 %i.abwt to i1
  br i1 %i.abwv, label %.thread352.i, label %bb.izo

bb.izo:                                           ; preds = %bb.izn
  %i.abww = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.abwx = load i8, ptr %i.abww, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i.i.i5765 = icmp eq i8 %i.abwx, 3
  br i1 %cond.i.i.i5765, label %bb.izp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.izp:                                           ; preds = %bb.izo
  %i.abwy = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  %i.abwz = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %i.abxa = load i8, ptr %i.abwz, align 16, !range !672, !noalias !13836, !noundef !11
  switch i8 %i.abxa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i [
    i8 0, label %bb.izq
    i8 3, label %bb.izt
  ]

bb.izq:                                           ; preds = %bb.izp
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abwy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i unwind label %bb.izr, !noalias !13840

bb.izr:                                           ; preds = %bb.izq
  %i.abxb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abwy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izs, !noalias !13840

bb.izs:                                           ; preds = %bb.izr
  %i.abxc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %bb.izq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abwy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izu, !noalias !13840

bb.izt:                                           ; preds = %bb.izp
  %i.abxd = getelementptr inbounds nuw i8, ptr %1, i64 1672
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abxd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izu, !noalias !13840

bb.izu:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.izt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.abxe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.izt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %bb.izp, %bb.izo
  %i.abxf = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.abwu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 40)
          to label %bb.izv unwind label %bb.izu, !noalias !13840 ; 2 uses

bb.izv:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.not.i270.i.i = icmp eq ptr %i.abxf, null
  br i1 %.not.i270.i.i, label %.thread.i.i5766, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

.thread.i.i5766:                                  ; preds = %bb.izv, %bb.iyq
  %i.abxg = phi ptr [ %i.abwn, %bb.izv ], [ %i.abpp, %bb.iyq ]
  %i.abxh = phi ptr [ %i.abwo, %bb.izv ], [ %i.abpq, %bb.iyq ]
  %i.abxi = phi ptr [ %i.abwp, %bb.izv ], [ %i.abpu, %bb.iyq ]
  %i.abxj = phi ptr [ %i.abwq, %bb.izv ], [ %i.abpv, %bb.iyq ]
  %i.abxk = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 2 uses
  %i.abxl = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  store ptr %i.abxk, ptr %i.abxl, align 16, !noalias !13836
  %.sroa.9642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688 ; 2 uses
  store i8 0, ptr %.sroa.9642.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jaa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i: ; preds = %bb.jhr, %bb.jhe, %bb.jfi, %bb.jeq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i, %bb.jbd, %bb.izv
  %i.abxm = phi ptr [ %i.acjf, %bb.jeq ], [ %i.acos, %bb.jhe ], [ %i.ackl, %bb.jfi ], [ %i.abzm, %bb.jbd ], [ %i.acih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.abwn, %bb.izv ], [ %i.acpu, %bb.jhr ] ; 3 uses
  %i.abxn = phi ptr [ %i.acjg, %bb.jeq ], [ %i.acot, %bb.jhe ], [ %i.ackm, %bb.jfi ], [ %i.abzn, %bb.jbd ], [ %i.acii, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.abwo, %bb.izv ], [ %i.acpv, %bb.jhr ] ; 3 uses
  %i.abxo = phi ptr [ %i.acjh, %bb.jeq ], [ %i.acou, %bb.jhe ], [ %i.ackn, %bb.jfi ], [ %i.abzo, %bb.jbd ], [ %i.acij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.abwp, %bb.izv ], [ %i.acpw, %bb.jhr ] ; 3 uses
  %i.abxp = phi ptr [ %i.acji, %bb.jeq ], [ %i.acov, %bb.jhe ], [ %i.acko, %bb.jfi ], [ %i.abzp, %bb.jbd ], [ %i.acik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.abwq, %bb.izv ], [ %i.acpx, %bb.jhr ] ; 3 uses
  %.sroa.30.4.i.i = phi ptr [ inttoptr (i64 27 to ptr), %bb.jeq ], [ inttoptr (i64 27 to ptr), %bb.jhe ], [ inttoptr (i64 27 to ptr), %bb.jfi ], [ inttoptr (i64 27 to ptr), %bb.jbd ], [ %.sroa.30.6.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ inttoptr (i64 27 to ptr), %bb.izv ], [ inttoptr (i64 27 to ptr), %bb.jhr ]
  %.sroa.48.4.i.i = phi ptr [ %i.acjx, %bb.jeq ], [ %i.acpr, %bb.jhe ], [ %i.acla, %bb.jfi ], [ %i.acbk, %bb.jbd ], [ %.sroa.48.6.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.abxf, %bb.izv ], [ %i.acqm, %bb.jhr ]
  %i.abxq = phi <2 x i64> [ undef, %bb.jeq ], [ undef, %bb.jhe ], [ undef, %bb.jfi ], [ undef, %bb.jbd ], [ %i.acil, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ undef, %bb.izv ], [ undef, %bb.jhr ]
  %i.abxr = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abxr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i unwind label %bb.izw, !noalias !13840

bb.izw:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i
  %i.abxs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abxr)
          to label %.body277.i.i unwind label %bb.izx, !noalias !13840

bb.izx:                                           ; preds = %bb.izw
  %i.abxt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abxr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit280.i.i unwind label %bb.jhs, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.jhq, %bb.jhn, %bb.jhh, %bb.jhf, %bb.jfz, %bb.jfr, %bb.jfl, %bb.jfk, %bb.jfj, %bb.jfd, %bb.jfa, %bb.jeu, %bb.jet, %bb.jes, %bb.jep, %bb.jem, %bb.jeg, %bb.jcs, %bb.jco, %bb.jcl, %.body327.i.i, %bb.jbc, %.body283.i.i, %bb.izu, %bb.izr, %bb.izl, %bb.iyp
  %i.abxu = phi ptr [ %i.acbr, %bb.jco ], [ %i.abwn, %bb.izu ], [ %i.aces, %.body327.i.i ], [ %i.abzm, %bb.jbc ], [ %i.acjf, %bb.jep ], [ %i.acok, %bb.jhf ], [ %i.aclt, %bb.jfj ], [ %i.aclt, %bb.jfz ], [ %i.acfe, %bb.jcl ], [ %i.ackl, %bb.jes ], [ %i.acbr, %bb.jcs ], [ %i.abpp, %bb.iyp ], [ %i.abwn, %bb.izr ], [ %i.abwn, %bb.izl ], [ %i.acpu, %bb.jhq ], [ %i.abya, %.body283.i.i ], [ %i.acjf, %bb.jem ], [ %i.acjf, %bb.jeg ], [ %i.ackl, %bb.jfd ], [ %i.ackl, %bb.jet ], [ %i.ackl, %bb.jfa ], [ %i.ackl, %bb.jeu ], [ %i.aclt, %bb.jfr ], [ %i.aclt, %bb.jfk ], [ %i.aclt, %bb.jfl ], [ %i.acpu, %bb.jhn ], [ %i.acpu, %bb.jhh ]
  %i.abxv = phi ptr [ %i.acbs, %bb.jco ], [ %i.abwo, %bb.izu ], [ %i.acet, %.body327.i.i ], [ %i.abzn, %bb.jbc ], [ %i.acjg, %bb.jep ], [ %i.acol, %bb.jhf ], [ %i.aclu, %bb.jfj ], [ %i.aclu, %bb.jfz ], [ %i.acff, %bb.jcl ], [ %i.ackm, %bb.jes ], [ %i.acbs, %bb.jcs ], [ %i.abpq, %bb.iyp ], [ %i.abwo, %bb.izr ], [ %i.abwo, %bb.izl ], [ %i.acpv, %bb.jhq ], [ %i.abyb, %.body283.i.i ], [ %i.acjg, %bb.jem ], [ %i.acjg, %bb.jeg ], [ %i.ackm, %bb.jfd ], [ %i.ackm, %bb.jet ], [ %i.ackm, %bb.jfa ], [ %i.ackm, %bb.jeu ], [ %i.aclu, %bb.jfr ], [ %i.aclu, %bb.jfk ], [ %i.aclu, %bb.jfl ], [ %i.acpv, %bb.jhn ], [ %i.acpv, %bb.jhh ]
  %i.abxw = phi ptr [ %i.acbt, %bb.jco ], [ %i.abwp, %bb.izu ], [ %i.aceu, %.body327.i.i ], [ %i.abzo, %bb.jbc ], [ %i.acjh, %bb.jep ], [ %i.acom, %bb.jhf ], [ %i.aclv, %bb.jfj ], [ %i.aclv, %bb.jfz ], [ %i.acfg, %bb.jcl ], [ %i.ackn, %bb.jes ], [ %i.acbt, %bb.jcs ], [ %i.abpu, %bb.iyp ], [ %i.abwp, %bb.izr ], [ %i.abwp, %bb.izl ], [ %i.acpw, %bb.jhq ], [ %i.abyc, %.body283.i.i ], [ %i.acjh, %bb.jem ], [ %i.acjh, %bb.jeg ], [ %i.ackn, %bb.jfd ], [ %i.ackn, %bb.jet ], [ %i.ackn, %bb.jfa ], [ %i.ackn, %bb.jeu ], [ %i.aclv, %bb.jfr ], [ %i.aclv, %bb.jfk ], [ %i.aclv, %bb.jfl ], [ %i.acpw, %bb.jhn ], [ %i.acpw, %bb.jhh ]
  %i.abxx = phi ptr [ %i.acbu, %bb.jco ], [ %i.abwq, %bb.izu ], [ %i.acev, %.body327.i.i ], [ %i.abzp, %bb.jbc ], [ %i.acji, %bb.jep ], [ %i.acon, %bb.jhf ], [ %i.aclw, %bb.jfj ], [ %i.aclw, %bb.jfz ], [ %i.acfh, %bb.jcl ], [ %i.acko, %bb.jes ], [ %i.acbu, %bb.jcs ], [ %i.abpv, %bb.iyp ], [ %i.abwq, %bb.izr ], [ %i.abwq, %bb.izl ], [ %i.acpx, %bb.jhq ], [ %i.abyd, %.body283.i.i ], [ %i.acji, %bb.jem ], [ %i.acji, %bb.jeg ], [ %i.acko, %bb.jfd ], [ %i.acko, %bb.jet ], [ %i.acko, %bb.jfa ], [ %i.acko, %bb.jeu ], [ %i.aclw, %bb.jfr ], [ %i.aclw, %bb.jfk ], [ %i.aclw, %bb.jfl ], [ %i.acpx, %bb.jhn ], [ %i.acpx, %bb.jhh ]
  %.pn154.pn.i.i = phi { ptr, i32 } [ %i.acfn, %bb.jco ], [ %i.abxe, %bb.izu ], [ %.pn148.i.i, %.body327.i.i ], [ %i.acbl, %bb.jbc ], [ %i.acjw, %bb.jep ], [ %.pn120.pn.i.i, %bb.jhf ], [ %i.acln, %bb.jfj ], [ %i.acmy, %bb.jfz ], [ %i.acfi, %bb.jcl ], [ %i.ackf, %bb.jes ], [ %i.acft, %bb.jcs ], [ %i.abtk, %bb.iyp ], [ %i.abxb, %bb.izr ], [ %i.abwm, %bb.izl ], [ %i.acql, %bb.jhq ], [ %eh.lpad-body284.i.i, %.body283.i.i ], [ %i.acjt, %bb.jem ], [ %i.acje, %bb.jeg ], [ %i.aclc, %bb.jfd ], [ %i.ackf, %bb.jet ], [ %i.ackz, %bb.jfa ], [ %i.ackf, %bb.jeu ], [ %i.acmi, %bb.jfr ], [ %i.acln, %bb.jfk ], [ %i.acln, %bb.jfl ], [ %i.acqi, %bb.jhn ], [ %i.acpt, %bb.jhh ]
  %i.abxy = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.abxy) #26
          to label %.body277.i.i unwind label %bb.izd, !noalias !13840

bb.izy:                                           ; preds = %bb.jad, %bb.jac
  %i.abxz = landingpad { ptr, i32 }
          cleanup
  br label %.body283.i.i

.body283.i.i:                                     ; preds = %.body17.i.i.i5753, %bb.izy
  %i.abya = phi ptr [ %i.abkv, %bb.izy ], [ %i.acbe, %.body17.i.i.i5753 ]
  %i.abyb = phi ptr [ %i.abku, %bb.izy ], [ %i.acbf, %.body17.i.i.i5753 ]
  %i.abyc = phi ptr [ %.phi.trans.insert409.i, %bb.izy ], [ %i.acbg, %.body17.i.i.i5753 ]
  %i.abyd = phi ptr [ %i.abpo, %bb.izy ], [ %i.acbh, %.body17.i.i.i5753 ]
  %i.abye = phi ptr [ %i.abyf, %bb.izy ], [ %i.acbj, %.body17.i.i.i5753 ]
  %eh.lpad-body284.i.i = phi { ptr, i32 } [ %i.abxz, %bb.izy ], [ %.pn12.pn.pn.i.i.i, %.body17.i.i.i5753 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.abye) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.izz:                                           ; preds = %bb.ixd
  %.phi.trans.insert1105.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688 ; 5 uses
  %.pre.i.i5748 = load i8, ptr %.phi.trans.insert1105.i.i, align 8, !range !672, !noalias !13946
  %i.abyf = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 6 uses
  switch i8 %.pre.i.i5748, label %default.unreachable8727 [
    i8 0, label %._crit_edge.i5759
    i8 1, label %bb.jac
    i8 2, label %bb.jad
    i8 3, label %bb.jae
  ]

._crit_edge.i5759:                                ; preds = %bb.izz
  %.pre411.i5760 = load ptr, ptr %i.abyf, align 16, !noalias !13946
  br label %bb.jaa

bb.jaa:                                           ; preds = %._crit_edge.i5759, %.thread.i.i5766
  %i.abyg = phi ptr [ %i.abxg, %.thread.i.i5766 ], [ %i.abkv, %._crit_edge.i5759 ] ; 2 uses
  %i.abyh = phi ptr [ %i.abxh, %.thread.i.i5766 ], [ %i.abku, %._crit_edge.i5759 ] ; 2 uses
  %i.abyi = phi ptr [ %i.abxi, %.thread.i.i5766 ], [ %.phi.trans.insert409.i, %._crit_edge.i5759 ] ; 2 uses
  %i.abyj = phi ptr [ %i.abxj, %.thread.i.i5766 ], [ %i.abpo, %._crit_edge.i5759 ] ; 2 uses
  %i.abyk = phi ptr [ %i.abxk, %.thread.i.i5766 ], [ %.pre411.i5760, %._crit_edge.i5759 ] ; 3 uses
  %i.abyl = phi ptr [ %.sroa.9642.0..sroa_idx.i.i, %.thread.i.i5766 ], [ %.phi.trans.insert1105.i.i, %._crit_edge.i5759 ] ; 2 uses
  %i.abym = phi ptr [ %i.abxl, %.thread.i.i5766 ], [ %i.abyf, %._crit_edge.i5759 ] ; 2 uses
  %i.abyn = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.abyk, ptr %i.abyn, align 8, !noalias !13946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13946
  %i.abyo = getelementptr i8, ptr %i.abyk, i64 8
  %.val.i.i.i.i5761 = load ptr, ptr %i.abyo, align 8, !noalias !13949, !nonnull !11, !noundef !11
  %i.abyp = getelementptr i8, ptr %i.abyk, i64 16
  %.val1.i.i.i.i5762 = load i64, ptr %i.abyp, align 8, !noalias !13949, !noundef !11
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i5761, i64 noundef %.val1.i.i.i.i5762)
          to label %.thread.i.i.i5763 unwind label %bb.jab, !noalias !13949

bb.jab:                                           ; preds = %bb.jaa
  %i.abyq = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i.i5753

.thread.i.i.i5763:                                ; preds = %bb.jaa
  %i.abyr = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.abyr, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !13946
  %.sroa.7.0..sroa_idx.i.i.i5764 = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i5764, align 16, !noalias !13946
  br label %bb.jaf

bb.jac:                                           ; preds = %bb.izz
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29
          to label %.noexc281.i.i unwind label %bb.izy, !noalias !13840

.noexc281.i.i:                                    ; preds = %bb.jac
  unreachable

bb.jad:                                           ; preds = %bb.izz
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29
          to label %.noexc282.i.i unwind label %bb.izy, !noalias !13840

.noexc282.i.i:                                    ; preds = %bb.jad
  unreachable

bb.jae:                                           ; preds = %bb.izz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13946
  %.phi.trans.insert.i.i.i5749 = getelementptr inbounds nuw i8, ptr %1, i64 1680 ; 3 uses
  %.pre.i.i.i5750 = load i8, ptr %.phi.trans.insert.i.i.i5749, align 16, !range !672, !noalias !13950
  %i.abys = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  switch i8 %.pre.i.i.i5750, label %default.unreachable8727 [
    i8 0, label %bb.jaf
    i8 1, label %bb.jaj
    i8 2, label %bb.jak
    i8 3, label %bb.jag
  ]

bb.jaf:                                           ; preds = %bb.jae, %.thread.i.i.i5763
  %i.abyt = phi ptr [ %i.abyg, %.thread.i.i.i5763 ], [ %i.abkv, %bb.jae ] ; 2 uses
  %i.abyu = phi ptr [ %i.abyh, %.thread.i.i.i5763 ], [ %i.abku, %bb.jae ] ; 2 uses
  %i.abyv = phi ptr [ %i.abyi, %.thread.i.i.i5763 ], [ %.phi.trans.insert409.i, %bb.jae ] ; 2 uses
  %i.abyw = phi ptr [ %i.abyj, %.thread.i.i.i5763 ], [ %i.abpo, %bb.jae ] ; 2 uses
  %i.abyx = phi ptr [ %i.abyl, %.thread.i.i.i5763 ], [ %.phi.trans.insert1105.i.i, %bb.jae ] ; 2 uses
  %i.abyy = phi ptr [ %i.abym, %.thread.i.i.i5763 ], [ %i.abyf, %bb.jae ] ; 2 uses
  %i.abyz = phi ptr [ %.sroa.7.0..sroa_idx.i.i.i5764, %.thread.i.i.i5763 ], [ %.phi.trans.insert.i.i.i5749, %bb.jae ] ; 2 uses
  %i.abza = phi ptr [ %i.abyr, %.thread.i.i.i5763 ], [ %i.abys, %bb.jae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.abza, i64 24, i1 false), !noalias !13950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13950
  %i.abzb = invoke noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1W_2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
          to label %bb.jai unwind label %bb.jah, !noalias !13953

bb.jag:                                           ; preds = %bb.jae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13950
  br label %bb.jal

bb.jah:                                           ; preds = %bb.jaf
  %i.abzc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i5751

bb.jai:                                           ; preds = %bb.jaf
  %i.abzd = getelementptr inbounds nuw i8, ptr %1, i64 1672
  store ptr %i.abzb, ptr %i.abzd, align 8, !noalias !13950
  br label %bb.jal

.body.i.i.i.i5751:                                ; preds = %bb.jay, %bb.jax, %bb.jaw, %bb.jap, %bb.jam, %bb.jah
  %i.abze = phi ptr [ %i.abyt, %bb.jah ], [ %i.abzm, %bb.jap ], [ %i.abzm, %bb.jay ], [ %i.abzm, %bb.jaw ], [ %i.abzm, %bb.jax ], [ %i.abzm, %bb.jam ]
  %i.abzf = phi ptr [ %i.abyu, %bb.jah ], [ %i.abzn, %bb.jap ], [ %i.abzn, %bb.jay ], [ %i.abzn, %bb.jaw ], [ %i.abzn, %bb.jax ], [ %i.abzn, %bb.jam ]
  %i.abzg = phi ptr [ %i.abyv, %bb.jah ], [ %i.abzo, %bb.jap ], [ %i.abzo, %bb.jay ], [ %i.abzo, %bb.jaw ], [ %i.abzo, %bb.jax ], [ %i.abzo, %bb.jam ]
  %i.abzh = phi ptr [ %i.abyw, %bb.jah ], [ %i.abzp, %bb.jap ], [ %i.abzp, %bb.jay ], [ %i.abzp, %bb.jaw ], [ %i.abzp, %bb.jax ], [ %i.abzp, %bb.jam ]
  %i.abzi = phi ptr [ %i.abyx, %bb.jah ], [ %i.abzq, %bb.jap ], [ %i.abzq, %bb.jay ], [ %i.abzq, %bb.jaw ], [ %i.abzq, %bb.jax ], [ %i.abzq, %bb.jam ]
  %i.abzj = phi ptr [ %i.abyy, %bb.jah ], [ %i.abzr, %bb.jap ], [ %i.abzr, %bb.jay ], [ %i.abzr, %bb.jaw ], [ %i.abzr, %bb.jax ], [ %i.abzr, %bb.jam ]
  %i.abzk = phi ptr [ %i.abyz, %bb.jah ], [ %i.abzs, %bb.jap ], [ %i.abzs, %bb.jay ], [ %i.abzs, %bb.jaw ], [ %i.abzs, %bb.jax ], [ %i.abzs, %bb.jam ]
  %i.abzl = phi ptr [ %i.abza, %bb.jah ], [ %i.abzt, %bb.jap ], [ %i.abzt, %bb.jay ], [ %i.abzt, %bb.jaw ], [ %i.abzt, %bb.jax ], [ %i.abzt, %bb.jam ]
  %.pn7.i.i.i.i = phi { ptr, i32 } [ %i.abzc, %bb.jah ], [ %i.abzz, %bb.jap ], [ %i.acat, %bb.jay ], [ %i.acan, %bb.jaw ], [ %i.acan, %bb.jax ], [ %i.abzv, %bb.jam ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13950
  store i8 2, ptr %i.abzk, align 8, !noalias !13950
  br label %.body.i.i.i5752

bb.jaj:                                           ; preds = %bb.jae
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #29
          to label %.noexc.i.i.i5758 unwind label %bb.jba, !noalias !13949

.noexc.i.i.i5758:                                 ; preds = %bb.jaj
  unreachable

bb.jak:                                           ; preds = %bb.jae
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #29
          to label %.noexc16.i.i.i unwind label %bb.jba, !noalias !13949

.noexc16.i.i.i:                                   ; preds = %bb.jak
  unreachable

bb.jal:                                           ; preds = %bb.jai, %bb.jag
  %i.abzm = phi ptr [ %i.abyt, %bb.jai ], [ %i.abkv, %bb.jag ] ; 9 uses
  %i.abzn = phi ptr [ %i.abyu, %bb.jai ], [ %i.abku, %bb.jag ] ; 8 uses
  %i.abzo = phi ptr [ %i.abyv, %bb.jai ], [ %.phi.trans.insert409.i, %bb.jag ] ; 9 uses
  %i.abzp = phi ptr [ %i.abyw, %bb.jai ], [ %i.abpo, %bb.jag ] ; 8 uses
  %i.abzq = phi ptr [ %i.abyx, %bb.jai ], [ %.phi.trans.insert1105.i.i, %bb.jag ] ; 7 uses
  %i.abzr = phi ptr [ %i.abyy, %bb.jai ], [ %i.abyf, %bb.jag ] ; 5 uses
  %i.abzs = phi ptr [ %i.abyz, %bb.jai ], [ %.phi.trans.insert.i.i.i5749, %bb.jag ] ; 7 uses
  %i.abzt = phi ptr [ %i.abza, %bb.jai ], [ %i.abys, %bb.jag ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13950
  %i.abzu = getelementptr inbounds nuw i8, ptr %1, i64 1672 ; 3 uses
  invoke void @_RNvXs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_6future6future6Future4pollCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abzu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jan unwind label %bb.jam, !noalias !13840

bb.jam:                                           ; preds = %bb.jal
  %i.abzv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13950
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abzu)
          to label %.body.i.i.i.i5751 unwind label %bb.jaz, !noalias !13840

bb.jan:                                           ; preds = %bb.jal
  %i.abzw = load i64, ptr %i.u, align 8, !range !24, !noalias !13950, !noundef !11
  %i.abzx = trunc nuw i64 %i.abzw to i1
  br i1 %i.abzx, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.jao

bb.jao:                                           ; preds = %bb.jan
  %i.abzy = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.abzy, i64 24, i1 false), !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13950
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abzu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i unwind label %bb.jap, !noalias !13840

bb.jap:                                           ; preds = %bb.jao
  %i.abzz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i5751

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %bb.jao
  %i.acaa = load i64, ptr %i.v, align 8, !noalias !13950, !noundef !11
  %.not.i.i.i.i5754 = icmp eq i64 %i.acaa, 0
  br i1 %.not.i.i.i.i5754, label %.thread.i.i.i.i5757, label %bb.jaq

bb.jaq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.acab = invoke noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 40, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 22)
          to label %bb.jar unwind label %bb.jay, !noalias !13840 ; 3 uses

.thread.i.i.i.i5757:                              ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.acac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.acad = load ptr, ptr %i.acac, align 8, !noalias !13950, !noundef !11
  br label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i

bb.jar:                                           ; preds = %bb.jaq
  call void @llvm.experimental.noalias.scope.decl(metadata !13954)
  %i.acae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val2.i.i.i.i.i5755 = load ptr, ptr %i.acae, align 8, !alias.scope !13954, !noalias !13950, !noundef !11 ; 4 uses
  %i.acaf = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.i.i.i.i.i5756 = load ptr, ptr %i.acaf, align 8, !alias.scope !13954, !noalias !13950 ; 6 uses
  %i.acag = icmp eq ptr %.val2.i.i.i.i.i5755, null
  br i1 %i.acag, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %bb.jas

bb.jas:                                           ; preds = %bb.jar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i5756) ]
  %i.acah = load ptr, ptr %.val1.i.i.i.i.i5756, align 8, !invariant.load !11, !noalias !13957 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.jau, label %bb.jat

bb.jat:                                           ; preds = %bb.jas
  invoke void %i.acah(ptr noundef nonnull %.val2.i.i.i.i.i5755)
          to label %bb.jau unwind label %bb.jaw, !noalias !13957

bb.jau:                                           ; preds = %bb.jat, %bb.jas
  %i.acai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i5756, i64 8
  %i.acaj = load i64, ptr %i.acai, align 8, !range !40, !invariant.load !11, !noalias !13957 ; 2 uses
  %i.acak = icmp eq i64 %i.acaj, 0
  br i1 %i.acak, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %bb.jav

bb.jav:                                           ; preds = %bb.jau
  %i.acal = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i5756, i64 16
  %i.acam = load i64, ptr %i.acal, align 8, !range !41, !invariant.load !11, !noalias !13957
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i5755, i64 noundef range(i64 1, 0) %i.acaj, i64 noundef range(i64 1, 536870913) %i.acam) #28, !noalias !13957
  br label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i

bb.jaw:                                           ; preds = %bb.jat
  %i.acan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i5756, i64 8
  %i.acap = load i64, ptr %i.acao, align 8, !range !40, !invariant.load !11, !noalias !13957 ; 2 uses
  %i.acaq = icmp eq i64 %i.acap, 0
  br i1 %i.acaq, label %.body.i.i.i.i5751, label %bb.jax

bb.jax:                                           ; preds = %bb.jaw
  %i.acar = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i5756, i64 16
  %i.acas = load i64, ptr %i.acar, align 8, !range !41, !invariant.load !11, !noalias !13957
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i5755, i64 noundef range(i64 1, 0) %i.acap, i64 noundef range(i64 1, 536870913) %i.acas) #28, !noalias !13957
  br label %.body.i.i.i.i5751

bb.jay:                                           ; preds = %bb.jaq
  %i.acat = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_uNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.v) #26
          to label %.body.i.i.i.i5751 unwind label %bb.jaz, !noalias !13840

bb.jaz:                                           ; preds = %bb.jay, %bb.jam
  %i.acau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

bb.jba:                                           ; preds = %bb.jak, %bb.jaj
  %i.acav = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i5752

.body.i.i.i5752:                                  ; preds = %bb.jba, %.body.i.i.i.i5751
  %i.acaw = phi ptr [ %i.abze, %.body.i.i.i.i5751 ], [ %i.abkv, %bb.jba ]
  %i.acax = phi ptr [ %i.abzf, %.body.i.i.i.i5751 ], [ %i.abku, %bb.jba ]
  %i.acay = phi ptr [ %i.abzg, %.body.i.i.i.i5751 ], [ %.phi.trans.insert409.i, %bb.jba ]
  %i.acaz = phi ptr [ %i.abzh, %.body.i.i.i.i5751 ], [ %i.abpo, %bb.jba ]
  %i.acba = phi ptr [ %i.abzi, %.body.i.i.i.i5751 ], [ %.phi.trans.insert1105.i.i, %bb.jba ]
  %i.acbb = phi ptr [ %i.abzj, %.body.i.i.i.i5751 ], [ %i.abyf, %bb.jba ]
  %i.acbc = phi ptr [ %i.abzl, %.body.i.i.i.i5751 ], [ %i.abys, %bb.jba ]
  %.pn10.i.i.i = phi { ptr, i32 } [ %.pn7.i.i.i.i, %.body.i.i.i.i5751 ], [ %i.acav, %bb.jba ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCINvNtBG_14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acbc) #26
          to label %.body17.i.i.i5753 unwind label %bb.jbb, !noalias !13840

bb.jbb:                                           ; preds = %.body.i.i.i5752
  %i.acbd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

.body17.i.i.i5753:                                ; preds = %.body.i.i.i5752, %bb.jab
  %i.acbe = phi ptr [ %i.abyg, %bb.jab ], [ %i.acaw, %.body.i.i.i5752 ]
  %i.acbf = phi ptr [ %i.abyh, %bb.jab ], [ %i.acax, %.body.i.i.i5752 ]
  %i.acbg = phi ptr [ %i.abyi, %bb.jab ], [ %i.acay, %.body.i.i.i5752 ]
  %i.acbh = phi ptr [ %i.abyj, %bb.jab ], [ %i.acaz, %.body.i.i.i5752 ]
  %i.acbi = phi ptr [ %i.abyl, %bb.jab ], [ %i.acba, %.body.i.i.i5752 ]
  %i.acbj = phi ptr [ %i.abym, %bb.jab ], [ %i.acbb, %.body.i.i.i5752 ]
  %.pn12.pn.pn.i.i.i = phi { ptr, i32 } [ %i.abyq, %bb.jab ], [ %.pn10.i.i.i, %.body.i.i.i5752 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13946
  store i8 2, ptr %i.acbi, align 8, !noalias !13946
  br label %.body283.i.i

_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.jan
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13950
  store i8 3, ptr %i.abzs, align 8, !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13946
  br label %.thread352.sink.split.i

_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %bb.jav, %bb.jau, %bb.jar, %.thread.i.i.i.i5757
  %.sroa.03.012.i.i.i.i = phi ptr [ %i.acad, %.thread.i.i.i.i5757 ], [ %i.acab, %bb.jar ], [ %i.acab, %bb.jau ], [ %i.acab, %bb.jav ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13950
  store i8 1, ptr %i.abzs, align 8, !noalias !13950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !13946
  store i8 1, ptr %i.abzq, align 8, !noalias !13946
  %i.acbk = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef %.sroa.03.012.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 31)
          to label %bb.jbd unwind label %bb.jbc, !noalias !13840 ; 2 uses

bb.jbc:                                           ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  %i.acbl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jbd:                                           ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  %.not.i291.i.i = icmp eq ptr %i.acbk, null
  br i1 %.not.i291.i.i, label %bb.jbe, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

bb.jbe:                                           ; preds = %bb.jbd
  %i.acbm = getelementptr inbounds nuw i8, ptr %1, i64 1626
  store i8 0, ptr %i.acbm, align 2, !noalias !13836
  %i.acbn = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %.sroa.0654.0.copyload.i.i = load i64, ptr %i.acbn, align 8, !noalias !13836
  %.sroa.5655.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %.sroa.5655.0.copyload.i.i = load ptr, ptr %.sroa.5655.0..sroa_idx.i.i, align 16, !noalias !13836, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.6656.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %.sroa.6656.0.copyload.i.i = load i64, ptr %.sroa.6656.0..sroa_idx.i.i, align 8, !noalias !13836 ; 2 uses
  %i.acbo = icmp ult i64 %.sroa.6656.0.copyload.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.acbo)
  %i.acbp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5655.0.copyload.i.i, i64 %.sroa.6656.0.copyload.i.i ; 2 uses
  %i.acbq = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store ptr %.sroa.5655.0.copyload.i.i, ptr %i.acbq, align 8, !noalias !13836
  %.sroa.10651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store ptr %.sroa.5655.0.copyload.i.i, ptr %.sroa.10651.0..sroa_idx.i.i, align 16, !noalias !13836
  %.sroa.11652.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 %.sroa.0654.0.copyload.i.i, ptr %.sroa.11652.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.12653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %i.acbp, ptr %.sroa.12653.0..sroa_idx.i.i, align 16, !noalias !13836
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i, %bb.jbe
  %i.acbr = phi ptr [ %i.acdd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %i.abzm, %bb.jbe ] ; 11 uses
  %i.acbs = phi ptr [ %i.acde, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %i.abzn, %bb.jbe ] ; 11 uses
  %i.acbt = phi ptr [ %i.acdf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %i.abzo, %bb.jbe ] ; 11 uses
  %i.acbu = phi ptr [ %i.acdg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %i.abzp, %bb.jbe ] ; 11 uses
  %i.acbv = phi ptr [ %.pre1109.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %.sroa.5655.0.copyload.i.i, %bb.jbe ] ; 4 uses
  %i.acbw = phi ptr [ %.pre1107.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i ], [ %i.acbp, %bb.jbe ]
  %i.acbx = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %i.acby = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13958)
  call void @llvm.experimental.noalias.scope.decl(metadata !13961)
  %i.acbz = icmp eq ptr %i.acbv, %i.acbw
  br i1 %i.acbz, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330.i.i
  store i64 -1, ptr %i.acby, align 8, !alias.scope !13958, !noalias !13963
  br label %bb.jck

bb.jbf:                                           ; preds = %bb.jbn, %bb.jbm
  %i.acca = landingpad { ptr, i32 }
          cleanup
  br label %.body307.i.i

.body307.i.i:                                     ; preds = %bb.jbu, %bb.jbf
  %i.accb = phi ptr [ %i.abkv, %bb.jbf ], [ %i.accu, %bb.jbu ]
  %i.accc = phi ptr [ %i.abku, %bb.jbf ], [ %i.accv, %bb.jbu ]
  %i.accd = phi ptr [ %.phi.trans.insert409.i, %bb.jbf ], [ %i.accw, %bb.jbu ]
  %i.acce = phi ptr [ %i.abpo, %bb.jbf ], [ %i.accx, %bb.jbu ]
  %i.accf = phi ptr [ %i.accg, %bb.jbf ], [ %i.accz, %bb.jbu ]
  %eh.lpad-body308.i.i = phi { ptr, i32 } [ %i.acca, %bb.jbf ], [ %.pn8.pn.pn.i.i.i, %bb.jbu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.accf) #26
          to label %.body349.i.i unwind label %bb.izd, !noalias !13840

bb.jbg:                                           ; preds = %bb.ixd
  %.phi.trans.insert1110.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1800 ; 3 uses
  %.pre1111.i.i = load i8, ptr %.phi.trans.insert1110.i.i, align 8, !range !672, !noalias !13964
  %i.accg = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  switch i8 %.pre1111.i.i, label %default.unreachable8727 [
    i8 0, label %._crit_edge412.i
    i8 1, label %bb.jbm
    i8 2, label %bb.jbn
    i8 3, label %bb.jbh
  ]

._crit_edge412.i:                                 ; preds = %bb.jbg
  %.phi.trans.insert413.i = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %.pre414.i = load ptr, ptr %.phi.trans.insert413.i, align 8, !noalias !13964
  br label %bb.jbi

bb.jbh:                                           ; preds = %bb.jbg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13964
  br label %bb.jbo

bb.jbi:                                           ; preds = %.thread1137.i.i, %._crit_edge412.i
  %i.acch = phi ptr [ %i.acht, %.thread1137.i.i ], [ %i.abkv, %._crit_edge412.i ] ; 2 uses
  %i.acci = phi ptr [ %i.achu, %.thread1137.i.i ], [ %i.abku, %._crit_edge412.i ] ; 2 uses
  %i.accj = phi ptr [ %i.achv, %.thread1137.i.i ], [ %.phi.trans.insert409.i, %._crit_edge412.i ] ; 2 uses
  %i.acck = phi ptr [ %i.achw, %.thread1137.i.i ], [ %i.abpo, %._crit_edge412.i ] ; 2 uses
  %i.accl = phi ptr [ %i.achx, %.thread1137.i.i ], [ %.pre414.i, %._crit_edge412.i ] ; 3 uses
  %i.accm = phi ptr [ %.sroa.10713.0..sroa_idx.i.i, %.thread1137.i.i ], [ %.phi.trans.insert1110.i.i, %._crit_edge412.i ] ; 2 uses
  %i.accn = phi ptr [ %i.achz, %.thread1137.i.i ], [ %i.accg, %._crit_edge412.i ] ; 4 uses
  %i.acco = getelementptr inbounds nuw i8, ptr %1, i64 1801 ; 2 uses
  %i.accp = getelementptr inbounds nuw i8, ptr %1, i64 1664
  store ptr %i.accl, ptr %i.accp, align 16, !noalias !13964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13964
  store i8 1, ptr %i.acco, align 1, !noalias !13964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.accn, i64 24, i1 false), !noalias !13964
  %i.accq = getelementptr i8, ptr %i.accl, i64 8
  %.val.i.i303.i.i = load ptr, ptr %i.accq, align 8, !noalias !13967, !nonnull !11, !noundef !11
  %i.accr = getelementptr i8, ptr %i.accl, i64 16
  %.val1.i.i304.i.i = load i64, ptr %i.accr, align 8, !noalias !13967, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13964
  store i8 0, ptr %i.acco, align 1, !noalias !13964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.accn, i64 24, i1 false), !noalias !13964
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio4util6as_ref7upgradeNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.jbk unwind label %bb.jbj, !noalias !13967

bb.jbj:                                           ; preds = %bb.jbi
  %i.accs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13964
  br label %bb.jbl

bb.jbk:                                           ; preds = %bb.jbi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13964
  %i.acct = getelementptr inbounds nuw i8, ptr %1, i64 1672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acct, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !13964
  %.sroa.714.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1704
  store ptr %.val.i.i303.i.i, ptr %.sroa.714.0..sroa_idx.i.i.i, align 8, !noalias !13964
  %.sroa.815.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1712
  store i64 %.val1.i.i304.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i, align 16, !noalias !13964
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1793
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !13964
  br label %bb.jbo

bb.jbl:                                           ; preds = %bb.jbs, %bb.jbp, %bb.jbj
  %i.accu = phi ptr [ %i.acch, %bb.jbj ], [ %i.acdd, %bb.jbs ], [ %i.acdd, %bb.jbp ]
  %i.accv = phi ptr [ %i.acci, %bb.jbj ], [ %i.acde, %bb.jbs ], [ %i.acde, %bb.jbp ]
  %i.accw = phi ptr [ %i.accj, %bb.jbj ], [ %i.acdf, %bb.jbs ], [ %i.acdf, %bb.jbp ]
  %i.accx = phi ptr [ %i.acck, %bb.jbj ], [ %i.acdg, %bb.jbs ], [ %i.acdg, %bb.jbp ]
  %i.accy = phi ptr [ %i.accm, %bb.jbj ], [ %i.acdh, %bb.jbs ], [ %i.acdh, %bb.jbp ]
  %i.accz = phi ptr [ %i.accn, %bb.jbj ], [ %i.acdi, %bb.jbs ], [ %i.acdi, %bb.jbp ]
  %.pn8.pn.pn.i.i.i = phi { ptr, i32 } [ %i.accs, %bb.jbj ], [ %i.acdo, %bb.jbs ], [ %i.acdl, %bb.jbp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13964
  %i.acda = getelementptr inbounds nuw i8, ptr %1, i64 1801 ; 2 uses
  %i.acdb = load i8, ptr %i.acda, align 1, !range !777, !noalias !13964, !noundef !11
  %i.acdc = trunc nuw i8 %i.acdb to i1
  br i1 %i.acdc, label %bb.jbv, label %bb.jbu

bb.jbm:                                           ; preds = %bb.jbg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
          to label %.noexc305.i.i unwind label %bb.jbf, !noalias !13840

.noexc305.i.i:                                    ; preds = %bb.jbm
  unreachable

bb.jbn:                                           ; preds = %bb.jbg
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
          to label %.noexc306.i.i unwind label %bb.jbf, !noalias !13840

.noexc306.i.i:                                    ; preds = %bb.jbn
  unreachable

bb.jbo:                                           ; preds = %bb.jbk, %bb.jbh
  %i.acdd = phi ptr [ %i.acch, %bb.jbk ], [ %i.abkv, %bb.jbh ] ; 11 uses
  %i.acde = phi ptr [ %i.acci, %bb.jbk ], [ %i.abku, %bb.jbh ] ; 10 uses
  %i.acdf = phi ptr [ %i.accj, %bb.jbk ], [ %.phi.trans.insert409.i, %bb.jbh ] ; 11 uses
  %i.acdg = phi ptr [ %i.acck, %bb.jbk ], [ %i.abpo, %bb.jbh ] ; 10 uses
  %i.acdh = phi ptr [ %i.accm, %bb.jbk ], [ %.phi.trans.insert1110.i.i, %bb.jbh ] ; 4 uses
  %i.acdi = phi ptr [ %i.accn, %bb.jbk ], [ %i.accg, %bb.jbh ] ; 2 uses
  %i.acdj = getelementptr inbounds nuw i8, ptr %1, i64 1672 ; 3 uses
  %i.acdk = invoke fastcc { i64, ptr } @_RNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acdj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jbq unwind label %bb.jbp, !noalias !13840 ; 2 uses

bb.jbp:                                           ; preds = %bb.jbo
  %i.acdl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acdj) #26
          to label %bb.jbl unwind label %bb.jbt, !noalias !13840

bb.jbq:                                           ; preds = %bb.jbo
  %i.acdm = extractvalue { i64, ptr } %i.acdk, 0
  %i.acdn = trunc nuw i64 %i.acdm to i1
  br i1 %i.acdn, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.jbr

bb.jbr:                                           ; preds = %bb.jbq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acdj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.jbs, !noalias !13840

bb.jbs:                                           ; preds = %bb.jbr
  %i.acdo = landingpad { ptr, i32 }
          cleanup
  br label %bb.jbl

bb.jbt:                                           ; preds = %bb.jbv, %bb.jbp
  %i.acdp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

bb.jbu:                                           ; preds = %bb.jbv, %bb.jbl
  store i8 0, ptr %i.acda, align 1, !noalias !13964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13964
  store i8 2, ptr %i.accy, align 8, !noalias !13964
  br label %.body307.i.i

bb.jbv:                                           ; preds = %bb.jbl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #26
          to label %bb.jbu unwind label %bb.jbt, !noalias !13840

_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.jbq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13964
  br label %.thread352.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.jbr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13964
  %i.acdq = getelementptr inbounds nuw i8, ptr %1, i64 1801
  store i8 0, ptr %i.acdq, align 1, !noalias !13964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13964
  store i8 1, ptr %i.acdh, align 8, !noalias !13964
  %i.acdr = extractvalue { i64, ptr } %i.acdk, 1
  %i.acds = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 4 uses
  %i.acdt = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB37_27ProcessingEngineManagerImpl24replace_plugin_directory0s5_0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.acdr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acds)
          to label %bb.jbx unwind label %bb.jbw, !noalias !13840 ; 3 uses

bb.jbw:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.acdu = landingpad { ptr, i32 }
          cleanup
  br label %.body349.i.i

bb.jbx:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.not.i312.i.i = icmp eq ptr %i.acdt, null
  br i1 %.not.i312.i.i, label %bb.jcd, label %bb.jby

bb.jby:                                           ; preds = %bb.jbx
  %i.acdv = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13968
  store ptr %i.acdt, ptr %i.q, align 8, !noalias !13972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13972
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acdv)
          to label %bb.jca unwind label %bb.jbz, !noalias !13976

bb.jbz:                                           ; preds = %bb.jcb, %bb.jca, %bb.jby
  %i.acdw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body349.i.i unwind label %bb.jcc, !noalias !13976

bb.jca:                                           ; preds = %bb.jby
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !13972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13972
  %i.acdx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i8 0, ptr %i.acdx, align 8, !noalias !13972
end_hunk_2
begin_hunk_3_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0B5_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i: ; preds = %bb.jcd
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acea)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit324.i.i unwind label %bb.jcg, !noalias !13840

.body321.i.i:                                     ; preds = %.body349.i.i, %bb.jdv, %bb.jcv, %bb.jcg, %bb.jce
  %i.aced = phi ptr [ %i.acbr, %bb.jcv ], [ %i.acia, %.body349.i.i ], [ %i.acdd, %bb.jce ], [ %i.acek, %bb.jcg ], [ %i.achm, %bb.jdv ] ; 2 uses
  %i.acee = phi ptr [ %i.acbs, %bb.jcv ], [ %i.acib, %.body349.i.i ], [ %i.acde, %bb.jce ], [ %i.acel, %bb.jcg ], [ %i.achn, %bb.jdv ] ; 2 uses
  %i.acef = phi ptr [ %i.acbt, %bb.jcv ], [ %i.acic, %.body349.i.i ], [ %i.acdf, %bb.jce ], [ %i.acem, %bb.jcg ], [ %i.acho, %bb.jdv ] ; 2 uses
  %i.aceg = phi ptr [ %i.acbu, %bb.jcv ], [ %i.acid, %.body349.i.i ], [ %i.acdg, %bb.jce ], [ %i.acen, %bb.jcg ], [ %i.achp, %bb.jdv ] ; 2 uses
  %.pn143.pn.i.i = phi { ptr, i32 } [ %i.acfv, %bb.jcv ], [ %.pn139.pn.pn.i.i, %.body349.i.i ], [ %i.aceb, %bb.jce ], [ %i.aceo, %bb.jcg ], [ %i.achr, %bb.jdv ] ; 2 uses
  %i.aceh = getelementptr inbounds nuw i8, ptr %1, i64 1625
  %i.acei = load i8, ptr %i.aceh, align 1, !range !777, !noalias !13836, !noundef !11
  %i.acej = trunc nuw i8 %i.acei to i1
  br i1 %i.acej, label %bb.jef, label %.body375.i.i

bb.jcg:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i
  %i.acek = phi ptr [ %i.achm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ], [ %i.acdd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i ]
  %i.acel = phi ptr [ %i.achn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ], [ %i.acde, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i ]
  %i.acem = phi ptr [ %i.acho, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ], [ %i.acdf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i ]
  %i.acen = phi ptr [ %i.achp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ], [ %i.acdg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i ]
  %i.aceo = landingpad { ptr, i32 }
          cleanup
  br label %.body321.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit324.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i320.i.i
  %i.acep = getelementptr inbounds nuw i8, ptr %1, i64 1625
  store i8 0, ptr %i.acep, align 1, !noalias !13836
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i unwind label %bb.jch, !noalias !13840

bb.jch:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit324.i.i
  %i.aceq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acds)
          to label %.body327.i.i unwind label %bb.jci, !noalias !13840

bb.jci:                                           ; preds = %bb.jch
  %i.acer = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit324.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i unwind label %bb.jcj, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330_crit_edge.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i
  %.phi.trans.insert1106.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.pre1107.i.i = load ptr, ptr %.phi.trans.insert1106.i.i, align 16, !alias.scope !13961, !noalias !13977
  %.phi.trans.insert1108.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %.pre1109.i.i = load ptr, ptr %.phi.trans.insert1108.i.i, align 16, !alias.scope !13961, !noalias !13977
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330.i.i

.body327.i.i:                                     ; preds = %.body375.i.i, %bb.jdz, %bb.jcj, %bb.jch
  %i.aces = phi ptr [ %i.aciv, %.body375.i.i ], [ %i.acdd, %bb.jch ], [ %i.acex, %bb.jcj ], [ %i.acih, %bb.jdz ]
  %i.acet = phi ptr [ %i.aciw, %.body375.i.i ], [ %i.acde, %bb.jch ], [ %i.acey, %bb.jcj ], [ %i.acii, %bb.jdz ]
  %i.aceu = phi ptr [ %i.acix, %.body375.i.i ], [ %i.acdf, %bb.jch ], [ %i.acez, %bb.jcj ], [ %i.acij, %bb.jdz ]
  %i.acev = phi ptr [ %i.aciy, %.body375.i.i ], [ %i.acdg, %bb.jch ], [ %i.acfa, %bb.jcj ], [ %i.acik, %bb.jdz ]
  %.pn148.i.i = phi { ptr, i32 } [ %.pn146.i.i, %.body375.i.i ], [ %i.aceq, %bb.jch ], [ %i.acfb, %bb.jcj ], [ %i.aciq, %bb.jdz ]
  %i.acew = getelementptr inbounds nuw i8, ptr %1, i64 1480
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acew)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.jcj:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i
  %i.acex = phi ptr [ %i.acih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i ], [ %i.acdd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i ]
  %i.acey = phi ptr [ %i.acii, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i ], [ %i.acde, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i ]
  %i.acez = phi ptr [ %i.acij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i ], [ %i.acdf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i ]
  %i.acfa = phi ptr [ %i.acik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i ], [ %i.acdg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i326.i.i ]
  %i.acfb = landingpad { ptr, i32 }
          cleanup
  br label %.body327.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit330.i.i
  %i.acfc = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.acfd = getelementptr inbounds nuw i8, ptr %i.acbv, i64 48
  store ptr %i.acfd, ptr %i.acfc, align 16, !alias.scope !13961, !noalias !13977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.acby, ptr noundef nonnull align 8 dereferenceable(48) %i.acbv, i64 48, i1 false), !noalias !13978
  %.pr1058.i.i = load i64, ptr %i.acby, align 8, !noalias !13836
  %.not87.i.i = icmp eq i64 %.pr1058.i.i, -1
  br i1 %.not87.i.i, label %bb.jck, label %bb.jcw

bb.jck:                                           ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acbx)
          to label %bb.jcm unwind label %bb.jcl, !noalias !13840

bb.jcl:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i, %bb.jck
  %i.acfe = phi ptr [ %i.acih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.acbr, %bb.jck ]
  %i.acff = phi ptr [ %i.acii, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.acbs, %bb.jck ]
  %i.acfg = phi ptr [ %i.acij, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.acbt, %bb.jck ]
  %i.acfh = phi ptr [ %i.acik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i ], [ %i.acbu, %bb.jck ]
  %i.acfi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jcm:                                           ; preds = %bb.jck
  %i.acfj = getelementptr i8, ptr %1, i64 1368
  %.val203.i.i = load ptr, ptr %i.acfj, align 8, !noalias !13836, !nonnull !11, !noundef !11
  %i.acfk = getelementptr i8, ptr %1, i64 1376
  %.val204.i.i = load i64, ptr %i.acfk, align 16, !noalias !13836, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13979
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val203.i.i, i64 noundef %.val204.i.i)
          to label %.noexc335.i.i unwind label %bb.jco, !noalias !13840

.noexc335.i.i:                                    ; preds = %bb.jcm
  %i.acfl = load i64, ptr %i.m, align 8, !range !110, !noalias !13979, !noundef !11
  %.not.i.i334.i.i = icmp eq i64 %i.acfl, 2
  br i1 %.not.i.i334.i.i, label %bb.jcn, label %bb.jcq

bb.jcn:                                           ; preds = %.noexc335.i.i
  %i.acfm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i.i5747 = load ptr, ptr %i.acfm, align 8, !noalias !13979, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val1.i.i.i5747)
          to label %bb.jcp unwind label %bb.jco, !noalias !13840

bb.jco:                                           ; preds = %bb.jcn, %bb.jcm
  %i.acfn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jcp:                                           ; preds = %bb.jcn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13979
  br label %bb.jfh

bb.jcq:                                           ; preds = %.noexc335.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13979
  %i.acfo = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.acfp = getelementptr i8, ptr %1, i64 1464
  %.val201.i.i = load ptr, ptr %i.acfp, align 8, !noalias !13836, !nonnull !11, !noundef !11
  %i.acfq = getelementptr i8, ptr %1, i64 1472
  %.val202.i.i = load i64, ptr %i.acfq, align 16, !noalias !13836, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13982
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val201.i.i, i64 noundef %.val202.i.i)
          to label %.noexc339.i.i unwind label %bb.jcs, !noalias !13840

.noexc339.i.i:                                    ; preds = %bb.jcq
  %i.acfr = load i64, ptr %i.l, align 8, !range !110, !noalias !13982, !noundef !11
  %.not.i.i337.i.i = icmp eq i64 %i.acfr, 2
  br i1 %.not.i.i337.i.i, label %bb.jcr, label %bb.jcu

bb.jcr:                                           ; preds = %.noexc339.i.i
  %i.acfs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i338.i.i = load ptr, ptr %i.acfs, align 8, !noalias !13982, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val1.i338.i.i)
          to label %bb.jct unwind label %bb.jcs, !noalias !13840

bb.jcs:                                           ; preds = %bb.jcr, %bb.jcq
  %i.acft = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jct:                                           ; preds = %bb.jcr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13982
  br label %bb.jer

bb.jcu:                                           ; preds = %.noexc339.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13982
  %i.acfu = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.acfo, ptr %i.acfu, align 16, !noalias !13836
  %.sroa.9738.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store i8 0, ptr %.sroa.9738.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jeh

bb.jcv:                                           ; preds = %bb.jcw
  %i.acfv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13836
  br label %.body321.i.i

bb.jcw:                                           ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.acfw = getelementptr inbounds nuw i8, ptr %1, i64 1560
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acfw, ptr noundef nonnull align 8 dereferenceable(24) %i.acbv, i64 24, i1 false), !noalias !13840
  %i.acfx = getelementptr inbounds nuw i8, ptr %1, i64 1625
  store i8 1, ptr %i.acfx, align 1, !noalias !13836
  %i.acfy = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.acfz = getelementptr inbounds nuw i8, ptr %1, i64 1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.acfy, ptr noundef nonnull align 16 dereferenceable(24) %i.acfz, i64 24, i1 false), !noalias !13836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13836
  %i.acga = getelementptr i8, ptr %1, i64 1440
  %.val205.i.i = load ptr, ptr %i.acga, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %i.acgb = getelementptr i8, ptr %1, i64 1448
  %.val206.i.i = load i64, ptr %i.acgb, align 8, !noalias !13836, !noundef !11
  %i.acgc = getelementptr i8, ptr %1, i64 1568
  %.val184.i.i = load ptr, ptr %i.acgc, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %i.acgd = getelementptr i8, ptr %1, i64 1576
  %.val185.i.i = load i64, ptr %i.acgd, align 8, !noalias !13836, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val205.i.i, i64 noundef %.val206.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val184.i.i, i64 noundef %.val185.i.i)
          to label %bb.jcx unwind label %bb.jcv, !noalias !13840

bb.jcx:                                           ; preds = %bb.jcw
  call void @llvm.experimental.noalias.scope.decl(metadata !13985)
  %i.acge = load i8, ptr %i.ab, align 8, !range !7294, !alias.scope !13988, !noalias !13990, !noundef !11 ; 2 uses
  %.not.i342.i.i = icmp eq i8 %i.acge, -1
  br i1 %.not.i342.i.i, label %bb.jcy, label %bb.jdx

bb.jcy:                                           ; preds = %bb.jcx
  %i.acgf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.8659.sroa.6.7.copyload975.i.i = load ptr, ptr %i.acgf, align 8, !alias.scope !13991, !noalias !13836
  %.sroa.8659.sroa.9.7..sroa_idx976.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8659.sroa.9.7.copyload977.i.i = load i64, ptr %.sroa.8659.sroa.9.7..sroa_idx976.i.i, align 8, !alias.scope !13991, !noalias !13836 ; 2 uses
  %.sroa.8659.sroa.10.7..sroa_idx978.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.8659.sroa.10.7.copyload979.i.i = load i64, ptr %.sroa.8659.sroa.10.7..sroa_idx978.i.i, align 8, !alias.scope !13991, !noalias !13836 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13836
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 1584
  store ptr %.sroa.8659.sroa.6.7.copyload975.i.i, ptr %7, align 16, !noalias !13836
  %.sroa.4981.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store i64 %.sroa.8659.sroa.9.7.copyload977.i.i, ptr %.sroa.4981.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.5982.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store i64 %.sroa.8659.sroa.10.7.copyload979.i.i, ptr %.sroa.5982.0..sroa_idx.i.i, align 16, !noalias !13836
  %.val199.cast.i.i = inttoptr i64 %.sroa.8659.sroa.9.7.copyload977.i.i to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val199.cast.i.i) ]
  %i.acgg = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val199.cast.i.i, i64 noundef %.sroa.8659.sroa.10.7.copyload979.i.i)
          to label %bb.jda unwind label %bb.jcz, !noalias !13840 ; 2 uses

bb.jcz:                                           ; preds = %bb.jcy
  %i.acgh = landingpad { ptr, i32 }
          cleanup
  br label %.body349.i.i

bb.jda:                                           ; preds = %bb.jcy
  %i.acgi = extractvalue { ptr, i64 } %i.acgg, 0  ; 2 uses
  %.not128.i.i = icmp eq ptr %i.acgi, null
  br i1 %.not128.i.i, label %.thread1137.i.i, label %bb.jdb

bb.jdb:                                           ; preds = %bb.jda
  %i.acgj = extractvalue { ptr, i64 } %i.acgg, 1
  %i.acgk = getelementptr inbounds nuw i8, ptr %1, i64 1656
  store ptr %i.acgi, ptr %i.acgk, align 8, !noalias !13836
  %.sroa.8684.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1664
  store i64 %i.acgj, ptr %.sroa.8684.0..sroa_idx.i.i, align 16, !noalias !13836
  %.sroa.10686.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1728
  store i8 0, ptr %.sroa.10686.0..sroa_idx.i.i, align 16, !noalias !13836
  br label %bb.jdd

bb.jdc:                                           ; preds = %bb.jdd
  %i.acgl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acgq) #26
          to label %.body349.i.i unwind label %bb.izd, !noalias !13840

bb.jdd:                                           ; preds = %bb.jdb, %bb.ixd
  %i.acgm = phi ptr [ %i.acbr, %bb.jdb ], [ %i.abkv, %bb.ixd ] ; 8 uses
  %i.acgn = phi ptr [ %i.acbs, %bb.jdb ], [ %i.abku, %bb.ixd ] ; 7 uses
  %i.acgo = phi ptr [ %i.acbt, %bb.jdb ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 8 uses
  %i.acgp = phi ptr [ %i.acbu, %bb.jdb ], [ %i.abpo, %bb.ixd ] ; 7 uses
  %i.acgq = getelementptr inbounds nuw i8, ptr %1, i64 1656 ; 2 uses
  %i.acgr = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acgq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jde unwind label %bb.jdc, !noalias !13840 ; 2 uses

bb.jde:                                           ; preds = %bb.jdd
  %i.acgs = extractvalue { i64, ptr } %i.acgr, 0
  %i.acgt = extractvalue { i64, ptr } %i.acgr, 1
  %i.acgu = trunc nuw i64 %i.acgs to i1
  br i1 %i.acgu, label %.thread352.i, label %bb.jdf

bb.jdf:                                           ; preds = %bb.jde
  %i.acgv = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.acgw = load i8, ptr %i.acgv, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i347.i.i = icmp eq i8 %i.acgw, 3
  br i1 %cond.i347.i.i, label %bb.jdg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745

bb.jdg:                                           ; preds = %bb.jdf
  %i.acgx = getelementptr inbounds nuw i8, ptr %1, i64 1688 ; 3 uses
  %i.acgy = getelementptr inbounds nuw i8, ptr %1, i64 1720
  %i.acgz = load i8, ptr %i.acgy, align 8, !range !672, !noalias !13836, !noundef !11
  switch i8 %i.acgz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745 [
    i8 0, label %bb.jdh
    i8 3, label %bb.jdk
  ]

bb.jdh:                                           ; preds = %bb.jdg
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acgx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i5746 unwind label %bb.jdi, !noalias !13840

bb.jdi:                                           ; preds = %bb.jdh
  %i.acha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acgx)
          to label %.body349.i.i unwind label %bb.jdj, !noalias !13840

bb.jdj:                                           ; preds = %bb.jdi
  %i.achb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i5746: ; preds = %bb.jdh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acgx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745 unwind label %bb.jdl, !noalias !13840

bb.jdk:                                           ; preds = %bb.jdg
  %i.achc = getelementptr inbounds nuw i8, ptr %1, i64 1712
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.achc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745 unwind label %bb.jdl, !noalias !13840

bb.jdl:                                           ; preds = %bb.jdk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i5746
  %i.achd = landingpad { ptr, i32 }
          cleanup
  br label %.body349.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745: ; preds = %bb.jdk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i5746, %bb.jdg, %bb.jdf
  %i.ache = getelementptr inbounds nuw i8, ptr %1, i64 1560
  %i.achf = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB37_27ProcessingEngineManagerImpl24replace_plugin_directory0s3_0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.acgt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ache)
          to label %bb.jdn unwind label %bb.jdm, !noalias !13840 ; 3 uses

bb.jdm:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745
  %i.achg = landingpad { ptr, i32 }
          cleanup
  br label %.body349.i.i

bb.jdn:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsbakdBCgU4AF_16influxdb3_server.exit.i.i5745
  %.not.i353.i.i = icmp eq ptr %i.achf, null
  br i1 %.not.i353.i.i, label %.thread1137.i.i, label %bb.jdo

bb.jdo:                                           ; preds = %bb.jdn
  %i.achh = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13992
  store ptr %i.achf, ptr %i.k, align 8, !noalias !13996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13996
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.achh)
          to label %bb.jdq unwind label %bb.jdp, !noalias !14000

bb.jdp:                                           ; preds = %bb.jdr, %bb.jdq, %bb.jdo
  %i.achi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body349.i.i unwind label %bb.jds, !noalias !14000

bb.jdq:                                           ; preds = %bb.jdo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !13996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13996
  %i.achj = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %i.achj, align 8, !noalias !13996
  %i.achk = invoke noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn5spawnNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBT_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65)
          to label %bb.jdr unwind label %bb.jdp, !noalias !14000

bb.jdr:                                           ; preds = %bb.jdq
  store ptr %i.achk, ptr %i.j, align 8, !noalias !13996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13996
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.jdt unwind label %bb.jdp, !noalias !14000

bb.jds:                                           ; preds = %bb.jdp
  %i.achl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !14000
  unreachable

bb.jdt:                                           ; preds = %bb.jdr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13992
  br label %bb.jdu

bb.jdu:                                           ; preds = %bb.jdy, %bb.jdt
  %i.achm = phi ptr [ %i.acdd, %bb.jdy ], [ %i.acgm, %bb.jdt ] ; 3 uses
  %i.achn = phi ptr [ %i.acde, %bb.jdy ], [ %i.acgn, %bb.jdt ] ; 3 uses
  %i.acho = phi ptr [ %i.acdf, %bb.jdy ], [ %i.acgo, %bb.jdt ] ; 3 uses
  %i.achp = phi ptr [ %i.acdg, %bb.jdy ], [ %i.acgp, %bb.jdt ] ; 3 uses
  %.sroa.48.5.in.i.i = phi ptr [ %i.acdt, %bb.jdy ], [ %i.achf, %bb.jdt ]
  %i.achq = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.achq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i unwind label %bb.jdv, !noalias !13840

bb.jdv:                                           ; preds = %bb.jdu
  %i.achr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.achq)
          to label %.body321.i.i unwind label %bb.jdw, !noalias !13840

bb.jdw:                                           ; preds = %bb.jdv
  %i.achs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i: ; preds = %bb.jdu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.achq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit366.i.i unwind label %bb.jcg, !noalias !13840

.thread1137.i.i:                                  ; preds = %bb.jdn, %bb.jda
  %i.acht = phi ptr [ %i.acgm, %bb.jdn ], [ %i.acbr, %bb.jda ]
  %i.achu = phi ptr [ %i.acgn, %bb.jdn ], [ %i.acbs, %bb.jda ]
  %i.achv = phi ptr [ %i.acgo, %bb.jdn ], [ %i.acbt, %bb.jda ]
  %i.achw = phi ptr [ %i.acgp, %bb.jdn ], [ %i.acbu, %bb.jda ]
  %i.achx = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 2 uses
  %i.achy = getelementptr inbounds nuw i8, ptr %1, i64 1625
  store i8 0, ptr %i.achy, align 1, !noalias !13836
  %.sroa.8711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1656
  store ptr %i.achx, ptr %.sroa.8711.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.10713.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1800 ; 2 uses
  store i8 0, ptr %.sroa.10713.0..sroa_idx.i.i, align 8, !noalias !13836
  %i.achz = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.jbi

.body349.i.i:                                     ; preds = %bb.jdp, %bb.jdm, %bb.jdl, %bb.jdi, %bb.jdc, %bb.jcz, %bb.jbz, %bb.jbw, %.body307.i.i
  %i.acia = phi ptr [ %i.acgm, %bb.jdl ], [ %i.acbr, %bb.jcz ], [ %i.acgm, %bb.jdp ], [ %i.acgm, %bb.jdi ], [ %i.acgm, %bb.jdm ], [ %i.acgm, %bb.jdc ], [ %i.acdd, %bb.jbz ], [ %i.accb, %.body307.i.i ], [ %i.acdd, %bb.jbw ]
  %i.acib = phi ptr [ %i.acgn, %bb.jdl ], [ %i.acbs, %bb.jcz ], [ %i.acgn, %bb.jdp ], [ %i.acgn, %bb.jdi ], [ %i.acgn, %bb.jdm ], [ %i.acgn, %bb.jdc ], [ %i.acde, %bb.jbz ], [ %i.accc, %.body307.i.i ], [ %i.acde, %bb.jbw ]
  %i.acic = phi ptr [ %i.acgo, %bb.jdl ], [ %i.acbt, %bb.jcz ], [ %i.acgo, %bb.jdp ], [ %i.acgo, %bb.jdi ], [ %i.acgo, %bb.jdm ], [ %i.acgo, %bb.jdc ], [ %i.acdf, %bb.jbz ], [ %i.accd, %.body307.i.i ], [ %i.acdf, %bb.jbw ]
  %i.acid = phi ptr [ %i.acgp, %bb.jdl ], [ %i.acbu, %bb.jcz ], [ %i.acgp, %bb.jdp ], [ %i.acgp, %bb.jdi ], [ %i.acgp, %bb.jdm ], [ %i.acgp, %bb.jdc ], [ %i.acdg, %bb.jbz ], [ %i.acce, %.body307.i.i ], [ %i.acdg, %bb.jbw ]
  %.pn139.pn.pn.i.i = phi { ptr, i32 } [ %i.achd, %bb.jdl ], [ %i.acgh, %bb.jcz ], [ %i.achi, %bb.jdp ], [ %i.acha, %bb.jdi ], [ %i.achg, %bb.jdm ], [ %i.acgl, %bb.jdc ], [ %i.acdw, %bb.jbz ], [ %eh.lpad-body308.i.i, %.body307.i.i ], [ %i.acdu, %bb.jbw ]
  %i.acie = getelementptr inbounds nuw i8, ptr %1, i64 1584
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.acie) #26
          to label %.body321.i.i unwind label %bb.izd, !noalias !13840

bb.jdx:                                           ; preds = %bb.jcx
  %.sroa.8659.0..sroa_idx660.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.8659.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.8659.0..sroa_idx660.i.i, align 1, !alias.scope !13991, !noalias !13836
  %.sroa.8659.sroa.6.0..sroa.8659.0..sroa_idx660.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.8659.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.8659.sroa.6.0..sroa.8659.0..sroa_idx660.sroa_idx.i.i, align 8, !alias.scope !13991, !noalias !13836
  %.sroa.8659.sroa.9.0..sroa.8659.0..sroa_idx660.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.acif = load <2 x i64>, ptr %.sroa.8659.sroa.9.0..sroa.8659.0..sroa_idx660.sroa_idx.i.i, align 8, !alias.scope !13991, !noalias !13836
  %.sroa.10662.0..sroa_idx663.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10662.0..sroa_idx663.i.i, i64 56, i1 false), !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13836
  %.sroa.4.i344.sroa.3.0.insert.ext.i.i = zext nneg i8 %i.acge to i64
  %.sroa.4.i344.sroa.3.1.insert.ext.i.i = zext i56 %.sroa.8659.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i344.sroa.3.1.insert.shift.i.i = shl nuw i64 %.sroa.4.i344.sroa.3.1.insert.ext.i.i, 8
  %.sroa.4.i344.sroa.3.1.insert.insert.i.i = or disjoint i64 %.sroa.4.i344.sroa.3.1.insert.shift.i.i, %.sroa.4.i344.sroa.3.0.insert.ext.i.i
  %i.acig = inttoptr i64 %.sroa.4.i344.sroa.3.1.insert.insert.i.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit366.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit366.i.i: ; preds = %bb.jdx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i
  %i.acih = phi ptr [ %i.acbr, %bb.jdx ], [ %i.achm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ] ; 6 uses
  %i.acii = phi ptr [ %i.acbs, %bb.jdx ], [ %i.achn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ] ; 6 uses
  %i.acij = phi ptr [ %i.acbt, %bb.jdx ], [ %i.acho, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ] ; 6 uses
  %i.acik = phi ptr [ %i.acbu, %bb.jdx ], [ %i.achp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ] ; 6 uses
  %.sroa.30.6.i.i = phi ptr [ %i.acig, %bb.jdx ], [ inttoptr (i64 27 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ]
  %.sroa.48.6.i.i = phi ptr [ %.sroa.8659.sroa.6.0.copyload.i.i, %bb.jdx ], [ %.sroa.48.5.in.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ]
  %i.acil = phi <2 x i64> [ %i.acif, %bb.jdx ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i362.i.i ]
  %i.acim = getelementptr inbounds nuw i8, ptr %1, i64 1625 ; 2 uses
  %i.acin = load i8, ptr %i.acim, align 1, !range !777, !noalias !13836, !noundef !11
  %i.acio = trunc nuw i8 %i.acin to i1
  br i1 %i.acio, label %bb.jeb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit378.i.i

bb.jdy:                                           ; preds = %bb.jcb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13968
  br label %bb.jdu

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit378.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i374.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit366.i.i
  store i8 0, ptr %i.acim, align 1, !noalias !13836
  %i.acip = getelementptr inbounds nuw i8, ptr %1, i64 1560 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acip)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i unwind label %bb.jdz, !noalias !13840

bb.jdz:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit378.i.i
  %i.aciq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acip)
          to label %.body327.i.i unwind label %bb.jea, !noalias !13840

bb.jea:                                           ; preds = %bb.jdz
  %i.acir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit378.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acip)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i unwind label %bb.jcj, !noalias !13840

bb.jeb:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit366.i.i
  %i.acis = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acis)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i374.i.i unwind label %bb.jec, !noalias !13840

bb.jec:                                           ; preds = %bb.jeb
  %i.acit = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acis)
          to label %.body375.i.i unwind label %bb.jed, !noalias !13840

bb.jed:                                           ; preds = %bb.jec
  %i.aciu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i374.i.i: ; preds = %bb.jeb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acis)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit378.i.i unwind label %bb.jee, !noalias !13840

.body375.i.i:                                     ; preds = %bb.jef, %bb.jee, %bb.jec, %.body321.i.i
  %i.aciv = phi ptr [ %i.aced, %.body321.i.i ], [ %i.aced, %bb.jef ], [ %i.acih, %bb.jee ], [ %i.acih, %bb.jec ]
  %i.aciw = phi ptr [ %i.acee, %.body321.i.i ], [ %i.acee, %bb.jef ], [ %i.acii, %bb.jee ], [ %i.acii, %bb.jec ]
  %i.acix = phi ptr [ %i.acef, %.body321.i.i ], [ %i.acef, %bb.jef ], [ %i.acij, %bb.jee ], [ %i.acij, %bb.jec ]
  %i.aciy = phi ptr [ %i.aceg, %.body321.i.i ], [ %i.aceg, %bb.jef ], [ %i.acik, %bb.jee ], [ %i.acik, %bb.jec ]
  %.pn146.i.i = phi { ptr, i32 } [ %.pn143.pn.i.i, %.body321.i.i ], [ %.pn143.pn.i.i, %bb.jef ], [ %i.acjb, %bb.jee ], [ %i.acit, %bb.jec ]
  %i.aciz = getelementptr inbounds nuw i8, ptr %1, i64 1625
  store i8 0, ptr %i.aciz, align 1, !noalias !13836
  %i.acja = getelementptr inbounds nuw i8, ptr %1, i64 1560
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acja) #26
          to label %.body327.i.i unwind label %bb.izd, !noalias !13840

bb.jee:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i374.i.i
  %i.acjb = landingpad { ptr, i32 }
          cleanup
  br label %.body375.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit372.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i368.i.i
  %i.acjc = getelementptr inbounds nuw i8, ptr %1, i64 1480
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acjc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i unwind label %bb.jcl, !noalias !13840

bb.jef:                                           ; preds = %.body321.i.i
  %i.acjd = getelementptr inbounds nuw i8, ptr %1, i64 1632
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acjd) #26
          to label %.body375.i.i unwind label %bb.izd, !noalias !13840

bb.jeg:                                           ; preds = %bb.jeh
  %i.acje = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acjj) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.jeh:                                           ; preds = %bb.jcu, %bb.ixd
  %i.acjf = phi ptr [ %i.acbr, %bb.jcu ], [ %i.abkv, %bb.ixd ] ; 6 uses
  %i.acjg = phi ptr [ %i.acbs, %bb.jcu ], [ %i.abku, %bb.ixd ] ; 5 uses
  %i.acjh = phi ptr [ %i.acbt, %bb.jcu ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 6 uses
  %i.acji = phi ptr [ %i.acbu, %bb.jcu ], [ %i.abpo, %bb.ixd ] ; 5 uses
  %i.acjj = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.acjk = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acjj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jei unwind label %bb.jeg, !noalias !13840 ; 2 uses

bb.jei:                                           ; preds = %bb.jeh
  %i.acjl = extractvalue { i64, ptr } %i.acjk, 0
  %i.acjm = extractvalue { i64, ptr } %i.acjk, 1
  %i.acjn = trunc nuw i64 %i.acjl to i1
  br i1 %i.acjn, label %.thread352.i, label %bb.jej

bb.jej:                                           ; preds = %bb.jei
  %i.acjo = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.acjp = load i8, ptr %i.acjo, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i381.i.i = icmp eq i8 %i.acjp, 3
  br i1 %cond.i381.i.i, label %bb.jek, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i

bb.jek:                                           ; preds = %bb.jej
  %i.acjq = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  %i.acjr = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %i.acjs = load i8, ptr %i.acjr, align 16, !range !672, !noalias !13836, !noundef !11
  switch i8 %i.acjs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i [
    i8 0, label %bb.jel
    i8 3, label %bb.jeo
  ]

bb.jel:                                           ; preds = %bb.jek
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acjq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i383.i.i unwind label %bb.jem, !noalias !13840

bb.jem:                                           ; preds = %bb.jel
  %i.acjt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acjq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.jen, !noalias !13840

bb.jen:                                           ; preds = %bb.jem
  %i.acju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i383.i.i: ; preds = %bb.jel
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acjq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i unwind label %bb.jep, !noalias !13840

bb.jeo:                                           ; preds = %bb.jek
  %i.acjv = getelementptr inbounds nuw i8, ptr %1, i64 1672
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acjv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i unwind label %bb.jep, !noalias !13840

bb.jep:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i, %bb.jeo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i383.i.i
  %i.acjw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i: ; preds = %bb.jeo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i383.i.i, %bb.jek, %bb.jej
  %i.acjx = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.acjm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 39)
          to label %bb.jeq unwind label %bb.jep, !noalias !13840 ; 2 uses

bb.jeq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit388.i.i
  %.not.i389.i.i = icmp eq ptr %i.acjx, null
  br i1 %.not.i389.i.i, label %bb.jer, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

bb.jer:                                           ; preds = %bb.jeq, %bb.jct
  %i.acjy = phi ptr [ %i.acjf, %bb.jeq ], [ %i.acbr, %bb.jct ]
  %i.acjz = phi ptr [ %i.acjg, %bb.jeq ], [ %i.acbs, %bb.jct ]
  %i.acka = phi ptr [ %i.acjh, %bb.jeq ], [ %i.acbt, %bb.jct ]
  %i.ackb = phi ptr [ %i.acji, %bb.jeq ], [ %i.acbu, %bb.jct ]
  %i.ackc = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.ackd = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.acke = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.ackc, ptr %i.acke, align 16, !noalias !13836
  %.sroa.8763.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.ackd, ptr %.sroa.8763.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.10765.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1768
  store i8 0, ptr %.sroa.10765.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jev

bb.jes:                                           ; preds = %bb.jev
  %i.ackf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ackg = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %i.ackh = load i8, ptr %i.ackg, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i395.i.i = icmp eq i8 %i.ackh, 3
  br i1 %cond.i395.i.i, label %bb.jet, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jet:                                           ; preds = %bb.jes
  %i.acki = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.ackj = load i8, ptr %i.acki, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i.i.i5744 = icmp eq i8 %i.ackj, 3
  br i1 %cond.i.i.i.i5744, label %bb.jeu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jeu:                                           ; preds = %bb.jet
  %i.ackk = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.ackk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.jev:                                           ; preds = %bb.jer, %bb.ixd
  %i.ackl = phi ptr [ %i.acjy, %bb.jer ], [ %i.abkv, %bb.ixd ] ; 8 uses
  %i.ackm = phi ptr [ %i.acjz, %bb.jer ], [ %i.abku, %bb.ixd ] ; 7 uses
  %i.ackn = phi ptr [ %i.acka, %bb.jer ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 8 uses
  %i.acko = phi ptr [ %i.ackb, %bb.jer ], [ %i.abpo, %bb.ixd ] ; 7 uses
  %i.ackp = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ackq = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.ackp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jew unwind label %bb.jes, !noalias !13840 ; 2 uses

bb.jew:                                           ; preds = %bb.jev
  %i.ackr = extractvalue { i64, ptr } %i.ackq, 0
  %i.acks = extractvalue { i64, ptr } %i.ackq, 1
  %i.ackt = trunc nuw i64 %i.ackr to i1
  br i1 %i.ackt, label %.thread352.i, label %bb.jex

bb.jex:                                           ; preds = %bb.jew
  %i.acku = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %i.ackv = load i8, ptr %i.acku, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i397.i.i = icmp eq i8 %i.ackv, 3
  br i1 %cond.i397.i.i, label %bb.jey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i

bb.jey:                                           ; preds = %bb.jex
  %i.ackw = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.ackx = load i8, ptr %i.ackw, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i398.i.i = icmp eq i8 %i.ackx, 3
  br i1 %cond.i.i398.i.i, label %bb.jez, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i

bb.jez:                                           ; preds = %bb.jey
  %i.acky = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acky)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i unwind label %bb.jfa, !noalias !13840

bb.jfa:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i, %bb.jez
  %i.ackz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i: ; preds = %bb.jez, %bb.jey, %bb.jex
  %i.acla = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.acks, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 30)
          to label %bb.jfb unwind label %bb.jfa, !noalias !13840 ; 3 uses

bb.jfb:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit400.i.i
  %.not.i401.i.i = icmp eq ptr %i.acla, null
  br i1 %.not.i401.i.i, label %bb.jfh, label %bb.jfc

bb.jfc:                                           ; preds = %bb.jfb
  %i.aclb = getelementptr inbounds nuw i8, ptr %1, i64 1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14001
  store ptr %i.acla, ptr %i.g, align 8, !noalias !14005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14005
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aclb)
          to label %bb.jfe unwind label %bb.jfd, !noalias !14009

bb.jfd:                                           ; preds = %bb.jff, %bb.jfe, %bb.jfc
  %i.aclc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.jfg, !noalias !14009

bb.jfe:                                           ; preds = %bb.jfc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14005
  %i.acld = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %i.acld, align 8, !noalias !14005
  %i.acle = invoke noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn5spawnNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBT_27ProcessingEngineManagerImpl24replace_plugin_directory0s8_00ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
          to label %bb.jff unwind label %bb.jfd, !noalias !14009

bb.jff:                                           ; preds = %bb.jfe
  store ptr %i.acle, ptr %i.f, align 8, !noalias !14005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14005
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.jfi unwind label %bb.jfd, !noalias !14009

bb.jfg:                                           ; preds = %bb.jfd
  %i.aclf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !14009
  unreachable

bb.jfh:                                           ; preds = %bb.jfb, %bb.jcp
  %i.aclg = phi ptr [ %i.ackl, %bb.jfb ], [ %i.acbr, %bb.jcp ]
  %i.aclh = phi ptr [ %i.ackm, %bb.jfb ], [ %i.acbs, %bb.jcp ]
  %i.acli = phi ptr [ %i.ackn, %bb.jfb ], [ %i.acbt, %bb.jcp ]
  %i.aclj = phi ptr [ %i.acko, %bb.jfb ], [ %i.acbu, %bb.jcp ]
  %i.aclk = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.acll = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.aclm = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.aclk, ptr %i.aclm, align 16, !noalias !13836
  %.sroa.7779.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.acll, ptr %.sroa.7779.0..sroa_idx.i.i, align 8, !noalias !13836
  %.sroa.9781.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1768
  store i8 0, ptr %.sroa.9781.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jfm

bb.jfi:                                           ; preds = %bb.jff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14001
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

bb.jfj:                                           ; preds = %bb.jfm
  %i.acln = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aclo = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %i.aclp = load i8, ptr %i.aclo, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i409.i.i = icmp eq i8 %i.aclp, 3
  br i1 %cond.i409.i.i, label %bb.jfk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jfk:                                           ; preds = %bb.jfj
  %i.aclq = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.aclr = load i8, ptr %i.aclq, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i410.i.i = icmp eq i8 %i.aclr, 3
  br i1 %cond.i.i410.i.i, label %bb.jfl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jfl:                                           ; preds = %bb.jfk
  %i.acls = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acls)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.jfm:                                           ; preds = %bb.jfh, %bb.ixd
  %i.aclt = phi ptr [ %i.aclg, %bb.jfh ], [ %i.abkv, %bb.ixd ] ; 11 uses
  %i.aclu = phi ptr [ %i.aclh, %bb.jfh ], [ %i.abku, %bb.ixd ] ; 10 uses
  %i.aclv = phi ptr [ %i.acli, %bb.jfh ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 11 uses
  %i.aclw = phi ptr [ %i.aclj, %bb.jfh ], [ %i.abpo, %bb.ixd ] ; 10 uses
  %i.aclx = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.acly = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.aclx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jfn unwind label %bb.jfj, !noalias !13840 ; 2 uses

bb.jfn:                                           ; preds = %bb.jfm
  %i.aclz = extractvalue { i64, ptr } %i.acly, 0
  %i.acma = trunc nuw i64 %i.aclz to i1
  br i1 %i.acma, label %.thread352.i, label %bb.jfo

bb.jfo:                                           ; preds = %bb.jfn
  %i.acmb = extractvalue { i64, ptr } %i.acly, 1  ; 3 uses
  %i.acmc = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 2 uses
  store ptr %i.acmb, ptr %i.acmc, align 8, !noalias !13836
  %i.acmd = getelementptr inbounds nuw i8, ptr %1, i64 1768 ; 2 uses
  %i.acme = load i8, ptr %i.acmd, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i413.i.i = icmp eq i8 %i.acme, 3
  br i1 %cond.i413.i.i, label %bb.jfp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i

bb.jfp:                                           ; preds = %bb.jfo
  %i.acmf = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.acmg = load i8, ptr %i.acmf, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i414.i.i = icmp eq i8 %i.acmg, 3
  br i1 %cond.i.i414.i.i, label %bb.jfq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i

bb.jfq:                                           ; preds = %bb.jfp
  %i.acmh = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acmh)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416thread-pre-split_crit_edge.i.i unwind label %bb.jfr, !noalias !13840

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416thread-pre-split_crit_edge.i.i: ; preds = %bb.jfq
  %.pr1083.pre.i.i = load ptr, ptr %i.acmc, align 8, !noalias !13836
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i

bb.jfr:                                           ; preds = %bb.jfq
  %i.acmi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416thread-pre-split_crit_edge.i.i, %bb.jfp, %bb.jfo
  %i.acmj = phi ptr [ %i.acmb, %bb.jfo ], [ %.pr1083.pre.i.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416thread-pre-split_crit_edge.i.i ], [ %i.acmb, %bb.jfp ] ; 2 uses
  %.not102.i.i = icmp eq ptr %i.acmj, null
  br i1 %.not102.i.i, label %bb.jfx, label %bb.jfs

bb.jfs:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i
  %i.acmk = getelementptr inbounds nuw i8, ptr %1, i64 1627
  store i8 1, ptr %i.acmk, align 1, !noalias !13836
  %i.acml = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store ptr %i.acmj, ptr %i.acml, align 16, !noalias !13836
  %i.acmm = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.acmn = getelementptr i8, ptr %1, i64 1464
  %.val197.i.i = load ptr, ptr %i.acmn, align 8, !noalias !13836, !nonnull !11, !noundef !11
  %i.acmo = getelementptr i8, ptr %1, i64 1472
  %.val198.i.i = load i64, ptr %i.acmo, align 16, !noalias !13836, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14010
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val197.i.i, i64 noundef %.val198.i.i)
          to label %.noexc419.i.i unwind label %bb.jfu, !noalias !13840

.noexc419.i.i:                                    ; preds = %bb.jfs
  %i.acmp = load i64, ptr %i.c, align 8, !range !110, !noalias !14010, !noundef !11
  %.not.i.i417.i.i = icmp eq i64 %i.acmp, 2
  br i1 %.not.i.i417.i.i, label %bb.jft, label %bb.jfw

bb.jft:                                           ; preds = %.noexc419.i.i
  %i.acmq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i418.i.i = load ptr, ptr %i.acmq, align 8, !noalias !14010, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val1.i418.i.i)
          to label %bb.jfv unwind label %bb.jfu, !noalias !13840

bb.jfu:                                           ; preds = %bb.jft, %bb.jfs
  %i.acmr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

bb.jfv:                                           ; preds = %bb.jft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14010
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jfw:                                           ; preds = %.noexc419.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14010
  %i.acms = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store ptr %i.acmm, ptr %i.aclx, align 16, !noalias !13836
  %.sroa.7790.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.acms, ptr %.sroa.7790.0..sroa_idx.i.i, align 8, !noalias !13836
  store i8 0, ptr %i.acmd, align 8, !noalias !13836
  br label %bb.jgi

bb.jfx:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit416.i.i
  %i.acmt = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.acmu = getelementptr i8, ptr %1, i64 1464
  %.val195.i.i = load ptr, ptr %i.acmu, align 8, !noalias !13836, !nonnull !11, !noundef !11
  %i.acmv = getelementptr i8, ptr %1, i64 1472
  %.val196.i.i = load i64, ptr %i.acmv, align 16, !noalias !13836, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14013
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val195.i.i, i64 noundef %.val196.i.i)
          to label %.noexc424.i.i unwind label %bb.jfz, !noalias !13840

.noexc424.i.i:                                    ; preds = %bb.jfx
  %i.acmw = load i64, ptr %i.b, align 8, !range !110, !noalias !14013, !noundef !11
  %.not.i.i422.i.i = icmp eq i64 %i.acmw, 2
  br i1 %.not.i.i422.i.i, label %bb.jfy, label %bb.jge

bb.jfy:                                           ; preds = %.noexc424.i.i
  %i.acmx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i423.i.i = load ptr, ptr %i.acmx, align 8, !noalias !14013, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val1.i423.i.i)
          to label %bb.jga unwind label %bb.jfz, !noalias !13840

bb.jfz:                                           ; preds = %bb.jfy, %bb.jfx
  %i.acmy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jga:                                           ; preds = %bb.jfy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14013
  br label %bb.jgb

bb.jgb:                                           ; preds = %bb.jhr, %bb.jga
  %i.acmz = phi ptr [ %i.acpu, %bb.jhr ], [ %i.aclt, %bb.jga ] ; 13 uses
  %i.acna = phi ptr [ %i.acpv, %bb.jhr ], [ %i.aclu, %bb.jga ] ; 13 uses
  %i.acnb = phi ptr [ %i.acpw, %bb.jhr ], [ %i.aclv, %bb.jga ] ; 13 uses
  %i.acnc = phi ptr [ %i.acpx, %bb.jhr ], [ %i.aclw, %bb.jga ] ; 13 uses
  %i.acnd = getelementptr inbounds nuw i8, ptr %1, i64 1628 ; 2 uses
  store i8 0, ptr %i.acnd, align 4, !noalias !13836
  %i.acne = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %.sroa.0914.0.copyload.i.i = load ptr, ptr %i.acne, align 16, !noalias !13836
  %.sroa.4.0..sroa_idx.i.i5740 = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %.sroa.4.0.copyload.i.i5741 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i5740, align 8, !noalias !13836
  %.sroa.5915.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %.sroa.5915.0.copyload.i.i = load i64, ptr %.sroa.5915.0..sroa_idx.i.i, align 16, !noalias !13836
  %i.acnf = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acnf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i unwind label %bb.jgc, !noalias !13840

bb.jgc:                                           ; preds = %bb.jgb
  %i.acng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acnf)
          to label %.body277.i.i unwind label %bb.jgd, !noalias !13840

bb.jgd:                                           ; preds = %bb.jgc
  %i.acnh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i: ; preds = %bb.jgb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acnf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit432.i.i unwind label %bb.jhs, !noalias !13840

bb.jge:                                           ; preds = %.noexc424.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14013
  store ptr %i.acmt, ptr %i.aclx, align 16, !noalias !13836
  %.sroa.9821.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store i8 0, ptr %.sroa.9821.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jhi

bb.jgf:                                           ; preds = %bb.jgi
  %i.acni = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acnj = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %i.acnk = load i8, ptr %i.acnj, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i433.i.i = icmp eq i8 %i.acnk, 3
  br i1 %cond.i433.i.i, label %bb.jgg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

bb.jgg:                                           ; preds = %bb.jgf
  %i.acnl = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.acnm = load i8, ptr %i.acnl, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i434.i.i = icmp eq i8 %i.acnm, 3
  br i1 %cond.i.i434.i.i, label %bb.jgh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

bb.jgh:                                           ; preds = %bb.jgg
  %i.acnn = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acnn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i unwind label %bb.izd, !noalias !13840

bb.jgi:                                           ; preds = %bb.jfw, %bb.ixd
  %i.acno = phi ptr [ %i.aclt, %bb.jfw ], [ %i.abkv, %bb.ixd ] ; 7 uses
  %i.acnp = phi ptr [ %i.aclu, %bb.jfw ], [ %i.abku, %bb.ixd ] ; 6 uses
  %i.acnq = phi ptr [ %i.aclv, %bb.jfw ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 7 uses
  %i.acnr = phi ptr [ %i.aclw, %bb.jfw ], [ %i.abpo, %bb.ixd ] ; 6 uses
  %i.acns = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.acnt = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acns, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jgj unwind label %bb.jgf, !noalias !13840 ; 2 uses

bb.jgj:                                           ; preds = %bb.jgi
  %i.acnu = extractvalue { i64, ptr } %i.acnt, 0
  %i.acnv = trunc nuw i64 %i.acnu to i1
  br i1 %i.acnv, label %.thread352.i, label %bb.jgk

bb.jgk:                                           ; preds = %bb.jgj
  %i.acnw = extractvalue { i64, ptr } %i.acnt, 1  ; 2 uses
  %i.acnx = getelementptr inbounds nuw i8, ptr %1, i64 1768
  %i.acny = load i8, ptr %i.acnx, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i437.i.i = icmp eq i8 %i.acny, 3
  br i1 %cond.i437.i.i, label %bb.jgl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i

bb.jgl:                                           ; preds = %bb.jgk
  %i.acnz = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.acoa = load i8, ptr %i.acnz, align 16, !range !672, !noalias !13836, !noundef !11
  %cond.i.i438.i.i = icmp eq i8 %i.acoa, 3
  br i1 %cond.i.i438.i.i, label %bb.jgm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i

bb.jgm:                                           ; preds = %bb.jgl
  %i.acob = getelementptr inbounds nuw i8, ptr %1, i64 1696
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acob)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i unwind label %bb.jgn, !noalias !13840

bb.jgn:                                           ; preds = %bb.jgo, %bb.jgm
  %i.acoc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i: ; preds = %bb.jgm, %bb.jgl, %bb.jgk
  %i.acod = icmp eq ptr %i.acnw, null
  br i1 %i.acod, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.jgo

bb.jgo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %i.acnw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.jgn, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.jgo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i, %bb.jfv
  %i.acoe = phi ptr [ %i.acno, %bb.jgo ], [ %i.acno, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i ], [ %i.aclt, %bb.jfv ]
  %i.acof = phi ptr [ %i.acnp, %bb.jgo ], [ %i.acnp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i ], [ %i.aclu, %bb.jfv ]
  %i.acog = phi ptr [ %i.acnq, %bb.jgo ], [ %i.acnq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i ], [ %i.aclv, %bb.jfv ]
  %i.acoh = phi ptr [ %i.acnr, %bb.jgo ], [ %i.acnr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit440.i.i ], [ %i.aclw, %bb.jfv ]
  %i.acoi = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.acoj = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.acoi, ptr %i.acoj, align 16, !noalias !13836
  %.sroa.8801.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store i8 0, ptr %.sroa.8801.0..sroa_idx.i.i, align 8, !noalias !13836
  br label %bb.jgq

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i: ; preds = %bb.jhc, %bb.jha, %bb.jgy, %bb.jgv, %bb.jgp, %bb.jgn, %bb.jgh, %bb.jgg, %bb.jgf, %bb.jfu
  %i.acok = phi ptr [ %i.acos, %bb.jha ], [ %i.acno, %bb.jgf ], [ %i.acos, %bb.jhc ], [ %i.aclt, %bb.jfu ], [ %i.acno, %bb.jgn ], [ %i.acno, %bb.jgg ], [ %i.acno, %bb.jgh ], [ %i.acos, %bb.jgv ], [ %i.acos, %bb.jgp ], [ %i.acos, %bb.jgy ]
  %i.acol = phi ptr [ %i.acot, %bb.jha ], [ %i.acnp, %bb.jgf ], [ %i.acot, %bb.jhc ], [ %i.aclu, %bb.jfu ], [ %i.acnp, %bb.jgn ], [ %i.acnp, %bb.jgg ], [ %i.acnp, %bb.jgh ], [ %i.acot, %bb.jgv ], [ %i.acot, %bb.jgp ], [ %i.acot, %bb.jgy ]
  %i.acom = phi ptr [ %i.acou, %bb.jha ], [ %i.acnq, %bb.jgf ], [ %i.acou, %bb.jhc ], [ %i.aclv, %bb.jfu ], [ %i.acnq, %bb.jgn ], [ %i.acnq, %bb.jgg ], [ %i.acnq, %bb.jgh ], [ %i.acou, %bb.jgv ], [ %i.acou, %bb.jgp ], [ %i.acou, %bb.jgy ]
  %i.acon = phi ptr [ %i.acov, %bb.jha ], [ %i.acnr, %bb.jgf ], [ %i.acov, %bb.jhc ], [ %i.aclw, %bb.jfu ], [ %i.acnr, %bb.jgn ], [ %i.acnr, %bb.jgg ], [ %i.acnr, %bb.jgh ], [ %i.acov, %bb.jgv ], [ %i.acov, %bb.jgp ], [ %i.acov, %bb.jgy ]
  %.pn120.pn.i.i = phi { ptr, i32 } [ %i.acpl, %bb.jha ], [ %i.acni, %bb.jgf ], [ %i.acpq, %bb.jhc ], [ %i.acmr, %bb.jfu ], [ %i.acoc, %bb.jgn ], [ %i.acni, %bb.jgg ], [ %i.acni, %bb.jgh ], [ %i.acpg, %bb.jgv ], [ %i.acor, %bb.jgp ], [ %i.acpj, %bb.jgy ]
  %i.acoo = getelementptr inbounds nuw i8, ptr %1, i64 1627 ; 2 uses
  %i.acop = load i8, ptr %i.acoo, align 1, !range !777, !noalias !13836, !noundef !11
  %i.acoq = trunc nuw i8 %i.acop to i1
  br i1 %i.acoq, label %bb.jhg, label %bb.jhf

bb.jgp:                                           ; preds = %bb.jgq
  %i.acor = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acow) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i unwind label %bb.izd, !noalias !13840

bb.jgq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.ixd
  %i.acos = phi ptr [ %i.acoe, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abkv, %bb.ixd ] ; 7 uses
  %i.acot = phi ptr [ %i.acof, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abku, %bb.ixd ] ; 6 uses
  %i.acou = phi ptr [ %i.acog, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 7 uses
  %i.acov = phi ptr [ %i.acoh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abpo, %bb.ixd ] ; 6 uses
  %i.acow = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.acox = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acow, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jgr unwind label %bb.jgp, !noalias !13840 ; 2 uses

bb.jgr:                                           ; preds = %bb.jgq
  %i.acoy = extractvalue { i64, ptr } %i.acox, 0
  %i.acoz = trunc nuw i64 %i.acoy to i1
  br i1 %i.acoz, label %.thread352.i, label %bb.jgs

bb.jgs:                                           ; preds = %bb.jgr
  %i.acpa = extractvalue { i64, ptr } %i.acox, 1  ; 2 uses
  %i.acpb = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.acpc = load i8, ptr %i.acpb, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i442.i.i = icmp eq i8 %i.acpc, 3
  br i1 %cond.i442.i.i, label %bb.jgt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i

bb.jgt:                                           ; preds = %bb.jgs
  %i.acpd = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  %i.acpe = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %i.acpf = load i8, ptr %i.acpe, align 16, !range !672, !noalias !13836, !noundef !11
  switch i8 %i.acpf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i [
    i8 0, label %bb.jgu
    i8 3, label %bb.jgx
  ]

bb.jgu:                                           ; preds = %bb.jgt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acpd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i444.i.i unwind label %bb.jgv, !noalias !13840

bb.jgv:                                           ; preds = %bb.jgu
  %i.acpg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acpd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i unwind label %bb.jgw, !noalias !13840

bb.jgw:                                           ; preds = %bb.jgv
  %i.acph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i444.i.i: ; preds = %bb.jgu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acpd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i unwind label %bb.jgy, !noalias !13840

bb.jgx:                                           ; preds = %bb.jgt
  %i.acpi = getelementptr inbounds nuw i8, ptr %1, i64 1672
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acpi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i unwind label %bb.jgy, !noalias !13840

bb.jgy:                                           ; preds = %bb.jgz, %bb.jgx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i444.i.i
  %i.acpj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i: ; preds = %bb.jgx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i444.i.i, %bb.jgt, %bb.jgs
  %i.acpk = icmp eq ptr %i.acpa, null
  br i1 %i.acpk, label %bb.jhb, label %bb.jgz

bb.jgz:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %i.acpa)
          to label %bb.jhb unwind label %bb.jgy, !noalias !13840

bb.jha:                                           ; preds = %bb.jhb
  %i.acpl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

bb.jhb:                                           ; preds = %bb.jgz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit449.i.i
  %i.acpm = getelementptr inbounds nuw i8, ptr %1, i64 1627 ; 2 uses
  store i8 0, ptr %i.acpm, align 1, !noalias !13836
  %i.acpn = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %i.acpo = load ptr, ptr %i.acpn, align 16, !noalias !13836, !nonnull !11, !noundef !11
  %i.acpp = invoke noundef nonnull ptr @_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull %i.acpo)
          to label %bb.jhd unwind label %bb.jha, !noalias !13840

bb.jhc:                                           ; preds = %bb.jhd
  %i.acpq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i

bb.jhd:                                           ; preds = %bb.jhb
  %i.acpr = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull %i.acpp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 41)
          to label %bb.jhe unwind label %bb.jhc, !noalias !13840

bb.jhe:                                           ; preds = %bb.jhd
  store i8 0, ptr %i.acpm, align 1, !noalias !13836
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

bb.jhf:                                           ; preds = %bb.jhg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i
  store i8 0, ptr %i.acoo, align 1, !noalias !13836
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.jhg:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsbakdBCgU4AF_16influxdb3_server.exit436.i.i
  %i.acps = getelementptr inbounds nuw i8, ptr %1, i64 1616
  %.val.i.i5743 = load ptr, ptr %i.acps, align 16, !noalias !13836, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val.i.i5743) #26
          to label %bb.jhf unwind label %bb.izd, !noalias !13840

bb.jhh:                                           ; preds = %bb.jhi
  %i.acpt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acpy) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.izd, !noalias !13840

bb.jhi:                                           ; preds = %bb.jge, %bb.ixd
  %i.acpu = phi ptr [ %i.aclt, %bb.jge ], [ %i.abkv, %bb.ixd ] ; 6 uses
  %i.acpv = phi ptr [ %i.aclu, %bb.jge ], [ %i.abku, %bb.ixd ] ; 5 uses
  %i.acpw = phi ptr [ %i.aclv, %bb.jge ], [ %.phi.trans.insert409.i, %bb.ixd ] ; 6 uses
  %i.acpx = phi ptr [ %i.aclw, %bb.jge ], [ %i.abpo, %bb.ixd ] ; 5 uses
  %i.acpy = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.acpz = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.acpy, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jhj unwind label %bb.jhh, !noalias !13840 ; 2 uses

bb.jhj:                                           ; preds = %bb.jhi
  %i.acqa = extractvalue { i64, ptr } %i.acpz, 0
  %i.acqb = extractvalue { i64, ptr } %i.acpz, 1
  %i.acqc = trunc nuw i64 %i.acqa to i1
  br i1 %i.acqc, label %.thread352.i, label %bb.jhk

bb.jhk:                                           ; preds = %bb.jhj
  %i.acqd = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.acqe = load i8, ptr %i.acqd, align 8, !range !672, !noalias !13836, !noundef !11
  %cond.i452.i.i = icmp eq i8 %i.acqe, 3
  br i1 %cond.i452.i.i, label %bb.jhl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i

bb.jhl:                                           ; preds = %bb.jhk
  %i.acqf = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  %i.acqg = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %i.acqh = load i8, ptr %i.acqg, align 16, !range !672, !noalias !13836, !noundef !11
  switch i8 %i.acqh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i [
    i8 0, label %bb.jhm
    i8 3, label %bb.jhp
  ]

bb.jhm:                                           ; preds = %bb.jhl
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i454.i.i unwind label %bb.jhn, !noalias !13840

bb.jhn:                                           ; preds = %bb.jhm
  %i.acqi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.jho, !noalias !13840

bb.jho:                                           ; preds = %bb.jhn
  %i.acqj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i454.i.i: ; preds = %bb.jhm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i unwind label %bb.jhq, !noalias !13840

bb.jhp:                                           ; preds = %bb.jhl
  %i.acqk = getelementptr inbounds nuw i8, ptr %1, i64 1672
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acqk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i unwind label %bb.jhq, !noalias !13840

bb.jhq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i, %bb.jhp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i454.i.i
  %i.acql = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i: ; preds = %bb.jhp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsbakdBCgU4AF_16influxdb3_server.exit.i.i454.i.i, %bb.jhl, %bb.jhk
  %i.acqm = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsbakdBCgU4AF_16influxdb3_server(ptr noundef %i.acqb, ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 30)
          to label %bb.jhr unwind label %bb.jhq, !noalias !13840 ; 2 uses

bb.jhr:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsbakdBCgU4AF_16influxdb3_server.exit459.i.i
  %.not.i460.i.i = icmp eq ptr %i.acqm, null
  br i1 %.not.i460.i.i, label %bb.jgb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsbakdBCgU4AF_16influxdb3_server.exit380.i.i

bb.jhs:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i
  %i.acqn = phi ptr [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i ], [ %i.abxm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.acqo = phi ptr [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i ], [ %i.abxn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.acqp = phi ptr [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i ], [ %i.abxo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.acqq = phi ptr [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i ], [ %i.abxp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i276.i.i ]
  %i.acqr = landingpad { ptr, i32 }
          cleanup
  br label %.body277.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit432.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i428.i.i
  %i.acqs = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i unwind label %bb.jht, !noalias !13840

bb.jht:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit432.i.i
  %i.acqt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqs)
          to label %.body252.i.i unwind label %bb.jhu, !noalias !13840

bb.jhu:                                           ; preds = %bb.jht
  %i.acqu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit432.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acqs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit471.i.i unwind label %bb.jhv, !noalias !13840

bb.jhv:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715
  %i.acqv = phi ptr [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i ], [ %i.abto, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.acqw = phi ptr [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i ], [ %i.abtp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.acqx = phi ptr [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i ], [ %i.abtq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.acqy = phi ptr [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i ], [ %i.abtr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5715 ]
  %i.acqz = landingpad { ptr, i32 }
          cleanup
  br label %.body252.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit471.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i467.i.i
  %i.acra = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acra)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i unwind label %bb.jhw, !noalias !13840

bb.jhw:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit471.i.i
  %i.acrb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acra)
          to label %.body255.i.i unwind label %bb.jhx, !noalias !13840

bb.jhx:                                           ; preds = %bb.jhw
  %i.acrc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit471.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acra)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit477.i.i unwind label %bb.jhy, !noalias !13840

bb.jhy:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717
  %i.acrd = phi ptr [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i ], [ %i.abud, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717 ]
  %i.acre = phi ptr [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i ], [ %i.abue, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717 ]
  %i.acrf = phi ptr [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i ], [ %i.abuf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717 ]
  %i.acrg = phi ptr [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i ], [ %i.abug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717 ]
  %i.acrh = landingpad { ptr, i32 }
          cleanup
  br label %.body255.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit477.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i473.i.i
  %i.acri = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acri)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i unwind label %bb.jhz, !noalias !13840

bb.jhz:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit477.i.i
  %i.acrj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acri)
          to label %.body480.i.i unwind label %bb.jia, !noalias !13840

bb.jia:                                           ; preds = %bb.jhz
  %i.acrk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit477.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acri)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit483.i.i unwind label %bb.jib, !noalias !13840

bb.jib:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i
  %i.acrl = phi ptr [ %i.abud, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i ], [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i ]
  %i.acrm = phi ptr [ %i.abue, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i ], [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i ]
  %i.acrn = phi ptr [ %i.abuf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i ], [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i ]
  %i.acro = phi ptr [ %i.abug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i ], [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i ]
  %i.acrp = landingpad { ptr, i32 }
          cleanup
  br label %.body480.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit483.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i479.i.i
  %i.acrq = getelementptr inbounds nuw i8, ptr %1, i64 1360 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acrq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i unwind label %bb.jic, !noalias !13840

bb.jic:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit483.i.i
  %i.acrr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acrq)
          to label %.body486.i.i unwind label %bb.jid, !noalias !13840

bb.jid:                                           ; preds = %bb.jic
  %i.acrs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit483.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acrq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit489.i.i unwind label %bb.jie, !noalias !13840

bb.jie:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i
  %i.acrt = phi ptr [ %i.abud, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i ]
  %i.acru = phi ptr [ %i.abue, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i ]
  %i.acrv = phi ptr [ %i.abuf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i ]
  %i.acrw = phi ptr [ %i.abug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i ], [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i ]
  %i.acrx = landingpad { ptr, i32 }
          cleanup
  br label %.body486.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit489.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i485.i.i
  %i.acry = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acry)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i unwind label %bb.jif, !noalias !13840

bb.jif:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit489.i.i
  %i.acrz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acry)
          to label %.body260.i.i unwind label %bb.jig, !noalias !13840

bb.jig:                                           ; preds = %bb.jif
  %i.acsa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit489.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acry)
          to label %.thread360.i unwind label %bb.jih, !noalias !13840

.body260.i.i:                                     ; preds = %bb.jih, %bb.jif, %.body486.i.i, %bb.iyz
  %i.acsb = phi ptr [ %i.abvk, %.body486.i.i ], [ %i.abvc, %bb.iyz ], [ %i.acsi, %bb.jih ], [ %i.acmz, %bb.jif ] ; 2 uses
  %i.acsc = phi ptr [ %i.abvl, %.body486.i.i ], [ %i.abvd, %bb.iyz ], [ %i.acsj, %bb.jih ], [ %i.acna, %bb.jif ] ; 2 uses
  %i.acsd = phi ptr [ %i.abvm, %.body486.i.i ], [ %i.abve, %bb.iyz ], [ %i.acsk, %bb.jih ], [ %i.acnb, %bb.jif ] ; 2 uses
  %i.acse = phi ptr [ %i.abvn, %.body486.i.i ], [ %i.abvf, %bb.iyz ], [ %i.acsl, %bb.jih ], [ %i.acnc, %bb.jif ] ; 2 uses
  %.pn172.i.i = phi { ptr, i32 } [ %.pn169.pn.i.i, %.body486.i.i ], [ %i.abvi, %bb.iyz ], [ %i.acsm, %bb.jih ], [ %i.acrz, %bb.jif ] ; 2 uses
  %i.acsf = getelementptr inbounds nuw i8, ptr %1, i64 1628
  %i.acsg = load i8, ptr %i.acsf, align 4, !range !777, !noalias !13836, !noundef !11
  %i.acsh = trunc nuw i8 %i.acsg to i1
  br i1 %i.acsh, label %bb.jiu, label %.body510.i.i

bb.jih:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i
  %i.acsi = phi ptr [ %i.acmz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i ], [ %i.abvc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i ]
  %i.acsj = phi ptr [ %i.acna, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i ], [ %i.abvd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i ]
  %i.acsk = phi ptr [ %i.acnb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i ], [ %i.abve, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i ]
  %i.acsl = phi ptr [ %i.acnc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i ], [ %i.abvf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i ]
  %i.acsm = landingpad { ptr, i32 }
          cleanup
  br label %.body260.i.i

.thread360.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i491.i.i
  store i8 0, ptr %i.acnd, align 4, !noalias !13836
  %i.acsn = getelementptr inbounds nuw i8, ptr %1, i64 1626
  store i8 0, ptr %i.acsn, align 2, !noalias !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.i5708, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, i64 56, i1 false), !noalias !14016
  store i8 1, ptr %i.acnb, align 8, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i.i)
  %i.acso = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5915.0.copyload.i.i, i64 0
  br label %bb.jiy

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i5718: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i5717
  %i.acsp = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i unwind label %bb.jii, !noalias !13840

bb.jii:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i5718
  %i.acsq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsp)
          to label %.body480.i.i unwind label %bb.jij, !noalias !13840

bb.jij:                                           ; preds = %bb.jii
  %i.acsr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i5718
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit501.i.i unwind label %bb.jib, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit501.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i497.i.i
  %i.acss = getelementptr inbounds nuw i8, ptr %1, i64 1360 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acss)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i unwind label %bb.jik, !noalias !13840

bb.jik:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit501.i.i
  %i.acst = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acss)
          to label %.body486.i.i unwind label %bb.jil, !noalias !13840

bb.jil:                                           ; preds = %bb.jik
  %i.acsu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbakdBCgU4AF_16influxdb3_server.exit.i503.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit501.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acss)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsbakdBCgU4AF_16influxdb3_server.exit507.i.i unwind label %bb.jie, !noalias !13840

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit263.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i259.i.i
  %i.acsv = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i509.i.i unwind label %bb.jim, !noalias !13840

bb.jim:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit263.i.i
  %i.acsw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsv)
          to label %.body510.i.i unwind label %bb.jin, !noalias !13840

bb.jin:                                           ; preds = %bb.jim
  %i.acsx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i509.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit263.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acsv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i unwind label %bb.jio, !noalias !13840

.body510.i.i:                                     ; preds = %bb.jiu, %bb.jio, %bb.jim, %.body260.i.i
  %i.acsy = phi ptr [ %i.acsb, %.body260.i.i ], [ %i.acsb, %bb.jiu ], [ %i.abvc, %bb.jio ], [ %i.abvc, %bb.jim ]
  %i.acsz = phi ptr [ %i.acsc, %.body260.i.i ], [ %i.acsc, %bb.jiu ], [ %i.abvd, %bb.jio ], [ %i.abvd, %bb.jim ]
  %i.acta = phi ptr [ %i.acsd, %.body260.i.i ], [ %i.acsd, %bb.jiu ], [ %i.abve, %bb.jio ], [ %i.abve, %bb.jim ]
  %i.actb = phi ptr [ %i.acse, %.body260.i.i ], [ %i.acse, %bb.jiu ], [ %i.abvf, %bb.jio ], [ %i.abvf, %bb.jim ]
  %.pn174.i.i = phi { ptr, i32 } [ %.pn172.i.i, %.body260.i.i ], [ %.pn172.i.i, %bb.jiu ], [ %i.actd, %bb.jio ], [ %i.acsw, %bb.jim ]
  %i.actc = getelementptr inbounds nuw i8, ptr %1, i64 1628
  store i8 0, ptr %i.actc, align 4, !noalias !13836
  br label %bb.izi

bb.jio:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i509.i.i
  %i.actd = landingpad { ptr, i32 }
          cleanup
  br label %.body510.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit513.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i509.i.i
  %i.acte = getelementptr inbounds nuw i8, ptr %1, i64 1628
  store i8 0, ptr %i.acte, align 4, !noalias !13836
  br label %bb.izc

bb.jip:                                           ; preds = %bb.izc
  %i.actf = getelementptr inbounds nuw i8, ptr %1, i64 1288 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.actf)
          to label %bb.jir unwind label %bb.jiq, !noalias !13840

bb.jiq:                                           ; preds = %bb.jip
  %i.actg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.actf)
          to label %.body515.i.i unwind label %bb.jis, !noalias !13840

bb.jir:                                           ; preds = %bb.jip
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.actf)
          to label %bb.jiw unwind label %bb.jit, !noalias !13840

bb.jis:                                           ; preds = %bb.jiq
  %i.acth = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13840
  unreachable

.body515.i.i:                                     ; preds = %bb.jiv, %bb.jit, %bb.jiq, %bb.izi
  %i.acti = phi ptr [ %i.abwf, %bb.izi ], [ %i.abwf, %bb.jiv ], [ %i.abvq, %bb.jit ], [ %i.abvq, %bb.jiq ]
  %i.actj = phi ptr [ %i.abwg, %bb.izi ], [ %i.abwg, %bb.jiv ], [ %i.abvr, %bb.jit ], [ %i.abvr, %bb.jiq ]
  %i.actk = phi ptr [ %i.abwh, %bb.izi ], [ %i.abwh, %bb.jiv ], [ %i.abvs, %bb.jit ], [ %i.abvs, %bb.jiq ]
  %i.actl = phi ptr [ %i.abwi, %bb.izi ], [ %i.abwi, %bb.jiv ], [ %i.abvt, %bb.jit ], [ %i.abvt, %bb.jiq ]
  %.pn180.i.i = phi { ptr, i32 } [ %.pn176.pn.pn.i.i, %bb.izi ], [ %.pn176.pn.pn.i.i, %bb.jiv ], [ %i.actn, %bb.jit ], [ %i.actg, %bb.jiq ]
  %i.actm = getelementptr inbounds nuw i8, ptr %1, i64 1626
  store i8 0, ptr %i.actm, align 2, !noalias !13836
  store i8 2, ptr %i.actk, align 8, !noalias !13836
  br label %.body80.i

bb.jit:                                           ; preds = %bb.jir
  %i.actn = landingpad { ptr, i32 }
          cleanup
  br label %.body515.i.i

bb.jiu:                                           ; preds = %.body260.i.i
  %i.acto = getelementptr inbounds nuw i8, ptr %1, i64 1312
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acto) #26
          to label %.body510.i.i unwind label %bb.izd, !noalias !13840

bb.jiv:                                           ; preds = %bb.izi
  %i.actp = getelementptr inbounds nuw i8, ptr %1, i64 1288
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.actp) #26
          to label %.body515.i.i unwind label %bb.izd, !noalias !13840

.thread352.sink.split.i:                          ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.actq = phi ptr [ %i.acdd, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abzm, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sink447.i = phi ptr [ %i.acdh, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abzq, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.ph.i = phi ptr [ %i.acdf, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.abzo, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  %.sink.i.ph.ph.i = phi i8 [ 6, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ 4, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsbakdBCgU4AF_16influxdb3_server.exit.i.i ]
  store i8 3, ptr %.sink447.i, align 8, !noalias !13836
  br label %.thread352.i

.thread352.i:                                     ; preds = %.thread352.sink.split.i, %bb.jhj, %bb.jgr, %bb.jgj, %bb.jfn, %bb.jew, %bb.jei, %bb.jde, %bb.izn
  %i.actr = phi ptr [ %i.acpu, %bb.jhj ], [ %i.aclt, %bb.jfn ], [ %i.acno, %bb.jgj ], [ %i.abwn, %bb.izn ], [ %i.acos, %bb.jgr ], [ %i.acgm, %bb.jde ], [ %i.acjf, %bb.jei ], [ %i.ackl, %bb.jew ], [ %i.actq, %.thread352.sink.split.i ]
  %i.acts = phi ptr [ %i.acpw, %bb.jhj ], [ %i.aclv, %bb.jfn ], [ %i.acnq, %bb.jgj ], [ %i.abwp, %bb.izn ], [ %i.acou, %bb.jgr ], [ %i.acgo, %bb.jde ], [ %i.acjh, %bb.jei ], [ %i.ackn, %bb.jew ], [ %.ph.i, %.thread352.sink.split.i ]
  %.sink.i.ph.i5742 = phi i8 [ 12, %bb.jhj ], [ 9, %bb.jfn ], [ 10, %bb.jgj ], [ 3, %bb.izn ], [ 11, %bb.jgr ], [ 5, %bb.jde ], [ 7, %bb.jei ], [ 8, %bb.jew ], [ %.sink.i.ph.ph.i, %.thread352.sink.split.i ]
  store i8 %.sink.i.ph.i5742, ptr %i.acts, align 8, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i.i)
  br label %bb.jix

bb.jiw:                                           ; preds = %bb.jir, %bb.izc
  store i8 0, ptr %i.abvv, align 2, !noalias !13836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.i5708, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i.i, i64 56, i1 false), !noalias !14016
  store i8 1, ptr %i.abvs, align 8, !noalias !13836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i.i)
  %i.actt = icmp eq i32 %.sroa.0829.3.i.i, -2
  br i1 %i.actt, label %bb.jix, label %bb.jiy

bb.jix:                                           ; preds = %bb.jiw, %.thread352.i
  %i.actu = phi ptr [ %i.abvq, %bb.jiw ], [ %i.actr, %.thread352.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i5708)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13795
  br label %bb.jlh

bb.jiy:                                           ; preds = %bb.jiw, %.thread360.i
  %i.actv = phi ptr [ %i.acmz, %.thread360.i ], [ %i.abvq, %bb.jiw ] ; 11 uses
  %i.actw = phi ptr [ %i.acna, %.thread360.i ], [ %i.abvr, %bb.jiw ] ; 11 uses
  %i.actx = phi ptr [ %i.acnc, %.thread360.i ], [ %i.abvt, %bb.jiw ]
  %.sroa.0829.7.i372.i = phi i32 [ -1, %.thread360.i ], [ %.sroa.0829.3.i.i, %bb.jiw ] ; 4 uses
  %.sroa.17.7.i371.i = phi i32 [ undef, %.thread360.i ], [ %.sroa.17.3.i.i, %bb.jiw ] ; 4 uses
  %.sroa.48.7.i370.i = phi ptr [ %.sroa.4.0.copyload.i.i5741, %.thread360.i ], [ %.sroa.48.3.i.i, %bb.jiw ] ; 3 uses
  %.sroa.30.7.i369.i = phi ptr [ %.sroa.0914.0.copyload.i.i, %.thread360.i ], [ %.sroa.30.3.i.i, %bb.jiw ] ; 2 uses
  %i.acty = phi <2 x i64> [ %i.acso, %.thread360.i ], [ %i.abvu, %bb.jiw ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11229.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.i5708, i64 56, i1 false), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i5708)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl24replace_plugin_directory0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.actx)
          to label %bb.jjb unwind label %bb.jja, !noalias !13799

bb.jiz:                                           ; preds = %bb.jja, %.body80.i
  %i.actz = phi ptr [ %i.actv, %bb.jja ], [ %i.abpl, %.body80.i ] ; 2 uses
  %i.acua = phi ptr [ %i.actw, %bb.jja ], [ %i.abpm, %.body80.i ] ; 2 uses
  %.pn15.i = phi { ptr, i32 } [ %i.acuf, %bb.jja ], [ %eh.lpad-body81.i, %.body80.i ] ; 2 uses
  %i.acub = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14017)
  call void @llvm.experimental.noalias.scope.decl(metadata !14020)
  %i.acuc = load ptr, ptr %i.acub, align 16, !alias.scope !14023, !noalias !13795, !nonnull !11, !noundef !11
  %i.acud = atomicrmw sub ptr %i.acuc, i64 1 release, align 8, !noalias !14024
  %i.acue = icmp eq i64 %i.acud, 1
  br i1 %i.acue, label %bb.iwz, label %.body103.i5712

bb.jja:                                           ; preds = %bb.jiy
  %i.acuf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jiz

bb.jjb:                                           ; preds = %bb.jiy
  %.not.i82.i = icmp eq i32 %.sroa.0829.7.i372.i, -1
  br i1 %.not.i82.i, label %bb.jjc, label %bb.jkw

bb.jjc:                                           ; preds = %bb.jjb
  store ptr %.sroa.30.7.i369.i, ptr %i.bf, align 8, !noalias !13795
  %.sroa.4238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.48.7.i370.i, ptr %.sroa.4238.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.5239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.acug = extractelement <2 x i64> %i.acty, i64 0
  store i64 %i.acug, ptr %.sroa.5239.0..sroa_idx.i, align 8, !noalias !13795
  %i.acuh = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14025)
  call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  %i.acui = load ptr, ptr %i.acuh, align 16, !alias.scope !14031, !noalias !13795, !nonnull !11, !noundef !11
  %i.acuj = atomicrmw sub ptr %i.acui, i64 1 release, align 8, !noalias !14032
  %i.acuk = icmp eq i64 %i.acuj, 1
  br i1 %i.acuk, label %bb.jjd, label %.noexc.i5730

bb.jjd:                                           ; preds = %bb.jjc
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acuh)
          to label %.noexc.i5730 unwind label %bb.jje, !noalias !13799

bb.jje:                                           ; preds = %bb.jjd
  %i.acul = landingpad { ptr, i32 }
          cleanup
  br label %bb.jkv

.noexc.i5730:                                     ; preds = %bb.jjd, %bb.jjc
  %i.acum = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !13795
  %.off.i5731 = add i64 %i.acum, -3
  %switch.i5732 = icmp ult i64 %.off.i5731, 3
  br i1 %switch.i5732, label %bb.jjm, label %bb.jjf

bb.jjf:                                           ; preds = %.noexc.i5730
  %i.acun = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, i64 16) monotonic, align 8, !noalias !13795 ; 2 uses
  %i.acuo = icmp ult i8 %i.acun, 3
  br i1 %i.acuo, label %bb.jji, label %bb.jjg, !prof !6356

bb.jjg:                                           ; preds = %bb.jjf
  %i.acup = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE)
          to label %bb.jji unwind label %bb.jjh, !noalias !13799

bb.jjh:                                           ; preds = %bb.jjg
  %i.acuq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jkv

bb.jji:                                           ; preds = %bb.jjg, %bb.jjf
  %.sroa.0.0.i86.i = phi i8 [ %i.acun, %bb.jjf ], [ %i.acup, %bb.jjg ] ; 2 uses
  %i.acur = icmp eq i8 %.sroa.0.0.i86.i, 0
  br i1 %i.acur, label %bb.jjm, label %bb.jjk

bb.jjj:                                           ; preds = %bb.jjk
  %i.acus = landingpad { ptr, i32 }
          cleanup
  br label %bb.jkv

bb.jjk:                                           ; preds = %bb.jji
  %i.acut = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !noalias !13795, !nonnull !11, !align !78, !noundef !11
  %i.acuu = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.acut, i8 noundef %.sroa.0.0.i86.i)
          to label %bb.jjl unwind label %bb.jjj, !noalias !13799

bb.jjl:                                           ; preds = %bb.jjk
  br i1 %i.acuu, label %bb.jjz, label %bb.jjm

bb.jjm:                                           ; preds = %bb.jjl, %bb.jji, %.noexc.i5730
  %i.acuv = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !13795
  %.not400.i = icmp eq i8 %i.acuv, 0
  br i1 %.not400.i, label %bb.jjn, label %bb.jjy

bb.jjn:                                           ; preds = %bb.jjm
  %i.acuw = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !13795 ; 2 uses
  %i.acux = icmp ult i64 %i.acuw, 6
  call void @llvm.assume(i1 %i.acux)
  %i.acuy = icmp samesign ugt i64 %i.acuw, 2
  br i1 %i.acuy, label %bb.jjo, label %bb.jjy

bb.jjo:                                           ; preds = %bb.jjn
  %i.acuz = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !noalias !13795, !nonnull !11, !align !78, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !13795
  %i.acva = getelementptr i8, ptr %i.acuz, i64 32
  %.val62.i5736 = load ptr, ptr %i.acva, align 8, !noalias !13799, !nonnull !11, !noundef !11
  %i.acvb = getelementptr i8, ptr %i.acuz, i64 40
  %.val63.i5737 = load i64, ptr %i.acvb, align 8, !noalias !13799, !noundef !11
  store i64 3, ptr %i.ba, align 8, !alias.scope !14033, !noalias !13795
  %.sroa.6256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.val62.i5736, ptr %.sroa.6256.0..sroa_idx.i, align 8, !alias.scope !14033, !noalias !13795
  %.sroa.8257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.val63.i5737, ptr %.sroa.8257.0..sroa_idx.i, align 8, !alias.scope !14033, !noalias !13795
  %i.acvc = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.jjq unwind label %bb.jjp, !noalias !13799 ; 2 uses

bb.jjp:                                           ; preds = %bb.jjo
  %i.acvd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jjx

bb.jjq:                                           ; preds = %bb.jjo
  %i.acve = extractvalue { ptr, ptr } %i.acvc, 0  ; 2 uses
  %i.acvf = extractvalue { ptr, ptr } %i.acvc, 1  ; 2 uses
  %i.acvg = getelementptr inbounds nuw i8, ptr %i.acvf, i64 24
  %i.acvh = load ptr, ptr %i.acvg, align 8, !invariant.load !11, !noalias !13799, !nonnull !11
  %i.acvi = invoke noundef zeroext i1 %i.acvh(ptr noundef %i.acve, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.jjs unwind label %bb.jjr, !noalias !13799

bb.jjr:                                           ; preds = %bb.jjq
  %i.acvj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jjx

bb.jjs:                                           ; preds = %bb.jjq
  br i1 %i.acvi, label %bb.jju, label %bb.jjt

bb.jjt:                                           ; preds = %bb.jjw, %bb.jjs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !13795
  br label %bb.jjy

bb.jju:                                           ; preds = %bb.jjs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !13795
  %i.acvk = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !noalias !13795, !nonnull !11, !align !78, !noundef !11
  %i.acvl = getelementptr inbounds nuw i8, ptr %i.acvk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !13795
  %i.acvm = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.acvn = getelementptr inbounds nuw i8, ptr %1, i64 1176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !13795
  store ptr %i.acvm, ptr %i.aw, align 8, !noalias !13795
  %.sroa.5259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5259.0..sroa_idx.i, align 8, !noalias !13795
  %i.acvo = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bf, ptr %i.acvo, align 8, !noalias !13795
  %.sroa.5261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5261.0..sroa_idx.i, align 8, !noalias !13795
  %i.acvp = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.acvn, ptr %i.acvp, align 8, !noalias !13795
  %.sroa.5263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5263.0..sroa_idx.i, align 8, !noalias !13795
  store ptr @253, ptr %i.ax, align 8, !noalias !13795
  %i.acvq = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %i.acvq, align 8, !noalias !13795
  store ptr %i.ax, ptr %i.ay, align 8, !noalias !13795
  %i.acvr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @13, ptr %i.acvr, align 8, !noalias !13795
  store i64 1, ptr %i.az, align 8, !alias.scope !14037, !noalias !14040
  %.sroa.4.0..sroa_idx.i93.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i93.i, align 8, !alias.scope !14037, !noalias !14040
  %.sroa.5.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i94.i, align 8, !alias.scope !14037, !noalias !14040
  %i.acvs = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.acvl, ptr %i.acvs, align 8, !alias.scope !14037, !noalias !14040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !13795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !13795
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.acuz, ptr noundef nonnull %i.acve, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acvf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az)
          to label %bb.jjw unwind label %bb.jjv, !noalias !13799

bb.jjv:                                           ; preds = %bb.jju
  %i.acvt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !13795
  br label %bb.jjx

bb.jjw:                                           ; preds = %bb.jju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !13795
  br label %bb.jjt

bb.jjx:                                           ; preds = %bb.jjv, %bb.jjr, %bb.jjp
  %.pn25.pn.pn.i5738 = phi { ptr, i32 } [ %i.acvt, %bb.jjv ], [ %i.acvj, %bb.jjr ], [ %i.acvd, %bb.jjp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !13795
  br label %bb.jkv

bb.jjy:                                           ; preds = %bb.jkb, %bb.jjt, %bb.jjn, %bb.jjm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !13795
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.at)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5733 unwind label %bb.jkc, !noalias !13799

bb.jjz:                                           ; preds = %bb.jjl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13795
  %i.acvu = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !noalias !13795, !nonnull !11, !align !78, !noundef !11
  %i.acvv = getelementptr inbounds nuw i8, ptr %i.acvu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !13795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !13795
  %i.acvw = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.acvx = getelementptr inbounds nuw i8, ptr %1, i64 1176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !13795
  store ptr %i.acvw, ptr %i.bb, align 8, !noalias !13795
  %.sroa.5247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5247.0..sroa_idx.i, align 8, !noalias !13795
  %i.acvy = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bf, ptr %i.acvy, align 8, !noalias !13795
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5249.0..sroa_idx.i, align 8, !noalias !13795
  %i.acvz = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.acvx, ptr %i.acvz, align 8, !noalias !13795
  %.sroa.5251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5251.0..sroa_idx.i, align 8, !noalias !13795
  store ptr @253, ptr %i.bc, align 8, !noalias !13795
  %i.acwa = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.acwa, align 8, !noalias !13795
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !13795
  %i.acwb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @13, ptr %i.acwb, align 8, !noalias !13795
  store i64 1, ptr %i.be, align 8, !noalias !13795
  %.sroa.6243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.6243.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %.sroa.7244.0..sroa_idx.i, align 8, !noalias !13795
  %.sroa.8245.0..sroa_idx.i5739 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.acvv, ptr %.sroa.8245.0..sroa_idx.i5739, align 8, !noalias !13795
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory0s_0Bb_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.jkb unwind label %bb.jka, !noalias !13799

bb.jka:                                           ; preds = %bb.jjz
  %i.acwc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13795
  br label %bb.jkv

bb.jkb:                                           ; preds = %bb.jjz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !13795
  br label %bb.jjy

bb.jkc:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5733, %bb.jjy
  %i.acwd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !13795
  br label %bb.jkt

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5733: ; preds = %bb.jjy
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.at, i16 noundef 200)
          to label %bb.jkd unwind label %bb.jkc, !noalias !13799

bb.jkd:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !13795
  %i.acwe = invoke { ptr, ptr } @_RNvCs4dh2fNjPIep_13iox_http_util19empty_response_body()
          to label %bb.jkf unwind label %bb.jku, !noalias !13799 ; 2 uses

bb.jke:                                           ; preds = %bb.jkf
  %i.acwf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jkt

bb.jkf:                                           ; preds = %bb.jkd
  %i.acwg = extractvalue { ptr, ptr } %i.acwe, 0
  %i.acwh = extractvalue { ptr, ptr } %i.acwe, 1
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder4bodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3f_6marker4SendNtB3M_4SyncEL_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.av, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.au, ptr noundef nonnull %i.acwg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acwh)
          to label %bb.jkg unwind label %bb.jke, !noalias !13799

bb.jkg:                                           ; preds = %bb.jkf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13795
  call void @llvm.experimental.noalias.scope.decl(metadata !14043)
  %i.acwi = load i64, ptr %i.av, align 8, !range !59, !alias.scope !14046, !noalias !14048, !noundef !11 ; 2 uses
  %i.acwj = icmp eq i64 %i.acwi, -1
  %i.acwk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.acwl = load i8, ptr %i.acwk, align 8, !alias.scope !14049, !noalias !13795 ; 2 uses
  %i.acwm = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %i.acwn = load i8, ptr %i.acwm, align 1, !alias.scope !14049, !noalias !13795 ; 2 uses
  br i1 %i.acwj, label %bb.jko, label %bb.jkh

bb.jkh:                                           ; preds = %bb.jkg
  %.sroa.12272.0..sroa_idx273.i = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  %.sroa.12272.sroa.0.0.copyload.i = load i16, ptr %.sroa.12272.0..sroa_idx273.i, align 2, !alias.scope !14050, !noalias !13795
  %.sroa.12272.sroa.6.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %.sroa.12272.sroa.6.0.copyload.i = load i32, ptr %.sroa.12272.sroa.6.0..sroa.12272.0..sroa_idx273.sroa_idx.i, align 4, !alias.scope !14050, !noalias !13795 ; 3 uses
  %.sroa.12272.sroa.7.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.12272.sroa.7.0.copyload.i = load i64, ptr %.sroa.12272.sroa.7.0..sroa.12272.0..sroa_idx273.sroa_idx.i, align 8, !alias.scope !14050, !noalias !13795
  %.sroa.12272.sroa.8.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.12272.sroa.8.0.copyload.i = load ptr, ptr %.sroa.12272.sroa.8.0..sroa.12272.0..sroa_idx273.sroa_idx.i, align 8, !alias.scope !14050, !noalias !13795
  %.sroa.12272.sroa.9.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.acwo = load <2 x i64>, ptr %.sroa.12272.sroa.9.0..sroa.12272.0..sroa_idx273.sroa_idx.i, align 8, !alias.scope !14050, !noalias !13795
  %.sroa.12272.sroa.11.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.i5706, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12272.sroa.11.0..sroa.12272.0..sroa_idx273.sroa_idx.i, i64 56, i1 false), !noalias !13795
  %.sroa.12272.sroa.12.0..sroa.12272.0..sroa_idx273.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i5707, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12272.sroa.12.0..sroa.12272.0..sroa_idx273.sroa_idx.i, i64 24, i1 false), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !13795
  %.sroa.13280.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.12272.sroa.6.0.copyload.i to i8
  %.sroa.13280.sroa.6.0.extract.shift.i = lshr i32 %.sroa.12272.sroa.6.0.copyload.i, 8
  %.sroa.13280.sroa.6.0.extract.trunc.i = trunc i32 %.sroa.13280.sroa.6.0.extract.shift.i to i8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5734 unwind label %bb.jki, !noalias !13799

bb.jki:                                           ; preds = %bb.jkh
  %i.acwp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body103.i5712 unwind label %bb.jkj, !noalias !13799

bb.jkj:                                           ; preds = %bb.jki
  %i.acwq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13799
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5734: ; preds = %bb.jkh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5735 unwind label %bb.jkk, !noalias !13799

.body103.i5712:                                   ; preds = %bb.iwz, %bb.jiz, %bb.jky, %bb.jkv, %bb.jkp, %bb.jkk, %bb.jki
  %i.acwr = phi ptr [ %i.actv, %bb.jkp ], [ %i.actv, %bb.jkv ], [ %i.actv, %bb.jki ], [ %i.actv, %bb.jkk ], [ %i.actv, %bb.jky ], [ %i.actz, %bb.jiz ], [ %i.actz, %bb.iwz ] ; 2 uses
  %i.acws = phi ptr [ %i.actw, %bb.jkp ], [ %i.actw, %bb.jkv ], [ %i.actw, %bb.jki ], [ %i.actw, %bb.jkk ], [ %i.actw, %bb.jky ], [ %i.acua, %bb.jiz ], [ %i.acua, %bb.iwz ] ; 2 uses
  %.pn44.pn.i5713 = phi { ptr, i32 } [ %i.acxe, %bb.jkp ], [ %.pn39.pn.i, %bb.jkv ], [ %i.acwp, %bb.jki ], [ %i.acww, %bb.jkk ], [ %i.acxs, %bb.jky ], [ %.pn15.i, %bb.jiz ], [ %.pn15.i, %bb.iwz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13795
  %i.acwt = getelementptr inbounds nuw i8, ptr %1, i64 1186
  %i.acwu = load i8, ptr %i.acwt, align 2, !range !777, !noalias !13795, !noundef !11
  %i.acwv = trunc nuw i8 %i.acwu to i1
  br i1 %i.acwv, label %bb.jld, label %bb.ixa

bb.jkk:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5734
  %i.acww = landingpad { ptr, i32 }
          cleanup
  br label %.body103.i5712

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5735: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i5734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13795
  %i.acwx = getelementptr inbounds nuw i8, ptr %1, i64 1186
  store i8 0, ptr %i.acwx, align 2, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13795
  %i.acwy = getelementptr inbounds nuw i8, ptr %1, i64 1187
  store i8 0, ptr %i.acwy, align 1, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13795
  %i.acwz = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acwz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i107.i unwind label %bb.jkl, !noalias !13799

bb.jkl:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5735
  %i.acxa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acwz)
          to label %.body108.i unwind label %bb.jkm, !noalias !13799

bb.jkm:                                           ; preds = %bb.jkl
  %i.acxb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13799
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i107.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i5735
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acwz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i unwind label %bb.jkn, !noalias !13799

bb.jkn:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i107.i
  %i.acxc = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i107.i
  %i.acxd = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.acxd, align 1, !noalias !13795
  br label %bb.jli

bb.jko:                                           ; preds = %bb.jkg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !13795
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i unwind label %bb.jkp, !noalias !13799

bb.jkp:                                           ; preds = %bb.jko
  %i.acxe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body103.i5712 unwind label %bb.jkq, !noalias !13799

bb.jkq:                                           ; preds = %bb.jkp
  %i.acxf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13799
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i: ; preds = %bb.jko
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i unwind label %bb.jkk, !noalias !13799

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i: ; preds = %bb.jkw, %bb.jkx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i
  %.sroa.18281.2.i = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %i.acxn, %bb.jkx ], [ %i.acxn, %bb.jkw ]
  %.sroa.21282.2.i = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.48.7.i370.i, %bb.jkx ], [ %.sroa.48.7.i370.i, %bb.jkw ]
  %.sroa.13280.sroa.0.2.i = phi i8 [ %i.acwl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.13280.sroa.0.0.extract.trunc285.i, %bb.jkx ], [ %.sroa.13280.sroa.0.0.extract.trunc285.i, %bb.jkw ]
  %.sroa.13280.sroa.6.2.i = phi i8 [ %i.acwn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.13280.sroa.6.0.extract.trunc291.i, %bb.jkx ], [ %.sroa.13280.sroa.6.0.extract.trunc291.i, %bb.jkw ]
  %.sroa.13280.sroa.7.2.i = phi i32 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.17.7.i371.i, %bb.jkx ], [ %.sroa.17.7.i371.i, %bb.jkw ]
  %.sroa.6279.sroa.0.2.i = phi i8 [ 34, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.6279.sroa.0.0.extract.trunc299.i, %bb.jkx ], [ %.sroa.6279.sroa.0.0.extract.trunc299.i, %bb.jkw ]
  %.sroa.6279.sroa.6.2.i = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.6279.sroa.6.0.extract.trunc303.i, %bb.jkx ], [ %.sroa.6279.sroa.6.0.extract.trunc303.i, %bb.jkw ]
  %.sroa.6279.sroa.7.2.i = phi i16 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %.sroa.6279.sroa.7.0.extract.trunc307.i, %bb.jkx ], [ %.sroa.6279.sroa.7.0.extract.trunc307.i, %bb.jkw ]
  %i.acxg = phi <2 x i64> [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i113.i ], [ %i.acty, %bb.jkx ], [ %i.acty, %bb.jkw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13795
  %i.acxh = getelementptr inbounds nuw i8, ptr %1, i64 1186
  store i8 0, ptr %i.acxh, align 2, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13795
  %i.acxi = getelementptr inbounds nuw i8, ptr %1, i64 1187
  store i8 0, ptr %i.acxi, align 1, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13795
  %i.acxj = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acxj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i unwind label %bb.jkr, !noalias !13799

bb.jkr:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i
  %i.acxk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acxj)
          to label %.body108.i unwind label %bb.jks, !noalias !13799

bb.jks:                                           ; preds = %bb.jkr
  %i.acxl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !13799
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i119.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acxj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i unwind label %bb.jkn, !noalias !13799

bb.jkt:                                           ; preds = %bb.jku, %bb.jke, %bb.jkc
  %.pn35.i = phi { ptr, i32 } [ %i.acxm, %bb.jku ], [ %i.acwf, %bb.jke ], [ %i.acwd, %bb.jkc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !13795
  br label %bb.jkv

bb.jku:                                           ; preds = %bb.jkd
  %i.acxm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(112) %i.au) #26
          to label %bb.jkt unwind label %bb.ivs, !noalias !13799

bb.jkv:                                           ; preds = %bb.jkt, %bb.jka, %bb.jjx, %bb.jjj, %bb.jjh, %bb.jje
  %.pn39.pn.i = phi { ptr, i32 } [ %.pn35.i, %bb.jkt ], [ %i.acwc, %bb.jka ], [ %i.acul, %bb.jje ], [ %i.acuq, %bb.jjh ], [ %i.acus, %bb.jjj ], [ %.pn25.pn.pn.i5738, %bb.jjx ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #26
          to label %.body103.i5712 unwind label %bb.ivs, !noalias !13799

bb.jkw:                                           ; preds = %bb.jjb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.i5706, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11229.i, i64 56, i1 false), !noalias !13795
  %.sroa.6279.sroa.0.0.extract.trunc299.i = trunc i32 %.sroa.0829.7.i372.i to i8 ; 2 uses
  %.sroa.6279.sroa.6.0.extract.shift302.i = lshr i32 %.sroa.0829.7.i372.i, 8
  %.sroa.6279.sroa.6.0.extract.trunc303.i = trunc i32 %.sroa.6279.sroa.6.0.extract.shift302.i to i8 ; 2 uses
  %.sroa.6279.sroa.7.0.extract.shift306.i = lshr i32 %.sroa.0829.7.i372.i, 16
  %.sroa.6279.sroa.7.0.extract.trunc307.i = trunc nuw i32 %.sroa.6279.sroa.7.0.extract.shift306.i to i16 ; 2 uses
  %.sroa.13280.sroa.0.0.extract.trunc285.i = trunc i32 %.sroa.17.7.i371.i to i8 ; 2 uses
  %.sroa.13280.sroa.6.0.extract.shift290.i = lshr i32 %.sroa.17.7.i371.i, 8
  %.sroa.13280.sroa.6.0.extract.trunc291.i = trunc i32 %.sroa.13280.sroa.6.0.extract.shift290.i to i8 ; 2 uses
  %i.acxn = ptrtoint ptr %.sroa.30.7.i369.i to i64 ; 2 uses
  %i.acxo = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14051)
  call void @llvm.experimental.noalias.scope.decl(metadata !14054)
  %i.acxp = load ptr, ptr %i.acxo, align 16, !alias.scope !14057, !noalias !13795, !nonnull !11, !noundef !11
  %i.acxq = atomicrmw sub ptr %i.acxp, i64 1 release, align 8, !noalias !14058
  %i.acxr = icmp eq i64 %i.acxq, 1
  br i1 %i.acxr, label %bb.jkx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i

bb.jkx:                                           ; preds = %bb.jkw
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acxo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit117.i unwind label %bb.jky, !noalias !13799

bb.jky:                                           ; preds = %bb.jkx
  %i.acxs = landingpad { ptr, i32 }
          cleanup
  br label %.body103.i5712

bb.jkz:                                           ; preds = %bb.jla, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i
  store i8 0, ptr %i.ablw, align 1, !noalias !13795
  br label %bb.jli

bb.jla:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit123.i
  %i.acxt = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.acxt)
          to label %bb.jkz unwind label %bb.jlc, !noalias !13799

bb.jlb:                                           ; preds = %bb.jlg, %bb.jlc, %.body108.i
  %i.acxu = phi ptr [ %i.ablt, %bb.jlc ], [ %i.abma, %bb.jlg ], [ %i.abma, %.body108.i ]
  %i.acxv = phi ptr [ %i.ablu, %bb.jlc ], [ %i.abmb, %bb.jlg ], [ %i.abmb, %.body108.i ]
  %.pn53.i = phi { ptr, i32 } [ %i.acxx, %bb.jlc ], [ %.pn50.pn.i, %bb.jlg ], [ %.pn50.pn.i, %.body108.i ]
  %i.acxw = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.acxw, align 1, !noalias !13795
  store i8 2, ptr %i.acxu, align 8, !noalias !13795
  br label %.body5863

bb.jlc:                                           ; preds = %bb.jla
  %i.acxx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jlb

bb.jld:                                           ; preds = %.body103.i5712
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #26
          to label %bb.ixa unwind label %bb.ivs, !noalias !13799

bb.jle:                                           ; preds = %bb.jlf, %bb.ixa
  store i8 0, ptr %i.abpb, align 1, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13795
  %i.acxy = getelementptr inbounds nuw i8, ptr %1, i64 1192
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acxy) #26
          to label %.body108.i unwind label %bb.ivs, !noalias !13799

bb.jlf:                                           ; preds = %bb.ixa
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #26
          to label %bb.jle unwind label %bb.ivs, !noalias !13799

bb.jlg:                                           ; preds = %.body108.i
  %i.acxz = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.acxz) #26
          to label %bb.jlb unwind label %bb.ivs, !noalias !13799

bb.jlh:                                           ; preds = %bb.ivn, %bb.iwt, %bb.jix
  %i.acya = phi ptr [ %i.ablh, %bb.ivn ], [ %i.abnj, %bb.iwt ], [ %i.actu, %bb.jix ]
  %.sink.i5729.ph = phi i8 [ 3, %bb.ivn ], [ 4, %bb.iwt ], [ 5, %bb.jix ]
  store i8 %.sink.i5729.ph, ptr %i.acya, align 8, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i5706)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i5707)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11229.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6185.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10173.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6138.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166698)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176699)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.jli:                                           ; preds = %bb.jkz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i
  %i.acyb = phi ptr [ %i.ablt, %bb.jkz ], [ %i.actv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %i.acyc = phi ptr [ %i.ablu, %bb.jkz ], [ %i.actw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.0278.1.i = phi i64 [ -1, %bb.jkz ], [ %i.acwi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.18281.1.i = phi i64 [ %.sroa.18281.0.i, %bb.jkz ], [ %.sroa.12272.sroa.7.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.21282.1.i = phi ptr [ %.sroa.21282.0.i, %bb.jkz ], [ %.sroa.12272.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.13280.sroa.0.1.i = phi i8 [ %.sroa.13280.sroa.0.0.i, %bb.jkz ], [ %.sroa.13280.sroa.0.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.13280.sroa.6.1.i = phi i8 [ %.sroa.13280.sroa.6.0.i, %bb.jkz ], [ %.sroa.13280.sroa.6.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.13280.sroa.7.1.in.i = phi i32 [ %.sroa.13280.sroa.7.0.i, %bb.jkz ], [ %.sroa.12272.sroa.6.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.6279.sroa.0.1.i = phi i8 [ %.sroa.6279.sroa.0.0.i, %bb.jkz ], [ %i.acwl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.6279.sroa.6.1.i = phi i8 [ %.sroa.6279.sroa.6.0.i, %bb.jkz ], [ %i.acwn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.6279.sroa.7.1.i = phi i16 [ %.sroa.6279.sroa.7.0.i, %bb.jkz ], [ %.sroa.12272.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %i.acyd = phi <2 x i64> [ %i.ablv, %bb.jkz ], [ %i.acwo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit111.i ]
  %.sroa.13280.sroa.7.1.i = and i32 %.sroa.13280.sroa.7.1.in.i, -65536
  %.sroa.6279.sroa.7.0.insert.ext.i = zext i16 %.sroa.6279.sroa.7.1.i to i32
  %.sroa.6279.sroa.7.0.insert.shift.i = shl nuw i32 %.sroa.6279.sroa.7.0.insert.ext.i, 16
  %.sroa.6279.sroa.6.0.insert.ext.i = zext i8 %.sroa.6279.sroa.6.1.i to i32
  %.sroa.6279.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.6279.sroa.6.0.insert.ext.i, 8
  %.sroa.6279.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.6279.sroa.7.0.insert.shift.i, %.sroa.6279.sroa.6.0.insert.shift.i
  %.sroa.6279.sroa.0.0.insert.ext.i = zext i8 %.sroa.6279.sroa.0.1.i to i32
  %.sroa.6279.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.6279.sroa.6.0.insert.insert.i, %.sroa.6279.sroa.0.0.insert.ext.i
  %.sroa.13280.sroa.6.0.insert.ext.i = zext i8 %.sroa.13280.sroa.6.1.i to i32
  %.sroa.13280.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13280.sroa.6.0.insert.ext.i, 8
  %.sroa.13280.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.13280.sroa.7.1.i, %.sroa.13280.sroa.6.0.insert.shift.i
  %.sroa.13280.sroa.0.0.insert.ext.i = zext i8 %.sroa.13280.sroa.0.1.i to i32
  %.sroa.13280.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13280.sroa.6.0.insert.insert.i, %.sroa.13280.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166698, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.i5706, i64 56, i1 false), !noalias !14059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176699, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i5707, i64 24, i1 false), !noalias !14059
  store i8 1, ptr %i.acyb, align 8, !noalias !13795
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i5706)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i5707)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11229.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6185.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10173.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6138.sroa.4.i)
  store i64 %.sroa.0278.1.i, ptr %i.aow, align 8
  %.sroa.106692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store i32 %.sroa.6279.sroa.0.0.insert.insert.i, ptr %.sroa.106692.0..sroa_idx, align 8
  %.sroa.116693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 12
  store i32 %.sroa.13280.sroa.0.0.insert.insert.i, ptr %.sroa.116693.0..sroa_idx, align 4
  %.sroa.126694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store i64 %.sroa.18281.1.i, ptr %.sroa.126694.0..sroa_idx, align 8
  %.sroa.136695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 24
  store ptr %.sroa.21282.1.i, ptr %.sroa.136695.0..sroa_idx, align 8
  %.sroa.146696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  store <2 x i64> %i.acyd, ptr %.sroa.146696.0..sroa_idx, align 8
  %.sroa.166698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166698.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.166698, i64 56, i1 false)
  %.sroa.176699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aow, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176699.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.176699, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166698)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176699)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi24replace_plugin_directory0EBL_(ptr noundef nonnull align 8 %i.acyc)
          to label %bb.jw unwind label %bb.jlj

bb.jlj:                                           ; preds = %bb.jli
  %i.acye = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0EBL_.exit

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorE7map_errNtB4C_12RoutingErrorNvYB4A_INtNtB5_7convert4IntoB5u_E4intoEB4E_.exit: ; preds = %bb.jy, %bb.jx
  %.sroa.25.sroa.0.sroa.8.4 = phi i64 [ %.sroa.4.i.sroa.7.sroa.0.sroa.4.0.copyload, %bb.jx ], [ %.sroa.25.sroa.0.sroa.8.0.copyload6834, %bb.jy ] ; 2 uses
  %.sroa.236724.4 = phi ptr [ %.sroa.4.i.sroa.4.7.copyload, %bb.jx ], [ %.sroa.236724.0.copyload6730, %bb.jy ] ; 2 uses
  %.sroa.186711.4 = phi i8 [ undef, %bb.jx ], [ %.sroa.186711.0.copyload6717, %bb.jy ] ; 2 uses
  %.sroa.116704.4 = phi i8 [ 0, %bb.jx ], [ %.sroa.116704.0.copyload6710, %bb.jy ] ; 2 uses
  %.sroa.23.sroa.0.4 = phi i48 [ undef, %bb.jx ], [ %.sroa.23.sroa.0.0.copyload6945, %bb.jy ] ; 2 uses
  %i.acyf = phi <2 x i64> [ %i.bvh, %bb.jx ], [ %i.bvm, %bb.jy ] ; 2 uses
  %i.acyg = phi <2 x i64> [ %i.bvi, %bb.jx ], [ %i.bvn, %bb.jy ] ; 2 uses
  %i.acyh = phi <2 x i64> [ %i.bvj, %bb.jx ], [ %i.bvo, %bb.jy ] ; 2 uses
  %i.acyi = phi <2 x i64> [ %i.bvk, %bb.jx ], [ %i.bvp, %bb.jy ] ; 2 uses
  %i.acyj = phi <2 x i64> [ %i.bvl, %bb.jx ], [ %i.bvq, %bb.jy ] ; 2 uses
  %i.acyk = getelementptr inbounds nuw i8, ptr %1, i64 632
  call void @llvm.experimental.noalias.scope.decl(metadata !14060)
  call void @llvm.experimental.noalias.scope.decl(metadata !14063)
  call void @llvm.experimental.noalias.scope.decl(metadata !14066)
  %i.acyl = load i8, ptr %i.acyk, align 8, !range !2723, !alias.scope !14069, !noundef !11
  %switch.i.i.i5865 = icmp samesign ult i8 %i.acyl, 10
  br i1 %switch.i.i.i5865, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server.exit5868, label %bb.jlk

bb.jlk:                                           ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorE7map_errNtB4C_12RoutingErrorNvYB4A_INtNtB5_7convert4IntoB5u_E4intoEB4E_.exit
  %i.acym = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val1.i.i.i5866 = load i64, ptr %i.acym, align 8, !alias.scope !14069, !noundef !11 ; 2 uses
  %i.acyn = icmp eq i64 %.val1.i.i.i5866, 0
  br i1 %i.acyn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server.exit5868, label %bb.jll

bb.jll:                                           ; preds = %bb.jlk
  %i.acyo = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val.i.i.i5867 = load ptr, ptr %i.acyo, align 16, !alias.scope !14069, !nonnull !11, !noundef !11
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5867, i64 noundef range(i64 1, 0) %.val1.i.i.i5866, i64 noundef 1) #28, !noalias !14069
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server.exit5868

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server.exit5868: ; preds = %bb.jll, %bb.jlk, %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB42_4SyncEL_EEENtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorE7map_errNtB4C_12RoutingErrorNvYB4A_INtNtB5_7convert4IntoB5u_E4intoEB4E_.exit
  %i.acyp = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http3uri3UriECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(88) %i.acyp)
          to label %bb.jlm unwind label %bb.bau

bb.jlm:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs6P5GRezSnwZ_4http6method6MethodReEECsbakdBCgU4AF_16influxdb3_server.exit5868
  %i.acyq = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.experimental.noalias.scope.decl(metadata !14070)
  call void @llvm.experimental.noalias.scope.decl(metadata !14073)
  %i.acyr = load i8, ptr %i.acyq, align 8, !range !2723, !alias.scope !14076, !noundef !11
  %switch.i.i5869 = icmp samesign ult i8 %i.acyr, 10
  br i1 %switch.i.i5869, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872, label %bb.jln

bb.jln:                                           ; preds = %bb.jlm
  %i.acys = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val1.i.i5870 = load i64, ptr %i.acys, align 8, !alias.scope !14076, !noundef !11 ; 2 uses
  %i.acyt = icmp eq i64 %.val1.i.i5870, 0
  br i1 %i.acyt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872, label %bb.jlo

bb.jlo:                                           ; preds = %bb.jln
  %i.acyu = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.val.i.i5871 = load ptr, ptr %i.acyu, align 16, !alias.scope !14076, !nonnull !11, !noundef !11
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5871, i64 noundef range(i64 1, 0) %.val1.i.i5870, i64 noundef 1) #28, !noalias !14076
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872: ; preds = %bb.jlo, %bb.jln, %bb.jlm
  %i.acyv = getelementptr inbounds nuw i8, ptr %1, i64 674 ; 2 uses
  %i.acyw = load i8, ptr %i.acyv, align 2, !range !777, !noundef !11
  %i.acyx = trunc nuw i8 %i.acyw to i1
  br i1 %i.acyx, label %bb.jlr, label %bb.jlp

bb.jlp:                                           ; preds = %bb.jlr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872
  store i8 0, ptr %i.acyv, align 2
  %i.acyy = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14077)
  call void @llvm.experimental.noalias.scope.decl(metadata !14080)
  %i.acyz = load ptr, ptr %i.acyy, align 16, !alias.scope !14083, !nonnull !11, !noundef !11
  %i.acza = atomicrmw sub ptr %i.acyz, i64 1 release, align 8, !noalias !14083
  %i.aczb = icmp eq i64 %i.acza, 1
  br i1 %i.aczb, label %bb.jlq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEEB1c_.exit

bb.jlq:                                           ; preds = %bb.jlp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acyy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsbakdBCgU4AF_16influxdb3_server4http7HttpApiEEB1c_.exit unwind label %bb.bbe

bb.jlr:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http6method6MethodECsbakdBCgU4AF_16influxdb3_server.exit5872
  %i.aczc = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aczc)
          to label %bb.jlp unwind label %bb.bbd

bb.jls:                                           ; preds = %bb.dg
  %i.aczd = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(240) %i.aczd) #26
          to label %bb.bbb unwind label %bb.bh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0B5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.35.sroa.0 = alloca [16 x i8], align 8    ; 9 uses
  %.sroa.35.sroa.10 = alloca [48 x i8], align 8   ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [296 x i8], align 8               ; 5 uses
  %i.f = alloca [168 x i8], align 8               ; 12 uses
  %.sroa.8206.sroa.9 = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.8206.sroa.11 = alloca [32 x i8], align 8 ; 7 uses
  %i.g = alloca [168 x i8], align 8               ; 23 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.4195.sroa.3 = alloca [16 x i8], align 8  ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 10 uses
  %i.m = alloca [296 x i8], align 8               ; 12 uses
  %.sroa.8168.sroa.9 = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.8168.sroa.11 = alloca [32 x i8], align 8 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.4163.sroa.3 = alloca [16 x i8], align 8  ; 3 uses
  %i.o = alloca [48 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [200 x i8], align 8               ; 10 uses
  %.sroa.8.sroa.9 = alloca [16 x i8], align 8     ; 7 uses
  %i.r = alloca [200 x i8], align 8               ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.3140.sroa.3 = alloca [16 x i8], align 8  ; 3 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !range !687, !noundef !11
  switch i8 %i.z, label %default.unreachable393 [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.c
    i8 4, label %bb.bb
    i8 5, label %bb.d
  ]

default.unreachable393:                           ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aa, i8 0, i64 5, i1 false)
  store i8 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !78, !noundef !11 ; 5 uses
  store ptr %i.ac, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ah = load i8, ptr %i.ag, align 2, !range !832, !noundef !11
  switch i8 %i.ah, label %default.unreachable393 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.e
    i8 3, label %bb.n
    i8 4, label %bb.q
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br label %bb.ch

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.aa, align 8
  invoke void @_RINvYINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs5uU3ebUyQFg_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB8_6result6ResultNtNtCs6ePPILGZvJ2_11arrow_array12record_batch11RecordBatchNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EENtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream12TryStreamExt11try_collectINtNtBE_3vec3VecB2E_EECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.w, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae)
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %1, ptr %i.ai, align 8
  br label %bb.bb

bb.g:                                             ; preds = %bb.b
  store i8 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !14084
end_hunk_3
