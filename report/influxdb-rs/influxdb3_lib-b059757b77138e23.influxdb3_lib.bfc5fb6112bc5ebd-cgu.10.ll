Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.10?download=true
inline.NumInlined: 10116
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB8_7Catalog16update_committedNtNtNtBa_3ops4node10StopNodeOpE0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i64 %i.akl, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !alias.scope !16315, !noalias !16313
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2096
  store i64 %i.akm, ptr %.sroa.512.0..sroa_idx.i.i.i, align 16, !alias.scope !16315, !noalias !16313
  %i.akp = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store ptr null, ptr %i.akp, align 8, !alias.scope !16315, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16316
  %i.akq = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akq, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !16313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ajz, i64 24, i1 false), !noalias !16313
  %i.akr = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akr, ptr noundef nonnull align 8 dereferenceable(48) %i.ako, i64 48, i1 false), !noalias !16313
  %i.aks = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store ptr null, ptr %i.aks, align 8, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16313
  %i.akt = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.akc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajw, ptr noundef nonnull %i.akf, i64 noundef %i.akg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.w)
          to label %bb.lt unwind label %bb.ls, !noalias !16314 ; 2 uses

bb.ls:                                            ; preds = %bb.lr
  %i.aku = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16313
  br label %.body46.i.i

bb.lt:                                            ; preds = %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16313
  %i.akv = extractvalue { ptr, ptr } %i.akt, 0
  %i.akw = extractvalue { ptr, ptr } %i.akt, 1
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %i.akv, ptr %i.akx, align 16, !noalias !16313
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %i.akw, ptr %i.aky, align 8, !noalias !16313
  br label %bb.mb

.body46.i.i:                                      ; preds = %bb.nk, %bb.ni, %bb.mj, %bb.mi, %bb.mh, %bb.ma, %bb.ls
  %i.akz = phi ptr [ %i.aju, %bb.ls ], [ %i.alq, %bb.nk ], [ %i.alq, %bb.ni ], [ %i.alq, %bb.ma ], [ %i.alq, %bb.mh ], [ %i.alq, %bb.mi ], [ %i.alq, %bb.mj ]
  %i.ala = phi ptr [ %i.ajv, %bb.ls ], [ %i.alr, %bb.nk ], [ %i.alr, %bb.ni ], [ %i.alr, %bb.ma ], [ %i.alr, %bb.mh ], [ %i.alr, %bb.mi ], [ %i.alr, %bb.mj ]
  %i.alb = phi ptr [ %i.ajy, %bb.ls ], [ %i.als, %bb.nk ], [ %i.als, %bb.ni ], [ %i.als, %bb.ma ], [ %i.als, %bb.mh ], [ %i.als, %bb.mi ], [ %i.als, %bb.mj ]
  %i.alc = phi ptr [ %i.ajz, %bb.ls ], [ %i.alt, %bb.nk ], [ %i.alt, %bb.ni ], [ %i.alt, %bb.ma ], [ %i.alt, %bb.mh ], [ %i.alt, %bb.mi ], [ %i.alt, %bb.mj ]
  %.sroa.0.1187.i = phi ptr [ %.sroa.0.1181.i.a, %bb.ls ], [ %.sroa.0.1180.i, %bb.nk ], [ %.sroa.0.1180.i, %bb.ni ], [ %.sroa.0.1180.i, %bb.ma ], [ %.sroa.0.1180.i, %bb.mh ], [ %.sroa.0.1180.i, %bb.mi ], [ %.sroa.0.1180.i, %bb.mj ]
  %.sroa.9.1177.i = phi ptr [ %.sroa.9.1171.i.a, %bb.ls ], [ %.sroa.9.1170.i, %bb.nk ], [ %.sroa.9.1170.i, %bb.ni ], [ %.sroa.9.1170.i, %bb.ma ], [ %.sroa.9.1170.i, %bb.mh ], [ %.sroa.9.1170.i, %bb.mi ], [ %.sroa.9.1170.i, %bb.mj ]
  %.sroa.10.1167.i = phi i64 [ %.sroa.10.1161.i.a, %bb.ls ], [ %.sroa.10.1160.i, %bb.nk ], [ %.sroa.10.1160.i, %bb.ni ], [ %.sroa.10.1160.i, %bb.ma ], [ %.sroa.10.1160.i, %bb.mh ], [ %.sroa.10.1160.i, %bb.mi ], [ %.sroa.10.1160.i, %bb.mj ]
  %.sroa.11.1157.i = phi ptr [ %.sroa.11.1151.i.a, %bb.ls ], [ %.sroa.11.1150.i, %bb.nk ], [ %.sroa.11.1150.i, %bb.ni ], [ %.sroa.11.1150.i, %bb.ma ], [ %.sroa.11.1150.i, %bb.mh ], [ %.sroa.11.1150.i, %bb.mi ], [ %.sroa.11.1150.i, %bb.mj ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.0.copyload.i.i, %bb.ls ], [ %.sroa.10.0.i.i, %bb.nk ], [ %.sroa.10.0.i.i, %bb.ni ], [ %.sroa.10.0.i.i, %bb.ma ], [ %.sroa.10.0.i.i, %bb.mh ], [ %.sroa.10.0.i.i, %bb.mi ], [ %.sroa.10.0.i.i, %bb.mj ]
  %.sroa.9.1.i.i = phi i64 [ %.sroa.9.0.copyload.i.i, %bb.ls ], [ %.sroa.9.0.i.i, %bb.nk ], [ %.sroa.9.0.i.i, %bb.ni ], [ %.sroa.9.0.i.i, %bb.ma ], [ %.sroa.9.0.i.i, %bb.mh ], [ %.sroa.9.0.i.i, %bb.mi ], [ %.sroa.9.0.i.i, %bb.mj ]
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.ls ], [ %.sroa.8.0.i.i, %bb.nk ], [ %.sroa.8.0.i.i, %bb.ni ], [ %.sroa.8.0.i.i, %bb.ma ], [ %.sroa.8.0.i.i, %bb.mh ], [ %.sroa.8.0.i.i, %bb.mi ], [ %.sroa.8.0.i.i, %bb.mj ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.ls ], [ %.sroa.0.0.i46.i, %bb.nk ], [ %.sroa.0.0.i46.i, %bb.ni ], [ %.sroa.0.0.i46.i, %bb.ma ], [ %.sroa.0.0.i46.i, %bb.mh ], [ %.sroa.0.0.i46.i, %bb.mi ], [ %.sroa.0.0.i46.i, %bb.mj ]
  %.pn27.i.i = phi { ptr, i32 } [ %i.aku, %bb.ls ], [ %.pn23.ph.i.i, %bb.nk ], [ %.pn23.ph.i.i, %bb.ni ], [ %i.alo, %bb.ma ], [ %i.ame, %bb.mh ], [ %i.ame, %bb.mi ], [ %i.amk, %bb.mj ]
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 2008
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ald) #35
          to label %bb.lx unwind label %bb.lu, !noalias !16314

