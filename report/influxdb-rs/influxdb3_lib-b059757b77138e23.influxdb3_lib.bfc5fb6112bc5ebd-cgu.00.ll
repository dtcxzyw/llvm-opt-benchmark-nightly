Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.00?download=true
inline.NumInlined: 16580
inline.NumDeleted: 4810
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0B7_:bb.a
  %i.acd = invoke noundef zeroext i1 %i.acc(ptr noundef %i.abz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %bb.io unwind label %bb.in, !noalias !22694

bb.in:                                            ; preds = %bb.im
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.io:                                            ; preds = %bb.im
  br i1 %i.acd, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.is, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !22693
  br label %bb.ix

bb.iq:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !22693
  %i.acf = load ptr, ptr @_RNvNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s3_10___CALLSITE, align 8, !noalias !22693, !nonnull !15, !align !24, !noundef !15
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !22693
  %.val425.i.i = load i64, ptr %i.abf, align 8, !noalias !22693, !noundef !15
  store i64 %.val425.i.i, ptr %i.bs, align 8, !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !22693
  store ptr %i.bs, ptr %i.br, align 8, !noalias !22693
  %.sroa.5794.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5794.0..sroa_idx.i.i, align 8, !noalias !22693
  store ptr @380, ptr %i.bt, align 8, !noalias !22693
  %i.ach = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.br, ptr %i.ach, align 8, !noalias !22693
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !22693
  %i.aci = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr @42, ptr %i.aci, align 8, !noalias !22693
  store i64 1, ptr %i.bv, align 8, !alias.scope !22750, !noalias !22751
  %.sroa.4.0..sroa_idx.i512.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx.i512.i.i, align 8, !alias.scope !22750, !noalias !22751
  %.sroa.5.0..sroa_idx.i513.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i513.i.i, align 8, !alias.scope !22750, !noalias !22751
  %i.acj = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.acg, ptr %i.acj, align 8, !alias.scope !22750, !noalias !22751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !22693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !22693
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abu, ptr noundef nonnull %i.abz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aca, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv)
          to label %bb.is unwind label %bb.ir, !noalias !22694

bb.ir:                                            ; preds = %bb.iq
  %i.ack = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !22693
  br label %bb.it

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !22693
  br label %bb.ip

bb.it:                                            ; preds = %bb.ir, %bb.in, %bb.il
  %.pn94.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ack, %bb.ir ], [ %i.ace, %bb.in ], [ %i.aby, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !22693
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreEECsgsNUVCRJO2f_13influxdb3_lib.exit518.i.i

bb.iu:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !22693
  %i.acl = load ptr, ptr @_RNvNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s3_10___CALLSITE, align 8, !noalias !22693, !nonnull !15, !align !24, !noundef !15
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !22693
  %.val424.i.i = load i64, ptr %i.abf, align 8, !noalias !22693, !noundef !15
  store i64 %.val424.i.i, ptr %i.by, align 8, !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !22693
  store ptr %i.by, ptr %i.bx, align 8, !noalias !22693
  %.sroa.5786.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5786.0..sroa_idx.i.i, align 8, !noalias !22693
  store ptr @380, ptr %i.bz, align 8, !noalias !22693
  %i.acn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bx, ptr %i.acn, align 8, !noalias !22693
  store ptr %i.bz, ptr %i.ca, align 8, !noalias !22693
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @42, ptr %i.aco, align 8, !noalias !22693
  store i64 1, ptr %i.cb, align 8, !noalias !22693
  %.sroa.7782.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ca, ptr %.sroa.7782.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.8783.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 1, ptr %.sroa.8783.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.9784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.acm, ptr %.sroa.9784.0..sroa_idx.i.i, align 8, !noalias !22693
  invoke fastcc void @_RNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s8_0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.cb)
          to label %bb.iw unwind label %bb.iv, !noalias !22694

bb.iv:                                            ; preds = %bb.iu
  %i.acp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !22693
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreEECsgsNUVCRJO2f_13influxdb3_lib.exit518.i.i

