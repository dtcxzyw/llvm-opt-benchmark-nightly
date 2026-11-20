Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.00?download=true
inline.NumInlined: 3875
inline.NumDeleted: 1384
begin_hunk_0_@_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB8_7Catalog16update_committedNtNtNtBa_3ops7trigger16DisableTriggerOpE0Csh4GC5dvIChH_27influxdb3_processing_engine:bb.a
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store i64 %i.akd, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !alias.scope !5757, !noalias !5755
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i64 %i.ake, ptr %.sroa.512.0..sroa_idx.i.i.i, align 16, !alias.scope !5757, !noalias !5755
  %i.akh = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store ptr null, ptr %i.akh, align 8, !alias.scope !5757, !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5758
  %i.aki = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aki, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !5755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ajr, i64 24, i1 false), !noalias !5755
  %i.akj = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akj, ptr noundef nonnull align 8 dereferenceable(48) %i.akg, i64 48, i1 false), !noalias !5755
  %i.akk = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store ptr null, ptr %i.akk, align 8, !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5755
  %i.akl = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aju, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajo, ptr noundef nonnull %i.ajx, i64 noundef %i.ajy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.w)
          to label %bb.lv unwind label %bb.lu, !noalias !5756 ; 2 uses

bb.lu:                                            ; preds = %bb.lt
  %i.akm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5755
  br label %.body46.i.i

bb.lv:                                            ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5755
  %i.akn = extractvalue { ptr, ptr } %i.akl, 0
  %i.ako = extractvalue { ptr, ptr } %i.akl, 1
  %i.akp = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store ptr %i.akn, ptr %i.akp, align 16, !noalias !5755
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store ptr %i.ako, ptr %i.akq, align 8, !noalias !5755
  br label %bb.md

.body46.i.i:                                      ; preds = %bb.nm, %bb.nk, %bb.ml, %bb.mk, %bb.mj, %bb.mc, %bb.lu
  %i.akr = phi ptr [ %i.ajm, %bb.lu ], [ %i.ali, %bb.nm ], [ %i.ali, %bb.nk ], [ %i.ali, %bb.mc ], [ %i.ali, %bb.mj ], [ %i.ali, %bb.mk ], [ %i.ali, %bb.ml ]
  %i.aks = phi ptr [ %i.ajn, %bb.lu ], [ %i.alj, %bb.nm ], [ %i.alj, %bb.nk ], [ %i.alj, %bb.mc ], [ %i.alj, %bb.mj ], [ %i.alj, %bb.mk ], [ %i.alj, %bb.ml ]
  %i.akt = phi ptr [ %i.ajq, %bb.lu ], [ %i.alk, %bb.nm ], [ %i.alk, %bb.nk ], [ %i.alk, %bb.mc ], [ %i.alk, %bb.mj ], [ %i.alk, %bb.mk ], [ %i.alk, %bb.ml ]
  %i.aku = phi ptr [ %i.ajr, %bb.lu ], [ %i.all, %bb.nm ], [ %i.all, %bb.nk ], [ %i.all, %bb.mc ], [ %i.all, %bb.mj ], [ %i.all, %bb.mk ], [ %i.all, %bb.ml ]
  %.sroa.0.1185.i = phi ptr [ %.sroa.0.1179.i.a, %bb.lu ], [ %.sroa.0.1178.i, %bb.nm ], [ %.sroa.0.1178.i, %bb.nk ], [ %.sroa.0.1178.i, %bb.mc ], [ %.sroa.0.1178.i, %bb.mj ], [ %.sroa.0.1178.i, %bb.mk ], [ %.sroa.0.1178.i, %bb.ml ]
  %.sroa.9.1175.i = phi ptr [ %.sroa.9.1169.i.a, %bb.lu ], [ %.sroa.9.1168.i, %bb.nm ], [ %.sroa.9.1168.i, %bb.nk ], [ %.sroa.9.1168.i, %bb.mc ], [ %.sroa.9.1168.i, %bb.mj ], [ %.sroa.9.1168.i, %bb.mk ], [ %.sroa.9.1168.i, %bb.ml ]
  %.sroa.10.1165.i = phi i64 [ %.sroa.10.1159.i.a, %bb.lu ], [ %.sroa.10.1158.i, %bb.nm ], [ %.sroa.10.1158.i, %bb.nk ], [ %.sroa.10.1158.i, %bb.mc ], [ %.sroa.10.1158.i, %bb.mj ], [ %.sroa.10.1158.i, %bb.mk ], [ %.sroa.10.1158.i, %bb.ml ]
  %.sroa.11.1155.i = phi ptr [ %.sroa.11.1149.i.a, %bb.lu ], [ %.sroa.11.1148.i, %bb.nm ], [ %.sroa.11.1148.i, %bb.nk ], [ %.sroa.11.1148.i, %bb.mc ], [ %.sroa.11.1148.i, %bb.mj ], [ %.sroa.11.1148.i, %bb.mk ], [ %.sroa.11.1148.i, %bb.ml ]
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.0.copyload.i.i, %bb.lu ], [ %.sroa.10.0.i.i, %bb.nm ], [ %.sroa.10.0.i.i, %bb.nk ], [ %.sroa.10.0.i.i, %bb.mc ], [ %.sroa.10.0.i.i, %bb.mj ], [ %.sroa.10.0.i.i, %bb.mk ], [ %.sroa.10.0.i.i, %bb.ml ]
  %.sroa.9.1.i.i = phi i64 [ %.sroa.9.0.copyload.i.i, %bb.lu ], [ %.sroa.9.0.i.i, %bb.nm ], [ %.sroa.9.0.i.i, %bb.nk ], [ %.sroa.9.0.i.i, %bb.mc ], [ %.sroa.9.0.i.i, %bb.mj ], [ %.sroa.9.0.i.i, %bb.mk ], [ %.sroa.9.0.i.i, %bb.ml ]
  %.sroa.8.1.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.lu ], [ %.sroa.8.0.i.i, %bb.nm ], [ %.sroa.8.0.i.i, %bb.nk ], [ %.sroa.8.0.i.i, %bb.mc ], [ %.sroa.8.0.i.i, %bb.mj ], [ %.sroa.8.0.i.i, %bb.mk ], [ %.sroa.8.0.i.i, %bb.ml ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.lu ], [ %.sroa.0.0.i46.i, %bb.nm ], [ %.sroa.0.0.i46.i, %bb.nk ], [ %.sroa.0.0.i46.i, %bb.mc ], [ %.sroa.0.0.i46.i, %bb.mj ], [ %.sroa.0.0.i46.i, %bb.mk ], [ %.sroa.0.0.i46.i, %bb.ml ]
  %.pn27.i.i = phi { ptr, i32 } [ %i.akm, %bb.lu ], [ %.pn23.ph.i.i, %bb.nm ], [ %.pn23.ph.i.i, %bb.nk ], [ %i.alg, %bb.mc ], [ %i.alw, %bb.mj ], [ %i.alw, %bb.mk ], [ %i.amc, %bb.ml ]
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 2024
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(48) %i.akv) #23
          to label %bb.lz unwind label %bb.lw, !noalias !5756