bb.lu:                                            ; preds = %bb.nl, %bb.nk, %bb.nj, %bb.ma, %bb.lw, %.body46.i.i, %.body.i.i180
  %i.ale = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !16314
  unreachable

bb.lv:                                            ; preds = %.body.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16313
  %i.alf = atomicrmw add ptr %i.akf, i64 -1 release, align 8, !noalias !16318
  %i.alg = icmp eq i64 %i.alf, 1
  br i1 %i.alg, label %bb.lw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.lw:                                            ; preds = %bb.lv
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.lu, !noalias !16314

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.lw, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16313
  br label %bb.lx

bb.lx:                                            ; preds = %bb.nh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %.body46.i.i, %bb.ln
  %i.alh = phi ptr [ %i.alq, %bb.nh ], [ %i.akz, %.body46.i.i ], [ %i.aju, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aju, %bb.ln ]
  %i.ali = phi ptr [ %i.alr, %bb.nh ], [ %i.ala, %.body46.i.i ], [ %i.ajv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.ajv, %bb.ln ]
  %i.alj = phi ptr [ %i.als, %bb.nh ], [ %i.alb, %.body46.i.i ], [ %i.ajy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.ajy, %bb.ln ]
  %i.alk = phi ptr [ %i.alt, %bb.nh ], [ %i.alc, %.body46.i.i ], [ %i.ajz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.ajz, %bb.ln ]
  %.sroa.0.1186.i = phi ptr [ %.sroa.0.1180.i, %bb.nh ], [ %.sroa.0.1187.i, %.body46.i.i ], [ %.sroa.0.1181.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.0.1181.i.a, %bb.ln ]
  %.sroa.9.1176.i = phi ptr [ %.sroa.9.1170.i, %bb.nh ], [ %.sroa.9.1177.i, %.body46.i.i ], [ %.sroa.9.1171.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.9.1171.i.a, %bb.ln ]
  %.sroa.10.1166.i = phi i64 [ %.sroa.10.1160.i, %bb.nh ], [ %.sroa.10.1167.i, %.body46.i.i ], [ %.sroa.10.1161.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.10.1161.i.a, %bb.ln ]
  %.sroa.11.1156.i = phi ptr [ %.sroa.11.1150.i, %bb.nh ], [ %.sroa.11.1157.i, %.body46.i.i ], [ %.sroa.11.1151.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.11.1151.i.a, %bb.ln ]
  %.sroa.10.2.i.i = phi ptr [ %.sroa.10.0.i.i, %bb.nh ], [ %.sroa.10.1.i.i, %.body46.i.i ], [ %.sroa.10.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.10.0.copyload.i.i, %bb.ln ]
  %.sroa.9.2.i.i = phi i64 [ %.sroa.9.0.i.i, %bb.nh ], [ %.sroa.9.1.i.i, %.body46.i.i ], [ %.sroa.9.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.9.0.copyload.i.i, %bb.ln ]
  %.sroa.8.2.i.i = phi ptr [ %.sroa.8.0.i.i, %bb.nh ], [ %.sroa.8.1.i.i, %.body46.i.i ], [ %.sroa.8.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.ln ]
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.0.i46.i, %bb.nh ], [ %.sroa.0.1.i.i, %.body46.i.i ], [ %.sroa.0.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.ln ] ; 2 uses
  %.pn29.i.i = phi { ptr, i32 } [ %i.aow, %bb.nh ], [ %.pn27.i.i, %.body46.i.i ], [ %i.akj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.ake, %bb.ln ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16313
  %i.all = getelementptr inbounds nuw i8, ptr %1, i64 2184 ; 2 uses
  %i.alm = load i8, ptr %i.all, align 8, !range !26, !noalias !16313, !noundef !22
  %i.aln = trunc nuw i8 %i.alm to i1
  br i1 %i.aln, label %bb.nl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.ly:                                            ; preds = %bb.lk
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #33
          to label %.noexc48.i unwind label %bb.lj, !noalias !16312

.noexc48.i:                                       ; preds = %bb.ly
  unreachable

bb.lz:                                            ; preds = %bb.lk
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #33
          to label %.noexc49.i unwind label %bb.lj, !noalias !16312

.noexc49.i:                                       ; preds = %bb.lz
  unreachable

bb.ma:                                            ; preds = %bb.mb
  %i.alo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16313
  %.val35.i.i = load ptr, ptr %i.alu, align 16, !noalias !16313
  %i.alp = getelementptr i8, ptr %1, i64 2152
  %.val36.i.i = load ptr, ptr %i.alp, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val35.i.i, ptr nonnull %.val36.i.i) #35
          to label %.body46.i.i unwind label %bb.lu, !noalias !16314

