Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9162
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %bb.cdy

bb.cel:                                           ; preds = %bb.cei
  %i.jya = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %.val95.i.i.i.i1423 = load ptr, ptr %i.jya, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13
  %i.jyb = getelementptr inbounds nuw i8, ptr %.val95.i.i.i.i1423, i64 40
  store i64 %i.jxq, ptr %i.jyb, align 8, !noalias !12961
  %i.jyc = getelementptr inbounds nuw i8, ptr %1, i64 3440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.jyc)
          to label %bb.ceo unwind label %bb.cen, !noalias !12961

bb.cem:                                           ; preds = %bb.cen, %bb.cdy
  %i.jyd = phi ptr [ %i.jwx, %bb.cen ], [ %i.jwl, %bb.cdy ]
  %i.jye = phi ptr [ %i.jwy, %bb.cen ], [ %i.jwm, %bb.cdy ]
  %i.jyf = phi ptr [ %i.jwz, %bb.cen ], [ %i.jwn, %bb.cdy ]
  %i.jyg = phi ptr [ %i.jxa, %bb.cen ], [ %i.jwo, %bb.cdy ]
  %i.jyh = phi ptr [ %i.jxb, %bb.cen ], [ %i.jwp, %bb.cdy ]
  %i.jyi = phi ptr [ %i.jxc, %bb.cen ], [ %i.jwq, %bb.cdy ]
  %i.jyj = phi ptr [ %i.jxd, %bb.cen ], [ %i.jwr, %bb.cdy ]
  %.pn62.i.i.i.i1406 = phi { ptr, i32 } [ %i.jyl, %bb.cen ], [ %.pn59.pn.i.i.i.i1405, %bb.cdy ]
  %i.jyk = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.jyk, align 1, !noalias !12960
  br label %bb.che

bb.cen:                                           ; preds = %bb.ceq, %bb.cel
  %i.jyl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cem

bb.ceo:                                           ; preds = %bb.cel
  %i.jym = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.jym, align 1, !noalias !12960
  br label %bb.cdi

bb.cep:                                           ; preds = %bb.ceq, %bb.cej, %.thread.i.i.i.i1424
  %.sroa.24.sroa.10.i.i.i.sroa.12.6.i = phi i64 [ %.sroa.24.sroa.10.i.i.i.sroa.12.0.copyload296.i, %.thread.i.i.i.i1424 ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.7.0.copyload.i, %bb.ceq ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.7.0.copyload.i, %bb.cej ]
  %.sroa.11338.i.i.i.sroa.0.12.i = phi i56 [ %.sroa.11338.i.i.i.sroa.0.0.copyload232.i, %.thread.i.i.i.i1424 ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i1409, %bb.ceq ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i1409, %bb.cej ]
  %.sroa.0336.0477.i.i.i.i = phi i8 [ %.sroa.0372.0.copyload.i.i.i.i, %.thread.i.i.i.i1424 ], [ %i.jxf, %bb.ceq ], [ %i.jxf, %bb.cej ]
  %.sroa.19.0476.i.i.i.i = phi ptr [ %.sroa.5374.0.copyload.i.i.i.i, %.thread.i.i.i.i1424 ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i1411, %bb.ceq ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i1411, %bb.cej ]
  %.sroa.21.0475.i.i.i.i = phi i64 [ %.sroa.6375.0.copyload.i.i.i.i, %.thread.i.i.i.i1424 ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i1413, %bb.ceq ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i1413, %bb.cej ]
  %.sroa.23.0474.i.i.i.i = phi i64 [ %.sroa.7376.0.copyload.i.i.i.i, %.thread.i.i.i.i1424 ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i1415, %bb.ceq ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i1415, %bb.cej ]
  %i.jyn = phi <2 x i64> [ %i.jxo, %.thread.i.i.i.i1424 ], [ %i.jxh, %bb.ceq ], [ %i.jxh, %bb.cej ]
  %i.jyo = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.jyo, align 1, !noalias !12960
  br label %bb.cer

bb.ceq:                                           ; preds = %bb.cej
  %i.jyp = getelementptr inbounds nuw i8, ptr %1, i64 3440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.jyp)
          to label %bb.cep unwind label %bb.cen, !noalias !12961

bb.cer:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314, %bb.cep
  %i.jyq = phi ptr [ %i.kfr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jwx, %bb.cep ] ; 3 uses
  %i.jyr = phi ptr [ %i.kfs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jwy, %bb.cep ] ; 3 uses
  %i.jys = phi ptr [ %i.kft, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jwz, %bb.cep ] ; 3 uses
  %i.jyt = phi ptr [ %i.kfu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jxa, %bb.cep ] ; 3 uses
  %.sroa.24.sroa.10.i.i.i.sroa.12.7.i = phi i64 [ %.sroa.24.sroa.10.i.i.i.sroa.12.13.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.24.sroa.10.i.i.i.sroa.12.6.i, %bb.cep ] ; 2 uses
  %.sroa.11338.i.i.i.sroa.0.3.i = phi i56 [ %.sroa.11338.i.i.i.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.11338.i.i.i.sroa.0.12.i, %bb.cep ] ; 2 uses
  %i.jyu = phi ptr [ %i.kfv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jxb, %bb.cep ] ; 3 uses
  %i.jyv = phi ptr [ %i.kfw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jxc, %bb.cep ] ; 3 uses
  %i.jyw = phi ptr [ %i.kfx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jxd, %bb.cep ] ; 3 uses
  %.sroa.23.1.i.i.i.i1316 = phi i64 [ %.sroa.23.4.i.i.i.i1311, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.23.0474.i.i.i.i, %bb.cep ] ; 2 uses
  %.sroa.21.1.i.i.i.i1317 = phi i64 [ %.sroa.21.4.i.i.i.i1312, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.21.0475.i.i.i.i, %bb.cep ] ; 2 uses
  %.sroa.19.1.i.i.i.i1318 = phi ptr [ %.sroa.19.4.i.i.i.i1313, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.19.0476.i.i.i.i, %bb.cep ] ; 2 uses
  %.sroa.0336.1.i.i.i.i = phi i8 [ %.sroa.0336.4.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %.sroa.0336.0477.i.i.i.i, %bb.cep ] ; 2 uses
  %i.jyx = phi <2 x i64> [ %i.kfy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1314 ], [ %i.jyn, %bb.cep ] ; 2 uses
  %i.jyy = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12974)
  call void @llvm.experimental.noalias.scope.decl(metadata !12975)
  call void @llvm.experimental.noalias.scope.decl(metadata !12976)
  %i.jyz = load ptr, ptr %i.jyy, align 16, !alias.scope !12977, !noalias !12960, !nonnull !13, !noundef !13
  %i.jza = atomicrmw add ptr %i.jyz, i64 -1 release, align 8, !noalias !12978
  %i.jzb = icmp eq i64 %i.jza, 1
  br i1 %i.jzb, label %bb.ces, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops5cache21DeleteDistinctCacheOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i

bb.ces:                                           ; preds = %bb.cer
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jyy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops5cache21DeleteDistinctCacheOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i unwind label %bb.cdu, !noalias !12961

.loopexit.i.i.i.i1369:                            ; preds = %.backedge.i.i.i.i.i1368, %bb.cdv
  store i8 -1, ptr %i.jvs, align 16, !alias.scope !12972, !noalias !12960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yq), !noalias !12960
  %i.jzc = load ptr, ptr %i.jui, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13
  %i.jzd = getelementptr inbounds nuw i8, ptr %i.jzc, i64 1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.yq, ptr noundef nonnull align 8 dereferenceable(16) %i.jzd, i64 16, i1 false), !noalias !12961
  %.val87.i.i.i.i1370 = load i64, ptr %i.jue, align 8, !noalias !12960, !noundef !13
  %i.jze = getelementptr inbounds nuw i8, ptr %1, i64 3352
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18serialize_log_file(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.jze, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.yq, i64 noundef %.val87.i.i.i.i1370, ptr noundef nonnull align 8 %.val105.i.i.i.i1363, i64 noundef %.val106.i.i.i.i1364)
          to label %bb.ceu unwind label %bb.cet, !noalias !12961

bb.cet:                                           ; preds = %.loopexit.i.i.i.i1369
  %i.jzf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yq), !noalias !12960
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit184.i.i.i.i

bb.ceu:                                           ; preds = %.loopexit.i.i.i.i1369
  %i.jzg = getelementptr inbounds nuw i8, ptr %1, i64 3346
  store i8 1, ptr %i.jzg, align 2, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yq), !noalias !12960
  %.val101.i.i.i.i1371 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i1353, align 8, !noalias !12960, !nonnull !13, !noundef !13
  %.val102.i.i.i.i1372 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i1354, align 16, !noalias !12960, !noundef !13
  %i.jzh = load ptr, ptr %i.jui, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13
  %i.jzi = getelementptr inbounds nuw i8, ptr %i.jzh, i64 40
  %i.jzj = getelementptr inbounds nuw i8, ptr %1, i64 3392
  store ptr %.val101.i.i.i.i1371, ptr %i.jzj, align 16, !noalias !12960
  %.sroa.8245.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3400
  store i64 %.val102.i.i.i.i1372, ptr %.sroa.8245.0..sroa_idx.i.i.i.i, align 8, !noalias !12960
  %.sroa.10247.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8128
  store ptr %i.jzi, ptr %.sroa.10247.0..sroa_idx.i.i.i.i, align 16, !noalias !12960
  %.sroa.12249.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8144
  store i16 %i.jvd, ptr %.sroa.12249.0..sroa_idx.i.i.i.i, align 16, !noalias !12960
  %.sroa.13250.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8146
  store i16 %i.jvf, ptr %.sroa.13250.0..sroa_idx.i.i.i.i, align 2, !noalias !12960
  %.sroa.14.0..sroa_idx.i.i.i.i1373 = getelementptr inbounds nuw i8, ptr %1, i64 8148
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i1373, align 4, !noalias !12960
  br label %bb.cew

bb.cev:                                           ; preds = %bb.cew
  %i.jzk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yp), !noalias !12960
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.jzs) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1280 unwind label %bb.ccy, !noalias !12961

bb.cew:                                           ; preds = %bb.ceu, %bb.cch
  %i.jzl = phi ptr [ %i.jdq, %bb.cch ], [ %i.jtv, %bb.ceu ] ; 6 uses
  %i.jzm = phi ptr [ %i.jdp, %bb.cch ], [ %i.jtw, %bb.ceu ] ; 5 uses
  %i.jzn = phi ptr [ %.phi.trans.insert299.i, %bb.cch ], [ %i.jtx, %bb.ceu ] ; 6 uses
  %i.jzo = phi ptr [ %i.jjn, %bb.cch ], [ %i.jty, %bb.ceu ] ; 5 uses
  %i.jzp = phi ptr [ %.phi.trans.insert.i.i1274, %bb.cch ], [ %i.jtz, %bb.ceu ] ; 6 uses
  %i.jzq = phi ptr [ %i.joh, %bb.cch ], [ %i.jua, %bb.ceu ] ; 5 uses
  %i.jzr = phi ptr [ %.phi.trans.insert.i.i.i1276, %bb.cch ], [ %i.jub, %bb.ceu ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yp), !noalias !12960
  %i.jzs = getelementptr inbounds nuw i8, ptr %1, i64 3392 ; 2 uses
  invoke fastcc void @_RNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(1680) %i.yp, ptr noundef nonnull align 16 %i.jzs, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cex unwind label %bb.cev, !noalias !12961

bb.cex:                                           ; preds = %bb.cew
  %i.jzt = load i64, ptr %i.yp, align 8, !range !64, !noalias !12960, !noundef !13 ; 3 uses
  %i.jzu = icmp eq i64 %i.jzt, -3
  br i1 %i.jzu, label %bb.cey, label %bb.cez