bb.lw:                                            ; preds = %bb.nn, %bb.nm, %bb.nl, %bb.mc, %bb.ly, %.body46.i.i, %.body.i.i182
  %i.akw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !5756
  unreachable

bb.lx:                                            ; preds = %.body.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5755
  %i.akx = atomicrmw add ptr %i.ajx, i64 -1 release, align 8, !noalias !5760
  %i.aky = icmp eq i64 %i.akx, 1
  br i1 %i.aky, label %bb.ly, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.ly:                                            ; preds = %bb.lx
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i unwind label %bb.lw, !noalias !5756

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %bb.ly, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5755
  br label %bb.lz

bb.lz:                                            ; preds = %bb.nj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, %.body46.i.i, %bb.lp
  %i.akz = phi ptr [ %i.ali, %bb.nj ], [ %i.akr, %.body46.i.i ], [ %i.ajm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %i.ajm, %bb.lp ]
  %i.ala = phi ptr [ %i.alj, %bb.nj ], [ %i.aks, %.body46.i.i ], [ %i.ajn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %i.ajn, %bb.lp ]
  %i.alb = phi ptr [ %i.alk, %bb.nj ], [ %i.akt, %.body46.i.i ], [ %i.ajq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %i.ajq, %bb.lp ]
  %i.alc = phi ptr [ %i.all, %bb.nj ], [ %i.aku, %.body46.i.i ], [ %i.ajr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %i.ajr, %bb.lp ]
  %.sroa.0.1184.i = phi ptr [ %.sroa.0.1178.i, %bb.nj ], [ %.sroa.0.1185.i, %.body46.i.i ], [ %.sroa.0.1179.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.0.1179.i.a, %bb.lp ]
  %.sroa.9.1174.i = phi ptr [ %.sroa.9.1168.i, %bb.nj ], [ %.sroa.9.1175.i, %.body46.i.i ], [ %.sroa.9.1169.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.9.1169.i.a, %bb.lp ]
  %.sroa.10.1164.i = phi i64 [ %.sroa.10.1158.i, %bb.nj ], [ %.sroa.10.1165.i, %.body46.i.i ], [ %.sroa.10.1159.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.10.1159.i.a, %bb.lp ]
  %.sroa.11.1154.i = phi ptr [ %.sroa.11.1148.i, %bb.nj ], [ %.sroa.11.1155.i, %.body46.i.i ], [ %.sroa.11.1149.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.11.1149.i.a, %bb.lp ]
  %.sroa.10.2.i.i = phi ptr [ %.sroa.10.0.i.i, %bb.nj ], [ %.sroa.10.1.i.i, %.body46.i.i ], [ %.sroa.10.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.10.0.copyload.i.i, %bb.lp ]
  %.sroa.9.2.i.i = phi i64 [ %.sroa.9.0.i.i, %bb.nj ], [ %.sroa.9.1.i.i, %.body46.i.i ], [ %.sroa.9.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.9.0.copyload.i.i, %bb.lp ]
  %.sroa.8.2.i.i = phi ptr [ %.sroa.8.0.i.i, %bb.nj ], [ %.sroa.8.1.i.i, %.body46.i.i ], [ %.sroa.8.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.lp ]
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.0.i46.i, %bb.nj ], [ %.sroa.0.1.i.i, %.body46.i.i ], [ %.sroa.0.0.copyload.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.lp ] ; 2 uses
  %.pn29.i.i = phi { ptr, i32 } [ %i.aoo, %bb.nj ], [ %.pn27.i.i, %.body46.i.i ], [ %i.akb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ], [ %i.ajw, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5755
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 2200 ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 8, !range !32, !noalias !5755, !noundef !12
  %i.alf = trunc nuw i8 %i.ale to i1
  br i1 %i.alf, label %bb.nn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.ma:                                            ; preds = %bb.lm
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #25
          to label %.noexc48.i unwind label %bb.ll, !noalias !5754

.noexc48.i:                                       ; preds = %bb.ma
  unreachable

bb.mb:                                            ; preds = %bb.lm
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #25
          to label %.noexc49.i unwind label %bb.ll, !noalias !5754

.noexc49.i:                                       ; preds = %bb.mb
  unreachable

bb.mc:                                            ; preds = %bb.md
  %i.alg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5755
  %.val42.i.i = load ptr, ptr %i.alm, align 16, !noalias !5755
  %i.alh = getelementptr i8, ptr %1, i64 2168
  %.val43.i.i = load ptr, ptr %i.alh, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr %.val42.i.i, ptr nonnull %.val43.i.i) #23
          to label %.body46.i.i unwind label %bb.lw, !noalias !5756

