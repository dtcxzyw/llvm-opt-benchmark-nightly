Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9162
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br i1 %i.ebb, label %bb.aag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i

bb.aag:                                           ; preds = %bb.aaf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eay)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i unwind label %bb.zx, !noalias !12508

bb.aah:                                           ; preds = %.body39.i743, %bb.ze, %bb.zt
  %i.ebc = phi ptr [ %i.dyn, %bb.zt ], [ %i.dup, %.body39.i743 ], [ %i.dyn, %bb.ze ] ; 2 uses
  %i.ebd = phi ptr [ %i.dyo, %bb.zt ], [ %i.duq, %.body39.i743 ], [ %i.dyo, %bb.ze ] ; 2 uses
  %.pn19.pn.i = phi { ptr, i32 } [ %.pn17.i746, %bb.zt ], [ %eh.lpad-body40.i, %.body39.i743 ], [ %i.dzq, %bb.ze ] ; 2 uses
  %i.ebe = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12541)
  call void @llvm.experimental.noalias.scope.decl(metadata !12542)
  %i.ebf = load ptr, ptr %i.ebe, align 16, !alias.scope !12543, !noalias !12507, !nonnull !13, !noundef !13
  %i.ebg = atomicrmw add ptr %i.ebf, i64 -1 release, align 8, !noalias !12544
  %i.ebh = icmp eq i64 %i.ebg, 1
  br i1 %i.ebh, label %bb.aai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i744

bb.aai:                                           ; preds = %bb.aah
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsetuUZXazHC0_22influxdb3_internal_api(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ebe)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i744 unwind label %bb.wx, !noalias !12508

bb.aaj:                                           ; preds = %bb.zf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.23.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10113.sroa.8.i, i64 40, i1 false), !noalias !12507
  %.sroa.4.i.sroa.3.4.insert.ext.i = zext nneg i8 %i.dys to i64
  %.sroa.4.i.sroa.3.5.insert.ext.i = zext i56 %.sroa.393.i.sroa.0.0.i to i64
  %.sroa.4.i.sroa.3.5.insert.shift.i = shl nuw i64 %.sroa.4.i.sroa.3.5.insert.ext.i, 8
  %.sroa.4.i.sroa.3.5.insert.insert.i = or disjoint i64 %.sroa.4.i.sroa.3.5.insert.shift.i, %.sroa.4.i.sroa.3.4.insert.ext.i
  %i.ebi = inttoptr i64 %.sroa.4.i.sroa.3.5.insert.insert.i to ptr
  br label %bb.aaf

bb.aak:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit49.i744
  %i.ebj = getelementptr inbounds nuw i8, ptr %1, i64 968
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ebj) #33
          to label %bb.wy unwind label %bb.wx, !noalias !12508