bb.cey:                                           ; preds = %bb.cex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yp), !noalias !12960
  br label %.thread.i.i.i1399

bb.cez:                                           ; preds = %bb.cex
  %.sroa.3252.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %.sroa.3252.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.3252.0..sroa_idx.i.i.i.i, align 8, !noalias !12960 ; 2 uses
  %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %.sroa.3252.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !12960 ; 2 uses
  %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.jzv = load <2 x i64>, ptr %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !12960 ; 3 uses
  %.sroa.5253.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.0..sroa_idx.i.i.i.i, i64 1640, i1 false), !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yp), !noalias !12960
  %i.jzw = getelementptr inbounds nuw i8, ptr %1, i64 8148
  %i.jzx = load i8, ptr %i.jzw, align 4, !range !37, !noalias !12960, !noundef !13
  %cond.i129.i.i.i.i1374 = icmp eq i8 %i.jzx, 3
  br i1 %cond.i129.i.i.i.i1374, label %bb.cfa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1375

bb.cfa:                                           ; preds = %bb.cez
  %i.jzy = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18load_restore_state0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.jzy)
          to label %bb.cfc unwind label %bb.cfb, !noalias !12961

bb.cfb:                                           ; preds = %bb.cfa
  %i.jzz = landingpad { ptr, i32 }
          cleanup
  %i.kaa = getelementptr inbounds nuw i8, ptr %1, i64 3408
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.kaa) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1280 unwind label %bb.cfd, !noalias !12961

bb.cfc:                                           ; preds = %bb.cfa
  %i.kab = getelementptr inbounds nuw i8, ptr %1, i64 3408
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.kab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1375 unwind label %bb.cfe, !noalias !12961

bb.cfd:                                           ; preds = %bb.cfb
  %i.kac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12961
  unreachable

bb.cfe:                                           ; preds = %bb.cgu, %bb.cfc, %bb.cdh
  %i.kad = phi ptr [ %i.jrf, %bb.cdh ], [ %i.kew, %bb.cgu ], [ %i.jzl, %bb.cfc ]
  %i.kae = phi ptr [ %i.jrg, %bb.cdh ], [ %i.kex, %bb.cgu ], [ %i.jzm, %bb.cfc ]
  %i.kaf = phi ptr [ %i.jrh, %bb.cdh ], [ %i.key, %bb.cgu ], [ %i.jzn, %bb.cfc ]
  %i.kag = phi ptr [ %i.jri, %bb.cdh ], [ %i.kez, %bb.cgu ], [ %i.jzo, %bb.cfc ]
  %i.kah = phi ptr [ %i.jrj, %bb.cdh ], [ %i.kfa, %bb.cgu ], [ %i.jzp, %bb.cfc ]
  %i.kai = phi ptr [ %i.jrk, %bb.cdh ], [ %i.kfb, %bb.cgu ], [ %i.jzq, %bb.cfc ]
  %i.kaj = phi ptr [ %i.jrl, %bb.cdh ], [ %i.kfc, %bb.cgu ], [ %i.jzr, %bb.cfc ]
  %i.kak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1280

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1375: ; preds = %bb.cfc, %bb.cez
  %i.kal = icmp eq i64 %i.jzt, -2
  %3 = shufflevector <2 x i64> %i.jzv, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.kam = extractelement <2 x i64> %i.jzv, i64 0
  br i1 %i.kal, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit155.i.i.i.i1309, label %bb.cff

bb.cff:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i1375
  %.sroa.5256.0..sroa_idx.i.i.i.i1376 = getelementptr inbounds nuw i8, ptr %1, i64 1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1640) %.sroa.5256.0..sroa_idx.i.i.i.i1376, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i, i64 1640, i1 false), !noalias !12960
  %i.kan = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store i64 %i.jzt, ptr %i.kan, align 8, !noalias !12960
  %.sroa.4255.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store ptr %.sroa.3252.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.4255.0..sroa_idx.i.i.i.i, align 16, !noalias !12960
  %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1608
  store i64 %.sroa.3252.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !12960
  %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store <2 x i64> %i.jzv, ptr %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !noalias !12960
  %i.kao = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.kap = load ptr, ptr %i.kao, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13
  %i.kaq = getelementptr inbounds nuw i8, ptr %i.kap, i64 40
  %i.kar = getelementptr inbounds nuw i8, ptr %1, i64 1544
  %i.kas = load i64, ptr %i.kar, align 8, !noalias !12960, !noundef !13
  %i.kat = getelementptr inbounds nuw i8, ptr %1, i64 3346
  store i8 0, ptr %i.kat, align 2, !noalias !12960
  %.sroa.12265.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3608
  store i64 %i.kas, ptr %.sroa.12265.0..sroa_idx.i.i.i.i, align 8, !noalias !12960
  %.sroa.14267.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3648
  store ptr %i.kaq, ptr %.sroa.14267.0..sroa_idx.i.i.i.i, align 16, !noalias !12960
  %.sroa.16.0..sroa_idx.i.i.i.i1377 = getelementptr inbounds nuw i8, ptr %1, i64 3657
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i.i.i1377, align 1, !noalias !12960
  br label %bb.cfh

bb.cfg:                                           ; preds = %bb.cfh
  %i.kau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yo), !noalias !12960
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.kbc) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1278 unwind label %bb.ccy, !noalias !12961

bb.cfh:                                           ; preds = %bb.cff, %bb.cch
  %i.kav = phi ptr [ %i.jdq, %bb.cch ], [ %i.jzl, %bb.cff ] ; 13 uses
  %i.kaw = phi ptr [ %i.jdp, %bb.cch ], [ %i.jzm, %bb.cff ] ; 12 uses
  %i.kax = phi ptr [ %.phi.trans.insert299.i, %bb.cch ], [ %i.jzn, %bb.cff ] ; 13 uses
  %i.kay = phi ptr [ %i.jjn, %bb.cch ], [ %i.jzo, %bb.cff ] ; 12 uses
  %i.kaz = phi ptr [ %.phi.trans.insert.i.i1274, %bb.cch ], [ %i.jzp, %bb.cff ] ; 13 uses
  %i.kba = phi ptr [ %i.joh, %bb.cch ], [ %i.jzq, %bb.cff ] ; 12 uses
  %i.kbb = phi ptr [ %.phi.trans.insert.i.i.i1276, %bb.cch ], [ %i.jzr, %bb.cff ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yo), !noalias !12960
  %i.kbc = getelementptr inbounds nuw i8, ptr %1, i64 3352 ; 4 uses
  invoke fastcc void @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.yo, ptr noundef nonnull align 8 %i.kbc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cfi unwind label %bb.cfg, !noalias !12961

bb.cfi:                                           ; preds = %bb.cfh
  %i.kbd = load i64, ptr %i.yo, align 8, !range !70, !noalias !12960, !noundef !13 ; 4 uses
  %i.kbe = icmp eq i64 %i.kbd, -2
  br i1 %i.kbe, label %bb.cfj, label %bb.cfk

bb.cfj:                                           ; preds = %bb.cfi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yo), !noalias !12960
  br label %.thread.i.i.i1399

bb.cfk:                                           ; preds = %bb.cfi
  %.sroa.3271.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %.sroa.3271.0.copyload.i.i.i.i = load i8, ptr %.sroa.3271.0..sroa_idx.i.i.i.i, align 8, !noalias !12960 ; 3 uses
  %.sroa.4274.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.i.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.0..sroa_idx.i.i.i.i, i64 23, i1 false), !noalias !12960
  %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %.sroa.4274.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !12960 ; 2 uses
  %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4274.i.i.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i, i64 24, i1 false), !noalias !12960
  %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %.sroa.4274.i.i.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !12960 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yo), !noalias !12960
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.kbc)
          to label %bb.cfm unwind label %bb.cgc, !noalias !12961

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1278: ; preds = %bb.cgz, %bb.cgy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i, %bb.cgc, %bb.cfg, %bb.ccz
  %i.kbf = phi ptr [ %i.kav, %bb.cgz ], [ %i.kdj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kav, %bb.cfg ], [ %i.kav, %bb.cgy ], [ %i.kcs, %bb.cgc ], [ %i.jrf, %bb.ccz ] ; 2 uses
  %i.kbg = phi ptr [ %i.kaw, %bb.cgz ], [ %i.kdk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kaw, %bb.cfg ], [ %i.kaw, %bb.cgy ], [ %i.kct, %bb.cgc ], [ %i.jrg, %bb.ccz ] ; 2 uses
  %i.kbh = phi ptr [ %i.kax, %bb.cgz ], [ %i.kdl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kax, %bb.cfg ], [ %i.kax, %bb.cgy ], [ %i.kcu, %bb.cgc ], [ %i.jrh, %bb.ccz ] ; 2 uses
  %i.kbi = phi ptr [ %i.kay, %bb.cgz ], [ %i.kdm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kay, %bb.cfg ], [ %i.kay, %bb.cgy ], [ %i.kcv, %bb.cgc ], [ %i.jri, %bb.ccz ] ; 2 uses
  %i.kbj = phi ptr [ %i.kaz, %bb.cgz ], [ %i.kdn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kaz, %bb.cfg ], [ %i.kaz, %bb.cgy ], [ %i.kcw, %bb.cgc ], [ %i.jrj, %bb.ccz ] ; 2 uses
  %i.kbk = phi ptr [ %i.kba, %bb.cgz ], [ %i.kdo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kba, %bb.cfg ], [ %i.kba, %bb.cgy ], [ %i.kcx, %bb.cgc ], [ %i.jrk, %bb.ccz ] ; 2 uses
  %i.kbl = phi ptr [ %i.kbb, %bb.cgz ], [ %i.kdp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kbb, %bb.cfg ], [ %i.kbb, %bb.cgy ], [ %i.kcy, %bb.cgc ], [ %i.jrl, %bb.ccz ] ; 2 uses
  %.pn47.i.i.i.i1279 = phi { ptr, i32 } [ %.pn37.pn.i.i.i.i1383, %bb.cgz ], [ %.pn35.i.i.i.i1397, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache23DistinctCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.kau, %bb.cfg ], [ %.pn37.pn.i.i.i.i1383, %bb.cgy ], [ %i.kcz, %bb.cgc ], [ %i.jre, %bb.ccz ] ; 2 uses
  %i.kbm = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 2 uses
  %i.kbn = load i64, ptr %i.kbm, align 8, !range !12, !alias.scope !12979, !noalias !12960, !noundef !13
  %i.kbo = icmp eq i64 %i.kbn, -1
  br i1 %i.kbo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1280, label %bb.cfl

bb.cfl:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1278
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.kbm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1280 unwind label %bb.ccy, !noalias !12961

bb.cfm:                                           ; preds = %bb.cfk
  %i.kbp = getelementptr inbounds nuw i8, ptr %1, i64 3272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12980)
  %.not.i136.i.i.i.i1378 = icmp eq i64 %i.kbd, -1
  br i1 %.not.i136.i.i.i.i1378, label %bb.cfn, label %bb.chd

bb.cfn:                                           ; preds = %bb.cfm
  %i.kbq = getelementptr inbounds nuw i8, ptr %1, i64 3280
  store i8 %.sroa.3271.0.copyload.i.i.i.i, ptr %i.kbq, align 16, !alias.scope !12981, !noalias !12960
  store i64 -1, ptr %i.kbp, align 8, !alias.scope !12981, !noalias !12960
  %i.kbr = trunc nuw i8 %.sroa.3271.0.copyload.i.i.i.i to i1
  %i.kbs = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 3 uses
  %i.kbt = load ptr, ptr %i.kbs, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13 ; 3 uses
  br i1 %i.kbr, label %bb.chc, label %bb.cfo