bb.md:                                            ; preds = %bb.lv, %bb.ln
  %i.ali = phi ptr [ %i.ajm, %bb.lv ], [ %i.aig, %bb.ln ] ; 15 uses
  %i.alj = phi ptr [ %i.ajn, %bb.lv ], [ %i.aif, %bb.ln ] ; 15 uses
  %i.alk = phi ptr [ %i.ajq, %bb.lv ], [ %.phi.trans.insert.i170, %bb.ln ] ; 9 uses
  %i.all = phi ptr [ %i.ajr, %bb.lv ], [ %i.ajl, %bb.ln ] ; 8 uses
  %.sroa.0.1178.i = phi ptr [ %.sroa.0.1179.i.a, %bb.lv ], [ undef, %bb.ln ] ; 13 uses
  %.sroa.9.1168.i = phi ptr [ %.sroa.9.1169.i.a, %bb.lv ], [ undef, %bb.ln ] ; 13 uses
  %.sroa.10.1158.i = phi i64 [ %.sroa.10.1159.i.a, %bb.lv ], [ undef, %bb.ln ] ; 13 uses
  %.sroa.11.1148.i = phi ptr [ %.sroa.11.1149.i.a, %bb.lv ], [ undef, %bb.ln ] ; 13 uses
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload.i.i, %bb.lv ], [ undef, %bb.ln ] ; 7 uses
  %.sroa.9.0.i.i = phi i64 [ %.sroa.9.0.copyload.i.i, %bb.lv ], [ undef, %bb.ln ] ; 7 uses
  %.sroa.8.0.i.i = phi ptr [ %.sroa.8.0.copyload.i.i, %bb.lv ], [ undef, %bb.ln ] ; 7 uses
  %.sroa.0.0.i46.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.lv ], [ undef, %bb.ln ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5755
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.alm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.me unwind label %bb.mc, !noalias !5756

bb.me:                                            ; preds = %bb.md
  %i.aln = load i64, ptr %i.u, align 8, !range !23, !noalias !5755, !noundef !12
  %i.alo = icmp eq i64 %i.aln, -2
  br i1 %i.alo, label %.thread.i180, label %bb.mf

.thread.i180:                                     ; preds = %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5755
  store i8 3, ptr %i.alk, align 1, !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.ox

bb.mf:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5755
  %.val40.i.i = load ptr, ptr %i.alm, align 16, !noalias !5755 ; 5 uses
  %i.alp = getelementptr i8, ptr %1, i64 2168
  %.val41.i.i = load ptr, ptr %i.alp, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12 ; 5 uses
  %i.alq = load ptr, ptr %.val41.i.i, align 8, !invariant.load !12, !noalias !5756 ; 2 uses
  %.not.i.i.i.i174 = icmp eq ptr %i.alq, null
  br i1 %.not.i.i.i.i174, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ]
  invoke void %i.alq(ptr noundef nonnull %.val40.i.i)
          to label %bb.mh unwind label %bb.mj, !noalias !5756

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.alr = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.als = load i64, ptr %i.alr, align 8, !range !13, !invariant.load !12, !noalias !5756 ; 2 uses
  %i.alt = icmp eq i64 %i.als, 0
  br i1 %i.alt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.alu = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.alv = load i64, ptr %i.alu, align 8, !range !14, !invariant.load !12, !noalias !5756
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef range(i64 1, 0) %i.als, i64 noundef range(i64 1, 536870913) %i.alv) #22, !noalias !5756
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