bb.aal:                                           ; preds = %bb.wt, %bb.zc
  %i.ebk = phi ptr [ %i.drz, %bb.wt ], [ %i.dyn, %bb.zc ]
  %.sink.i745.ph = phi i8 [ 3, %bb.wt ], [ 4, %bb.zc ]
  store i8 %.sink.i745.ph, ptr %i.ebk, align 16, !noalias !12507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10113.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1172.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.165871)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.175872)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.aam:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i
  %i.ebl = phi ptr [ %i.duf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.dyn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %i.ebm = phi ptr [ %i.dug, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.dyo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.6150.sroa.0.1.i = phi i8 [ %.sroa.6150.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.eaf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.13151.sroa.6.1.i = phi i32 [ %.sroa.13151.sroa.6.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.13151.sroa.6.0.extract.shift.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.13151.sroa.5.1.i = phi i8 [ %.sroa.13151.sroa.5.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.13151.sroa.5.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.13151.sroa.0.1.i = phi i8 [ %.sroa.13151.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.13151.sroa.0.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.22.1.i = phi i64 [ %.sroa.22.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.12143.sroa.11.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.21.1.i = phi ptr [ %.sroa.21.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.12143.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.20.1.i = phi i64 [ %.sroa.20.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %.sroa.12143.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.0149.1.i = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.eac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.6150.sroa.6.0.insert.insert.i = phi i32 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.eaw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %i.ebn = phi <2 x ptr> [ %i.duj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit47.i ], [ %i.eai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i749 ]
  %.sroa.6150.sroa.0.0.insert.ext.i = zext i8 %.sroa.6150.sroa.0.1.i to i32
  %.sroa.6150.sroa.0.0.insert.insert.i = or i32 %.sroa.6150.sroa.6.0.insert.insert.i, %.sroa.6150.sroa.0.0.insert.ext.i
  %.sroa.13151.sroa.5.0.insert.ext.i = zext i8 %.sroa.13151.sroa.5.1.i to i32
  %.sroa.13151.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13151.sroa.5.0.insert.ext.i, 8
  %.sroa.13151.sroa.5.0.insert.insert.i = or i32 %.sroa.13151.sroa.5.0.insert.shift.i, %.sroa.13151.sroa.6.1.i
  %.sroa.13151.sroa.0.0.insert.ext.i = zext i8 %.sroa.13151.sroa.0.1.i to i32
  %.sroa.13151.sroa.0.0.insert.insert.i = or i32 %.sroa.13151.sroa.5.0.insert.insert.i, %.sroa.13151.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.165871, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.23.i, i64 48, i1 false), !noalias !12545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.175872, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i, i64 24, i1 false), !noalias !12545
  store i8 1, ptr %i.ebl, align 16, !noalias !12507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10113.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1172.i)
  store i64 %.sroa.0149.1.i, ptr %i.amo, align 8
  %.sroa.95864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 %.sroa.6150.sroa.0.0.insert.insert.i, ptr %.sroa.95864.0..sroa_idx, align 8
  %.sroa.105865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i32 %.sroa.13151.sroa.0.0.insert.insert.i, ptr %.sroa.105865.0..sroa_idx, align 4
  %.sroa.115866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store <2 x ptr> %i.ebn, ptr %.sroa.115866.0..sroa_idx, align 8
  %.sroa.135868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  store i64 %.sroa.20.1.i, ptr %.sroa.135868.0..sroa_idx, align 8
  %.sroa.145869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 40
  store ptr %.sroa.21.1.i, ptr %.sroa.145869.0..sroa_idx, align 8
  %.sroa.155870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  store i64 %.sroa.22.1.i, ptr %.sroa.155870.0..sroa_idx, align 8
  %.sroa.165871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.165871.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.165871, i64 48, i1 false)
  %.sroa.175872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.175872.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.175872, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.165871)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.175872)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi24create_named_admin_token0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.ebm)
          to label %bb.is unwind label %bb.ieu

bb.aan:                                           ; preds = %bb.aao
  %i.ebo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.and)
  %.val338 = load ptr, ptr %i.ebq, align 8
  %i.ebp = getelementptr i8, ptr %1, i64 688
  %.val339 = load ptr, ptr %i.ebp, align 16, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2q_15WriteParseErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val338, ptr nonnull %.val339) #33
          to label %bb.aay unwind label %bb.bc

bb.aao:                                           ; preds = %bb.b, %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.and)
  %i.ebq = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2c_15WriteParseErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.and, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ebq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aap unwind label %bb.aan

bb.aap:                                           ; preds = %bb.aao
  %i.ebr = load i64, ptr %i.and, align 8, !range !12546, !noundef !13 ; 3 uses
  %i.ebs = icmp eq i64 %i.ebr, -2
  br i1 %i.ebs, label %bb.aaq, label %bb.aar

bb.aaq:                                           ; preds = %bb.aap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.and)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ane)
  br label %common.ret

bb.aar:                                           ; preds = %bb.aap
  %.sroa.35886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %.sroa.35886.sroa.0.0.copyload = load ptr, ptr %.sroa.35886.0..sroa_idx, align 8 ; 2 uses
  %.sroa.35886.sroa.3.0..sroa.35886.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.and, i64 16 ; 2 uses
  %.sroa.35886.sroa.4.0..sroa.35886.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.and, i64 24
  %.sroa.35886.sroa.4.sroa.3.0..sroa.35886.sroa.4.0..sroa.35886.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.and, i64 32
  %i.ebt = load <2 x i64>, ptr %.sroa.35886.sroa.4.0..sroa.35886.0..sroa_idx.sroa_idx, align 8
  %.sroa.35886.sroa.4.sroa.3.0.copyload = load i64, ptr %.sroa.35886.sroa.4.sroa.3.0..sroa.35886.sroa.4.0..sroa.35886.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.ebu = load <2 x i64>, ptr %.sroa.35886.sroa.3.0..sroa.35886.0..sroa_idx.sroa_idx, align 8
  %.sroa.35886.sroa.3.0.copyload = load i64, ptr %.sroa.35886.sroa.3.0..sroa.35886.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.and)
  %.val336 = load ptr, ptr %i.ebq, align 8
  %i.ebv = getelementptr i8, ptr %1, i64 688
  %.val337 = load ptr, ptr %i.ebv, align 16, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2q_15WriteParseErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val336, ptr nonnull %.val337)
          to label %bb.aas unwind label %bb.aau