bb.cfo:                                           ; preds = %bb.cfn
  %i.kbu = getelementptr inbounds nuw i8, ptr %i.kbt, i64 160 ; 8 uses
  %i.kbv = cmpxchg weak ptr %i.kbu, i64 0, i64 8 acquire monotonic, align 8, !noalias !12961
  %i.kbw = extractvalue { i64, i1 } %i.kbv, 1
  br i1 %i.kbw, label %bb.cfq, label %bb.cfp, !prof !65

bb.cfp:                                           ; preds = %bb.cfo
  %i.kbx = invoke noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.kbu, i64 undef, i32 noundef -1)
          to label %bb.cfq unwind label %bb.cgc, !noalias !12961 ; 0 uses

bb.cfq:                                           ; preds = %bb.cfp, %bb.cfo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ym), !noalias !12960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yl), !noalias !12960
  %i.kby = getelementptr i8, ptr %1, i64 1560
  %.val99.i.i.i.i1379 = load ptr, ptr %i.kby, align 8, !noalias !12960, !nonnull !13, !noundef !13
  %i.kbz = getelementptr i8, ptr %1, i64 1568
  %.val100.i.i.i.i1380 = load i64, ptr %i.kbz, align 16, !noalias !12960, !noundef !13
  %i.kca = getelementptr inbounds nuw i8, ptr %i.kbt, i64 168
  %i.kcb = getelementptr inbounds nuw i8, ptr %1, i64 1544 ; 2 uses
  %i.kcc = load i64, ptr %i.kcb, align 8, !noalias !12960, !noundef !13
  %i.kcd = getelementptr inbounds nuw i8, ptr %1, i64 1592
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply13apply_records(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.yl, ptr noundef nonnull align 8 %.val99.i.i.i.i1379, i64 noundef %.val100.i.i.i.i1380, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.kca, i64 noundef %i.kcc, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.kcd)
          to label %bb.cfr unwind label %bb.cfv, !noalias !12961

bb.cfr:                                           ; preds = %bb.cfq
  call void @llvm.experimental.noalias.scope.decl(metadata !12982)
  call void @llvm.experimental.noalias.scope.decl(metadata !12983)
  %i.kce = load i64, ptr %i.yl, align 8, !range !71, !alias.scope !12983, !noalias !12960, !noundef !13
  %.not.i142.i.i.i.i1385 = icmp eq i64 %i.kce, -1
  br i1 %.not.i142.i.i.i.i1385, label %bb.cfw, label %bb.cfs

bb.cfs:                                           ; preds = %bb.cfr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yf), !noalias !12984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.yl, i64 32, i1 false), !noalias !12985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ye), !noalias !12984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yd), !noalias !12986
  store ptr %i.yf, ptr %i.yd, align 8, !noalias !12986
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i1386 = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i1386, align 8, !noalias !12986
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ye, ptr noundef nonnull @92, ptr noundef nonnull %i.yd)
          to label %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache21DeleteDistinctCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i unwind label %bb.cft, !noalias !12987

bb.cft:                                           ; preds = %bb.cfs
  %i.kcf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.yf) #33
          to label %.body145.i.i.i.i1381 unwind label %bb.cfu, !noalias !12987

bb.cfu:                                           ; preds = %bb.cft
  %i.kcg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !12987
  unreachable

_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache21DeleteDistinctCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i: ; preds = %bb.cfs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yd), !noalias !12986
  %.sroa.4.i141.sroa.3.7.copyload.i.i.i.i1387 = load ptr, ptr %i.ye, align 8, !noalias !12988 ; 2 uses
  %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i1388 = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.sroa.4.i141.sroa.5.7.copyload.i.i.i.i1389 = load i64, ptr %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i1388, align 8, !noalias !12988 ; 2 uses
  %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i1390 = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %.sroa.4.i141.sroa.6.7.copyload.i.i.i.i1391 = load i64, ptr %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i1390, align 8, !noalias !12988 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.yf)
          to label %bb.cha unwind label %bb.cfv, !noalias !12961

bb.cfv:                                           ; preds = %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache21DeleteDistinctCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %bb.cfq
  %i.kch = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i.i.i.i1381

.body145.i.i.i.i1381:                             ; preds = %bb.cfv, %bb.cft
  %eh.lpad-body146.i.i.i.i1382 = phi { ptr, i32 } [ %i.kch, %bb.cfv ], [ %i.kcf, %bb.cft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yl), !noalias !12960
  br label %bb.cgy

bb.cfw:                                           ; preds = %bb.cfr
  %i.kci = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %.sroa.9286.sroa.7.7.copyload.i.i.i.i = load ptr, ptr %i.kci, align 8, !alias.scope !12989, !noalias !12960
  %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %.sroa.4369.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.kcj = load <2 x i64>, ptr %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i, align 8, !alias.scope !12989, !noalias !12960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.yl), !noalias !12960
  store ptr %.sroa.9286.sroa.7.7.copyload.i.i.i.i, ptr %i.ym, align 8, !noalias !12960
  store <2 x i64> %i.kcj, ptr %.sroa.4369.0..sroa_idx.i.i.i.i, align 8, !noalias !12960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.yk), !noalias !12960
  %i.kck = load ptr, ptr %i.kbs, align 16, !noalias !12960, !nonnull !13, !align !18, !noundef !13
  %i.kcl = getelementptr inbounds nuw i8, ptr %i.kck, i64 104
  invoke void @_RNvXsa_Csk0FzFVI8urx_8iox_timeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_12TimeProviderEL_EB10_3nowCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.yk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kcl)
          to label %bb.cfx unwind label %bb.cfy, !noalias !12961

bb.cfx:                                           ; preds = %bb.cfw
  %i.kcm = invoke noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.yk)
          to label %bb.cfz unwind label %bb.cfy, !noalias !12961

bb.cfy:                                           ; preds = %bb.cfx, %bb.cfw
end_hunk_0
begin_hunk_1_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %bb.dav

bb.dbi:                                           ; preds = %bb.dbf
  %i.mqb = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %.val95.i.i.i.i2322 = load ptr, ptr %i.mqb, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13
  %i.mqc = getelementptr inbounds nuw i8, ptr %.val95.i.i.i.i2322, i64 40
  store i64 %i.mpr, ptr %i.mqc, align 8, !noalias !13186
  %i.mqd = getelementptr inbounds nuw i8, ptr %1, i64 3440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.mqd)
          to label %bb.dbl unwind label %bb.dbk, !noalias !13186

bb.dbj:                                           ; preds = %bb.dbk, %bb.dav
  %i.mqe = phi ptr [ %i.moy, %bb.dbk ], [ %i.mom, %bb.dav ]
  %i.mqf = phi ptr [ %i.moz, %bb.dbk ], [ %i.mon, %bb.dav ]
  %i.mqg = phi ptr [ %i.mpa, %bb.dbk ], [ %i.moo, %bb.dav ]
  %i.mqh = phi ptr [ %i.mpb, %bb.dbk ], [ %i.mop, %bb.dav ]
  %i.mqi = phi ptr [ %i.mpc, %bb.dbk ], [ %i.moq, %bb.dav ]
  %i.mqj = phi ptr [ %i.mpd, %bb.dbk ], [ %i.mor, %bb.dav ]
  %i.mqk = phi ptr [ %i.mpe, %bb.dbk ], [ %i.mos, %bb.dav ]
  %.pn62.i.i.i.i2290 = phi { ptr, i32 } [ %i.mqm, %bb.dbk ], [ %.pn59.pn.i.i.i.i2289, %bb.dav ]
  %i.mql = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.mql, align 1, !noalias !13185
  br label %bb.deb

bb.dbk:                                           ; preds = %bb.dbn, %bb.dbi
  %i.mqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dbj

bb.dbl:                                           ; preds = %bb.dbi
  %i.mqn = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.mqn, align 1, !noalias !13185
  br label %bb.daf

bb.dbm:                                           ; preds = %bb.dbn, %bb.dbg, %.thread.i.i.i.i2323
  %.sroa.24.sroa.10.i.i.i.sroa.12.6.i2313 = phi i64 [ %.sroa.24.sroa.10.i.i.i.sroa.12.0.copyload296.i2339, %.thread.i.i.i.i2323 ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.7.0.copyload.i2308, %bb.dbn ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.7.0.copyload.i2308, %bb.dbg ]
  %.sroa.11338.i.i.i.sroa.0.12.i2314 = phi i56 [ %.sroa.11338.i.i.i.sroa.0.0.copyload232.i2326, %.thread.i.i.i.i2323 ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i2295, %bb.dbn ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i2295, %bb.dbg ]
  %.sroa.0336.0477.i.i.i.i2315 = phi i8 [ %.sroa.0372.0.copyload.i.i.i.i2324, %.thread.i.i.i.i2323 ], [ %i.mpg, %bb.dbn ], [ %i.mpg, %bb.dbg ]
  %.sroa.19.0476.i.i.i.i2316 = phi ptr [ %.sroa.5374.0.copyload.i.i.i.i2328, %.thread.i.i.i.i2323 ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i2297, %bb.dbn ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i2297, %bb.dbg ]
  %.sroa.21.0475.i.i.i.i2317 = phi i64 [ %.sroa.6375.0.copyload.i.i.i.i2330, %.thread.i.i.i.i2323 ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i2299, %bb.dbn ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i2299, %bb.dbg ]
  %.sroa.23.0474.i.i.i.i2318 = phi i64 [ %.sroa.7376.0.copyload.i.i.i.i2332, %.thread.i.i.i.i2323 ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i2301, %bb.dbn ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i2301, %bb.dbg ]
  %i.mqo = phi <2 x i64> [ %i.mpp, %.thread.i.i.i.i2323 ], [ %i.mpi, %bb.dbn ], [ %i.mpi, %bb.dbg ]
  %i.mqp = getelementptr inbounds nuw i8, ptr %1, i64 3347
  store i8 0, ptr %i.mqp, align 1, !noalias !13185
  br label %bb.dbo

bb.dbn:                                           ; preds = %bb.dbg
  %i.mqq = getelementptr inbounds nuw i8, ptr %1, i64 3440
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.mqq)
          to label %bb.dbm unwind label %bb.dbk, !noalias !13186

bb.dbo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022, %bb.dbm
  %i.mqr = phi ptr [ %i.mxs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.moy, %bb.dbm ] ; 3 uses
  %i.mqs = phi ptr [ %i.mxt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.moz, %bb.dbm ] ; 3 uses
  %i.mqt = phi ptr [ %i.mxu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mpa, %bb.dbm ] ; 3 uses
  %i.mqu = phi ptr [ %i.mxv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mpb, %bb.dbm ] ; 3 uses
  %.sroa.24.sroa.10.i.i.i.sroa.12.7.i2024 = phi i64 [ %.sroa.24.sroa.10.i.i.i.sroa.12.13.i2015, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.24.sroa.10.i.i.i.sroa.12.6.i2313, %bb.dbm ] ; 2 uses
  %.sroa.11338.i.i.i.sroa.0.3.i2025 = phi i56 [ %.sroa.11338.i.i.i.sroa.0.2.i2016, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.11338.i.i.i.sroa.0.12.i2314, %bb.dbm ] ; 2 uses
  %i.mqv = phi ptr [ %i.mxw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mpc, %bb.dbm ] ; 3 uses
  %i.mqw = phi ptr [ %i.mxx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mpd, %bb.dbm ] ; 3 uses
  %i.mqx = phi ptr [ %i.mxy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mpe, %bb.dbm ] ; 3 uses
  %.sroa.23.1.i.i.i.i2027 = phi i64 [ %.sroa.23.4.i.i.i.i2018, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.23.0474.i.i.i.i2318, %bb.dbm ] ; 2 uses
  %.sroa.21.1.i.i.i.i2028 = phi i64 [ %.sroa.21.4.i.i.i.i2019, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.21.0475.i.i.i.i2317, %bb.dbm ] ; 2 uses
  %.sroa.19.1.i.i.i.i2029 = phi ptr [ %.sroa.19.4.i.i.i.i2020, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.19.0476.i.i.i.i2316, %bb.dbm ] ; 2 uses
  %.sroa.0336.1.i.i.i.i2030 = phi i8 [ %.sroa.0336.4.i.i.i.i2021, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %.sroa.0336.0477.i.i.i.i2315, %bb.dbm ] ; 2 uses
  %i.mqy = phi <2 x i64> [ %i.mxz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2022 ], [ %i.mqo, %bb.dbm ] ; 2 uses
  %i.mqz = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  call void @llvm.experimental.noalias.scope.decl(metadata !13201)
  %i.mra = load ptr, ptr %i.mqz, align 16, !alias.scope !13202, !noalias !13185, !nonnull !13, !noundef !13
  %i.mrb = atomicrmw add ptr %i.mra, i64 -1 release, align 8, !noalias !13203
  %i.mrc = icmp eq i64 %i.mrb, 1
  br i1 %i.mrc, label %bb.dbp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops5cache17DeleteLastCacheOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i