bb.mj:                                            ; preds = %bb.mg
  %i.alw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 8
  %i.aly = load i64, ptr %i.alx, align 8, !range !13, !invariant.load !12, !noalias !5756 ; 2 uses
  %i.alz = icmp eq i64 %i.aly, 0
  br i1 %i.alz, label %.body46.i.i, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.ama = getelementptr inbounds nuw i8, ptr %.val41.i.i, i64 16
  %i.amb = load i64, ptr %i.ama, align 8, !range !14, !invariant.load !12, !noalias !5756
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef range(i64 1, 0) %i.aly, i64 noundef range(i64 1, 536870913) %i.amb) #22, !noalias !5756
  br label %.body46.i.i

bb.ml:                                            ; preds = %bb.ni, %.thread.i.i179
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %bb.mi, %bb.mh
  %i.amd = load i64, ptr %i.z, align 8, !range !25, !noalias !5755, !noundef !12 ; 3 uses
  %.not.i47.i = icmp eq i64 %i.amd, -1
  br i1 %.not.i47.i, label %.thread.i.i179, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %4 = icmp ne i64 %i.amd, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.amd, -9223372036854775797
  br i1 %5, label %bb.ni, label %.noexc.i.i175

.thread94.i.i:                                    ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Csh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %bb.my, %bb.mt, %bb.ms
  %.sroa.078.0.copyload.i.i = load i64, ptr %i.t, align 8, !noalias !5755 ; 2 uses
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.579.0.copyload.i.i = load i8, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !noalias !5755 ; 2 uses
  %.sroa.680.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.680.0..sroa_idx.i.i, i64 63, i1 false), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5755
  %.pr98.i.i = load i64, ptr %i.z, align 8, !noalias !5755
  %.not2699.i.i = icmp eq i64 %.pr98.i.i, -1
  br i1 %.not2699.i.i, label %.thread.i.i179, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i

.noexc.i.i175:                                    ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !noalias !5755
  %i.ame = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5755
  %i.amf = and i64 %i.ame, -2
  %switch.i.i = icmp eq i64 %i.amf, 4
  br i1 %switch.i.i, label %bb.ms, label %bb.mm

bb.mm:                                            ; preds = %.noexc.i.i175
  %i.amg = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !5755 ; 2 uses
  %i.amh = icmp ult i8 %i.amg, 3
  br i1 %i.amh, label %bb.mo, label %bb.mn, !prof !57

bb.mn:                                            ; preds = %bb.mm
  %i.ami = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.mo unwind label %bb.mp, !noalias !5756

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %.sroa.0.0.i48.i.i = phi i8 [ %i.amg, %bb.mm ], [ %i.ami, %bb.mn ] ; 2 uses
  %i.amj = icmp eq i8 %.sroa.0.0.i48.i.i, 0
  br i1 %i.amj, label %bb.ms, label %bb.mq