bb.mb:                                            ; preds = %bb.lt, %bb.ll
  %i.alq = phi ptr [ %i.aju, %bb.lt ], [ %i.aio, %bb.ll ] ; 15 uses
  %i.alr = phi ptr [ %i.ajv, %bb.lt ], [ %i.ain, %bb.ll ] ; 15 uses
  %i.als = phi ptr [ %i.ajy, %bb.lt ], [ %.phi.trans.insert.i167, %bb.ll ] ; 9 uses
  %i.alt = phi ptr [ %i.ajz, %bb.lt ], [ %i.ajt, %bb.ll ] ; 8 uses
  %.sroa.0.1180.i = phi ptr [ %.sroa.0.1181.i.a, %bb.lt ], [ undef, %bb.ll ] ; 13 uses
  %.sroa.9.1170.i = phi ptr [ %.sroa.9.1171.i.a, %bb.lt ], [ undef, %bb.ll ] ; 13 uses
  %.sroa.10.1160.i = phi i64 [ %.sroa.10.1161.i.a, %bb.lt ], [ undef, %bb.ll ] ; 13 uses
  %.sroa.11.1150.i = phi ptr [ %.sroa.11.1151.i.a, %bb.lt ], [ undef, %bb.ll ] ; 13 uses
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload.i.i, %bb.lt ], [ undef, %bb.ll ] ; 7 uses
  %.sroa.9.0.i.i = phi i64 [ %.sroa.9.0.copyload.i.i, %bb.lt ], [ undef, %bb.ll ] ; 7 uses
  %.sroa.8.0.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.lt ], [ undef, %bb.ll ] ; 7 uses
  %.sroa.0.0.i46.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.lt ], [ undef, %bb.ll ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16313
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 2144 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.alu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.mc unwind label %bb.ma, !noalias !16314

bb.mc:                                            ; preds = %bb.mb
  %i.alv = load i64, ptr %i.u, align 8, !range !54, !noalias !16313, !noundef !22
  %i.alw = icmp eq i64 %i.alv, -2
  br i1 %i.alw, label %.thread.i178, label %bb.md

.thread.i178:                                     ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16313
  store i8 3, ptr %i.als, align 1, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.ov

bb.md:                                            ; preds = %bb.mc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16313
  %.val.i.i171 = load ptr, ptr %i.alu, align 16, !noalias !16313 ; 5 uses
  %i.alx = getelementptr i8, ptr %1, i64 2152
  %.val34.i.i = load ptr, ptr %i.alx, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22 ; 5 uses
  %i.aly = load ptr, ptr %.val34.i.i, align 8, !invariant.load !22, !noalias !16314 ; 2 uses
  %.not.i.i.i.i172 = icmp eq ptr %i.aly, null
  br i1 %.not.i.i.i.i172, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i171) ]
  invoke void %i.aly(ptr noundef nonnull %.val.i.i171)
          to label %bb.mf unwind label %bb.mh, !noalias !16314