bb.aas:                                           ; preds = %bb.aar
  %.not.i781 = icmp eq i64 %i.ebr, -1
  br i1 %.not.i781, label %bb.aat, label %bb.aax

bb.aat:                                           ; preds = %bb.aas
  store ptr %.sroa.35886.sroa.0.0.copyload, ptr %i.anc, align 8
  %.sroa.105875.sroa.12.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  store <2 x i64> %i.ebu, ptr %.sroa.105875.sroa.12.7..sroa_idx, align 8
  %.sroa.105875.sroa.13.sroa.10.0..sroa.105875.sroa.13.7..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.anc, i64 24
  store i64 %.sroa.35886.sroa.4.sroa.3.0.copyload, ptr %.sroa.105875.sroa.13.sroa.10.0..sroa.105875.sroa.13.7..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXs5_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_11WriteParamsINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ane, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.anc)
          to label %bb.aav unwind label %bb.aau

bb.aau:                                           ; preds = %bb.aar, %bb.hp, %bb.aat
  %i.ebw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aay

bb.aav:                                           ; preds = %bb.aat
  %i.ebx = getelementptr inbounds nuw i8, ptr %1, i64 676 ; 2 uses
  store i8 1, ptr %i.ebx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05891)
  %i.eby = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val377 = load ptr, ptr %i.eby, align 16, !nonnull !13, !noundef !13
  %i.ebz = getelementptr inbounds nuw i8, ptr %.val377, i64 16
  store i8 0, ptr %i.ebx, align 4
  %.sroa.05891.240..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05891, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05891.240..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ane, i64 32, i1 false)
  %i.eca = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.eca, align 2
  %i.ecb = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.05891, ptr noundef nonnull align 8 dereferenceable(240) %i.ecb, i64 240, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ebq, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.05891, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05891)
  %.sroa.75897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.ebz, ptr %.sroa.75897.0..sroa_idx, align 8
  %.sroa.95899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.95899.0..sroa_idx, align 8
  br label %bb.aba

bb.aaw:                                           ; preds = %bb.abe, %bb.aaz
  %.pn105 = phi { ptr, i32 } [ %i.ecr, %bb.abe ], [ %i.ecn, %bb.aaz ] ; 2 uses
  %i.ecc = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.ecd = load i8, ptr %i.ecc, align 4, !range !20, !noundef !13
  %i.ece = trunc nuw i8 %i.ecd to i1
  br i1 %i.ece, label %bb.abg, label %bb.aay

bb.aax:                                           ; preds = %bb.aas
  %i.ecf = ptrtoint ptr %.sroa.35886.sroa.0.0.copyload to i64
  %i.ecg = inttoptr i64 %i.ebr to ptr
  %i.ech = getelementptr inbounds nuw i8, ptr %1, i64 676
  store i8 0, ptr %i.ech, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ane)
  %i.eci = shufflevector <2 x i64> %i.ebt, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ecj = insertelement <4 x i64> poison, i64 %.sroa.4.0.copyload, i64 0
  %i.eck = shufflevector <4 x i64> %i.ecj, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.ecl = shufflevector <4 x i64> %i.eci, <4 x i64> %i.eck, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

bb.aay:                                           ; preds = %bb.aan, %bb.aau, %bb.abg, %bb.aaw
  %.pn107.pn = phi { ptr, i32 } [ %.pn105, %bb.aaw ], [ %.pn105, %bb.abg ], [ %i.ebo, %bb.aan ], [ %i.ebw, %bb.aau ]
  %i.ecm = getelementptr inbounds nuw i8, ptr %1, i64 676
  store i8 0, ptr %i.ecm, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ane)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.aaz:                                           ; preds = %bb.aba
  %i.ecn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.anb)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi14write_lp_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.eco) #33
          to label %bb.aaw unwind label %bb.bc

bb.aba:                                           ; preds = %bb.c, %bb.aav
  call void @llvm.lifetime.start.p0(ptr nonnull %i.anb)
  %i.eco = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi14write_lp_inner0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.anb, ptr noundef nonnull align 8 %i.eco, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.abb unwind label %bb.aaz