bb.mp:                                            ; preds = %bb.mq, %bb.mn
  %i.amk = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.mq:                                            ; preds = %bb.mo
  %i.aml = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12
  %i.amm = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aml, i8 noundef %.sroa.0.0.i48.i.i)
          to label %bb.mr unwind label %bb.mp, !noalias !5756

bb.mr:                                            ; preds = %bb.mq
  br i1 %i.amm, label %bb.nd, label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mo, %.noexc.i.i175
  %i.amn = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5755
  %.not113.i.i = icmp eq i8 %i.amn, 0
  br i1 %.not113.i.i, label %bb.mt, label %.thread94.i.i

bb.mt:                                            ; preds = %bb.ms
  %i.amo = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5755 ; 2 uses
  %i.amp = icmp ult i64 %i.amo, 6
  call void @llvm.assume(i1 %i.amp)
  %i.amq = icmp samesign ugt i64 %i.amo, 1
  br i1 %i.amq, label %bb.mu, label %.thread94.i.i

bb.mu:                                            ; preds = %bb.mt
  %i.amr = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5755
  %i.ams = getelementptr i8, ptr %i.amr, i64 32
  %.val38.i.i = load ptr, ptr %i.ams, align 8, !noalias !5756, !nonnull !12, !noundef !12
  %i.amt = getelementptr i8, ptr %i.amr, i64 40
  %.val39.i.i = load i64, ptr %i.amt, align 8, !noalias !5756, !noundef !12
  store i64 2, ptr %i.n, align 8, !alias.scope !5761, !noalias !5755
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.val38.i.i, ptr %.sroa.674.0..sroa_idx.i.i, align 8, !alias.scope !5761, !noalias !5755
  %.sroa.875.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val39.i.i, ptr %.sroa.875.0..sroa_idx.i.i, align 8, !alias.scope !5761, !noalias !5755
  %i.amu = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.mv unwind label %bb.mw, !noalias !5756 ; 2 uses