bb.mf:                                            ; preds = %bb.me, %bb.md
  %i.alz = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  %i.ama = load i64, ptr %i.alz, align 8, !range !42, !invariant.load !22, !noalias !16314 ; 2 uses
  %i.amb = icmp eq i64 %i.ama, 0
  br i1 %i.amb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.amc = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 16
  %i.amd = load i64, ptr %i.amc, align 8, !range !29, !invariant.load !22, !noalias !16314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i171) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i171, i64 noundef range(i64 1, 0) %i.ama, i64 noundef range(i64 1, 536870913) %i.amd) #32, !noalias !16314
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.mh:                                            ; preds = %bb.me
  %i.ame = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  %i.amg = load i64, ptr %i.amf, align 8, !range !42, !invariant.load !22, !noalias !16314 ; 2 uses
  %i.amh = icmp eq i64 %i.amg, 0
  br i1 %i.amh, label %.body46.i.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.ami = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 16
  %i.amj = load i64, ptr %i.ami, align 8, !range !29, !invariant.load !22, !noalias !16314
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i171, i64 noundef range(i64 1, 0) %i.amg, i64 noundef range(i64 1, 536870913) %i.amj) #32, !noalias !16314
  br label %.body46.i.i

bb.mj:                                            ; preds = %bb.ng, %.thread.i.i177
  %i.amk = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.mg, %bb.mf
  %i.aml = load i64, ptr %i.z, align 8, !range !57, !noalias !16313, !noundef !22 ; 3 uses
  switch i64 %i.aml, label %.noexc.i.i173 [
    i64 -1, label %.thread.i.i177
    i64 -9223372036854775797, label %bb.ng
  ]

.thread96.i.i:                                    ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.mw, %bb.mr, %bb.mq
  %.sroa.080.0.copyload.i.i = load i64, ptr %i.t, align 8, !noalias !16313 ; 2 uses
  %.sroa.581.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.581.0.copyload.i.i = load i8, ptr %.sroa.581.0..sroa_idx.i.i, align 8, !noalias !16313 ; 2 uses
  %.sroa.682.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.682.0..sroa_idx.i.i, i64 63, i1 false), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16313
  %.pr100.i.i = load i64, ptr %i.z, align 8, !noalias !16313
  %.not26101.i.i = icmp eq i64 %.pr100.i.i, -1
  br i1 %.not26101.i.i, label %.thread.i.i177, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

.noexc.i.i173:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %3 = icmp ne i64 %i.aml, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !noalias !16313
  %i.amm = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !16313
  %i.amn = and i64 %i.amm, -2
  %switch.i.i = icmp eq i64 %i.amn, 4
  br i1 %switch.i.i, label %bb.mq, label %bb.mk

bb.mk:                                            ; preds = %.noexc.i.i173
  %i.amo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !16313 ; 2 uses
  %i.amp = icmp ult i8 %i.amo, 3
  br i1 %i.amp, label %bb.mm, label %bb.ml, !prof !98

bb.ml:                                            ; preds = %bb.mk
  %i.amq = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.mm unwind label %bb.mn, !noalias !16314

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.sroa.0.0.i49.i.i = phi i8 [ %i.amo, %bb.mk ], [ %i.amq, %bb.ml ] ; 2 uses
  %i.amr = icmp eq i8 %.sroa.0.0.i49.i.i, 0
  br i1 %i.amr, label %bb.mq, label %bb.mo