bb.iw:                                            ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !22693
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.ip, %bb.ij, %.thread967.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !22693
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !noalias !22693, !nonnull !15, !align !24, !noundef !15
  %.val420.i.i = load ptr, ptr %i.acr, align 8, !noalias !22694, !nonnull !15, !noundef !15
  %i.acs = getelementptr inbounds nuw i8, ptr %.val420.i.i, i64 32
  %i.act = load i64, ptr %i.acs, align 8, !noalias !22694, !noundef !15
  invoke void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync9semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bq, i64 noundef %i.act, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381)
          to label %bb.iz unwind label %bb.iy, !noalias !22694

bb.iy:                                            ; preds = %bb.ix
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iz:                                            ; preds = %bb.ix
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.acw = invoke fastcc noundef nonnull ptr @_RNvMse_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreE3newCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.bq)
          to label %bb.jc unwind label %bb.jb, !noalias !22694

bb.ja:                                            ; preds = %bb.jb, %bb.iy
  %.pn103.i.i = phi { ptr, i32 } [ %i.acx, %bb.jb ], [ %i.acu, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !22693
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreEECsgsNUVCRJO2f_13influxdb3_lib.exit518.i.i

bb.jb:                                            ; preds = %bb.iz
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.jc:                                            ; preds = %bb.iz
  store ptr %i.acw, ptr %i.acv, align 8, !noalias !22693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !22693
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.acz = invoke { ptr, i64 } @_RNvMNtNtCseCDlJsl44RV_5tokio4task8join_setINtB2_7JoinSetINtNtCs4NRVxsYgnAr_4core6result6ResultTNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdbENtNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache20TableIndexCacheErrorEE3newCsgsNUVCRJO2f_13influxdb3_lib()
          to label %bb.jg unwind label %bb.jf, !noalias !22694 ; 2 uses

bb.jd:                                            ; preds = %bb.ky, %bb.jf
  %i.ada = phi ptr [ %i.ahs, %bb.ky ], [ %i.adi, %bb.jf ] ; 2 uses
  %i.adb = phi ptr [ %i.aht, %bb.ky ], [ %i.adj, %bb.jf ] ; 2 uses
  %i.adc = phi ptr [ %i.ahu, %bb.ky ], [ %i.adk, %bb.jf ] ; 2 uses
  %i.add = phi ptr [ %i.ahv, %bb.ky ], [ %i.adl, %bb.jf ] ; 2 uses
  %.pn162.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn162.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.ky ], [ %i.adm, %bb.jf ] ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22752)
  call void @llvm.experimental.noalias.scope.decl(metadata !22753)
  %i.adf = load ptr, ptr %i.ade, align 8, !alias.scope !22754, !noalias !22693, !nonnull !15, !noundef !15
  %i.adg = atomicrmw sub ptr %i.adf, i64 1 release, align 8, !noalias !22755
  %i.adh = icmp eq i64 %i.adg, 1
  br i1 %i.adh, label %bb.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreEECsgsNUVCRJO2f_13influxdb3_lib.exit518.i.i

bb.je:                                            ; preds = %bb.jd
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ade)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreEECsgsNUVCRJO2f_13influxdb3_lib.exit518.i.i unwind label %bb.fg, !noalias !22694