bb.mv:                                            ; preds = %bb.mu
  %i.amv = extractvalue { ptr, ptr } %i.amu, 0    ; 2 uses
  %i.amw = extractvalue { ptr, ptr } %i.amu, 1    ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  %i.amy = load ptr, ptr %i.amx, align 8, !invariant.load !12, !noalias !5756, !nonnull !12
  %i.amz = invoke noundef zeroext i1 %i.amy(ptr noundef %i.amv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.mx unwind label %bb.mw, !noalias !5756

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.mx:                                            ; preds = %bb.mv
  br i1 %i.amz, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.nb, %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5755
  br label %.thread94.i.i

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5755
  %i.anb = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5755
  store ptr @84, ptr %i.k, align 8, !noalias !5755
  %i.and = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.and, align 8, !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5755
  store ptr %i.t, ptr %i.j, align 8, !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5755
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store ptr %i.ane, ptr %i.i, align 8, !noalias !5755
  store ptr %i.k, ptr %i.l, align 8, !noalias !5755
  %i.anf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @58, ptr %i.anf, align 8, !noalias !5755
  %i.ang = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.ang, align 8, !noalias !5755
  %i.anh = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @85, ptr %i.anh, align 8, !noalias !5755
  %i.ani = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.ani, align 8, !noalias !5755
  %i.anj = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @86, ptr %i.anj, align 8, !noalias !5755
  store i64 1, ptr %i.m, align 8, !alias.scope !5762, !noalias !5755
  %.sroa.4.0..sroa_idx.i50.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i50.i.i, align 8, !alias.scope !5762, !noalias !5755
  %.sroa.5.0..sroa_idx.i51.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i51.i.i, align 8, !alias.scope !5762, !noalias !5755
  %i.ank = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.anc, ptr %i.ank, align 8, !alias.scope !5762, !noalias !5755
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.amr, ptr noundef nonnull %i.amv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.amw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.nb unwind label %bb.na, !noalias !5756

bb.na:                                            ; preds = %bb.mz
  %i.anl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5755
  br label %bb.nc

bb.nb:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5755
  br label %bb.my

bb.nc:                                            ; preds = %bb.na, %bb.mw
  %.pn12.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.anl, %bb.na ], [ %i.ana, %bb.mw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5755
  br label %bb.nl

bb.nd:                                            ; preds = %bb.mr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5755
  %i.anm = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5755, !nonnull !12, !align !18, !noundef !12 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5755
  store ptr @84, ptr %i.q, align 8, !noalias !5755
  %i.ano = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ano, align 8, !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5755
  store ptr %i.t, ptr %i.p, align 8, !noalias !5755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5755
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store ptr %i.anp, ptr %i.o, align 8, !noalias !5755
  store ptr %i.q, ptr %i.r, align 8, !noalias !5755
  %i.anq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @58, ptr %i.anq, align 8, !noalias !5755
  %i.anr = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.anr, align 8, !noalias !5755
  %i.ans = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @85, ptr %i.ans, align 8, !noalias !5755
  %i.ant = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.o, ptr %i.ant, align 8, !noalias !5755
  %i.anu = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @86, ptr %i.anu, align 8, !noalias !5755
  store i64 1, ptr %i.s, align 8, !noalias !5755
  %.sroa.867.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.867.0..sroa_idx.i.i, align 8, !noalias !5755
  %.sroa.968.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 3, ptr %.sroa.968.0..sroa_idx.i.i, align 8, !noalias !5755
  %.sroa.1069.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ann, ptr %.sroa.1069.0..sroa_idx.i.i, align 8, !noalias !5755
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.anm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc68.i unwind label %bb.nh, !noalias !5754

.noexc68.i:                                       ; preds = %bb.nd
  %i.anv = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5763
  %i.anw = icmp eq i8 %i.anv, 0
  br i1 %i.anw, label %bb.ne, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Csh4GC5dvIChH_27influxdb3_processing_engine.exit.i

bb.ne:                                            ; preds = %.noexc68.i
  %i.anx = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5763 ; 2 uses
  %i.any = icmp ult i64 %i.anx, 6
  call void @llvm.assume(i1 %i.any), !noalias !5764
  %i.anz = icmp samesign ugt i64 %i.anx, 1
  br i1 %i.anz, label %bb.nf, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Csh4GC5dvIChH_27influxdb3_processing_engine.exit.i

bb.nf:                                            ; preds = %bb.ne
  %i.aoa = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5763, !nonnull !12, !align !18, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5763
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 32
  %i.aoc = load ptr, ptr %i.aob, align 8, !noalias !5756, !nonnull !12, !noundef !12
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoa, i64 40
  %i.aoe = load i64, ptr %i.aod, align 8, !noalias !5756, !noundef !12
  store i64 2, ptr %i.f, align 8, !noalias !5763
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aoc, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !5763
  %.sroa.5.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.aoe, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !5763
  %i.aof = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc69.i unwind label %bb.nh, !noalias !5754 ; 2 uses

.noexc69.i:                                       ; preds = %bb.nf
  %i.aog = extractvalue { ptr, ptr } %i.aof, 0    ; 2 uses
  %i.aoh = extractvalue { ptr, ptr } %i.aof, 1    ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 24
  %i.aoj = load ptr, ptr %i.aoi, align 8, !invariant.load !12, !noalias !5756, !nonnull !12
  %i.aok = invoke noundef zeroext i1 %i.aoj(ptr noundef %i.aog, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc70.i unwind label %bb.nh, !noalias !5754, !inline_history !5619

.noexc70.i:                                       ; preds = %.noexc69.i
  br i1 %i.aok, label %bb.ng, label %.noexc71.i

bb.ng:                                            ; preds = %.noexc70.i
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aoa, ptr noundef nonnull %i.aog, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aoh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc71.i unwind label %bb.nh, !noalias !5754

.noexc71.i:                                       ; preds = %bb.ng, %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5763
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Csh4GC5dvIChH_27influxdb3_processing_engine.exit.i

bb.nh:                                            ; preds = %bb.ng, %.noexc69.i, %bb.nf, %bb.nd
  %i.aol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5755
  br label %bb.nl

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Csh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %.noexc71.i, %bb.ne, %.noexc68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5755
  br label %.thread94.i.i

.thread.i.i179:                                   ; preds = %.thread94.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %.sroa.03.088.i.i = phi i64 [ %.sroa.078.0.copyload.i.i, %.thread94.i.i ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ]
  %.sroa.4.086.i.i = phi i8 [ %.sroa.579.0.copyload.i.i, %.thread94.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i ]
  %i.aom = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(48) %i.aom)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i unwind label %bb.ml, !noalias !5756

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %bb.ni, %.thread.i.i179, %.thread94.i.i
  %.sroa.03.087.i.i = phi i64 [ %.sroa.03.088.i.i, %.thread.i.i179 ], [ -1, %bb.ni ], [ %.sroa.078.0.copyload.i.i, %.thread94.i.i ] ; 4 uses
  %.sroa.4.085.i.i = phi i8 [ %.sroa.4.086.i.i, %.thread.i.i179 ], [ 1, %bb.ni ], [ %.sroa.579.0.copyload.i.i, %.thread94.i.i ] ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %1, i64 2024
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(48) %i.aon)
          to label %bb.no unwind label %bb.nj, !noalias !5756