bb.abb:                                           ; preds = %bb.aba
  %i.ecp = load i64, ptr %i.anb, align 8, !range !41, !noundef !13
  %i.ecq = icmp eq i64 %i.ecp, -2
  br i1 %i.ecq, label %bb.abc, label %bb.abd

bb.abc:                                           ; preds = %bb.abb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.anb)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ane)
  br label %common.ret

bb.abd:                                           ; preds = %bb.abb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.amo, ptr noundef nonnull align 8 dereferenceable(128) %i.anb, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.anb)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi14write_lp_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.eco)
          to label %bb.abf unwind label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.ecr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aaw

bb.abf:                                           ; preds = %bb.abd
  %i.ecs = getelementptr inbounds nuw i8, ptr %1, i64 676
  store i8 0, ptr %i.ecs, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ane)
  br label %bb.is

bb.abg:                                           ; preds = %bb.aaw
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types4http11WriteParamsECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %i.ane) #33
          to label %bb.aay unwind label %bb.bc

bb.abh:                                           ; preds = %bb.abi
  %i.ect = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amz)
  %.val334 = load ptr, ptr %i.ecv, align 8
  %i.ecu = getelementptr i8, ptr %1, i64 688
  %.val335 = load ptr, ptr %i.ecu, align 16, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2q_15WriteParseErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val334, ptr nonnull %.val335) #33
          to label %bb.abs unwind label %bb.bc

bb.abi:                                           ; preds = %bb.d, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.amz)
  %i.ecv = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2c_15WriteParseErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.amz, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ecv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.abj unwind label %bb.abh

bb.abj:                                           ; preds = %bb.abi
  %i.ecw = load i64, ptr %i.amz, align 8, !range !12546, !noundef !13 ; 3 uses
  %i.ecx = icmp eq i64 %i.ecw, -2
  br i1 %i.ecx, label %bb.abk, label %bb.abl

bb.abk:                                           ; preds = %bb.abj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amz)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ana)
  br label %common.ret

bb.abl:                                           ; preds = %bb.abj
  %.sroa.35923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.sroa.35923.sroa.0.0.copyload = load ptr, ptr %.sroa.35923.0..sroa_idx, align 8 ; 2 uses
  %.sroa.35923.sroa.3.0..sroa.35923.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amz, i64 16 ; 2 uses
  %i.ecy = load <4 x i64>, ptr %.sroa.35923.sroa.3.0..sroa.35923.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.35923.sroa.3.0.copyload = load i64, ptr %.sroa.35923.sroa.3.0..sroa.35923.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amz)
  %.val = load ptr, ptr %i.ecv, align 8
  %i.ecz = getelementptr i8, ptr %1, i64 688
  %.val333 = load ptr, ptr %i.ecz, align 16, !nonnull !13, !align !18, !noundef !13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsNtB2q_15WriteParseErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val, ptr nonnull %.val333)
          to label %bb.abm unwind label %bb.abo

bb.abm:                                           ; preds = %bb.abl
  %.not.i788 = icmp eq i64 %i.ecw, -1
  br i1 %.not.i788, label %bb.abn, label %bb.abq

bb.abn:                                           ; preds = %bb.abm
  store ptr %.sroa.35923.sroa.0.0.copyload, ptr %i.amy, align 8
  %.sroa.105903.sroa.12.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  store i64 %.sroa.35923.sroa.3.0.copyload, ptr %.sroa.105903.sroa.12.7..sroa_idx, align 8
  %.sroa.105903.sroa.13.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.eda = shufflevector <4 x i64> %i.ecy, <4 x i64> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i64> %i.eda, ptr %.sroa.105903.sroa.13.7..sroa_idx, align 8
  invoke void @_RNvXs5_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_11WriteParamsINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ana, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.amy)
          to label %bb.abp unwind label %bb.abo

bb.abo:                                           ; preds = %bb.abl, %bb.hn, %bb.abn
  %i.edb = landingpad { ptr, i32 }
          cleanup
  br label %bb.abs

bb.abp:                                           ; preds = %bb.abn
  %i.edc = getelementptr inbounds nuw i8, ptr %1, i64 675 ; 2 uses
  store i8 1, ptr %i.edc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05947)
  %i.edd = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val376 = load ptr, ptr %i.edd, align 16, !nonnull !13, !noundef !13
  %i.ede = getelementptr inbounds nuw i8, ptr %.val376, i64 16
  store i8 0, ptr %i.edc, align 1
  %.sroa.05947.240..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05947, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05947.240..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ana, i64 32, i1 false)
  %i.edf = getelementptr inbounds nuw i8, ptr %1, i64 674
  store i8 0, ptr %i.edf, align 2
  %i.edg = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.05947, ptr noundef nonnull align 8 dereferenceable(240) %i.edg, i64 240, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ecv, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.05947, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05947)
  %.sroa.85953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.ede, ptr %.sroa.85953.0..sroa_idx, align 8
  %.sroa.105955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.105955.0..sroa_idx, align 8
  br label %bb.abu