bb.dbp:                                           ; preds = %bb.dbo
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mqz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops5cache17DeleteLastCacheOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i unwind label %bb.dar, !noalias !13186

.loopexit.i.i.i.i2176:                            ; preds = %.backedge.i.i.i.i.i2175, %bb.das
  store i8 -1, ptr %i.mnt, align 16, !alias.scope !13197, !noalias !13185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uz), !noalias !13185
  %i.mrd = load ptr, ptr %i.mmj, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13
  %i.mre = getelementptr inbounds nuw i8, ptr %i.mrd, i64 1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.uz, ptr noundef nonnull align 8 dereferenceable(16) %i.mre, i64 16, i1 false), !noalias !13186
  %.val87.i.i.i.i2177 = load i64, ptr %i.mmf, align 8, !noalias !13185, !noundef !13
  %i.mrf = getelementptr inbounds nuw i8, ptr %1, i64 3352
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18serialize_log_file(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.mrf, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.uz, i64 noundef %.val87.i.i.i.i2177, ptr noundef nonnull align 8 %.val105.i.i.i.i2170, i64 noundef %.val106.i.i.i.i2171)
          to label %bb.dbr unwind label %bb.dbq, !noalias !13186

bb.dbq:                                           ; preds = %.loopexit.i.i.i.i2176
  %i.mrg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uz), !noalias !13185
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit184.i.i.i.i1960

bb.dbr:                                           ; preds = %.loopexit.i.i.i.i2176
  %i.mrh = getelementptr inbounds nuw i8, ptr %1, i64 3346
  store i8 1, ptr %i.mrh, align 2, !noalias !13185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uz), !noalias !13185
  %.val101.i.i.i.i2178 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i2148, align 8, !noalias !13185, !nonnull !13, !noundef !13
  %.val102.i.i.i.i2179 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i2149, align 16, !noalias !13185, !noundef !13
  %i.mri = load ptr, ptr %i.mmj, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13
  %i.mrj = getelementptr inbounds nuw i8, ptr %i.mri, i64 40
  %i.mrk = getelementptr inbounds nuw i8, ptr %1, i64 3392
  store ptr %.val101.i.i.i.i2178, ptr %i.mrk, align 16, !noalias !13185
  %.sroa.8245.0..sroa_idx.i.i.i.i2180 = getelementptr inbounds nuw i8, ptr %1, i64 3400
  store i64 %.val102.i.i.i.i2179, ptr %.sroa.8245.0..sroa_idx.i.i.i.i2180, align 8, !noalias !13185
  %.sroa.10247.0..sroa_idx.i.i.i.i2181 = getelementptr inbounds nuw i8, ptr %1, i64 8128
  store ptr %i.mrj, ptr %.sroa.10247.0..sroa_idx.i.i.i.i2181, align 16, !noalias !13185
  %.sroa.12249.0..sroa_idx.i.i.i.i2182 = getelementptr inbounds nuw i8, ptr %1, i64 8144
  store i16 %i.mne, ptr %.sroa.12249.0..sroa_idx.i.i.i.i2182, align 16, !noalias !13185
  %.sroa.13250.0..sroa_idx.i.i.i.i2183 = getelementptr inbounds nuw i8, ptr %1, i64 8146
  store i16 %i.mng, ptr %.sroa.13250.0..sroa_idx.i.i.i.i2183, align 2, !noalias !13185
  %.sroa.14.0..sroa_idx.i.i.i.i2184 = getelementptr inbounds nuw i8, ptr %1, i64 8148
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i2184, align 4, !noalias !13185
  br label %bb.dbt

bb.dbs:                                           ; preds = %bb.dbt
  %i.mrl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uy), !noalias !13185
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.mrt) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1958 unwind label %bb.czv, !noalias !13186

bb.dbt:                                           ; preds = %bb.dbr, %bb.cze
  %i.mrm = phi ptr [ %i.lvr, %bb.cze ], [ %i.mlw, %bb.dbr ] ; 6 uses
  %i.mrn = phi ptr [ %i.lvq, %bb.cze ], [ %i.mlx, %bb.dbr ] ; 5 uses
  %i.mro = phi ptr [ %.phi.trans.insert299.i1950, %bb.cze ], [ %i.mly, %bb.dbr ] ; 6 uses
  %i.mrp = phi ptr [ %i.mbo, %bb.cze ], [ %i.mlz, %bb.dbr ] ; 5 uses
  %i.mrq = phi ptr [ %.phi.trans.insert.i.i1952, %bb.cze ], [ %i.mma, %bb.dbr ] ; 6 uses
  %i.mrr = phi ptr [ %i.mgi, %bb.cze ], [ %i.mmb, %bb.dbr ] ; 5 uses
  %i.mrs = phi ptr [ %.phi.trans.insert.i.i.i1954, %bb.cze ], [ %i.mmc, %bb.dbr ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uy), !noalias !13185
  %i.mrt = getelementptr inbounds nuw i8, ptr %1, i64 3392 ; 2 uses
  invoke fastcc void @_RNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(1680) %i.uy, ptr noundef nonnull align 16 %i.mrt, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dbu unwind label %bb.dbs, !noalias !13186

bb.dbu:                                           ; preds = %bb.dbt
  %i.mru = load i64, ptr %i.uy, align 8, !range !64, !noalias !13185, !noundef !13 ; 3 uses
  %i.mrv = icmp eq i64 %i.mru, -3
  br i1 %i.mrv, label %bb.dbv, label %bb.dbw

bb.dbv:                                           ; preds = %bb.dbu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uy), !noalias !13185
  br label %.thread.i.i.i2280

bb.dbw:                                           ; preds = %bb.dbu
  %.sroa.3252.0..sroa_idx.i.i.i.i2185 = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %.sroa.3252.sroa.0.0.copyload.i.i.i.i2186 = load ptr, ptr %.sroa.3252.0..sroa_idx.i.i.i.i2185, align 8, !noalias !13185 ; 2 uses
  %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i2187 = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %.sroa.3252.sroa.3.0.copyload.i.i.i.i2188 = load i64, ptr %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i2187, align 8, !noalias !13185 ; 2 uses
  %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i2189 = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  %i.mrw = load <2 x i64>, ptr %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i2189, align 8, !noalias !13185 ; 3 uses
  %.sroa.5253.0..sroa_idx.i.i.i.i2193 = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i1936, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.0..sroa_idx.i.i.i.i2193, i64 1640, i1 false), !noalias !13185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uy), !noalias !13185
  %i.mrx = getelementptr inbounds nuw i8, ptr %1, i64 8148
  %i.mry = load i8, ptr %i.mrx, align 4, !range !37, !noalias !13185, !noundef !13
  %cond.i129.i.i.i.i2194 = icmp eq i8 %i.mry, 3
  br i1 %cond.i129.i.i.i.i2194, label %bb.dbx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2195

bb.dbx:                                           ; preds = %bb.dbw
  %i.mrz = getelementptr inbounds nuw i8, ptr %1, i64 3488
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18load_restore_state0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.mrz)
          to label %bb.dbz unwind label %bb.dby, !noalias !13186

bb.dby:                                           ; preds = %bb.dbx
  %i.msa = landingpad { ptr, i32 }
          cleanup
  %i.msb = getelementptr inbounds nuw i8, ptr %1, i64 3408
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.msb) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1958 unwind label %bb.dca, !noalias !13186

bb.dbz:                                           ; preds = %bb.dbx
  %i.msc = getelementptr inbounds nuw i8, ptr %1, i64 3408
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.msc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2195 unwind label %bb.dcb, !noalias !13186

bb.dca:                                           ; preds = %bb.dby
  %i.msd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !13186
  unreachable

bb.dcb:                                           ; preds = %bb.ddr, %bb.dbz, %bb.dae
  %i.mse = phi ptr [ %i.mjg, %bb.dae ], [ %i.mwx, %bb.ddr ], [ %i.mrm, %bb.dbz ]
  %i.msf = phi ptr [ %i.mjh, %bb.dae ], [ %i.mwy, %bb.ddr ], [ %i.mrn, %bb.dbz ]
  %i.msg = phi ptr [ %i.mji, %bb.dae ], [ %i.mwz, %bb.ddr ], [ %i.mro, %bb.dbz ]
  %i.msh = phi ptr [ %i.mjj, %bb.dae ], [ %i.mxa, %bb.ddr ], [ %i.mrp, %bb.dbz ]
  %i.msi = phi ptr [ %i.mjk, %bb.dae ], [ %i.mxb, %bb.ddr ], [ %i.mrq, %bb.dbz ]
  %i.msj = phi ptr [ %i.mjl, %bb.dae ], [ %i.mxc, %bb.ddr ], [ %i.mrr, %bb.dbz ]
  %i.msk = phi ptr [ %i.mjm, %bb.dae ], [ %i.mxd, %bb.ddr ], [ %i.mrs, %bb.dbz ]
  %i.msl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1958

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2195: ; preds = %bb.dbz, %bb.dbw
  %i.msm = icmp eq i64 %i.mru, -2
  %4 = shufflevector <2 x i64> %i.mrw, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.msn = extractelement <2 x i64> %i.mrw, i64 0
  br i1 %i.msm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit155.i.i.i.i2013, label %bb.dcc

bb.dcc:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i2195
  %.sroa.5256.0..sroa_idx.i.i.i.i2196 = getelementptr inbounds nuw i8, ptr %1, i64 1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1640) %.sroa.5256.0..sroa_idx.i.i.i.i2196, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i1936, i64 1640, i1 false), !noalias !13185
  %i.mso = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store i64 %i.mru, ptr %i.mso, align 8, !noalias !13185
  %.sroa.4255.0..sroa_idx.i.i.i.i2197 = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store ptr %.sroa.3252.sroa.0.0.copyload.i.i.i.i2186, ptr %.sroa.4255.0..sroa_idx.i.i.i.i2197, align 16, !noalias !13185
  %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i2198 = getelementptr inbounds nuw i8, ptr %1, i64 1608
  store i64 %.sroa.3252.sroa.3.0.copyload.i.i.i.i2188, ptr %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i2198, align 8, !noalias !13185
  %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i2199 = getelementptr inbounds nuw i8, ptr %1, i64 1616
  store <2 x i64> %i.mrw, ptr %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i2199, align 16, !noalias !13185
  %i.msp = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.msq = load ptr, ptr %i.msp, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13
  %i.msr = getelementptr inbounds nuw i8, ptr %i.msq, i64 40
  %i.mss = getelementptr inbounds nuw i8, ptr %1, i64 1544
  %i.mst = load i64, ptr %i.mss, align 8, !noalias !13185, !noundef !13
  %i.msu = getelementptr inbounds nuw i8, ptr %1, i64 3346
  store i8 0, ptr %i.msu, align 2, !noalias !13185
  %.sroa.12265.0..sroa_idx.i.i.i.i2201 = getelementptr inbounds nuw i8, ptr %1, i64 3608
  store i64 %i.mst, ptr %.sroa.12265.0..sroa_idx.i.i.i.i2201, align 8, !noalias !13185
  %.sroa.14267.0..sroa_idx.i.i.i.i2202 = getelementptr inbounds nuw i8, ptr %1, i64 3648
  store ptr %i.msr, ptr %.sroa.14267.0..sroa_idx.i.i.i.i2202, align 16, !noalias !13185
  %.sroa.16.0..sroa_idx.i.i.i.i2203 = getelementptr inbounds nuw i8, ptr %1, i64 3657
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i.i.i2203, align 1, !noalias !13185
  br label %bb.dce