bb.mn:                                            ; preds = %bb.mo, %bb.ml
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.mo:                                            ; preds = %bb.mm
  %i.amt = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22
  %i.amu = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.amt, i8 noundef %.sroa.0.0.i49.i.i)
          to label %bb.mp unwind label %bb.mn, !noalias !16314

bb.mp:                                            ; preds = %bb.mo
  br i1 %i.amu, label %bb.nb, label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mm, %.noexc.i.i173
  %i.amv = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !16313
  %.not115.i.i = icmp eq i8 %i.amv, 0
  br i1 %.not115.i.i, label %bb.mr, label %.thread96.i.i

bb.mr:                                            ; preds = %bb.mq
  %i.amw = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !16313 ; 2 uses
  %i.amx = icmp ult i64 %i.amw, 6
  call void @llvm.assume(i1 %i.amx)
  %i.amy = icmp samesign ugt i64 %i.amw, 1
  br i1 %i.amy, label %bb.ms, label %.thread96.i.i

bb.ms:                                            ; preds = %bb.mr
  %i.amz = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16313
  %i.ana = getelementptr i8, ptr %i.amz, i64 32
  %.val42.i.i = load ptr, ptr %i.ana, align 8, !noalias !16314, !nonnull !22, !noundef !22
  %i.anb = getelementptr i8, ptr %i.amz, i64 40
  %.val43.i.i = load i64, ptr %i.anb, align 8, !noalias !16314, !noundef !22
  store i64 2, ptr %i.n, align 8, !alias.scope !16319, !noalias !16313
  %.sroa.676.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.val42.i.i, ptr %.sroa.676.0..sroa_idx.i.i, align 8, !alias.scope !16319, !noalias !16313
  %.sroa.877.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val43.i.i, ptr %.sroa.877.0..sroa_idx.i.i, align 8, !alias.scope !16319, !noalias !16313
  %i.anc = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.mt unwind label %bb.mu, !noalias !16314 ; 2 uses