bb.jf:                                            ; preds = %bb.qp, %bb.oj, %bb.jc
  %i.adi = phi ptr [ %i.ate, %bb.qp ], [ %i.aoh, %bb.oj ], [ %i.aaw, %bb.jc ]
  %i.adj = phi ptr [ %i.atf, %bb.qp ], [ %i.aoi, %bb.oj ], [ %i.aax, %bb.jc ]
  %i.adk = phi ptr [ %i.atg, %bb.qp ], [ %i.aoj, %bb.oj ], [ %i.aay, %bb.jc ]
  %i.adl = phi ptr [ %i.ath, %bb.qp ], [ %i.aok, %bb.oj ], [ %i.aaz, %bb.jc ]
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.jg:                                            ; preds = %bb.jc
  %i.adn = extractvalue { ptr, i64 } %i.acz, 0
  %i.ado = extractvalue { ptr, i64 } %i.acz, 1
  store ptr %i.adn, ptr %i.acy, align 8, !noalias !22693
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 %i.ado, ptr %i.adp, align 8, !noalias !22693
  store i8 0, ptr %i.abe, align 8, !noalias !22693
  %.sroa.0804.0.copyload.i.i = load ptr, ptr %i.aaz, align 8, !noalias !22693, !nonnull !15, !noundef !15 ; 5 uses
  %.sroa.5805.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.sroa.5805.0.copyload.i.i = load i64, ptr %.sroa.5805.0..sroa_idx.i.i, align 8, !noalias !22693 ; 4 uses
  %.sroa.6807.0.copyload.i.i = load i64, ptr %i.abf, align 8, !noalias !22693 ; 3 uses
  %.val4.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.0804.0.copyload.i.i, align 16, !noalias !22756
  %i.adq = icmp eq i64 %.sroa.5805.0.copyload.i.i, 0
  br i1 %i.adq, label %bb.jh, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.jg
  %i.adr = mul i64 %.sroa.5805.0.copyload.i.i, 24
  %i.ads = and i64 %i.adr, -16                    ; 2 uses
  %i.adt = add i64 %.sroa.5805.0.copyload.i.i, 49
  %i.adu = add i64 %i.adt, %i.ads
  %i.adv = sub i64 -32, %i.ads
  %i.adw = getelementptr inbounds i8, ptr %.sroa.0804.0.copyload.i.i, i64 %i.adv
  br label %bb.jh