bb.abq:                                           ; preds = %bb.abm
  %i.edh = ptrtoint ptr %.sroa.35923.sroa.0.0.copyload to i64
  br label %bb.abr

bb.abr:                                           ; preds = %bb.acc, %bb.abq
  %.sroa.25.sroa.11.sroa.8.sroa.11.2 = phi i64 [ %.sroa.55959.sroa.9.sroa.7.sroa.3.sroa.7.0.copyload, %bb.acc ], [ undef, %bb.abq ]
  %.sroa.25.sroa.0.sroa.0.2 = phi i64 [ %.sroa.55959.sroa.7.0.copyload, %bb.acc ], [ %i.edh, %bb.abq ]
  %.sroa.24.2 = phi i64 [ %i.eej, %bb.acc ], [ %i.ecw, %bb.abq ]
  %.sroa.236583.2 = phi ptr [ %i.eei, %bb.acc ], [ inttoptr (i64 65 to ptr), %bb.abq ]
  %i.edi = phi <4 x i64> [ %i.edv, %bb.acc ], [ %i.ecy, %bb.abq ]
  %i.edj = phi <4 x i64> [ %i.edw, %bb.acc ], [ undef, %bb.abq ]
  %i.edk = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.edk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ana)
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit550.thread

bb.abs:                                           ; preds = %bb.abh, %bb.abo, %bb.acd, %bb.aby
  %.pn95.pn = phi { ptr, i32 } [ %.pn89, %bb.aby ], [ %.pn89, %bb.acd ], [ %i.ect, %bb.abh ], [ %i.edb, %bb.abo ]
  %i.edl = getelementptr inbounds nuw i8, ptr %1, i64 675
  store i8 0, ptr %i.edl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ana)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.abt:                                           ; preds = %bb.abu
  %i.edm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amx)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi14write_lp_inner0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.edn) #33
          to label %bb.aby unwind label %bb.bc

bb.abu:                                           ; preds = %bb.e, %bb.abp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.amx)
  %i.edn = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi14write_lp_inner0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.amx, ptr noundef nonnull align 8 %i.edn, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.abv unwind label %bb.abt

bb.abv:                                           ; preds = %bb.abu
  %i.edo = load i64, ptr %i.amx, align 8, !range !41, !noundef !13 ; 3 uses
  %i.edp = icmp eq i64 %i.edo, -2
  br i1 %i.edp, label %bb.abw, label %bb.abx

bb.abw:                                           ; preds = %bb.abv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.amx)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ana)
  br label %common.ret

bb.abx:                                           ; preds = %bb.abv
  %.sroa.35958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %.sroa.35958.0.copyload = load i64, ptr %.sroa.35958.0..sroa_idx, align 8 ; 4 uses
  %i.edq = trunc i64 %.sroa.35958.0.copyload to i8
  %i.edr = lshr i64 %.sroa.35958.0.copyload, 8
  %i.eds = trunc i64 %i.edr to i8
  %i.edt = lshr i64 %.sroa.35958.0.copyload, 16
  %i.edu = trunc nuw i64 %i.edt to i48
  %.sroa.55959.sroa.5.0..sroa.55959.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %.sroa.55959.sroa.5.0.copyload = load ptr, ptr %.sroa.55959.sroa.5.0..sroa.55959.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.55959.sroa.7.0..sroa.55959.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amx, i64 24
  %.sroa.55959.sroa.7.0.copyload = load i64, ptr %.sroa.55959.sroa.7.0..sroa.55959.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.55959.sroa.9.0..sroa.55959.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amx, i64 32
  %i.edv = load <4 x i64>, ptr %.sroa.55959.sroa.9.0..sroa.55959.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.55959.sroa.9.sroa.7.0..sroa.55959.sroa.9.0..sroa.55959.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.amx, i64 64
  %i.edw = load <4 x i64>, ptr %.sroa.55959.sroa.9.sroa.7.0..sroa.55959.sroa.9.0..sroa.55959.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
end_hunk_0