bb.mt:                                            ; preds = %bb.ms
  %i.and = extractvalue { ptr, ptr } %i.anc, 0    ; 2 uses
  %i.ane = extractvalue { ptr, ptr } %i.anc, 1    ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8, !invariant.load !22, !noalias !16314, !nonnull !22
  %i.anh = invoke noundef zeroext i1 %i.ang(ptr noundef %i.and, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.mv unwind label %bb.mu, !noalias !16314

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

bb.mv:                                            ; preds = %bb.mt
  br i1 %i.anh, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mz, %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16313
  br label %.thread96.i.i

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16313
  %i.anj = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16313
  store ptr @183, ptr %i.k, align 8, !noalias !16313
  %i.anl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.anl, align 8, !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16313
  store ptr %i.t, ptr %i.j, align 8, !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16313
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store ptr %i.anm, ptr %i.i, align 8, !noalias !16313
  store ptr %i.k, ptr %i.l, align 8, !noalias !16313
  %i.ann = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @12, ptr %i.ann, align 8, !noalias !16313
  %i.ano = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.ano, align 8, !noalias !16313
  %i.anp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @184, ptr %i.anp, align 8, !noalias !16313
  %i.anq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.anq, align 8, !noalias !16313
  %i.anr = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @185, ptr %i.anr, align 8, !noalias !16313
  store i64 1, ptr %i.m, align 8, !alias.scope !16320, !noalias !16313
  %.sroa.4.0..sroa_idx.i52.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i52.i.i, align 8, !alias.scope !16320, !noalias !16313
  %.sroa.5.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i53.i.i, align 8, !alias.scope !16320, !noalias !16313
  %i.ans = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ank, ptr %i.ans, align 8, !alias.scope !16320, !noalias !16313
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.amz, ptr noundef nonnull %i.and, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ane, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.mz unwind label %bb.my, !noalias !16314

bb.my:                                            ; preds = %bb.mx
  %i.ant = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16313
  br label %bb.na

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16313
  br label %bb.mw

bb.na:                                            ; preds = %bb.my, %bb.mu
  %.pn12.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ant, %bb.my ], [ %i.ani, %bb.mu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16313
  br label %bb.nj

bb.nb:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16313
  %i.anu = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !16313, !nonnull !22, !align !24, !noundef !22 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16313
  store ptr @183, ptr %i.q, align 8, !noalias !16313
  %i.anw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.anw, align 8, !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16313
  store ptr %i.t, ptr %i.p, align 8, !noalias !16313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16313
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store ptr %i.anx, ptr %i.o, align 8, !noalias !16313
  store ptr %i.q, ptr %i.r, align 8, !noalias !16313
  %i.any = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @12, ptr %i.any, align 8, !noalias !16313
  %i.anz = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.anz, align 8, !noalias !16313
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @184, ptr %i.aoa, align 8, !noalias !16313
  %i.aob = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.o, ptr %i.aob, align 8, !noalias !16313
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @185, ptr %i.aoc, align 8, !noalias !16313
  store i64 1, ptr %i.s, align 8, !noalias !16313
  %.sroa.869.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.869.0..sroa_idx.i.i, align 8, !noalias !16313
  %.sroa.970.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 3, ptr %.sroa.970.0..sroa_idx.i.i, align 8, !noalias !16313
  %.sroa.1071.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.anv, ptr %.sroa.1071.0..sroa_idx.i.i, align 8, !noalias !16313
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.anu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc70.i unwind label %bb.nf, !noalias !16312

.noexc70.i:                                       ; preds = %bb.nb
  %i.aod = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !16321
  %i.aoe = icmp eq i8 %i.aod, 0
  br i1 %i.aoe, label %bb.nc, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.nc:                                            ; preds = %.noexc70.i
  %i.aof = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !16321 ; 2 uses
  %i.aog = icmp ult i64 %i.aof, 6
  call void @llvm.assume(i1 %i.aog), !noalias !16322
  %i.aoh = icmp samesign ugt i64 %i.aof, 1
  br i1 %i.aoh, label %bb.nd, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.nd:                                            ; preds = %bb.nc
  %i.aoi = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !16321, !nonnull !22, !align !24, !noundef !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16321
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 32
  %i.aok = load ptr, ptr %i.aoj, align 8, !noalias !16314, !nonnull !22, !noundef !22
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 40
  %i.aom = load i64, ptr %i.aol, align 8, !noalias !16314, !noundef !22
  store i64 2, ptr %i.f, align 8, !noalias !16321
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aok, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !16321
  %.sroa.5.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.aom, ptr %.sroa.5.0..sroa_idx.i69.i, align 8, !noalias !16321
  %i.aon = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc71.i unwind label %bb.nf, !noalias !16312 ; 2 uses

.noexc71.i:                                       ; preds = %bb.nd
  %i.aoo = extractvalue { ptr, ptr } %i.aon, 0    ; 2 uses
  %i.aop = extractvalue { ptr, ptr } %i.aon, 1    ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 24
  %i.aor = load ptr, ptr %i.aoq, align 8, !invariant.load !22, !noalias !16314, !nonnull !22
  %i.aos = invoke noundef zeroext i1 %i.aor(ptr noundef %i.aoo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc72.i unwind label %bb.nf, !noalias !16312, !inline_history !16154

.noexc72.i:                                       ; preds = %.noexc71.i
  br i1 %i.aos, label %bb.ne, label %.noexc73.i

bb.ne:                                            ; preds = %.noexc72.i
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aoi, ptr noundef nonnull %i.aoo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aop, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc73.i unwind label %bb.nf, !noalias !16312

.noexc73.i:                                       ; preds = %bb.ne, %.noexc72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16321
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.nf:                                            ; preds = %bb.ne, %.noexc71.i, %bb.nd, %bb.nb
  %i.aot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16313
  br label %bb.nj

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %.noexc73.i, %bb.nc, %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16313
  br label %.thread96.i.i

.thread.i.i177:                                   ; preds = %.thread96.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.03.090.i.i = phi i64 [ %.sroa.080.0.copyload.i.i, %.thread96.i.i ], [ %i.aml, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %.sroa.4.088.i.i = phi i8 [ %.sroa.581.0.copyload.i.i, %.thread96.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.aou = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.aou)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.mj, !noalias !16314

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.ng, %.thread.i.i177, %.thread96.i.i
  %.sroa.03.089.i.i = phi i64 [ %.sroa.080.0.copyload.i.i, %.thread96.i.i ], [ -1, %bb.ng ], [ %.sroa.03.090.i.i, %.thread.i.i177 ] ; 4 uses
  %.sroa.4.087.i.i = phi i8 [ %.sroa.581.0.copyload.i.i, %.thread96.i.i ], [ 1, %bb.ng ], [ %.sroa.4.088.i.i, %.thread.i.i177 ] ; 4 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 2008
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.aov)
          to label %bb.nm unwind label %bb.nh, !noalias !16314

bb.ng:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.mj, !noalias !16314

bb.nh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %bb.lx

bb.ni:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16313
  %i.aox = load i64, ptr %i.z, align 8, !range !57, !noalias !16313, !noundef !22
  %.not25.i.i = icmp eq i64 %i.aox, -1
  br i1 %.not25.i.i, label %bb.nk, label %.body46.i.i

bb.nj:                                            ; preds = %bb.nf, %bb.na, %bb.mn
  %.pn23.ph.i.i = phi { ptr, i32 } [ %i.aot, %bb.nf ], [ %i.ams, %bb.mn ], [ %.pn12.pn.pn.pn.pn.i.i, %bb.na ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.t) #35
          to label %bb.ni unwind label %bb.lu, !noalias !16314

bb.nk:                                            ; preds = %bb.ni
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.z) #35
          to label %.body46.i.i unwind label %bb.lu, !noalias !16314

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.nl, %bb.lx
  store i8 0, ptr %i.all, align 8, !noalias !16313
  store i8 2, ptr %i.alj, align 1, !noalias !16313
  br label %.body.i169

bb.nl:                                            ; preds = %bb.lx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i.i) ]
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i, i64 32
  %i.aoz = load ptr, ptr %i.aoy, align 8, !noalias !16323, !nonnull !22, !noundef !22
  invoke void %i.aoz(ptr noundef %.sroa.10.2.i.i, ptr noundef %.sroa.8.2.i.i, i64 noundef %.sroa.9.2.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.lu, !noalias !16314, !inline_history !28

bb.nm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16313
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 2184
  store i8 0, ptr %i.apa, align 8, !noalias !16313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9101.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i.i, i64 63, i1 false), !noalias !16324
  store i8 1, ptr %i.als, align 1, !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.apb = icmp eq i64 %.sroa.03.089.i.i, -2
  br i1 %i.apb, label %bb.ov, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6105.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9101.i, i64 63, i1 false), !noalias !16311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9101.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.alt)
          to label %bb.no unwind label %bb.nv, !noalias !16312