bb.dcd:                                           ; preds = %bb.dce
  %i.msv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ux), !noalias !13185
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.mtd) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1956 unwind label %bb.czv, !noalias !13186

bb.dce:                                           ; preds = %bb.dcc, %bb.cze
  %i.msw = phi ptr [ %i.lvr, %bb.cze ], [ %i.mrm, %bb.dcc ] ; 13 uses
  %i.msx = phi ptr [ %i.lvq, %bb.cze ], [ %i.mrn, %bb.dcc ] ; 12 uses
  %i.msy = phi ptr [ %.phi.trans.insert299.i1950, %bb.cze ], [ %i.mro, %bb.dcc ] ; 13 uses
  %i.msz = phi ptr [ %i.mbo, %bb.cze ], [ %i.mrp, %bb.dcc ] ; 12 uses
  %i.mta = phi ptr [ %.phi.trans.insert.i.i1952, %bb.cze ], [ %i.mrq, %bb.dcc ] ; 13 uses
  %i.mtb = phi ptr [ %i.mgi, %bb.cze ], [ %i.mrr, %bb.dcc ] ; 12 uses
  %i.mtc = phi ptr [ %.phi.trans.insert.i.i.i1954, %bb.cze ], [ %i.mrs, %bb.dcc ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ux), !noalias !13185
  %i.mtd = getelementptr inbounds nuw i8, ptr %1, i64 3352 ; 4 uses
  invoke fastcc void @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ux, ptr noundef nonnull align 8 %i.mtd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dcf unwind label %bb.dcd, !noalias !13186

bb.dcf:                                           ; preds = %bb.dce
  %i.mte = load i64, ptr %i.ux, align 8, !range !70, !noalias !13185, !noundef !13 ; 4 uses
  %i.mtf = icmp eq i64 %i.mte, -2
  br i1 %i.mtf, label %bb.dcg, label %bb.dch

bb.dcg:                                           ; preds = %bb.dcf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ux), !noalias !13185
  br label %.thread.i.i.i2280

bb.dch:                                           ; preds = %bb.dcf
  %.sroa.3271.0..sroa_idx.i.i.i.i2204 = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %.sroa.3271.0.copyload.i.i.i.i2205 = load i8, ptr %.sroa.3271.0..sroa_idx.i.i.i.i2204, align 8, !noalias !13185 ; 3 uses
  %.sroa.4274.0..sroa_idx.i.i.i.i2206 = getelementptr inbounds nuw i8, ptr %i.ux, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.i.i.i.sroa.0.i1934, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.0..sroa_idx.i.i.i.i2206, i64 23, i1 false), !noalias !13185
  %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2207 = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %.sroa.4274.i.i.i.sroa.6.0.copyload.i2208 = load i64, ptr %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2207, align 8, !noalias !13185 ; 2 uses
  %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2209 = getelementptr inbounds nuw i8, ptr %i.ux, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4274.i.i.i.sroa.7.i1935, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2209, i64 24, i1 false), !noalias !13185
  %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2210 = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %.sroa.4274.i.i.i.sroa.8.0.copyload.i2211 = load i64, ptr %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i2210, align 8, !noalias !13185 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ux), !noalias !13185
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.mtd)
          to label %bb.dcj unwind label %bb.dcz, !noalias !13186

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1956: ; preds = %bb.ddw, %bb.ddv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i, %bb.dcz, %bb.dcd, %bb.czw
  %i.mtg = phi ptr [ %i.msw, %bb.ddw ], [ %i.mvk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.msw, %bb.dcd ], [ %i.msw, %bb.ddv ], [ %i.mut, %bb.dcz ], [ %i.mjg, %bb.czw ] ; 2 uses
  %i.mth = phi ptr [ %i.msx, %bb.ddw ], [ %i.mvl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.msx, %bb.dcd ], [ %i.msx, %bb.ddv ], [ %i.muu, %bb.dcz ], [ %i.mjh, %bb.czw ] ; 2 uses
  %i.mti = phi ptr [ %i.msy, %bb.ddw ], [ %i.mvm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.msy, %bb.dcd ], [ %i.msy, %bb.ddv ], [ %i.muv, %bb.dcz ], [ %i.mji, %bb.czw ] ; 2 uses
  %i.mtj = phi ptr [ %i.msz, %bb.ddw ], [ %i.mvn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.msz, %bb.dcd ], [ %i.msz, %bb.ddv ], [ %i.muw, %bb.dcz ], [ %i.mjj, %bb.czw ] ; 2 uses
  %i.mtk = phi ptr [ %i.mta, %bb.ddw ], [ %i.mvo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.mta, %bb.dcd ], [ %i.mta, %bb.ddv ], [ %i.mux, %bb.dcz ], [ %i.mjk, %bb.czw ] ; 2 uses
  %i.mtl = phi ptr [ %i.mtb, %bb.ddw ], [ %i.mvp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.mtb, %bb.dcd ], [ %i.mtb, %bb.ddv ], [ %i.muy, %bb.dcz ], [ %i.mjl, %bb.czw ] ; 2 uses
  %i.mtm = phi ptr [ %i.mtc, %bb.ddw ], [ %i.mvq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.mtc, %bb.dcd ], [ %i.mtc, %bb.ddv ], [ %i.muz, %bb.dcz ], [ %i.mjm, %bb.czw ] ; 2 uses
  %.pn47.i.i.i.i1957 = phi { ptr, i32 } [ %.pn37.pn.i.i.i.i2228, %bb.ddw ], [ %.pn35.i.i.i.i2253, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.msv, %bb.dcd ], [ %.pn37.pn.i.i.i.i2228, %bb.ddv ], [ %i.mva, %bb.dcz ], [ %i.mjf, %bb.czw ] ; 2 uses
  %i.mtn = getelementptr inbounds nuw i8, ptr %1, i64 1592 ; 2 uses
  %i.mto = load i64, ptr %i.mtn, align 8, !range !12, !alias.scope !13204, !noalias !13185, !noundef !13
  %i.mtp = icmp eq i64 %i.mto, -1
  br i1 %i.mtp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1958, label %bb.dci

bb.dci:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i1956
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.mtn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i1958 unwind label %bb.czv, !noalias !13186

bb.dcj:                                           ; preds = %bb.dch
  %i.mtq = getelementptr inbounds nuw i8, ptr %1, i64 3272 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13205)
  %.not.i136.i.i.i.i2212 = icmp eq i64 %i.mte, -1
  br i1 %.not.i136.i.i.i.i2212, label %bb.dck, label %bb.dea

bb.dck:                                           ; preds = %bb.dcj
  %i.mtr = getelementptr inbounds nuw i8, ptr %1, i64 3280
  store i8 %.sroa.3271.0.copyload.i.i.i.i2205, ptr %i.mtr, align 16, !alias.scope !13206, !noalias !13185
  store i64 -1, ptr %i.mtq, align 8, !alias.scope !13206, !noalias !13185
  %i.mts = trunc nuw i8 %.sroa.3271.0.copyload.i.i.i.i2205 to i1
  %i.mtt = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 3 uses
  %i.mtu = load ptr, ptr %i.mtt, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13 ; 3 uses
  br i1 %i.mts, label %bb.ddz, label %bb.dcl

bb.dcl:                                           ; preds = %bb.dck
  %i.mtv = getelementptr inbounds nuw i8, ptr %i.mtu, i64 160 ; 8 uses
  %i.mtw = cmpxchg weak ptr %i.mtv, i64 0, i64 8 acquire monotonic, align 8, !noalias !13186
  %i.mtx = extractvalue { i64, i1 } %i.mtw, 1
  br i1 %i.mtx, label %bb.dcn, label %bb.dcm, !prof !65

bb.dcm:                                           ; preds = %bb.dcl
  %i.mty = invoke noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.mtv, i64 undef, i32 noundef -1)
          to label %bb.dcn unwind label %bb.dcz, !noalias !13186 ; 0 uses

bb.dcn:                                           ; preds = %bb.dcm, %bb.dcl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uv), !noalias !13185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uu), !noalias !13185
  %i.mtz = getelementptr i8, ptr %1, i64 1560
  %.val99.i.i.i.i2224 = load ptr, ptr %i.mtz, align 8, !noalias !13185, !nonnull !13, !noundef !13
  %i.mua = getelementptr i8, ptr %1, i64 1568
  %.val100.i.i.i.i2225 = load i64, ptr %i.mua, align 16, !noalias !13185, !noundef !13
  %i.mub = getelementptr inbounds nuw i8, ptr %i.mtu, i64 168
  %i.muc = getelementptr inbounds nuw i8, ptr %1, i64 1544 ; 2 uses
  %i.mud = load i64, ptr %i.muc, align 8, !noalias !13185, !noundef !13
  %i.mue = getelementptr inbounds nuw i8, ptr %1, i64 1592
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply13apply_records(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.uu, ptr noundef nonnull align 8 %.val99.i.i.i.i2224, i64 noundef %.val100.i.i.i.i2225, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.mub, i64 noundef %i.mud, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.mue)
          to label %bb.dco unwind label %bb.dcs, !noalias !13186

bb.dco:                                           ; preds = %bb.dcn
  call void @llvm.experimental.noalias.scope.decl(metadata !13207)
  call void @llvm.experimental.noalias.scope.decl(metadata !13208)
  %i.muf = load i64, ptr %i.uu, align 8, !range !71, !alias.scope !13208, !noalias !13185, !noundef !13
  %.not.i142.i.i.i.i2230 = icmp eq i64 %i.muf, -1
  br i1 %.not.i142.i.i.i.i2230, label %bb.dct, label %bb.dcp

bb.dcp:                                           ; preds = %bb.dco
  call void @llvm.lifetime.start.p0(ptr nonnull %i.uo), !noalias !13209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.uu, i64 32, i1 false), !noalias !13210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.un), !noalias !13209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.um), !noalias !13211
  store ptr %i.uo, ptr %i.um, align 8, !noalias !13211
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i2231 = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i2231, align 8, !noalias !13211
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.un, ptr noundef nonnull @92, ptr noundef nonnull %i.um)
          to label %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache17DeleteLastCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i unwind label %bb.dcq, !noalias !13212

bb.dcq:                                           ; preds = %bb.dcp
  %i.mug = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.uo) #33
          to label %.body145.i.i.i.i2226 unwind label %bb.dcr, !noalias !13212

bb.dcr:                                           ; preds = %bb.dcq
  %i.muh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !13212
  unreachable

