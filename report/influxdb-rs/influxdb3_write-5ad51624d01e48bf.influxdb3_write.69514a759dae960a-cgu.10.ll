Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.10?download=true
inline.NumInlined: 2536
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tn, ptr noundef nonnull align 8 dereferenceable(48) %i.tk, i64 48, i1 false), !noalias !2149
  %i.to = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr null, ptr %i.to, align 8, !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2149
  %i.tp = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.sy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ss, ptr noundef nonnull %i.tb, i64 noundef %i.tc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.v)
          to label %bb.ec unwind label %bb.eb, !noalias !2150 ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2149
  br label %.body46.i.i.i.i.i

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2149
  %i.tr = extractvalue { ptr, ptr } %i.tp, 0
  %i.ts = extractvalue { ptr, ptr } %i.tp, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %i.tr, ptr %i.tt, align 16, !noalias !2149
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %i.ts, ptr %i.tu, align 8, !noalias !2149
  br label %bb.ek

.body46.i.i.i.i.i:                                ; preds = %bb.ft, %bb.fr, %bb.es, %bb.er, %bb.eq, %bb.ej, %bb.eb
  %i.tv = phi ptr [ %i.sm, %bb.eb ], [ %i.uu, %bb.ft ], [ %i.uu, %bb.fr ], [ %i.uu, %bb.ej ], [ %i.uu, %bb.eq ], [ %i.uu, %bb.er ], [ %i.uu, %bb.es ]
  %i.tw = phi ptr [ %i.sn, %bb.eb ], [ %i.uv, %bb.ft ], [ %i.uv, %bb.fr ], [ %i.uv, %bb.ej ], [ %i.uv, %bb.eq ], [ %i.uv, %bb.er ], [ %i.uv, %bb.es ]
  %i.tx = phi ptr [ %i.so, %bb.eb ], [ %i.uw, %bb.ft ], [ %i.uw, %bb.fr ], [ %i.uw, %bb.ej ], [ %i.uw, %bb.eq ], [ %i.uw, %bb.er ], [ %i.uw, %bb.es ]
  %i.ty = phi ptr [ %i.sp, %bb.eb ], [ %i.ux, %bb.ft ], [ %i.ux, %bb.fr ], [ %i.ux, %bb.ej ], [ %i.ux, %bb.eq ], [ %i.ux, %bb.er ], [ %i.ux, %bb.es ]
  %i.tz = phi ptr [ %i.sq, %bb.eb ], [ %i.uy, %bb.ft ], [ %i.uy, %bb.fr ], [ %i.uy, %bb.ej ], [ %i.uy, %bb.eq ], [ %i.uy, %bb.er ], [ %i.uy, %bb.es ]
  %i.ua = phi ptr [ %i.sr, %bb.eb ], [ %i.uz, %bb.ft ], [ %i.uz, %bb.fr ], [ %i.uz, %bb.ej ], [ %i.uz, %bb.eq ], [ %i.uz, %bb.er ], [ %i.uz, %bb.es ]
  %i.ub = phi ptr [ %i.su, %bb.eb ], [ %i.va, %bb.ft ], [ %i.va, %bb.fr ], [ %i.va, %bb.ej ], [ %i.va, %bb.eq ], [ %i.va, %bb.er ], [ %i.va, %bb.es ]
  %i.uc = phi ptr [ %i.sv, %bb.eb ], [ %i.vb, %bb.ft ], [ %i.vb, %bb.fr ], [ %i.vb, %bb.ej ], [ %i.vb, %bb.eq ], [ %i.vb, %bb.er ], [ %i.vb, %bb.es ]
  %.sroa.0.1185.i.i.i.i = phi ptr [ %.sroa.0.1179.i.i.i.i.a, %bb.eb ], [ %.sroa.0.1178.i.i.i.i, %bb.ft ], [ %.sroa.0.1178.i.i.i.i, %bb.fr ], [ %.sroa.0.1178.i.i.i.i, %bb.ej ], [ %.sroa.0.1178.i.i.i.i, %bb.eq ], [ %.sroa.0.1178.i.i.i.i, %bb.er ], [ %.sroa.0.1178.i.i.i.i, %bb.es ]
  %.sroa.9.1175.i.i.i.i = phi ptr [ %.sroa.9.1169.i.i.i.i.a, %bb.eb ], [ %.sroa.9.1168.i.i.i.i, %bb.ft ], [ %.sroa.9.1168.i.i.i.i, %bb.fr ], [ %.sroa.9.1168.i.i.i.i, %bb.ej ], [ %.sroa.9.1168.i.i.i.i, %bb.eq ], [ %.sroa.9.1168.i.i.i.i, %bb.er ], [ %.sroa.9.1168.i.i.i.i, %bb.es ]
  %.sroa.10.1165.i.i.i.i = phi i64 [ %.sroa.10.1159.i.i.i.i.a, %bb.eb ], [ %.sroa.10.1158.i.i.i.i, %bb.ft ], [ %.sroa.10.1158.i.i.i.i, %bb.fr ], [ %.sroa.10.1158.i.i.i.i, %bb.ej ], [ %.sroa.10.1158.i.i.i.i, %bb.eq ], [ %.sroa.10.1158.i.i.i.i, %bb.er ], [ %.sroa.10.1158.i.i.i.i, %bb.es ]
  %.sroa.11.1155.i.i.i.i = phi ptr [ %.sroa.11.1149.i.i.i.i.a, %bb.eb ], [ %.sroa.11.1148.i.i.i.i, %bb.ft ], [ %.sroa.11.1148.i.i.i.i, %bb.fr ], [ %.sroa.11.1148.i.i.i.i, %bb.ej ], [ %.sroa.11.1148.i.i.i.i, %bb.eq ], [ %.sroa.11.1148.i.i.i.i, %bb.er ], [ %.sroa.11.1148.i.i.i.i, %bb.es ]
  %.sroa.10.1.i.i.i.i.i = phi ptr [ %.sroa.10.0.copyload.i.i.i.i.i, %bb.eb ], [ %.sroa.10.0.i.i.i.i.i, %bb.ft ], [ %.sroa.10.0.i.i.i.i.i, %bb.fr ], [ %.sroa.10.0.i.i.i.i.i, %bb.ej ], [ %.sroa.10.0.i.i.i.i.i, %bb.eq ], [ %.sroa.10.0.i.i.i.i.i, %bb.er ], [ %.sroa.10.0.i.i.i.i.i, %bb.es ]
  %.sroa.9.1.i.i.i.i.i = phi i64 [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.eb ], [ %.sroa.9.0.i.i.i.i.i, %bb.ft ], [ %.sroa.9.0.i.i.i.i.i, %bb.fr ], [ %.sroa.9.0.i.i.i.i.i, %bb.ej ], [ %.sroa.9.0.i.i.i.i.i, %bb.eq ], [ %.sroa.9.0.i.i.i.i.i, %bb.er ], [ %.sroa.9.0.i.i.i.i.i, %bb.es ]
  %.sroa.8.1.i.i.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.eb ], [ %.sroa.8.0.i.i.i.i.i, %bb.ft ], [ %.sroa.8.0.i.i.i.i.i, %bb.fr ], [ %.sroa.8.0.i.i.i.i.i, %bb.ej ], [ %.sroa.8.0.i.i.i.i.i, %bb.eq ], [ %.sroa.8.0.i.i.i.i.i, %bb.er ], [ %.sroa.8.0.i.i.i.i.i, %bb.es ]
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.eb ], [ %.sroa.0.0.i46.i.i.i.i, %bb.ft ], [ %.sroa.0.0.i46.i.i.i.i, %bb.fr ], [ %.sroa.0.0.i46.i.i.i.i, %bb.ej ], [ %.sroa.0.0.i46.i.i.i.i, %bb.eq ], [ %.sroa.0.0.i46.i.i.i.i, %bb.er ], [ %.sroa.0.0.i46.i.i.i.i, %bb.es ]
  %.pn27.i.i.i.i.i = phi { ptr, i32 } [ %i.tq, %bb.eb ], [ %.pn23.ph.i.i.i.i.i, %bb.ft ], [ %.pn23.ph.i.i.i.i.i, %bb.fr ], [ %i.us, %bb.ej ], [ %i.vm, %bb.eq ], [ %i.vm, %bb.er ], [ %i.vs, %bb.es ]
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.ud) #33
          to label %bb.eg unwind label %bb.ed, !noalias !2150