bb.ni:                                            ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(72) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i unwind label %bb.ml, !noalias !5756

bb.nj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.nk:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5755
  %i.aop = load i64, ptr %i.z, align 8, !range !25, !noalias !5755, !noundef !12
  %.not25.i.i = icmp eq i64 %i.aop, -1
  br i1 %.not25.i.i, label %bb.nm, label %.body46.i.i

bb.nl:                                            ; preds = %bb.nh, %bb.nc, %bb.mp
  %.pn23.ph.i.i = phi { ptr, i32 } [ %i.aol, %bb.nh ], [ %i.amk, %bb.mp ], [ %.pn12.pn.pn.pn.pn.i.i, %bb.nc ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(72) %i.t) #23
          to label %bb.nk unwind label %bb.lw, !noalias !5756

bb.nm:                                            ; preds = %bb.nk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(72) %i.z) #23
          to label %.body46.i.i unwind label %bb.lw, !noalias !5756

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i: ; preds = %bb.nn, %bb.lz
  store i8 0, ptr %i.ald, align 8, !noalias !5755
  store i8 2, ptr %i.alb, align 1, !noalias !5755
  br label %.body.i172

bb.nn:                                            ; preds = %bb.lz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i.i) ]
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i, i64 32
  %i.aor = load ptr, ptr %i.aoq, align 8, !noalias !5765, !nonnull !12, !noundef !12
  invoke void %i.aor(ptr noundef %.sroa.10.2.i.i, ptr noundef %.sroa.8.2.i.i, i64 noundef %.sroa.9.2.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i unwind label %bb.lw, !noalias !5756, !inline_history !4

bb.no:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5755
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 2200
  store i8 0, ptr %i.aos, align 8, !noalias !5755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i.i, i64 63, i1 false), !noalias !5766
  store i8 1, ptr %i.alk, align 1, !noalias !5755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.aot = icmp eq i64 %.sroa.03.087.i.i, -2
  br i1 %i.aot, label %bb.ox, label %bb.np

bb.np:                                            ; preds = %bb.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6103.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999.i, i64 63, i1 false), !noalias !5753
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noundef nonnull align 8 %i.all)
          to label %bb.nq unwind label %bb.nx, !noalias !5754

bb.nq:                                            ; preds = %bb.np
  %.not.i50.i = icmp eq i64 %.sroa.03.087.i.i, -1 ; 2 uses
  br i1 %.not.i50.i, label %bb.nr, label %bb.os

bb.nr:                                            ; preds = %bb.nq
  store i8 %.sroa.4.085.i.i, ptr %i.ap, align 1, !noalias !5753
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 1984
  %i.aov = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aou)
          to label %.noexc.i177 unwind label %bb.nx, !noalias !5754 ; 2 uses

.noexc.i177:                                      ; preds = %bb.nr
  %i.aow = extractvalue { i64, i32 } %i.aov, 0    ; 2 uses
  %i.aox = extractvalue { i64, i32 } %i.aov, 1    ; 2 uses
  %i.aoy = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5753
  %.off.i = add i64 %i.aoy, -2
  %switch.i = icmp ult i64 %.off.i, 4
  br i1 %switch.i, label %.thread135.i, label %bb.ns

bb.ns:                                            ; preds = %.noexc.i177
  %i.aoz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8, !noalias !5753 ; 2 uses
  %i.apa = icmp ult i8 %i.aoz, 3
  br i1 %i.apa, label %bb.nu, label %bb.nt, !prof !57

bb.nt:                                            ; preds = %bb.ns
  %i.apb = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.nu unwind label %bb.nx, !noalias !5754

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %.sroa.0.0.i51.i = phi i8 [ %i.aoz, %bb.ns ], [ %i.apb, %bb.nt ] ; 2 uses
  %i.apc = icmp eq i8 %.sroa.0.0.i51.i, 0
  br i1 %i.apc, label %.thread135.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.apd = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !5753, !nonnull !12, !align !18, !noundef !12
  %i.ape = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.apd, i8 noundef %.sroa.0.0.i51.i)
          to label %bb.nw unwind label %bb.nx, !noalias !5754

bb.nw:                                            ; preds = %bb.nv
  br i1 %i.ape, label %bb.ol, label %.thread135.i

bb.nx:                                            ; preds = %bb.np, %bb.nv, %bb.nt, %bb.nr
  %i.apf = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

.thread135.i:                                     ; preds = %bb.nw, %bb.nu, %.noexc.i177
  %i.apg = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5753
  %.not.i178 = icmp eq i8 %i.apg, 0
  br i1 %.not.i178, label %bb.ny, label %bb.oi