bb.no:                                            ; preds = %bb.nn
  %.not.i50.i = icmp eq i64 %.sroa.03.089.i.i, -1 ; 2 uses
  br i1 %.not.i50.i, label %bb.np, label %bb.oq

bb.np:                                            ; preds = %bb.no
  store i8 %.sroa.4.087.i.i, ptr %i.ap, align 1, !noalias !16311
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 1968
  %i.apd = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.apc)
          to label %.noexc.i175 unwind label %bb.nv, !noalias !16312 ; 2 uses

.noexc.i175:                                      ; preds = %bb.np
  %i.ape = extractvalue { i64, i32 } %i.apd, 0    ; 2 uses
  %i.apf = extractvalue { i64, i32 } %i.apd, 1    ; 2 uses
  %i.apg = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !16311
  %.off.i = add i64 %i.apg, -2
  %switch.i = icmp ult i64 %.off.i, 4
  br i1 %switch.i, label %.thread137.i, label %bb.nq

bb.nq:                                            ; preds = %.noexc.i175
  %i.aph = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8, !noalias !16311 ; 2 uses
  %i.api = icmp ult i8 %i.aph, 3
  br i1 %i.api, label %bb.ns, label %bb.nr, !prof !98

bb.nr:                                            ; preds = %bb.nq
  %i.apj = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.ns unwind label %bb.nv, !noalias !16312

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %.sroa.0.0.i52.i = phi i8 [ %i.aph, %bb.nq ], [ %i.apj, %bb.nr ] ; 2 uses
  %i.apk = icmp eq i8 %.sroa.0.0.i52.i, 0
  br i1 %i.apk, label %.thread137.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.apl = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !16311, !nonnull !22, !align !24, !noundef !22
  %i.apm = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.apl, i8 noundef %.sroa.0.0.i52.i)
          to label %bb.nu unwind label %bb.nv, !noalias !16312

bb.nu:                                            ; preds = %bb.nt
  br i1 %i.apm, label %bb.oj, label %.thread137.i

bb.nv:                                            ; preds = %bb.nn, %bb.nt, %bb.nr, %bb.np
  %i.apn = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

.thread137.i:                                     ; preds = %bb.nu, %bb.ns, %.noexc.i175
  %i.apo = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !16311
  %.not.i176 = icmp eq i8 %i.apo, 0
  br i1 %.not.i176, label %bb.nw, label %bb.og