bb.jh:                                            ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.jg
  %.sroa.510.0.i.i.i.i.i = phi ptr [ undef, %bb.jg ], [ %i.adw, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sroa.49.0.i.i.i.i.i = phi i64 [ undef, %bb.jg ], [ %i.adu, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.jg ], [ 16, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.0804.0.copyload.i.i, i64 16
  %i.ady = icmp sgt <16 x i8> %.val4.i.i.i.i.i.i, splat (i8 -1)
  %i.adz = getelementptr i8, ptr %.sroa.0804.0.copyload.i.i, i64 %.sroa.5805.0.copyload.i.i
  %i.aea = getelementptr i8, ptr %i.adz, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !22693
  store i64 %.sink.i.i.i.i.i.i, ptr %i.bp, align 8, !noalias !22693
  %.sroa.5796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %.sroa.49.0.i.i.i.i.i, ptr %.sroa.5796.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.6797.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.sroa.510.0.i.i.i.i.i, ptr %.sroa.6797.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.7798.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 3 uses
  store ptr %.sroa.0804.0.copyload.i.i, ptr %.sroa.7798.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.8799.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  store ptr %i.adx, ptr %.sroa.8799.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.9800.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.aea, ptr %.sroa.9800.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.10801.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 3 uses
  store <16 x i1> %i.ady, ptr %.sroa.10801.0..sroa_idx.i.i, align 8, !noalias !22693
  %.sroa.11803.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  store i64 %.sroa.6807.0.copyload.i.i, ptr %.sroa.11803.0..sroa_idx.i.i, align 8, !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8810.i.i)
  %i.aeb = icmp eq i64 %.sroa.6807.0.copyload.i.i, 0
  br i1 %i.aeb, label %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i, label %.lr.ph1042.i.i

.lr.ph1042.i.i:                                   ; preds = %bb.jh
  %.sroa.8810.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.8815.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.9816.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.10817.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.3.0..sroa_idx.i533.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0..sroa_idx.i534.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.8823.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.aei = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.aej = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.4.0..sroa_idx.i529.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0..sroa_idx.i530.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.aek = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ael = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.aem = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.aen = getelementptr inbounds nuw i8, ptr %i.bb, i64 41
  br label %bb.ji

bb.ji:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5abort11AbortHandleECsgsNUVCRJO2f_13influxdb3_lib.exit540.i.i, %.lr.ph1042.i.i
  %i.aeo = phi i64 [ %.sroa.6807.0.copyload.i.i, %.lr.ph1042.i.i ], [ %.pr.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5abort11AbortHandleECsgsNUVCRJO2f_13influxdb3_lib.exit540.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22757)
  call void @llvm.experimental.noalias.scope.decl(metadata !22758)
  %i.aep = load i16, ptr %.sroa.10801.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760, !noundef !15 ; 2 uses
  %.not11.i.i.i.i = icmp eq i16 %i.aep, 0
  %.promoted.i.i.i.i = load ptr, ptr %.sroa.7798.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760 ; 2 uses
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ji
  %.promoted13.i.i.i.i = load ptr, ptr %.sroa.8799.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760
  br label %bb.jj

._crit_edge.i.i.i.i:                              ; preds = %bb.jj
  store ptr %i.aeu, ptr %.sroa.8799.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760
  store ptr %i.aet, ptr %.sroa.7798.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760
  br label %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.jj:                                            ; preds = %bb.jj, %.lr.ph.i.i.i.i
  %i.aeq = phi ptr [ %.promoted13.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aeu, %bb.jj ] ; 2 uses
  %i.aer = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aet, %bb.jj ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.aeq, align 16, !noalias !22761
  %i.aes = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.aet = getelementptr inbounds i8, ptr %i.aer, i64 -384 ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aes to i16 ; 2 uses
  %.not.i.i521.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i521.i.i, label %bb.jj, label %._crit_edge.i.i.i.i

_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.ji, %._crit_edge.i.i.i.i
  %i.aev = phi ptr [ %i.aet, %._crit_edge.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.ji ]
  %.lcssa.i.i.i.i = phi i16 [ %.cast.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.aep, %bb.ji ] ; 3 uses
  %i.aew = add i16 %.lcssa.i.i.i.i, -1
  %i.aex = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.aey = zext nneg i16 %i.aex to i64
  %i.aez = and i16 %i.aew, %.lcssa.i.i.i.i
  store i16 %i.aez, ptr %.sroa.10801.0..sroa_idx.i.i, align 8, !alias.scope !22759, !noalias !22760
  %i.afa = sub nsw i64 0, %i.aey
  %i.afb = getelementptr inbounds [24 x i8], ptr %i.aev, i64 %i.afa ; 2 uses
  %i.afc = add i64 %i.aeo, -1
  store i64 %i.afc, ptr %.sroa.11803.0..sroa_idx.i.i, align 8, !alias.scope !22757, !noalias !22760
  %i.afd = getelementptr inbounds i8, ptr %i.afb, i64 -24
  %.sroa.0808.0.copyload809.i.i = load ptr, ptr %i.afd, align 8, !noalias !22762 ; 2 uses
  %.sroa.8810.0..sroa_idx811.i.i = getelementptr inbounds i8, ptr %i.afb, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8810.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8810.0..sroa_idx811.i.i, i64 16, i1 false), !noalias !22762
  %.not105.i.i = icmp eq ptr %.sroa.0808.0.copyload809.i.i, null
  br i1 %.not105.i.i, label %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i, label %bb.jk

bb.jk:                                            ; preds = %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !22693
  store ptr %.sroa.0808.0.copyload809.i.i, ptr %i.bo, align 8, !noalias !22693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8810.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8810.i.i, i64 16, i1 false), !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !22693
  %.val406.i.i = load ptr, ptr %i.acv, align 8, !noalias !22693, !nonnull !15, !noundef !15 ; 3 uses
  %i.afe = atomicrmw add ptr %.val406.i.i, i64 1 monotonic, align 8, !noalias !22694
  %i.aff = icmp slt i64 %i.afe, 0
  br i1 %i.aff, label %bb.jl, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit522.i.i

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.trap()
  unreachable