bb.ny:                                            ; preds = %.thread135.i
  %i.aph = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5753 ; 2 uses
  %i.api = icmp ult i64 %i.aph, 6
  call void @llvm.assume(i1 %i.api)
  %i.apj = icmp samesign ugt i64 %i.aph, 3
  br i1 %i.apj, label %bb.nz, label %bb.oi

bb.nz:                                            ; preds = %bb.ny
  %i.apk = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !5753, !nonnull !12, !align !18, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !5753
  %i.apl = getelementptr i8, ptr %i.apk, i64 32
  %.val36.i = load ptr, ptr %i.apl, align 8, !noalias !5754, !nonnull !12, !noundef !12
  %i.apm = getelementptr i8, ptr %i.apk, i64 40
  %.val37.i = load i64, ptr %i.apm, align 8, !noalias !5754, !noundef !12
  store i64 4, ptr %i.ah, align 8, !alias.scope !5767, !noalias !5753
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.val36.i, ptr %.sroa.6122.0..sroa_idx.i, align 8, !alias.scope !5767, !noalias !5753
  %.sroa.8123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.val37.i, ptr %.sroa.8123.0..sroa_idx.i, align 8, !alias.scope !5767, !noalias !5753
  %i.apn = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.oa unwind label %bb.ob, !noalias !5754 ; 2 uses

bb.oa:                                            ; preds = %bb.nz
  %i.apo = extractvalue { ptr, ptr } %i.apn, 0    ; 2 uses
  %i.app = extractvalue { ptr, ptr } %i.apn, 1    ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  %i.apr = load ptr, ptr %i.apq, align 8, !invariant.load !12, !noalias !5754, !nonnull !12
  %i.aps = invoke noundef zeroext i1 %i.apr(ptr noundef %i.apo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %bb.oc unwind label %bb.ob, !noalias !5754

bb.ob:                                            ; preds = %bb.oa, %bb.nz
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

bb.oc:                                            ; preds = %bb.oa
  br i1 %i.aps, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.og, %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5753
  br label %bb.oi

bb.oe:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !5753
  %i.apu = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !5753, !nonnull !12, !align !18, !noundef !12
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5753
  store ptr @73, ptr %i.ae, align 8, !noalias !5753
  %i.apw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.apw, align 8, !noalias !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5753
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 2216
  %.val39.i = load i64, ptr %i.apx, align 8, !noalias !5753, !noundef !12
  store i64 %.val39.i, ptr %i.ad, align 8, !noalias !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5753
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 2224
  store ptr %i.apy, ptr %i.ac, align 8, !noalias !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5753
  %i.apz = zext i64 %i.aow to i128
  %i.aqa = mul nuw nsw i128 %i.apz, 1000
  %i.aqb = udiv i32 %i.aox, 1000000
  %i.aqc = zext nneg i32 %i.aqb to i128
  %i.aqd = add nuw nsw i128 %i.aqa, %i.aqc
  store i128 %i.aqd, ptr %i.ab, align 16, !noalias !5753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5753
  store ptr %i.ap, ptr %i.aa, align 8, !noalias !5753
  store ptr %i.ae, ptr %i.af, align 8, !noalias !5753
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @58, ptr %i.aqe, align 8, !noalias !5753
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ad, ptr %i.aqf, align 8, !noalias !5753
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @74, ptr %i.aqg, align 8, !noalias !5753
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ac, ptr %i.aqh, align 8, !noalias !5753
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @75, ptr %i.aqi, align 8, !noalias !5753
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.ab, ptr %i.aqj, align 8, !noalias !5753
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr @76, ptr %i.aqk, align 8, !noalias !5753
  %i.aql = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %i.aa, ptr %i.aql, align 8, !noalias !5753
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr @77, ptr %i.aqm, align 8, !noalias !5753
  store i64 1, ptr %i.ag, align 8, !alias.scope !5768, !noalias !5753
  %.sroa.4.0..sroa_idx.i53.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i53.i, align 8, !alias.scope !5768, !noalias !5753
  %.sroa.5.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx.i54.i, align 8, !alias.scope !5768, !noalias !5753
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.apv, ptr %i.aqn, align 8, !alias.scope !5768, !noalias !5753
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.apk, ptr noundef nonnull %i.apo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.app, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.og unwind label %bb.of, !noalias !5754

bb.of:                                            ; preds = %bb.oe
  %i.aqo = landingpad { ptr, i32 }
          cleanup
end_hunk_0