_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache17DeleteLastCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i: ; preds = %bb.dcp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.um), !noalias !13211
  %.sroa.4.i141.sroa.3.7.copyload.i.i.i.i2232 = load ptr, ptr %i.un, align 8, !noalias !13213 ; 2 uses
  %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i2233 = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %.sroa.4.i141.sroa.5.7.copyload.i.i.i.i2234 = load i64, ptr %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i2233, align 8, !noalias !13213 ; 2 uses
  %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i2235 = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %.sroa.4.i141.sroa.6.7.copyload.i.i.i.i2236 = load i64, ptr %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i2235, align 8, !noalias !13213 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.uo)
          to label %bb.ddx unwind label %bb.dcs, !noalias !13186

bb.dcs:                                           ; preds = %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops5cache17DeleteLastCacheOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %bb.dcn
  %i.mui = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i.i.i.i2226

.body145.i.i.i.i2226:                             ; preds = %bb.dcs, %bb.dcq
  %eh.lpad-body146.i.i.i.i2227 = phi { ptr, i32 } [ %i.mui, %bb.dcs ], [ %i.mug, %bb.dcq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uu), !noalias !13185
  br label %bb.ddv

bb.dct:                                           ; preds = %bb.dco
  %i.muj = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %.sroa.9286.sroa.7.7.copyload.i.i.i.i2238 = load ptr, ptr %i.muj, align 8, !alias.scope !13214, !noalias !13185
  %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i2239 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %.sroa.4369.0..sroa_idx.i.i.i.i2243 = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.muk = load <2 x i64>, ptr %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i2239, align 8, !alias.scope !13214, !noalias !13185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.uu), !noalias !13185
  store ptr %.sroa.9286.sroa.7.7.copyload.i.i.i.i2238, ptr %i.uv, align 8, !noalias !13185
  store <2 x i64> %i.muk, ptr %.sroa.4369.0..sroa_idx.i.i.i.i2243, align 8, !noalias !13185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ut), !noalias !13185
  %i.mul = load ptr, ptr %i.mtt, align 16, !noalias !13185, !nonnull !13, !align !18, !noundef !13
  %i.mum = getelementptr inbounds nuw i8, ptr %i.mul, i64 104
  invoke void @_RNvXsa_Csk0FzFVI8urx_8iox_timeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_12TimeProviderEL_EB10_3nowCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.ut, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mum)
          to label %bb.dcu unwind label %bb.dcv, !noalias !13186

bb.dcu:                                           ; preds = %bb.dct
  %i.mun = invoke noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ut)
          to label %bb.dcw unwind label %bb.dcv, !noalias !13186

bb.dcv:                                           ; preds = %bb.dcu, %bb.dct
end_hunk_1
begin_hunk_2_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %bb.ett

bb.eug:                                           ; preds = %bb.eud
  %i.sbs = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %.val95.i.i.i.i3940 = load ptr, ptr %i.sbs, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13
  %i.sbt = getelementptr inbounds nuw i8, ptr %.val95.i.i.i.i3940, i64 40
  store i64 %i.sbi, ptr %i.sbt, align 8, !noalias !13594
  %i.sbu = getelementptr inbounds nuw i8, ptr %1, i64 3312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.sbu)
          to label %bb.euj unwind label %bb.eui, !noalias !13594

bb.euh:                                           ; preds = %bb.eui, %bb.ett
  %i.sbv = phi ptr [ %i.sap, %bb.eui ], [ %i.sad, %bb.ett ]
  %i.sbw = phi ptr [ %i.saq, %bb.eui ], [ %i.sae, %bb.ett ]
  %i.sbx = phi ptr [ %i.sar, %bb.eui ], [ %i.saf, %bb.ett ]
  %i.sby = phi ptr [ %i.sas, %bb.eui ], [ %i.sag, %bb.ett ]
  %i.sbz = phi ptr [ %i.sat, %bb.eui ], [ %i.sah, %bb.ett ]
  %i.sca = phi ptr [ %i.sau, %bb.eui ], [ %i.sai, %bb.ett ]
  %i.scb = phi ptr [ %i.sav, %bb.eui ], [ %i.saj, %bb.ett ]
  %.pn62.i.i.i.i3911 = phi { ptr, i32 } [ %i.scd, %bb.eui ], [ %.pn59.pn.i.i.i.i3910, %bb.ett ]
  %i.scc = getelementptr inbounds nuw i8, ptr %1, i64 3219
  store i8 0, ptr %i.scc, align 1, !noalias !13593
  br label %bb.ewz

bb.eui:                                           ; preds = %bb.eul, %bb.eug
  %i.scd = landingpad { ptr, i32 }
          cleanup
  br label %bb.euh

bb.euj:                                           ; preds = %bb.eug
  %i.sce = getelementptr inbounds nuw i8, ptr %1, i64 3219
  store i8 0, ptr %i.sce, align 1, !noalias !13593
  br label %bb.etd

bb.euk:                                           ; preds = %bb.eul, %bb.eue, %.thread.i.i.i.i3941
  %.sroa.24.sroa.10.i.i.i.sroa.11.12.i = phi i8 [ %.sroa.24.sroa.10.i.i.i.sroa.11.0.copyload222.i, %.thread.i.i.i.i3941 ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.6.0.copyload.i, %bb.eul ], [ %.sroa.3.sroa.5.sroa.2.i.i.i.sroa.6.0.copyload.i, %bb.eue ]
  %.sroa.11338.i.i.i.sroa.0.12.i3933 = phi i56 [ %.sroa.11338.i.i.i.sroa.0.0.copyload244.i, %.thread.i.i.i.i3941 ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i3916, %bb.eul ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload.i3916, %bb.eue ]
  %.sroa.0336.0477.i.i.i.i3934 = phi i8 [ %.sroa.0372.0.copyload.i.i.i.i3942, %.thread.i.i.i.i3941 ], [ %i.sax, %bb.eul ], [ %i.sax, %bb.eue ]
  %.sroa.19.0476.i.i.i.i3935 = phi ptr [ %.sroa.5374.0.copyload.i.i.i.i3945, %.thread.i.i.i.i3941 ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i3918, %bb.eul ], [ %.sroa.3.sroa.2.0.copyload.i.i.i.i3918, %bb.eue ]
  %.sroa.21.0475.i.i.i.i3936 = phi i64 [ %.sroa.6375.0.copyload.i.i.i.i3947, %.thread.i.i.i.i3941 ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i3920, %bb.eul ], [ %.sroa.3.sroa.3.0.copyload.i.i.i.i3920, %bb.eue ]
  %.sroa.23.0474.i.i.i.i3937 = phi i64 [ %.sroa.7376.0.copyload.i.i.i.i3949, %.thread.i.i.i.i3941 ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i3922, %bb.eul ], [ %.sroa.3.sroa.4.0.copyload.i.i.i.i3922, %bb.eue ]
  %i.scf = phi <2 x i64> [ %i.sbg, %.thread.i.i.i.i3941 ], [ %i.saz, %bb.eul ], [ %i.saz, %bb.eue ]
  %i.scg = getelementptr inbounds nuw i8, ptr %1, i64 3219
  store i8 0, ptr %i.scg, align 1, !noalias !13593
  br label %bb.eum

bb.eul:                                           ; preds = %bb.eue
  %i.sch = getelementptr inbounds nuw i8, ptr %1, i64 3312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.sch)
          to label %bb.euk unwind label %bb.eui, !noalias !13594

bb.eum:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715, %bb.euk
  %i.sci = phi ptr [ %i.sjj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sap, %bb.euk ] ; 3 uses
  %i.scj = phi ptr [ %i.sjk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.saq, %bb.euk ] ; 3 uses
  %i.sck = phi ptr [ %i.sjl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sar, %bb.euk ] ; 3 uses
  %i.scl = phi ptr [ %i.sjm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sas, %bb.euk ] ; 3 uses
  %.sroa.24.sroa.10.i.i.i.sroa.11.3.i = phi i8 [ %.sroa.24.sroa.10.i.i.i.sroa.11.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.24.sroa.10.i.i.i.sroa.11.12.i, %bb.euk ] ; 2 uses
  %.sroa.11338.i.i.i.sroa.0.3.i3716 = phi i56 [ %.sroa.11338.i.i.i.sroa.0.2.i3709, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.11338.i.i.i.sroa.0.12.i3933, %bb.euk ] ; 2 uses
  %i.scm = phi ptr [ %i.sjn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sat, %bb.euk ] ; 3 uses
  %i.scn = phi ptr [ %i.sjo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sau, %bb.euk ] ; 3 uses
  %i.sco = phi ptr [ %i.sjp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.sav, %bb.euk ] ; 3 uses
  %.sroa.23.1.i.i.i.i3718 = phi i64 [ %.sroa.23.4.i.i.i.i3711, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.23.0474.i.i.i.i3937, %bb.euk ] ; 2 uses
  %.sroa.21.1.i.i.i.i3719 = phi i64 [ %.sroa.21.4.i.i.i.i3712, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.21.0475.i.i.i.i3936, %bb.euk ] ; 2 uses
  %.sroa.19.1.i.i.i.i3720 = phi ptr [ %.sroa.19.4.i.i.i.i3713, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.19.0476.i.i.i.i3935, %bb.euk ] ; 2 uses
  %.sroa.0336.1.i.i.i.i3721 = phi i8 [ %.sroa.0336.4.i.i.i.i3714, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %.sroa.0336.0477.i.i.i.i3934, %bb.euk ] ; 2 uses
  %i.scp = phi <2 x i64> [ %i.sjq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3715 ], [ %i.scf, %bb.euk ] ; 2 uses
  %i.scq = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13607)
  call void @llvm.experimental.noalias.scope.decl(metadata !13608)
  call void @llvm.experimental.noalias.scope.decl(metadata !13609)
  %i.scr = load ptr, ptr %i.scq, align 16, !alias.scope !13610, !noalias !13593, !nonnull !13, !noundef !13
  %i.scs = atomicrmw add ptr %i.scr, i64 -1 release, align 8, !noalias !13611
  %i.sct = icmp eq i64 %i.scs, 1
  br i1 %i.sct, label %bb.eun, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops7trigger15DeleteTriggerOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i

bb.eun:                                           ; preds = %bb.eum
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.scq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v33ops7trigger15DeleteTriggerOpECsgsNUVCRJO2f_13influxdb3_lib.exit128.i.i.i.i unwind label %bb.etp, !noalias !13594

.loopexit.i.i.i.i3800:                            ; preds = %.backedge.i.i.i.i.i3799, %bb.etq
  store i8 -1, ptr %i.rzk, align 16, !alias.scope !13605, !noalias !13593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nx), !noalias !13593
  %i.scu = load ptr, ptr %i.rya, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13
  %i.scv = getelementptr inbounds nuw i8, ptr %i.scu, i64 1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.nx, ptr noundef nonnull align 8 dereferenceable(16) %i.scv, i64 16, i1 false), !noalias !13594
  %.val87.i.i.i.i3801 = load i64, ptr %i.rxw, align 8, !noalias !13593, !noundef !13
  %i.scw = getelementptr inbounds nuw i8, ptr %1, i64 3224
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18serialize_log_file(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.scw, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.nx, i64 noundef %.val87.i.i.i.i3801, ptr noundef nonnull align 8 %.val105.i.i.i.i3794, i64 noundef %.val106.i.i.i.i3795)
          to label %bb.eup unwind label %bb.euo, !noalias !13594

bb.euo:                                           ; preds = %.loopexit.i.i.i.i3800
  %i.scx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nx), !noalias !13593
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit184.i.i.i.i3665