bb.ed:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.ej, %bb.ef, %.body46.i.i.i.i.i, %.body.i.i111.i.i.i
  %i.ue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !2150
  unreachable

bb.ee:                                            ; preds = %.body.i.i111.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2149
  %i.uf = atomicrmw add ptr %i.tb, i64 -1 release, align 8, !noalias !2154
  %i.ug = icmp eq i64 %i.uf, 1
  br i1 %i.ug, label %bb.ef, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i unwind label %bb.ed, !noalias !2150

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2149
  br label %bb.eg

bb.eg:                                            ; preds = %bb.fq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i, %.body46.i.i.i.i.i, %bb.dw
  %i.uh = phi ptr [ %i.uu, %bb.fq ], [ %i.tv, %.body46.i.i.i.i.i ], [ %i.sm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sm, %bb.dw ]
  %i.ui = phi ptr [ %i.uv, %bb.fq ], [ %i.tw, %.body46.i.i.i.i.i ], [ %i.sn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sn, %bb.dw ]
  %i.uj = phi ptr [ %i.uw, %bb.fq ], [ %i.tx, %.body46.i.i.i.i.i ], [ %i.so, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.so, %bb.dw ]
  %i.uk = phi ptr [ %i.ux, %bb.fq ], [ %i.ty, %.body46.i.i.i.i.i ], [ %i.sp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sp, %bb.dw ]
  %i.ul = phi ptr [ %i.uy, %bb.fq ], [ %i.tz, %.body46.i.i.i.i.i ], [ %i.sq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sq, %bb.dw ]
  %i.um = phi ptr [ %i.uz, %bb.fq ], [ %i.ua, %.body46.i.i.i.i.i ], [ %i.sr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sr, %bb.dw ]
  %i.un = phi ptr [ %i.va, %bb.fq ], [ %i.ub, %.body46.i.i.i.i.i ], [ %i.su, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.su, %bb.dw ]
  %i.uo = phi ptr [ %i.vb, %bb.fq ], [ %i.uc, %.body46.i.i.i.i.i ], [ %i.sv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.sv, %bb.dw ]
  %.sroa.0.1184.i.i.i.i = phi ptr [ %.sroa.0.1178.i.i.i.i, %bb.fq ], [ %.sroa.0.1185.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.0.1179.i.i.i.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.0.1179.i.i.i.i.a, %bb.dw ]
  %.sroa.9.1174.i.i.i.i = phi ptr [ %.sroa.9.1168.i.i.i.i, %bb.fq ], [ %.sroa.9.1175.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.9.1169.i.i.i.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.9.1169.i.i.i.i.a, %bb.dw ]
  %.sroa.10.1164.i.i.i.i = phi i64 [ %.sroa.10.1158.i.i.i.i, %bb.fq ], [ %.sroa.10.1165.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.10.1159.i.i.i.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.10.1159.i.i.i.i.a, %bb.dw ]
  %.sroa.11.1154.i.i.i.i = phi ptr [ %.sroa.11.1148.i.i.i.i, %bb.fq ], [ %.sroa.11.1155.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.11.1149.i.i.i.i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.11.1149.i.i.i.i.a, %bb.dw ]
  %.sroa.10.2.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.fq ], [ %.sroa.10.1.i.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i.i, %bb.dw ]
  %.sroa.9.2.i.i.i.i.i = phi i64 [ %.sroa.9.0.i.i.i.i.i, %bb.fq ], [ %.sroa.9.1.i.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.9.0.copyload.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.dw ]
  %.sroa.8.2.i.i.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i, %bb.fq ], [ %.sroa.8.1.i.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.dw ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %.sroa.0.0.i46.i.i.i.i, %bb.fq ], [ %.sroa.0.1.i.i.i.i.i, %.body46.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.dw ] ; 2 uses
  %.pn29.i.i.i.i.i = phi { ptr, i32 } [ %i.yh, %bb.fq ], [ %.pn27.i.i.i.i.i, %.body46.i.i.i.i.i ], [ %i.tf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ], [ %i.ta, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2149
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 8, !range !60, !noalias !2149, !noundef !54
  %i.ur = trunc nuw i8 %i.uq to i1
  br i1 %i.ur, label %bb.fu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i

bb.eh:                                            ; preds = %bb.dt
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #31
          to label %.noexc48.i.i.i.i unwind label %bb.ds, !noalias !2148

.noexc48.i.i.i.i:                                 ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.dt
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #31
          to label %.noexc49.i.i.i.i unwind label %bb.ds, !noalias !2148

.noexc49.i.i.i.i:                                 ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.ek
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2149
  %.val42.i.i.i.i.i = load ptr, ptr %i.vc, align 16, !noalias !2149
  %i.ut = getelementptr i8, ptr %1, i64 872
  %.val43.i.i.i.i.i = load ptr, ptr %i.ut, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val42.i.i.i.i.i, ptr nonnull %.val43.i.i.i.i.i) #33
          to label %.body46.i.i.i.i.i unwind label %bb.ed, !noalias !2150