bb.nw:                                            ; preds = %.thread137.i
  %i.app = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !16311 ; 2 uses
  %i.apq = icmp ult i64 %i.app, 6
  call void @llvm.assume(i1 %i.apq)
  %i.apr = icmp samesign ugt i64 %i.app, 3
  br i1 %i.apr, label %bb.nx, label %bb.og

bb.nx:                                            ; preds = %bb.nw
  %i.aps = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !16311, !nonnull !22, !align !24, !noundef !22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !16311
  %i.apt = getelementptr i8, ptr %i.aps, i64 32
  %.val36.i = load ptr, ptr %i.apt, align 8, !noalias !16312, !nonnull !22, !noundef !22
  %i.apu = getelementptr i8, ptr %i.aps, i64 40
  %.val37.i = load i64, ptr %i.apu, align 8, !noalias !16312, !noundef !22
  store i64 4, ptr %i.ah, align 8, !alias.scope !16325, !noalias !16311
  %.sroa.6124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.val36.i, ptr %.sroa.6124.0..sroa_idx.i, align 8, !alias.scope !16325, !noalias !16311
  %.sroa.8125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.val37.i, ptr %.sroa.8125.0..sroa_idx.i, align 8, !alias.scope !16325, !noalias !16311
  %i.apv = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ny unwind label %bb.nz, !noalias !16312 ; 2 uses

bb.ny:                                            ; preds = %bb.nx
  %i.apw = extractvalue { ptr, ptr } %i.apv, 0    ; 2 uses
  %i.apx = extractvalue { ptr, ptr } %i.apv, 1    ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load ptr, ptr %i.apy, align 8, !invariant.load !22, !noalias !16312, !nonnull !22
  %i.aqa = invoke noundef zeroext i1 %i.apz(ptr noundef %i.apw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.oa unwind label %bb.nz, !noalias !16312

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.oa:                                            ; preds = %bb.ny
  br i1 %i.aqa, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oe, %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16311
  br label %bb.og

bb.oc:                                            ; preds = %bb.oa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !16311
  %i.aqc = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !16311, !nonnull !22, !align !24, !noundef !22
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16311
  store ptr @173, ptr %i.ae, align 8, !noalias !16311
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.aqe, align 8, !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16311
  %i.aqf = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %.val39.i = load i64, ptr %i.aqf, align 8, !noalias !16311, !noundef !22
  store i64 %.val39.i, ptr %i.ad, align 8, !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16311
  %i.aqg = getelementptr inbounds nuw i8, ptr %1, i64 2208
  store ptr %i.aqg, ptr %i.ac, align 8, !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16311
  %i.aqh = zext i64 %i.ape to i128
  %i.aqi = mul nuw nsw i128 %i.aqh, 1000
  %i.aqj = udiv i32 %i.apf, 1000000
  %i.aqk = zext nneg i32 %i.aqj to i128
  %i.aql = add nuw nsw i128 %i.aqi, %i.aqk
  store i128 %i.aql, ptr %i.ab, align 16, !noalias !16311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16311
  store ptr %i.ap, ptr %i.aa, align 8, !noalias !16311
  store ptr %i.ae, ptr %i.af, align 8, !noalias !16311
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @12, ptr %i.aqm, align 8, !noalias !16311
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ad, ptr %i.aqn, align 8, !noalias !16311
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @146, ptr %i.aqo, align 8, !noalias !16311
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ac, ptr %i.aqp, align 8, !noalias !16311
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @174, ptr %i.aqq, align 8, !noalias !16311
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.ab, ptr %i.aqr, align 8, !noalias !16311
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr @175, ptr %i.aqs, align 8, !noalias !16311
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %i.aa, ptr %i.aqt, align 8, !noalias !16311
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr @176, ptr %i.aqu, align 8, !noalias !16311
  store i64 1, ptr %i.ag, align 8, !alias.scope !16326, !noalias !16311
  %.sroa.4.0..sroa_idx.i55.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i55.i, align 8, !alias.scope !16326, !noalias !16311
  %.sroa.5.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx.i56.i, align 8, !alias.scope !16326, !noalias !16311
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.aqd, ptr %i.aqv, align 8, !alias.scope !16326, !noalias !16311
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aps, ptr noundef nonnull %i.apw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.apx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.oe unwind label %bb.od, !noalias !16312

bb.od:                                            ; preds = %bb.oc
  %i.aqw = landingpad { ptr, i32 }
          cleanup
end_hunk_0