bb.eup:                                           ; preds = %.loopexit.i.i.i.i3800
  %i.scy = getelementptr inbounds nuw i8, ptr %1, i64 3218
  store i8 1, ptr %i.scy, align 2, !noalias !13593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nx), !noalias !13593
  %.val101.i.i.i.i3802 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i3775, align 8, !noalias !13593, !nonnull !13, !noundef !13
  %.val102.i.i.i.i3803 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i3776, align 16, !noalias !13593, !noundef !13
  %i.scz = load ptr, ptr %i.rya, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13
  %i.sda = getelementptr inbounds nuw i8, ptr %i.scz, i64 40
  %i.sdb = getelementptr inbounds nuw i8, ptr %1, i64 3264
  store ptr %.val101.i.i.i.i3802, ptr %i.sdb, align 16, !noalias !13593
  %.sroa.8245.0..sroa_idx.i.i.i.i3804 = getelementptr inbounds nuw i8, ptr %1, i64 3272
  store i64 %.val102.i.i.i.i3803, ptr %.sroa.8245.0..sroa_idx.i.i.i.i3804, align 8, !noalias !13593
  %.sroa.10247.0..sroa_idx.i.i.i.i3805 = getelementptr inbounds nuw i8, ptr %1, i64 8000
  store ptr %i.sda, ptr %.sroa.10247.0..sroa_idx.i.i.i.i3805, align 16, !noalias !13593
  %.sroa.12249.0..sroa_idx.i.i.i.i3806 = getelementptr inbounds nuw i8, ptr %1, i64 8016
  store i16 %i.ryv, ptr %.sroa.12249.0..sroa_idx.i.i.i.i3806, align 16, !noalias !13593
  %.sroa.13250.0..sroa_idx.i.i.i.i3807 = getelementptr inbounds nuw i8, ptr %1, i64 8018
  store i16 %i.ryx, ptr %.sroa.13250.0..sroa_idx.i.i.i.i3807, align 2, !noalias !13593
  %.sroa.14.0..sroa_idx.i.i.i.i3808 = getelementptr inbounds nuw i8, ptr %1, i64 8020
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i.i3808, align 4, !noalias !13593
  br label %bb.eur

bb.euq:                                           ; preds = %bb.eur
  %i.sdc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !noalias !13593
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.sdk) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i3663 unwind label %bb.est, !noalias !13594

bb.eur:                                           ; preds = %bb.eup, %bb.esc
  %i.sdd = phi ptr [ %i.ric, %bb.esc ], [ %i.rxn, %bb.eup ] ; 6 uses
  %i.sde = phi ptr [ %i.rib, %bb.esc ], [ %i.rxo, %bb.eup ] ; 5 uses
  %i.sdf = phi ptr [ %.phi.trans.insert348.i, %bb.esc ], [ %i.rxp, %bb.eup ] ; 6 uses
  %i.sdg = phi ptr [ %i.rns, %bb.esc ], [ %i.rxq, %bb.eup ] ; 5 uses
  %i.sdh = phi ptr [ %.phi.trans.insert.i.i3657, %bb.esc ], [ %i.rxr, %bb.eup ] ; 6 uses
  %i.sdi = phi ptr [ %i.rrz, %bb.esc ], [ %i.rxs, %bb.eup ] ; 5 uses
  %i.sdj = phi ptr [ %.phi.trans.insert.i.i.i3659, %bb.esc ], [ %i.rxt, %bb.eup ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nw), !noalias !13593
  %i.sdk = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 2 uses
  invoke fastcc void @_RNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(1680) %i.nw, ptr noundef nonnull align 16 %i.sdk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eus unwind label %bb.euq, !noalias !13594

bb.eus:                                           ; preds = %bb.eur
  %i.sdl = load i64, ptr %i.nw, align 8, !range !64, !noalias !13593, !noundef !13 ; 3 uses
  %i.sdm = icmp eq i64 %i.sdl, -3
  br i1 %i.sdm, label %bb.eut, label %bb.euu

bb.eut:                                           ; preds = %bb.eus
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !noalias !13593
  br label %.thread.i.i.i3901

bb.euu:                                           ; preds = %bb.eus
  %.sroa.3252.0..sroa_idx.i.i.i.i3809 = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %.sroa.3252.sroa.0.0.copyload.i.i.i.i3810 = load ptr, ptr %.sroa.3252.0..sroa_idx.i.i.i.i3809, align 8, !noalias !13593 ; 2 uses
  %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i3811 = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %.sroa.3252.sroa.3.0.copyload.i.i.i.i3812 = load i64, ptr %.sroa.3252.sroa.3.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i3811, align 8, !noalias !13593 ; 2 uses
  %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i3813 = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.sdn = load <2 x i64>, ptr %.sroa.3252.sroa.5.0..sroa.3252.0..sroa_idx.sroa_idx.i.i.i.i3813, align 8, !noalias !13593 ; 3 uses
  %.sroa.5253.0..sroa_idx.i.i.i.i3817 = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i3654, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.0..sroa_idx.i.i.i.i3817, i64 1640, i1 false), !noalias !13593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nw), !noalias !13593
  %i.sdo = getelementptr inbounds nuw i8, ptr %1, i64 8020
  %i.sdp = load i8, ptr %i.sdo, align 4, !range !37, !noalias !13593, !noundef !13
  %cond.i129.i.i.i.i3818 = icmp eq i8 %i.sdp, 3
  br i1 %cond.i129.i.i.i.i3818, label %bb.euv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3819

bb.euv:                                           ; preds = %bb.euu
  %i.sdq = getelementptr inbounds nuw i8, ptr %1, i64 3360
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18load_restore_state0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.sdq)
          to label %bb.eux unwind label %bb.euw, !noalias !13594

bb.euw:                                           ; preds = %bb.euv
  %i.sdr = landingpad { ptr, i32 }
          cleanup
  %i.sds = getelementptr inbounds nuw i8, ptr %1, i64 3280
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.sds) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i3663 unwind label %bb.euy, !noalias !13594

bb.eux:                                           ; preds = %bb.euv
  %i.sdt = getelementptr inbounds nuw i8, ptr %1, i64 3280
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records7restore14RestoreCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(80) %i.sdt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3819 unwind label %bb.euz, !noalias !13594

bb.euy:                                           ; preds = %bb.euw
  %i.sdu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !13594
  unreachable

bb.euz:                                           ; preds = %bb.ewp, %bb.eux, %bb.etc
  %i.sdv = phi ptr [ %i.rux, %bb.etc ], [ %i.sio, %bb.ewp ], [ %i.sdd, %bb.eux ]
  %i.sdw = phi ptr [ %i.ruy, %bb.etc ], [ %i.sip, %bb.ewp ], [ %i.sde, %bb.eux ]
  %i.sdx = phi ptr [ %i.ruz, %bb.etc ], [ %i.siq, %bb.ewp ], [ %i.sdf, %bb.eux ]
  %i.sdy = phi ptr [ %i.rva, %bb.etc ], [ %i.sir, %bb.ewp ], [ %i.sdg, %bb.eux ]
  %i.sdz = phi ptr [ %i.rvb, %bb.etc ], [ %i.sis, %bb.ewp ], [ %i.sdh, %bb.eux ]
  %i.sea = phi ptr [ %i.rvc, %bb.etc ], [ %i.sit, %bb.ewp ], [ %i.sdi, %bb.eux ]
  %i.seb = phi ptr [ %i.rvd, %bb.etc ], [ %i.siu, %bb.ewp ], [ %i.sdj, %bb.eux ]
  %i.sec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i3663

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3819: ; preds = %bb.eux, %bb.euu
  %i.sed = icmp eq i64 %i.sdl, -2
  %5 = shufflevector <2 x i64> %i.sdn, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.see = extractelement <2 x i64> %i.sdn, i64 0
  br i1 %i.sed, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit155.i.i.i.i3708, label %bb.eva

bb.eva:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply27preload_restore_for_records0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i3819
  %.sroa.5256.0..sroa_idx.i.i.i.i3820 = getelementptr inbounds nuw i8, ptr %1, i64 1504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1640) %.sroa.5256.0..sroa_idx.i.i.i.i3820, ptr noundef nonnull align 8 dereferenceable(1640) %.sroa.5253.i.i.i.i3654, i64 1640, i1 false), !noalias !13593
  %i.sef = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store i64 %i.sdl, ptr %i.sef, align 8, !noalias !13593
  %.sroa.4255.0..sroa_idx.i.i.i.i3821 = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store ptr %.sroa.3252.sroa.0.0.copyload.i.i.i.i3810, ptr %.sroa.4255.0..sroa_idx.i.i.i.i3821, align 16, !noalias !13593
  %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i3822 = getelementptr inbounds nuw i8, ptr %1, i64 1480
  store i64 %.sroa.3252.sroa.3.0.copyload.i.i.i.i3812, ptr %.sroa.4255.sroa.4.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i3822, align 8, !noalias !13593
  %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i3823 = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store <2 x i64> %i.sdn, ptr %.sroa.4255.sroa.5.0..sroa.4255.0..sroa_idx.sroa_idx.i.i.i.i3823, align 16, !noalias !13593
  %i.seg = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.seh = load ptr, ptr %i.seg, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13
  %i.sei = getelementptr inbounds nuw i8, ptr %i.seh, i64 40
  %i.sej = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %i.sek = load i64, ptr %i.sej, align 8, !noalias !13593, !noundef !13
  %i.sel = getelementptr inbounds nuw i8, ptr %1, i64 3218
  store i8 0, ptr %i.sel, align 2, !noalias !13593
  %.sroa.12265.0..sroa_idx.i.i.i.i3825 = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store i64 %i.sek, ptr %.sroa.12265.0..sroa_idx.i.i.i.i3825, align 8, !noalias !13593
  %.sroa.14267.0..sroa_idx.i.i.i.i3826 = getelementptr inbounds nuw i8, ptr %1, i64 3520
  store ptr %i.sei, ptr %.sroa.14267.0..sroa_idx.i.i.i.i3826, align 16, !noalias !13593
  %.sroa.16.0..sroa_idx.i.i.i.i3827 = getelementptr inbounds nuw i8, ptr %1, i64 3529
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i.i.i3827, align 1, !noalias !13593
  br label %bb.evc

bb.evb:                                           ; preds = %bb.evc
  %i.sem = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !noalias !13593
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.seu) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i3661 unwind label %bb.est, !noalias !13594

bb.evc:                                           ; preds = %bb.eva, %bb.esc
  %i.sen = phi ptr [ %i.ric, %bb.esc ], [ %i.sdd, %bb.eva ] ; 13 uses
  %i.seo = phi ptr [ %i.rib, %bb.esc ], [ %i.sde, %bb.eva ] ; 12 uses
  %i.sep = phi ptr [ %.phi.trans.insert348.i, %bb.esc ], [ %i.sdf, %bb.eva ] ; 13 uses
  %i.seq = phi ptr [ %i.rns, %bb.esc ], [ %i.sdg, %bb.eva ] ; 12 uses
  %i.ser = phi ptr [ %.phi.trans.insert.i.i3657, %bb.esc ], [ %i.sdh, %bb.eva ] ; 13 uses
  %i.ses = phi ptr [ %i.rrz, %bb.esc ], [ %i.sdi, %bb.eva ] ; 12 uses
  %i.set = phi ptr [ %.phi.trans.insert.i.i.i3659, %bb.esc ], [ %i.sdj, %bb.eva ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nv), !noalias !13593
  %i.seu = getelementptr inbounds nuw i8, ptr %1, i64 3224 ; 4 uses
  invoke fastcc void @_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.nv, ptr noundef nonnull align 8 %i.seu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.evd unwind label %bb.evb, !noalias !13594

bb.evd:                                           ; preds = %bb.evc
  %i.sev = load i64, ptr %i.nv, align 8, !range !70, !noalias !13593, !noundef !13 ; 4 uses
  %i.sew = icmp eq i64 %i.sev, -2
  br i1 %i.sew, label %bb.eve, label %bb.evf