bb.ek:                                            ; preds = %bb.ec, %bb.du
  %i.uu = phi ptr [ %i.sm, %bb.ec ], [ %i.ek, %bb.du ] ; 23 uses
  %i.uv = phi ptr [ %i.sn, %bb.ec ], [ %i.ej, %bb.du ] ; 22 uses
  %i.uw = phi ptr [ %i.so, %bb.ec ], [ %.phi.trans.insert.i, %bb.du ] ; 23 uses
  %i.ux = phi ptr [ %i.sp, %bb.ec ], [ %.phi.trans.insert.i.i, %bb.du ] ; 23 uses
  %i.uy = phi ptr [ %i.sq, %bb.ec ], [ %.phi.trans.insert306.i.i.i, %bb.du ] ; 15 uses
  %i.uz = phi ptr [ %i.sr, %bb.ec ], [ %i.qs, %bb.du ] ; 15 uses
  %i.va = phi ptr [ %i.su, %bb.ec ], [ %.phi.trans.insert.i100.i.i.i, %bb.du ] ; 9 uses
  %i.vb = phi ptr [ %i.sv, %bb.ec ], [ %i.sl, %bb.du ] ; 8 uses
  %.sroa.0.1178.i.i.i.i = phi ptr [ %.sroa.0.1179.i.i.i.i.a, %bb.ec ], [ undef, %bb.du ] ; 13 uses
  %.sroa.9.1168.i.i.i.i = phi ptr [ %.sroa.9.1169.i.i.i.i.a, %bb.ec ], [ undef, %bb.du ] ; 13 uses
  %.sroa.10.1158.i.i.i.i = phi i64 [ %.sroa.10.1159.i.i.i.i.a, %bb.ec ], [ undef, %bb.du ] ; 13 uses
  %.sroa.11.1148.i.i.i.i = phi ptr [ %.sroa.11.1149.i.i.i.i.a, %bb.ec ], [ undef, %bb.du ] ; 13 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %.sroa.10.0.copyload.i.i.i.i.i, %bb.ec ], [ undef, %bb.du ] ; 7 uses
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %.sroa.9.0.copyload.i.i.i.i.i, %bb.ec ], [ undef, %bb.du ] ; 7 uses
  %.sroa.8.0.i.i.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i.i, %bb.ec ], [ undef, %bb.du ] ; 7 uses
  %.sroa.0.0.i46.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.ec ], [ undef, %bb.du ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2149
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.el unwind label %bb.ej, !noalias !2150

bb.el:                                            ; preds = %bb.ek
  %i.vd = load i64, ptr %i.t, align 8, !range !94, !noalias !2149, !noundef !54
  %i.ve = icmp eq i64 %i.vd, -2
  br i1 %i.ve, label %.thread.i109.i.i.i, label %bb.em

.thread.i109.i.i.i:                               ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2149
  store i8 3, ptr %i.va, align 1, !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.sroa.0.i)
  br label %bb.hc

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2149
  %.val40.i.i.i.i.i = load ptr, ptr %i.vc, align 16, !noalias !2149 ; 5 uses
  %i.vf = getelementptr i8, ptr %1, i64 872
  %.val41.i.i.i.i.i = load ptr, ptr %i.vf, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54 ; 5 uses
  %i.vg = load ptr, ptr %.val41.i.i.i.i.i, align 8, !invariant.load !54, !noalias !2150 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i.i.i.i) ]
  invoke void %i.vg(ptr noundef nonnull %.val40.i.i.i.i.i)
          to label %bb.eo unwind label %bb.eq, !noalias !2150

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.vh = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !range !58, !invariant.load !54, !noalias !2150 ; 2 uses
  %i.vj = icmp eq i64 %i.vi, 0
  br i1 %i.vj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.vk = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i, i64 16
  %i.vl = load i64, ptr %i.vk, align 8, !range !64, !invariant.load !54, !noalias !2150
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.vi, i64 noundef range(i64 1, 536870913) %i.vl) #34, !noalias !2150
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i