_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5abort11AbortHandleECsgsNUVCRJO2f_13influxdb3_lib.exit540.i.i, %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8810.i.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %i.bp)
          to label %bb.jo unwind label %bb.jn, !noalias !22694

bb.jm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECsgsNUVCRJO2f_13influxdb3_lib.exit546.i.i, %bb.jn
  %.pn162.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn162.pn.pn.pn993.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECsgsNUVCRJO2f_13influxdb3_lib.exit546.i.i ], [ %i.afg, %bb.jn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !22693
  br label %bb.ky

bb.jn:                                            ; preds = %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jo:                                            ; preds = %_RNvXsq_NtCsc96bKABWO34_9hashbrown3setINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !22693
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 596
  store i32 0, ptr %i.afh, align 4, !noalias !22693
  br label %.thread1066.i.i

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit522.i.i: ; preds = %bb.jk
  store ptr %.val406.i.i, ptr %i.bn, align 8, !noalias !22693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !22693
  %i.afi = load ptr, ptr %i.acq, align 8, !noalias !22693, !nonnull !15, !align !24, !noundef !15
  %.val428.i.i = load ptr, ptr %i.afi, align 8, !noalias !22694, !nonnull !15, !noundef !15 ; 4 uses
  %i.afj = atomicrmw add ptr %.val428.i.i, i64 1 monotonic, align 8, !noalias !22694
  %i.afk = icmp slt i64 %i.afj, 0
  br i1 %i.afk, label %bb.jp, label %.noexc294.i.i

bb.jp:                                            ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit522.i.i
  call void @llvm.trap()
  unreachable

.noexc294.i.i:                                    ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync9semaphore9SemaphoreENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib.exit522.i.i
  store ptr %.val428.i.i, ptr %i.bm, align 8, !noalias !22693
  %i.afl = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !22693
  %i.afm = icmp eq i64 %i.afl, 0
  br i1 %i.afm, label %bb.jq, label %.thread981.i.i

bb.jq:                                            ; preds = %.noexc294.i.i
  %i.afn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s4_10___CALLSITE, i64 16) monotonic, align 8, !noalias !22693 ; 2 uses
  %i.afo = icmp ult i8 %i.afn, 3
  br i1 %i.afo, label %bb.jt, label %bb.jr, !prof !97

bb.jr:                                            ; preds = %bb.jq
  %i.afp = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s4_10___CALLSITE)
          to label %bb.jt unwind label %bb.js, !noalias !22694

bb.js:                                            ; preds = %bb.jr
  %i.afq = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.jt:                                            ; preds = %bb.jr, %bb.jq
  %.sroa.0.0.i524.i.i = phi i8 [ %i.afn, %bb.jq ], [ %i.afp, %bb.jr ] ; 2 uses
  %i.afr = icmp eq i8 %.sroa.0.0.i524.i.i, 0
  br i1 %i.afr, label %.thread981.i.i, label %bb.jv

bb.ju:                                            ; preds = %bb.jv
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.jv:                                            ; preds = %bb.jt
  %i.aft = load ptr, ptr @_RNvNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache28update_all_from_object_store0s4_10___CALLSITE, align 8, !noalias !22693, !nonnull !15, !align !24, !noundef !15
  %i.afu = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aft, i8 noundef %.sroa.0.0.i524.i.i)
          to label %bb.jw unwind label %bb.ju, !noalias !22694

bb.jw:                                            ; preds = %bb.jv
  br i1 %i.afu, label %bb.kj, label %.thread981.i.i

.thread981.i.i:                                   ; preds = %bb.jw, %bb.jt, %.noexc294.i.i
  %i.afv = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !22693
  %.not1025.i.i = icmp eq i8 %i.afv, 0
  br i1 %.not1025.i.i, label %bb.jx, label %bb.ki

bb.jx:                                            ; preds = %.thread981.i.i
  %i.afw = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !22693 ; 2 uses
  %i.afx = icmp ult i64 %i.afw, 6
  call void @llvm.assume(i1 %i.afx)
end_hunk_0