bb.eve:                                           ; preds = %bb.evd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !noalias !13593
  br label %.thread.i.i.i3901

bb.evf:                                           ; preds = %bb.evd
  %.sroa.3271.0..sroa_idx.i.i.i.i3828 = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.3271.0.copyload.i.i.i.i3829 = load i8, ptr %.sroa.3271.0..sroa_idx.i.i.i.i3828, align 8, !noalias !13593 ; 3 uses
  %.sroa.4274.0..sroa_idx.i.i.i.i3830 = getelementptr inbounds nuw i8, ptr %i.nv, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.i.i.i.sroa.0.i3653, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4274.0..sroa_idx.i.i.i.i3830, i64 23, i1 false), !noalias !13593
  %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3831 = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %.sroa.4274.i.i.i.sroa.6.0.copyload.i3832 = load i64, ptr %.sroa.4274.i.i.i.sroa.6.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3831, align 8, !noalias !13593 ; 2 uses
  %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3833 = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %.sroa.4274.i.i.i.sroa.7.0.copyload.i = load i8, ptr %.sroa.4274.i.i.i.sroa.7.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3833, align 8, !noalias !13593 ; 2 uses
  %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3834 = getelementptr inbounds nuw i8, ptr %i.nv, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4274.i.i.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4274.i.i.i.sroa.8.0..sroa.4274.0..sroa_idx.i.i.i.sroa_idx.i3834, i64 31, i1 false), !noalias !13593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !noalias !13593
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.seu)
          to label %bb.evh unwind label %bb.evx, !noalias !13594

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i3661: ; preds = %bb.ewu, %bb.ewt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i, %bb.evx, %bb.evb, %bb.esu
  %i.sex = phi ptr [ %i.sen, %bb.ewu ], [ %i.shb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.sen, %bb.evb ], [ %i.sen, %bb.ewt ], [ %i.sgk, %bb.evx ], [ %i.rux, %bb.esu ] ; 2 uses
  %i.sey = phi ptr [ %i.seo, %bb.ewu ], [ %i.shc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.seo, %bb.evb ], [ %i.seo, %bb.ewt ], [ %i.sgl, %bb.evx ], [ %i.ruy, %bb.esu ] ; 2 uses
  %i.sez = phi ptr [ %i.sep, %bb.ewu ], [ %i.shd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.sep, %bb.evb ], [ %i.sep, %bb.ewt ], [ %i.sgm, %bb.evx ], [ %i.ruz, %bb.esu ] ; 2 uses
  %i.sfa = phi ptr [ %i.seq, %bb.ewu ], [ %i.she, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.seq, %bb.evb ], [ %i.seq, %bb.ewt ], [ %i.sgn, %bb.evx ], [ %i.rva, %bb.esu ] ; 2 uses
  %i.sfb = phi ptr [ %i.ser, %bb.ewu ], [ %i.shf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.ser, %bb.evb ], [ %i.ser, %bb.ewt ], [ %i.sgo, %bb.evx ], [ %i.rvb, %bb.esu ] ; 2 uses
  %i.sfc = phi ptr [ %i.ses, %bb.ewu ], [ %i.shg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.ses, %bb.evb ], [ %i.ses, %bb.ewt ], [ %i.sgp, %bb.evx ], [ %i.rvc, %bb.esu ] ; 2 uses
  %i.sfd = phi ptr [ %i.set, %bb.ewu ], [ %i.shh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.set, %bb.evb ], [ %i.set, %bb.ewt ], [ %i.sgq, %bb.evx ], [ %i.rvd, %bb.esu ] ; 2 uses
  %.pn47.i.i.i.i3662 = phi { ptr, i32 } [ %.pn37.pn.i.i.i.i3851, %bb.ewu ], [ %.pn35.i.i.i.i3876, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionEECsgsNUVCRJO2f_13influxdb3_lib.exit157.i.i.i.i ], [ %i.sem, %bb.evb ], [ %.pn37.pn.i.i.i.i3851, %bb.ewt ], [ %i.sgr, %bb.evx ], [ %i.ruw, %bb.esu ] ; 2 uses
  %i.sfe = getelementptr inbounds nuw i8, ptr %1, i64 1464 ; 2 uses
  %i.sff = load i64, ptr %i.sfe, align 8, !range !12, !alias.scope !13612, !noalias !13593, !noundef !13
  %i.sfg = icmp eq i64 %i.sff, -1
  br i1 %i.sfg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i3663, label %bb.evg

bb.evg:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit160.i.i.i.i3661
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.sfe)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECsgsNUVCRJO2f_13influxdb3_lib.exit135.i.i.i.i3663 unwind label %bb.est, !noalias !13594

bb.evh:                                           ; preds = %bb.evf
  %i.sfh = getelementptr inbounds nuw i8, ptr %1, i64 3144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13613)
  %.not.i136.i.i.i.i3835 = icmp eq i64 %i.sev, -1
  br i1 %.not.i136.i.i.i.i3835, label %bb.evi, label %bb.ewy

bb.evi:                                           ; preds = %bb.evh
  %i.sfi = getelementptr inbounds nuw i8, ptr %1, i64 3152
  store i8 %.sroa.3271.0.copyload.i.i.i.i3829, ptr %i.sfi, align 16, !alias.scope !13614, !noalias !13593
  store i64 -1, ptr %i.sfh, align 8, !alias.scope !13614, !noalias !13593
  %i.sfj = trunc nuw i8 %.sroa.3271.0.copyload.i.i.i.i3829 to i1
  %i.sfk = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 3 uses
  %i.sfl = load ptr, ptr %i.sfk, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13 ; 3 uses
  br i1 %i.sfj, label %bb.ewx, label %bb.evj

bb.evj:                                           ; preds = %bb.evi
  %i.sfm = getelementptr inbounds nuw i8, ptr %i.sfl, i64 160 ; 8 uses
  %i.sfn = cmpxchg weak ptr %i.sfm, i64 0, i64 8 acquire monotonic, align 8, !noalias !13594
  %i.sfo = extractvalue { i64, i1 } %i.sfn, 1
  br i1 %i.sfo, label %bb.evl, label %bb.evk, !prof !65

bb.evk:                                           ; preds = %bb.evj
  %i.sfp = invoke noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.sfm, i64 undef, i32 noundef -1)
          to label %bb.evl unwind label %bb.evx, !noalias !13594 ; 0 uses

bb.evl:                                           ; preds = %bb.evk, %bb.evj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nt), !noalias !13593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ns), !noalias !13593
  %i.sfq = getelementptr i8, ptr %1, i64 1432
  %.val99.i.i.i.i3847 = load ptr, ptr %i.sfq, align 8, !noalias !13593, !nonnull !13, !noundef !13
  %i.sfr = getelementptr i8, ptr %1, i64 1440
  %.val100.i.i.i.i3848 = load i64, ptr %i.sfr, align 16, !noalias !13593, !noundef !13
  %i.sfs = getelementptr inbounds nuw i8, ptr %i.sfl, i64 168
  %i.sft = getelementptr inbounds nuw i8, ptr %1, i64 1416 ; 2 uses
  %i.sfu = load i64, ptr %i.sft, align 8, !noalias !13593, !noundef !13
  %i.sfv = getelementptr inbounds nuw i8, ptr %1, i64 1464
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply13apply_records(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ns, ptr noundef nonnull align 8 %.val99.i.i.i.i3847, i64 noundef %.val100.i.i.i.i3848, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.sfs, i64 noundef %i.sfu, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.sfv)
          to label %bb.evm unwind label %bb.evq, !noalias !13594

bb.evm:                                           ; preds = %bb.evl
  call void @llvm.experimental.noalias.scope.decl(metadata !13615)
  call void @llvm.experimental.noalias.scope.decl(metadata !13616)
  %i.sfw = load i64, ptr %i.ns, align 8, !range !71, !alias.scope !13616, !noalias !13593, !noundef !13
  %.not.i142.i.i.i.i3853 = icmp eq i64 %i.sfw, -1
  br i1 %.not.i142.i.i.i.i3853, label %bb.evr, label %bb.evn

bb.evn:                                           ; preds = %bb.evm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nm), !noalias !13617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ns, i64 32, i1 false), !noalias !13618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nl), !noalias !13617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nk), !noalias !13619
  store ptr %i.nm, ptr %i.nk, align 8, !noalias !13619
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i3854 = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i3854, align 8, !noalias !13619
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.nl, ptr noundef nonnull @92, ptr noundef nonnull %i.nk)
          to label %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops7trigger15DeleteTriggerOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i unwind label %bb.evo, !noalias !13620

bb.evo:                                           ; preds = %bb.evn
  %i.sfx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.nm) #33
          to label %.body145.i.i.i.i3849 unwind label %bb.evp, !noalias !13620

bb.evp:                                           ; preds = %bb.evo
  %i.sfy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !13620
  unreachable

_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops7trigger15DeleteTriggerOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i: ; preds = %bb.evn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nk), !noalias !13619
  %.sroa.4.i141.sroa.3.7.copyload.i.i.i.i3855 = load ptr, ptr %i.nl, align 8, !noalias !13621 ; 2 uses
  %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i3856 = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.4.i141.sroa.5.7.copyload.i.i.i.i3857 = load i64, ptr %.sroa.4.i141.sroa.5.7..sroa_idx.i.i.i.i3856, align 8, !noalias !13621 ; 2 uses
  %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i3858 = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %.sroa.4.i141.sroa.6.7.copyload.i.i.i.i3859 = load i64, ptr %.sroa.4.i141.sroa.6.7..sroa_idx.i.i.i.i3858, align 8, !noalias !13621 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.nm)
          to label %bb.ewv unwind label %bb.evq, !noalias !13594

bb.evq:                                           ; preds = %_RNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBa_7Catalog16update_committedNtNtNtBc_3ops7trigger15DeleteTriggerOpE00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i, %bb.evl
  %i.sfz = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i.i.i.i3849

.body145.i.i.i.i3849:                             ; preds = %bb.evq, %bb.evo
  %eh.lpad-body146.i.i.i.i3850 = phi { ptr, i32 } [ %i.sfz, %bb.evq ], [ %i.sfx, %bb.evo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ns), !noalias !13593
  br label %bb.ewt

bb.evr:                                           ; preds = %bb.evm
  %i.sga = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.sroa.9286.sroa.7.7.copyload.i.i.i.i3861 = load ptr, ptr %i.sga, align 8, !alias.scope !13622, !noalias !13593
  %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i3862 = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %.sroa.4369.0..sroa_idx.i.i.i.i3866 = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.sgb = load <2 x i64>, ptr %.sroa.9286.sroa.10.7..sroa_idx.i.i.i.i3862, align 8, !alias.scope !13622, !noalias !13593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ns), !noalias !13593
  store ptr %.sroa.9286.sroa.7.7.copyload.i.i.i.i3861, ptr %i.nt, align 8, !noalias !13593
  store <2 x i64> %i.sgb, ptr %.sroa.4369.0..sroa_idx.i.i.i.i3866, align 8, !noalias !13593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nr), !noalias !13593
  %i.sgc = load ptr, ptr %i.sfk, align 16, !noalias !13593, !nonnull !13, !align !18, !noundef !13
  %i.sgd = getelementptr inbounds nuw i8, ptr %i.sgc, i64 104
  invoke void @_RNvXsa_Csk0FzFVI8urx_8iox_timeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_12TimeProviderEL_EB10_3nowCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.nr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sgd)
          to label %bb.evs unwind label %bb.evt, !noalias !13594

bb.evs:                                           ; preds = %bb.evr
  %i.sge = invoke noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.nr)
          to label %bb.evu unwind label %bb.evt, !noalias !13594

bb.evt:                                           ; preds = %bb.evs, %bb.evr
end_hunk_2