bb.eq:                                            ; preds = %bb.en
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !range !58, !invariant.load !54, !noalias !2150 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %.body46.i.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vq = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i, i64 16
  %i.vr = load i64, ptr %i.vq, align 8, !range !64, !invariant.load !54, !noalias !2150
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.vo, i64 noundef range(i64 1, 536870913) %i.vr) #34, !noalias !2150
  br label %.body46.i.i.i.i.i

bb.es:                                            ; preds = %bb.fp, %.thread.i.i108.i.i.i
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i: ; preds = %bb.ep, %bb.eo
  %i.vt = load i64, ptr %i.y, align 8, !range !67, !noalias !2149, !noundef !54 ; 3 uses
  switch i64 %i.vt, label %.noexc.i.i104.i.i.i [
    i64 -1, label %.thread.i.i108.i.i.i
    i64 -9223372036854775797, label %bb.fp
  ]

.thread94.i.i.i.i.i:                              ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i, %bb.ff, %bb.fa, %bb.ez
  %.sroa.078.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !2149 ; 2 uses
  %.sroa.579.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.579.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.579.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.680.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.i.i.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.680.0..sroa_idx.i.i.i.i.i, i64 15, i1 false), !noalias !2149
  %.sroa.6.i.i.i.i.sroa.6.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.i.i.i.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.i.sroa.6.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.6.i.i.i.i.sroa.7.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.i.i.i.i.sroa.7.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.i.sroa.7.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.6.i.i.i.i.sroa.8.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.vu = load <2 x i64>, ptr %.sroa.6.i.i.i.i.sroa.8.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.6.i.i.i.i.sroa.10.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.6.i.i.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.i.sroa.10.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.6.i.i.i.i.sroa.11.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.6.i.i.i.i.sroa.11.0.copyload.i = load i32, ptr %.sroa.6.i.i.i.i.sroa.11.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 8, !noalias !2149 ; 2 uses
  %.sroa.6.i.i.i.i.sroa.12.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %.sroa.6.i.i.i.i.sroa.12.0.copyload.i = load i32, ptr %.sroa.6.i.i.i.i.sroa.12.0..sroa.680.0..sroa_idx.i.i.i.i.sroa_idx.i, align 4, !noalias !2149 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2149
  %.pr98.i.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !2149
  %.not2699.i.i.i.i.i = icmp eq i64 %.pr98.i.i.i.i.i, -1
  br i1 %.not2699.i.i.i.i.i, label %.thread.i.i108.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i

.noexc.i.i104.i.i.i:                              ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  %3 = icmp ne i64 %i.vt, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false), !noalias !2149
  %i.vv = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2149
  %i.vw = and i64 %i.vv, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.vw, 4
  br i1 %switch.i.i.i.i.i, label %bb.ez, label %bb.et

bb.et:                                            ; preds = %.noexc.i.i104.i.i.i
  %i.vx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !2149 ; 2 uses
  %i.vy = icmp ult i8 %i.vx, 3
  br i1 %i.vy, label %bb.ev, label %bb.eu, !prof !90

bb.eu:                                            ; preds = %bb.et
  %i.vz = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.ev unwind label %bb.ew, !noalias !2150

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.sroa.0.0.i48.i.i.i.i.i = phi i8 [ %i.vx, %bb.et ], [ %i.vz, %bb.eu ] ; 2 uses
  %i.wa = icmp eq i8 %.sroa.0.0.i48.i.i.i.i.i, 0
  br i1 %i.wa, label %bb.ez, label %bb.ex

bb.ew:                                            ; preds = %bb.ex, %bb.eu
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.ex:                                            ; preds = %bb.ev
  %i.wc = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54
  %i.wd = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wc, i8 noundef %.sroa.0.0.i48.i.i.i.i.i)
          to label %bb.ey unwind label %bb.ew, !noalias !2150

bb.ey:                                            ; preds = %bb.ex
  br i1 %i.wd, label %bb.fk, label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ev, %.noexc.i.i104.i.i.i
  %i.we = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2149
  %.not113.i.i.i.i.i = icmp eq i8 %i.we, 0
  br i1 %.not113.i.i.i.i.i, label %bb.fa, label %.thread94.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.wf = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2149 ; 2 uses
  %i.wg = icmp ult i64 %i.wf, 6
  call void @llvm.assume(i1 %i.wg)
  %i.wh = icmp samesign ugt i64 %i.wf, 1
  br i1 %i.wh, label %bb.fb, label %.thread94.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.wi = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2149
  %i.wj = getelementptr i8, ptr %i.wi, i64 32
  %.val38.i.i.i.i.i = load ptr, ptr %i.wj, align 8, !noalias !2150, !nonnull !54, !noundef !54
  %i.wk = getelementptr i8, ptr %i.wi, i64 40
  %.val39.i.i.i.i.i = load i64, ptr %i.wk, align 8, !noalias !2150, !noundef !54
  store i64 2, ptr %i.m, align 8, !alias.scope !2155, !noalias !2149
  %.sroa.674.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.val38.i.i.i.i.i, ptr %.sroa.674.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2155, !noalias !2149
  %.sroa.875.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val39.i.i.i.i.i, ptr %.sroa.875.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2155, !noalias !2149
  %i.wl = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.fc unwind label %bb.fd, !noalias !2150 ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.wm = extractvalue { ptr, ptr } %i.wl, 0      ; 2 uses
  %i.wn = extractvalue { ptr, ptr } %i.wl, 1      ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !invariant.load !54, !noalias !2150, !nonnull !54
  %i.wq = invoke noundef zeroext i1 %i.wp(ptr noundef %i.wm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.fe unwind label %bb.fd, !noalias !2150

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fe:                                            ; preds = %bb.fc
  br i1 %i.wq, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fi, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2149
  br label %.thread94.i.i.i.i.i

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2149
  %i.ws = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2149
  store ptr @99, ptr %i.j, align 8, !noalias !2149
  %i.wu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.wu, align 8, !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2149
  store ptr %i.s, ptr %i.i, align 8, !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2149
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.wv, ptr %i.h, align 8, !noalias !2149
  store ptr %i.j, ptr %i.k, align 8, !noalias !2149
  %i.ww = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @15, ptr %i.ww, align 8, !noalias !2149
  %i.wx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.wx, align 8, !noalias !2149
  %i.wy = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @100, ptr %i.wy, align 8, !noalias !2149
  %i.wz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.h, ptr %i.wz, align 8, !noalias !2149
  %i.xa = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @101, ptr %i.xa, align 8, !noalias !2149
  store i64 1, ptr %i.l, align 8, !alias.scope !2156, !noalias !2149
  %.sroa.4.0..sroa_idx.i50.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i50.i.i.i.i.i, align 8, !alias.scope !2156, !noalias !2149
  %.sroa.5.0..sroa_idx.i51.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i51.i.i.i.i.i, align 8, !alias.scope !2156, !noalias !2149
  %i.xb = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.wt, ptr %i.xb, align 8, !alias.scope !2156, !noalias !2149
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wi, ptr noundef nonnull %i.wm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.fi unwind label %bb.fh, !noalias !2150

bb.fh:                                            ; preds = %bb.fg
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2149
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2149
  br label %bb.ff

bb.fj:                                            ; preds = %bb.fh, %bb.fd
  %.pn12.pn.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.xc, %bb.fh ], [ %i.wr, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2149
  br label %bb.fs

bb.fk:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2149
  %i.xd = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !2149, !nonnull !54, !align !63, !noundef !54 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2149
  store ptr @99, ptr %i.p, align 8, !noalias !2149
  %i.xf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.xf, align 8, !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2149
  store ptr %i.s, ptr %i.o, align 8, !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2149
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.xg, ptr %i.n, align 8, !noalias !2149
  store ptr %i.p, ptr %i.q, align 8, !noalias !2149
  %i.xh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @15, ptr %i.xh, align 8, !noalias !2149
  %i.xi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.xi, align 8, !noalias !2149
  %i.xj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @100, ptr %i.xj, align 8, !noalias !2149
  %i.xk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.n, ptr %i.xk, align 8, !noalias !2149
  %i.xl = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @101, ptr %i.xl, align 8, !noalias !2149
  store i64 1, ptr %i.r, align 8, !noalias !2149
  %.sroa.867.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.867.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2149
  %.sroa.968.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 3, ptr %.sroa.968.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2149
  %.sroa.1069.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.xe, ptr %.sroa.1069.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2149
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc68.i.i.i.i unwind label %bb.fo, !noalias !2148

.noexc68.i.i.i.i:                                 ; preds = %bb.fk
  %i.xm = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2157
  %i.xn = icmp eq i8 %i.xm, 0
  br i1 %i.xn, label %bb.fl, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i

bb.fl:                                            ; preds = %.noexc68.i.i.i.i
  %i.xo = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2157 ; 2 uses
  %i.xp = icmp ult i64 %i.xo, 6
  call void @llvm.assume(i1 %i.xp), !noalias !2158
  %i.xq = icmp samesign ugt i64 %i.xo, 1
  br i1 %i.xq, label %bb.fm, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.xr = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !2157, !nonnull !54, !align !63, !noundef !54 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2157
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  %i.xt = load ptr, ptr %i.xs, align 8, !noalias !2150, !nonnull !54, !noundef !54
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  %i.xv = load i64, ptr %i.xu, align 8, !noalias !2150, !noundef !54
  store i64 2, ptr %i.e, align 8, !noalias !2157
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.xt, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2157
  %.sroa.5.0..sroa_idx.i67.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.xv, ptr %.sroa.5.0..sroa_idx.i67.i.i.i.i, align 8, !noalias !2157
  %i.xw = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc69.i.i.i.i unwind label %bb.fo, !noalias !2148 ; 2 uses

.noexc69.i.i.i.i:                                 ; preds = %bb.fm
  %i.xx = extractvalue { ptr, ptr } %i.xw, 0      ; 2 uses
  %i.xy = extractvalue { ptr, ptr } %i.xw, 1      ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !invariant.load !54, !noalias !2150, !nonnull !54
  %i.yb = invoke noundef zeroext i1 %i.ya(ptr noundef %i.xx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %.noexc70.i.i.i.i unwind label %bb.fo, !noalias !2148, !inline_history !2053

.noexc70.i.i.i.i:                                 ; preds = %.noexc69.i.i.i.i
  br i1 %i.yb, label %bb.fn, label %.noexc71.i.i.i.i

bb.fn:                                            ; preds = %.noexc70.i.i.i.i
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xr, ptr noundef nonnull %i.xx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc71.i.i.i.i unwind label %bb.fo, !noalias !2148

.noexc71.i.i.i.i:                                 ; preds = %bb.fn, %.noexc70.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2157
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i

bb.fo:                                            ; preds = %bb.fn, %.noexc69.i.i.i.i, %bb.fm, %bb.fk
  %i.yc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2149
  br label %bb.fs

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i: ; preds = %.noexc71.i.i.i.i, %bb.fl, %.noexc68.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2149
  br label %.thread94.i.i.i.i.i

.thread.i.i108.i.i.i:                             ; preds = %.thread94.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  %.sroa.6.i.i.i.i.sroa.6.2.i = phi i64 [ %.sroa.6.i.i.i.i.sroa.6.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.6.i.i.i.i.sroa.7.2.i = phi ptr [ %.sroa.6.i.i.i.i.sroa.7.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.6.i.i.i.i.sroa.10.2.i = phi i64 [ %.sroa.6.i.i.i.i.sroa.10.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.6.i.i.i.i.sroa.11.2.i = phi i32 [ %.sroa.6.i.i.i.i.sroa.11.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.6.i.i.i.i.sroa.12.2.i = phi i32 [ %.sroa.6.i.i.i.i.sroa.12.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.03.088.i.i.i.i.i = phi i64 [ %.sroa.078.0.copyload.i.i.i.i.i, %.thread94.i.i.i.i.i ], [ %i.vt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %.sroa.4.086.i.i.i.i.i = phi i8 [ %.sroa.579.0.copyload.i.i.i.i.i, %.thread94.i.i.i.i.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %i.yd = phi <2 x i64> [ %i.vu, %.thread94.i.i.i.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  %i.ye = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.ye)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i unwind label %bb.es, !noalias !2150

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i: ; preds = %bb.fp, %.thread.i.i108.i.i.i, %.thread94.i.i.i.i.i
  %.sroa.6.i.i.i.i.sroa.6.1.i = phi i64 [ %.sroa.6.i.i.i.i.sroa.6.2.i, %.thread.i.i108.i.i.i ], [ %.sroa.6.i.i.i.i.sroa.6.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %.sroa.6.i.i.i.i.sroa.7.1.i = phi ptr [ %.sroa.6.i.i.i.i.sroa.7.2.i, %.thread.i.i108.i.i.i ], [ %.sroa.6.i.i.i.i.sroa.7.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %.sroa.6.i.i.i.i.sroa.10.1.i = phi i64 [ %.sroa.6.i.i.i.i.sroa.10.2.i, %.thread.i.i108.i.i.i ], [ %.sroa.6.i.i.i.i.sroa.10.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %.sroa.6.i.i.i.i.sroa.11.1.i = phi i32 [ %.sroa.6.i.i.i.i.sroa.11.2.i, %.thread.i.i108.i.i.i ], [ %.sroa.6.i.i.i.i.sroa.11.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %.sroa.6.i.i.i.i.sroa.12.1.i = phi i32 [ %.sroa.6.i.i.i.i.sroa.12.2.i, %.thread.i.i108.i.i.i ], [ %.sroa.6.i.i.i.i.sroa.12.0.copyload.i, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %.sroa.03.087.i.i.i.i.i = phi i64 [ %.sroa.03.088.i.i.i.i.i, %.thread.i.i108.i.i.i ], [ %.sroa.078.0.copyload.i.i.i.i.i, %.thread94.i.i.i.i.i ], [ -1, %bb.fp ] ; 4 uses
  %.sroa.4.085.i.i.i.i.i = phi i8 [ %.sroa.4.086.i.i.i.i.i, %.thread.i.i108.i.i.i ], [ %.sroa.579.0.copyload.i.i.i.i.i, %.thread94.i.i.i.i.i ], [ 1, %bb.fp ] ; 4 uses
  %i.yf = phi <2 x i64> [ %i.yd, %.thread.i.i108.i.i.i ], [ %i.vu, %.thread94.i.i.i.i.i ], [ undef, %bb.fp ]
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.yg)
          to label %bb.fv unwind label %bb.fq, !noalias !2150

bb.fp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i unwind label %bb.es, !noalias !2150

bb.fq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.fr:                                            ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2149
  %i.yi = load i64, ptr %i.y, align 8, !range !67, !noalias !2149, !noundef !54
  %.not25.i.i.i.i.i = icmp eq i64 %i.yi, -1
  br i1 %.not25.i.i.i.i.i, label %bb.ft, label %.body46.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fo, %bb.fj, %bb.ew
  %.pn23.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.yc, %bb.fo ], [ %i.wb, %bb.ew ], [ %.pn12.pn.pn.pn.pn.i.i.i.i.i, %bb.fj ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s) #33
          to label %bb.fr unwind label %bb.ed, !noalias !2150

bb.ft:                                            ; preds = %bb.fr
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.y) #33
          to label %.body46.i.i.i.i.i unwind label %bb.ed, !noalias !2150

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i: ; preds = %bb.fu, %bb.eg
  store i8 0, ptr %i.up, align 8, !noalias !2149
  store i8 2, ptr %i.un, align 1, !noalias !2149
  br label %.body.i102.i.i.i

bb.fu:                                            ; preds = %bb.eg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i.i.i.i.i) ]
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i, i64 32
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !2159, !nonnull !54, !noundef !54
  invoke void %i.yk(ptr noundef %.sroa.10.2.i.i.i.i.i, ptr noundef %.sroa.8.2.i.i.i.i.i, i64 noundef %.sroa.9.2.i.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i unwind label %bb.ed, !noalias !2150, !inline_history !1

bb.fv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2149
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 904
  store i8 0, ptr %i.yl, align 8, !noalias !2149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.999.i.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.i.i.i.i.sroa.0.i, i64 15, i1 false), !noalias !2160
  store i8 1, ptr %i.va, align 1, !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.sroa.0.i)
  %i.ym = icmp eq i64 %.sroa.03.087.i.i.i.i.i, -2
  br i1 %i.ym, label %bb.hc, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6103.i.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.999.i.i.i.sroa.0.i, i64 15, i1 false), !noalias !2147
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999.i.i.i.sroa.0.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.vb)
          to label %bb.fx unwind label %bb.ge, !noalias !2148

bb.fx:                                            ; preds = %bb.fw
  %.not.i50.i.i.i.i = icmp eq i64 %.sroa.03.087.i.i.i.i.i, -1 ; 2 uses
  br i1 %.not.i50.i.i.i.i, label %bb.fy, label %bb.gx

bb.fy:                                            ; preds = %bb.fx
  store i8 %.sroa.4.085.i.i.i.i.i, ptr %i.ao, align 1, !noalias !2147
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.yo = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.yn)
          to label %.noexc.i106.i.i.i unwind label %bb.ge, !noalias !2148 ; 2 uses

.noexc.i106.i.i.i:                                ; preds = %bb.fy
  %i.yp = extractvalue { i64, i32 } %i.yo, 0      ; 2 uses
  %i.yq = extractvalue { i64, i32 } %i.yo, 1      ; 2 uses
  %i.yr = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2147
  %.off.i.i.i.i = add i64 %i.yr, -2
  %switch.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 4
  br i1 %switch.i.i.i.i, label %.thread135.i.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %.noexc.i106.i.i.i
  %i.ys = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8, !noalias !2147 ; 2 uses
  %i.yt = icmp ult i8 %i.ys, 3
  br i1 %i.yt, label %bb.gb, label %bb.ga, !prof !90

bb.ga:                                            ; preds = %bb.fz
  %i.yu = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.gb unwind label %bb.ge, !noalias !2148

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.sroa.0.0.i51.i.i.i.i = phi i8 [ %i.ys, %bb.fz ], [ %i.yu, %bb.ga ] ; 2 uses
  %i.yv = icmp eq i8 %.sroa.0.0.i51.i.i.i.i, 0
  br i1 %i.yv, label %.thread135.i.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yw = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !2147, !nonnull !54, !align !63, !noundef !54
  %i.yx = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.yw, i8 noundef %.sroa.0.0.i51.i.i.i.i)
          to label %bb.gd unwind label %bb.ge, !noalias !2148

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.yx, label %bb.gs, label %.thread135.i.i.i.i

bb.ge:                                            ; preds = %bb.gc, %bb.ga, %bb.fy, %bb.fw
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

.thread135.i.i.i.i:                               ; preds = %bb.gd, %bb.gb, %.noexc.i106.i.i.i
  %i.yz = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2147
  %.not.i107.i.i.i = icmp eq i8 %i.yz, 0
  br i1 %.not.i107.i.i.i, label %bb.gf, label %bb.gp

bb.gf:                                            ; preds = %.thread135.i.i.i.i
  %i.za = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2147 ; 2 uses
  %i.zb = icmp ult i64 %i.za, 6
  call void @llvm.assume(i1 %i.zb)
  %i.zc = icmp samesign ugt i64 %i.za, 3
  br i1 %i.zc, label %bb.gg, label %bb.gp

bb.gg:                                            ; preds = %bb.gf
  %i.zd = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !2147, !nonnull !54, !align !63, !noundef !54 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2147
  %i.ze = getelementptr i8, ptr %i.zd, i64 32
  %.val36.i.i.i.i = load ptr, ptr %i.ze, align 8, !noalias !2148, !nonnull !54, !noundef !54
  %i.zf = getelementptr i8, ptr %i.zd, i64 40
  %.val37.i.i.i.i = load i64, ptr %i.zf, align 8, !noalias !2148, !noundef !54
  store i64 4, ptr %i.ag, align 8, !alias.scope !2161, !noalias !2147
  %.sroa.6122.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.val36.i.i.i.i, ptr %.sroa.6122.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2161, !noalias !2147
  %.sroa.8123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.val37.i.i.i.i, ptr %.sroa.8123.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2161, !noalias !2147
  %i.zg = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.gh unwind label %bb.gi, !noalias !2148 ; 2 uses

bb.gh:                                            ; preds = %bb.gg
  %i.zh = extractvalue { ptr, ptr } %i.zg, 0      ; 2 uses
  %i.zi = extractvalue { ptr, ptr } %i.zg, 1      ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 24
  %i.zk = load ptr, ptr %i.zj, align 8, !invariant.load !54, !noalias !2148, !nonnull !54
  %i.zl = invoke noundef zeroext i1 %i.zk(ptr noundef %i.zh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.gj unwind label %bb.gi, !noalias !2148

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gj:                                            ; preds = %bb.gh
  br i1 %i.zl, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gn, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2147
  br label %bb.gp

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2147
  %i.zn = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !noalias !2147, !nonnull !54, !align !63, !noundef !54
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2147
  store ptr @89, ptr %i.ad, align 8, !noalias !2147
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.zp, align 8, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2147
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.val41.i.i.i.i = load i64, ptr %i.zq, align 8, !noalias !2147, !noundef !54
  store i64 %.val41.i.i.i.i, ptr %i.ac, align 8, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2147
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %i.zr, ptr %i.ab, align 8, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2147
  %i.zs = zext i64 %i.yp to i128
  %i.zt = mul nuw nsw i128 %i.zs, 1000
  %i.zu = udiv i32 %i.yq, 1000000
  %i.zv = zext nneg i32 %i.zu to i128
  %i.zw = add nuw nsw i128 %i.zt, %i.zv
  store i128 %i.zw, ptr %i.aa, align 16, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2147
  store ptr %i.ao, ptr %i.z, align 8, !noalias !2147
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !2147
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @15, ptr %i.zx, align 8, !noalias !2147
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ac, ptr %i.zy, align 8, !noalias !2147
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @90, ptr %i.zz, align 8, !noalias !2147
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ab, ptr %i.aaa, align 8, !noalias !2147
  %i.aab = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr @91, ptr %i.aab, align 8, !noalias !2147
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.aa, ptr %i.aac, align 8, !noalias !2147
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr @92, ptr %i.aad, align 8, !noalias !2147
  %i.aae = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.z, ptr %i.aae, align 8, !noalias !2147
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr @93, ptr %i.aaf, align 8, !noalias !2147
  store i64 1, ptr %i.af, align 8, !alias.scope !2162, !noalias !2147
  %.sroa.4.0..sroa_idx.i53.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i53.i.i.i.i, align 8, !alias.scope !2162, !noalias !2147
  %.sroa.5.0..sroa_idx.i54.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx.i54.i.i.i.i, align 8, !alias.scope !2162, !noalias !2147
  %i.aag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.zo, ptr %i.aag, align 8, !alias.scope !2162, !noalias !2147
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zd, ptr noundef nonnull %i.zh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.gn unwind label %bb.gm, !noalias !2148

bb.gm:                                            ; preds = %bb.gl
  %i.aah = landingpad { ptr, i32 }
          cleanup
end_hunk_0
