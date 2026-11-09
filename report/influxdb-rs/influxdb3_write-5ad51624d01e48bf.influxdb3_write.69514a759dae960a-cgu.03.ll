Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.03?download=true
inline.NumInlined: 4370
inline.NumDeleted: 1541
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0Cs92BnbMq7p8c_15influxdb3_write:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) @324, i64 32, i1 false), !noalias !5311
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ce, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !5314, !noalias !5311
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cf, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !5314, !noalias !5311
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.ci, align 8, !alias.scope !5314, !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5315
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !5311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !5311
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !noalias !5311
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr null, ptr %i.cl, align 8, !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5311
  %i.cm = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noundef nonnull %i.by, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.r)
          to label %bb.r unwind label %bb.q, !noalias !5313 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5311
  br label %.body47.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5311
  %i.co = extractvalue { ptr, ptr } %i.cm, 0      ; 2 uses
  %i.cp = extractvalue { ptr, ptr } %i.cm, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.co, ptr %i.cq, align 8, !noalias !5311
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cp, ptr %i.cr, align 8, !noalias !5311
  br label %bb.z

.body47.i:                                        ; preds = %bb.bh, %bb.bf, %bb.ag, %bb.af, %bb.ae, %bb.y, %bb.q
  %i.cs = phi ptr [ %i.bm, %bb.q ], [ %i.de, %bb.bh ], [ %i.de, %bb.bf ], [ %i.de, %bb.y ], [ %i.de, %bb.ae ], [ %i.de, %bb.af ], [ %i.de, %bb.ag ]
  %i.ct = phi ptr [ %i.bn, %bb.q ], [ %i.df, %bb.bh ], [ %i.df, %bb.bf ], [ %i.df, %bb.y ], [ %i.df, %bb.ae ], [ %i.df, %bb.af ], [ %i.df, %bb.ag ]
  %.sroa.0.1185 = phi ptr [ %.sroa.0.1179.a, %bb.q ], [ %.sroa.0.1178, %bb.bh ], [ %.sroa.0.1178, %bb.bf ], [ %.sroa.0.1178, %bb.y ], [ %.sroa.0.1178, %bb.ae ], [ %.sroa.0.1178, %bb.af ], [ %.sroa.0.1178, %bb.ag ]
  %.sroa.9.1175 = phi ptr [ %.sroa.9.1169.a, %bb.q ], [ %.sroa.9.1168, %bb.bh ], [ %.sroa.9.1168, %bb.bf ], [ %.sroa.9.1168, %bb.y ], [ %.sroa.9.1168, %bb.ae ], [ %.sroa.9.1168, %bb.af ], [ %.sroa.9.1168, %bb.ag ]
  %.sroa.10.1165 = phi i64 [ %.sroa.10.1159.a, %bb.q ], [ %.sroa.10.1158, %bb.bh ], [ %.sroa.10.1158, %bb.bf ], [ %.sroa.10.1158, %bb.y ], [ %.sroa.10.1158, %bb.ae ], [ %.sroa.10.1158, %bb.af ], [ %.sroa.10.1158, %bb.ag ]
  %.sroa.11.1155 = phi ptr [ %.sroa.11.1149.a, %bb.q ], [ %.sroa.11.1148, %bb.bh ], [ %.sroa.11.1148, %bb.bf ], [ %.sroa.11.1148, %bb.y ], [ %.sroa.11.1148, %bb.ae ], [ %.sroa.11.1148, %bb.af ], [ %.sroa.11.1148, %bb.ag ]
  %.sroa.10.1.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.q ], [ %.sroa.10.0.i, %bb.bh ], [ %.sroa.10.0.i, %bb.bf ], [ %.sroa.10.0.i, %bb.y ], [ %.sroa.10.0.i, %bb.ae ], [ %.sroa.10.0.i, %bb.af ], [ %.sroa.10.0.i, %bb.ag ]
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.q ], [ %.sroa.9.0.i, %bb.bh ], [ %.sroa.9.0.i, %bb.bf ], [ %.sroa.9.0.i, %bb.y ], [ %.sroa.9.0.i, %bb.ae ], [ %.sroa.9.0.i, %bb.af ], [ %.sroa.9.0.i, %bb.ag ]
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sroa.8.0.i, %bb.bh ], [ %.sroa.8.0.i, %bb.bf ], [ %.sroa.8.0.i, %bb.y ], [ %.sroa.8.0.i, %bb.ae ], [ %.sroa.8.0.i, %bb.af ], [ %.sroa.8.0.i, %bb.ag ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.q ], [ %.sroa.0.0.i46, %bb.bh ], [ %.sroa.0.0.i46, %bb.bf ], [ %.sroa.0.0.i46, %bb.y ], [ %.sroa.0.0.i46, %bb.ae ], [ %.sroa.0.0.i46, %bb.af ], [ %.sroa.0.0.i46, %bb.ag ]
  %.pn27.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %.pn23.ph.i, %bb.bh ], [ %.pn23.ph.i, %bb.bf ], [ %i.dd, %bb.y ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.af ], [ %i.dy, %bb.ag ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.cu) #31
          to label %bb.v unwind label %bb.s, !noalias !5313

bb.s:                                             ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.y, %bb.u, %.body47.i, %.body.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !5313
  unreachable

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5311
  %i.cw = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !5317
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.s, !noalias !5313

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5311
  br label %bb.v

bb.v:                                             ; preds = %bb.be, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i, %.body47.i, %bb.l
  %i.cy = phi ptr [ %i.de, %bb.be ], [ %i.cs, %.body47.i ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bm, %bb.l ]
  %i.cz = phi ptr [ %i.df, %bb.be ], [ %i.ct, %.body47.i ], [ %i.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bn, %bb.l ]
  %.sroa.0.1184 = phi ptr [ %.sroa.0.1178, %bb.be ], [ %.sroa.0.1185, %.body47.i ], [ %.sroa.0.1179.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0.1179.a, %bb.l ]
  %.sroa.9.1174 = phi ptr [ %.sroa.9.1168, %bb.be ], [ %.sroa.9.1175, %.body47.i ], [ %.sroa.9.1169.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.9.1169.a, %bb.l ]
  %.sroa.10.1164 = phi i64 [ %.sroa.10.1158, %bb.be ], [ %.sroa.10.1165, %.body47.i ], [ %.sroa.10.1159.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.10.1159.a, %bb.l ]
  %.sroa.11.1154 = phi ptr [ %.sroa.11.1148, %bb.be ], [ %.sroa.11.1155, %.body47.i ], [ %.sroa.11.1149.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.11.1149.a, %bb.l ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.i, %bb.be ], [ %.sroa.10.1.i, %.body47.i ], [ %.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.10.0.copyload.i, %bb.l ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %bb.be ], [ %.sroa.9.1.i, %.body47.i ], [ %.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.9.0.copyload.i, %bb.l ]
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0.i, %bb.be ], [ %.sroa.8.1.i, %.body47.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.8.0.copyload.i, %bb.l ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i46, %bb.be ], [ %.sroa.0.1.i, %.body47.i ], [ %.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0.0.copyload.i, %bb.l ] ; 2 uses
  %.pn29.i = phi { ptr, i32 } [ %i.gk, %bb.be ], [ %.pn27.i, %.body47.i ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5311
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !range !12, !noalias !5311, !noundef !10
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.w:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28
          to label %.noexc48 unwind label %bb.h

.noexc48:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #28
          to label %.noexc49 unwind label %bb.h

.noexc49:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5311
  %.val35.i = load ptr, ptr %i.dg, align 8, !noalias !5311
  %.val36.i = load ptr, ptr %i.dh, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val35.i, ptr nonnull %.val36.i) #31
          to label %.body47.i unwind label %bb.s, !noalias !5313

bb.z:                                             ; preds = %bb.r, %bb.j
  %i.de = phi ptr [ %i.bm, %bb.r ], [ %i.bl, %bb.j ] ; 9 uses
  %i.df = phi ptr [ %i.bn, %bb.r ], [ %i.bk, %bb.j ] ; 8 uses
  %.sroa.0.1178 = phi ptr [ %.sroa.0.1179.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.9.1168 = phi ptr [ %.sroa.9.1169.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.10.1158 = phi i64 [ %.sroa.10.1159.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.11.1148 = phi ptr [ %.sroa.11.1149.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.val1.i.i = phi ptr [ %i.cp, %bb.r ], [ %.val1.i.pre.i, %bb.j ]
  %.val.i.i = phi ptr [ %i.co, %bb.r ], [ %.val.i.pre.i, %bb.j ]
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.0.0.i46 = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5311
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5312)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !invariant.load !10, !noalias !5318, !nonnull !10
  invoke void %i.dj(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.y, !noalias !5313, !inline_history !51

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.z
  %i.dk = load i64, ptr %i.p, align 8, !range !52, !noalias !5311, !noundef !10
  %i.dl = icmp eq i64 %i.dk, -2
  br i1 %i.dl, label %.thread, label %bb.aa

.thread:                                          ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5311
  store i8 3, ptr %i.de, align 1, !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bk

bb.aa:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5311
  %.val.i = load ptr, ptr %i.dg, align 8, !noalias !5311 ; 5 uses
  %.val34.i = load ptr, ptr %i.dh, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10 ; 5 uses
  %i.dm = load ptr, ptr %.val34.i, align 8, !invariant.load !10, !noalias !5313 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.dm(ptr noundef nonnull %.val.i)
          to label %bb.ac unwind label %bb.ae, !noalias !5313

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !13, !invariant.load !10, !noalias !5313 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !14, !invariant.load !10, !noalias !5313
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.do, i64 noundef range(i64 1, 536870913) %i.dr) #29, !noalias !5313
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !13, !invariant.load !10, !noalias !5313 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.body47.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !14, !invariant.load !10, !noalias !5313
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #29, !noalias !5313
  br label %.body47.i

bb.ag:                                            ; preds = %bb.bd, %.thread.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ad, %bb.ac
  %i.dz = load i64, ptr %i.u, align 8, !range !22, !noalias !5311, !noundef !10 ; 3 uses
  %.not.i47 = icmp eq i64 %i.dz, -1
  br i1 %.not.i47, label %.thread.i, label %3

3:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %4 = icmp ne i64 %i.dz, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.dz, -9223372036854775797
  br i1 %5, label %bb.bd, label %.noexc.i

.thread95.i:                                      ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit, %bb.at, %bb.ao, %bb.an
  %.sroa.079.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !5311 ; 2 uses
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.580.0.copyload.i = load i8, ptr %.sroa.580.0..sroa_idx.i, align 8, !noalias !5311 ; 2 uses
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.681.0..sroa_idx.i, i64 63, i1 false), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5311
  %.pr99.i = load i64, ptr %i.u, align 8, !noalias !5311
  %.not26100.i = icmp eq i64 %.pr99.i, -1
  br i1 %.not26100.i, label %.thread.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i

.noexc.i:                                         ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !5311
  %i.ea = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !5311
  %i.eb = and i64 %i.ea, -2
  %switch.i = icmp eq i64 %i.eb, 4
  br i1 %switch.i, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %.noexc.i
  %i.ec = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !5311 ; 2 uses
  %i.ed = icmp ult i8 %i.ec, 3
  br i1 %i.ed, label %bb.aj, label %bb.ai, !prof !49

bb.ai:                                            ; preds = %bb.ah
  %i.ee = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.aj unwind label %bb.ak, !noalias !5313

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i49.i = phi i8 [ %i.ec, %bb.ah ], [ %i.ee, %bb.ai ] ; 2 uses
  %i.ef = icmp eq i8 %.sroa.0.0.i49.i, 0
  br i1 %i.ef, label %bb.an, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.al:                                            ; preds = %bb.aj
  %i.eh = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10
  %i.ei = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eh, i8 noundef %.sroa.0.0.i49.i)
          to label %bb.am unwind label %bb.ak, !noalias !5313

bb.am:                                            ; preds = %bb.al
  br i1 %i.ei, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %.noexc.i
  %i.ej = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5311
  %.not114.i = icmp eq i8 %i.ej, 0
  br i1 %.not114.i, label %bb.ao, label %.thread95.i

bb.ao:                                            ; preds = %bb.an
  %i.ek = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5311 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 6
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ugt i64 %i.ek, 1
  br i1 %i.em, label %bb.ap, label %.thread95.i

bb.ap:                                            ; preds = %bb.ao
  %i.en = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5311
  %i.eo = getelementptr i8, ptr %i.en, i64 32
  %.val42.i = load ptr, ptr %i.eo, align 8, !noalias !5313, !nonnull !10, !noundef !10
  %i.ep = getelementptr i8, ptr %i.en, i64 40
  %.val43.i = load i64, ptr %i.ep, align 8, !noalias !5313, !noundef !10
  store i64 2, ptr %i.i, align 8, !alias.scope !5319, !noalias !5311
  %.sroa.675.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val42.i, ptr %.sroa.675.0..sroa_idx.i, align 8, !alias.scope !5319, !noalias !5311
  %.sroa.876.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val43.i, ptr %.sroa.876.0..sroa_idx.i, align 8, !alias.scope !5319, !noalias !5311
  %i.eq = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.aq unwind label %bb.ar, !noalias !5313 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.er = extractvalue { ptr, ptr } %i.eq, 0      ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.eq, 1      ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !invariant.load !10, !noalias !5313, !nonnull !10
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.as unwind label %bb.ar, !noalias !5313

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ev, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5311
  br label %.thread95.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5311
  %i.ex = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5311
  store ptr @110, ptr %i.f, align 8, !noalias !5311
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ez, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5311
  store ptr %i.o, ptr %i.e, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5311
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.fa, ptr %i.d, align 8, !noalias !5311
  store ptr %i.f, ptr %i.g, align 8, !noalias !5311
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @24, ptr %i.fb, align 8, !noalias !5311
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.fc, align 8, !noalias !5311
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @111, ptr %i.fd, align 8, !noalias !5311
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.d, ptr %i.fe, align 8, !noalias !5311
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @112, ptr %i.ff, align 8, !noalias !5311
  store i64 1, ptr %i.h, align 8, !alias.scope !5320, !noalias !5311
  %.sroa.4.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i51.i, align 8, !alias.scope !5320, !noalias !5311
  %.sroa.5.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i52.i, align 8, !alias.scope !5320, !noalias !5311
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ey, ptr %i.fg, align 8, !alias.scope !5320, !noalias !5311
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.en, ptr noundef nonnull %i.er, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.es, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.aw unwind label %bb.av, !noalias !5313

bb.av:                                            ; preds = %bb.au
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5311
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5311
  br label %bb.at

bb.ax:                                            ; preds = %bb.av, %bb.ar
  %.pn12.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fh, %bb.av ], [ %i.ew, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5311
  br label %bb.bg

bb.ay:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5311
  %i.fi = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5311, !nonnull !10, !align !19, !noundef !10 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5311
  store ptr @110, ptr %i.l, align 8, !noalias !5311
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.fk, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5311
  store ptr %i.o, ptr %i.k, align 8, !noalias !5311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5311
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.fl, ptr %i.j, align 8, !noalias !5311
  store ptr %i.l, ptr %i.m, align 8, !noalias !5311
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @24, ptr %i.fm, align 8, !noalias !5311
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.fn, align 8, !noalias !5311
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @111, ptr %i.fo, align 8, !noalias !5311
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.j, ptr %i.fp, align 8, !noalias !5311
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @112, ptr %i.fq, align 8, !noalias !5311
  store i64 1, ptr %i.n, align 8, !noalias !5311
  %.sroa.868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.868.0..sroa_idx.i, align 8, !noalias !5311
  %.sroa.969.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.969.0..sroa_idx.i, align 8, !noalias !5311
  %.sroa.1070.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fj, ptr %.sroa.1070.0..sroa_idx.i, align 8, !noalias !5311
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc68 unwind label %bb.bc

.noexc68:                                         ; preds = %bb.ay
  %i.fr = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !5321
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.az, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.az:                                            ; preds = %.noexc68
  %i.ft = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !5321 ; 2 uses
  %i.fu = icmp ult i64 %i.ft, 6
  call void @llvm.assume(i1 %i.fu), !noalias !5313
  %i.fv = icmp samesign ugt i64 %i.ft, 1
  br i1 %i.fv, label %bb.ba, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.ba:                                            ; preds = %bb.az
  %i.fw = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !5321, !nonnull !10, !align !19, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5321
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !5313, !nonnull !10, !noundef !10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !5313, !noundef !10
  store i64 2, ptr %i.a, align 8, !noalias !5321
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fy, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5321
  %.sroa.5.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ga, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !5321
  %i.gb = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc69 unwind label %bb.bc  ; 2 uses

.noexc69:                                         ; preds = %bb.ba
  %i.gc = extractvalue { ptr, ptr } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.gb, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !invariant.load !10, !noalias !5313, !nonnull !10
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc70 unwind label %bb.bc, !inline_history !5296

.noexc70:                                         ; preds = %.noexc69
  br i1 %i.gg, label %bb.bb, label %.noexc71

bb.bb:                                            ; preds = %.noexc70
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fw, ptr noundef nonnull %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.bb, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5321
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit

bb.bc:                                            ; preds = %bb.bb, %.noexc69, %bb.ba, %bb.ay
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5311
  br label %bb.bg

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00Cs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.noexc71, %bb.az, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5311
  br label %.thread95.i

.thread.i:                                        ; preds = %.thread95.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.sroa.03.089.i = phi i64 [ %.sroa.079.0.copyload.i, %.thread95.i ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.4.087.i = phi i8 [ %.sroa.580.0.copyload.i, %.thread95.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.gi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ag, !noalias !5313

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.bd, %.thread.i, %.thread95.i
  %.sroa.03.088.i = phi i64 [ %.sroa.03.089.i, %.thread.i ], [ -1, %bb.bd ], [ %.sroa.079.0.copyload.i, %.thread95.i ] ; 3 uses
  %.sroa.4.086.i = phi i8 [ %.sroa.4.087.i, %.thread.i ], [ 1, %bb.bd ], [ %.sroa.580.0.copyload.i, %.thread95.i ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(48) %i.gj)
          to label %bb.bj unwind label %bb.be, !noalias !5313

bb.bd:                                            ; preds = %3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ag, !noalias !5313

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.bf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5311
  %i.gl = load i64, ptr %i.u, align 8, !range !22, !noalias !5311, !noundef !10
  %.not25.i = icmp eq i64 %i.gl, -1
  br i1 %.not25.i, label %bb.bh, label %.body47.i

bb.bg:                                            ; preds = %bb.bc, %bb.ax, %bb.ak
  %.pn23.ph.i = phi { ptr, i32 } [ %i.gh, %bb.bc ], [ %i.eg, %bb.ak ], [ %.pn12.pn.pn.pn.pn.i, %bb.ax ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.o) #31
          to label %bb.bf unwind label %bb.s, !noalias !5313

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %i.u) #31
          to label %.body47.i unwind label %bb.s, !noalias !5313

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.bi, %bb.v
  store i8 0, ptr %i.da, align 8, !noalias !5311
  store i8 2, ptr %i.cy, align 1, !noalias !5311
  br label %.body

bb.bi:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i) ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !5322, !nonnull !10, !noundef !10
  invoke void %i.gn(ptr noundef %.sroa.10.2.i, ptr noundef %.sroa.8.2.i, i64 noundef %.sroa.9.2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.s, !noalias !5313, !inline_history !3

bb.bj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5311
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.go, align 8, !noalias !5311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, i64 63, i1 false), !noalias !5323
  store i8 1, ptr %i.de, align 1, !noalias !5311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.gp = icmp eq i64 %.sroa.03.088.i, -2
  br i1 %i.gp, label %bb.bk, label %bb.bl

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECs92BnbMq7p8c_15influxdb3_write.exit65, %bb.bk
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECs92BnbMq7p8c_15influxdb3_write.exit65 ], [ 3, %bb.bk ]
  store i8 %storemerge, ptr %i.al, align 1
  ret void

bb.bk:                                            ; preds = %.thread, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6103, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.df)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %.not.i50 = icmp eq i64 %.sroa.03.088.i, -1
  br i1 %.not.i50, label %bb.bn, label %bb.cm

bb.bn:                                            ; preds = %bb.bm
  store i8 %.sroa.4.086.i, ptr %i.ak, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gq)
          to label %.noexc unwind label %bb.bt    ; 2 uses

.noexc:                                           ; preds = %bb.bn
  %i.gs = extractvalue { i64, i32 } %i.gr, 0      ; 2 uses
  %i.gt = extractvalue { i64, i32 } %i.gr, 1      ; 2 uses
  %i.gu = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.gu, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread135, label %bb.bo

bb.bo:                                            ; preds = %.noexc
  %i.gv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.gw = icmp ult i8 %i.gv, 3
  br i1 %i.gw, label %bb.bq, label %bb.bp, !prof !49

bb.bp:                                            ; preds = %bb.bo
  %i.gx = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.i51 = phi i8 [ %i.gv, %bb.bo ], [ %i.gx, %bb.bp ] ; 2 uses
  %i.gy = icmp eq i8 %.sroa.0.0.i51, 0
  br i1 %i.gy, label %.thread135, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gz = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !10, !align !19, !noundef !10
  %i.ha = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gz, i8 noundef %.sroa.0.0.i51)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ha, label %bb.ch, label %.thread135

bb.bt:                                            ; preds = %bb.bl, %bb.br, %bb.bp, %bb.bn
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.thread135:                                       ; preds = %.noexc, %bb.bq, %bb.bs
  %i.hc = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.hc, 0
  br i1 %.not, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %.thread135
  %i.hd = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.he = icmp ult i64 %i.hd, 6
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ugt i64 %i.hd, 3
  br i1 %i.hf, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  %i.hg = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !10, !align !19, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hh = getelementptr i8, ptr %i.hg, i64 32
  %.val36 = load ptr, ptr %i.hh, align 8, !nonnull !10, !noundef !10
  %i.hi = getelementptr i8, ptr %i.hg, i64 40
  %.val37 = load i64, ptr %i.hi, align 8, !noundef !10
  store i64 4, ptr %i.ac, align 8, !alias.scope !5324
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val36, ptr %.sroa.6122.0..sroa_idx, align 8, !alias.scope !5324
  %.sroa.8123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val37, ptr %.sroa.8123.0..sroa_idx, align 8, !alias.scope !5324
  %i.hj = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bw unwind label %bb.bx     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hk = extractvalue { ptr, ptr } %i.hj, 0      ; 2 uses
  %i.hl = extractvalue { ptr, ptr } %i.hj, 1      ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !invariant.load !10, !nonnull !10
  %i.ho = invoke noundef zeroext i1 %i.hn(ptr noundef %i.hk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.by:                                            ; preds = %bb.bw
  br i1 %i.ho, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hq = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !10, !align !19, !noundef !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @99, ptr %i.z, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val41 = load i64, ptr %i.ht, align 8, !noundef !10
  store i64 %.val41, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.hu, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hv = zext i64 %i.gs to i128
  %i.hw = mul nuw nsw i128 %i.hv, 1000
  %i.hx = udiv i32 %i.gt, 1000000
  %i.hy = zext nneg i32 %i.hx to i128
  %i.hz = add nuw nsw i128 %i.hw, %i.hy
  store i128 %i.hz, ptr %i.w, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ak, ptr %i.v, align 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @24, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @100, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.x, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @101, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.w, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @102, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.v, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @103, ptr %i.ii, align 8
  store i64 1, ptr %i.ab, align 8, !alias.scope !5325
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB1A_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00EENtB4_6Future4pollB1E_:bb.a
  %i.r = load i64, ptr %i.p, align 8, !range !11, !alias.scope !7108, !noalias !7103, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 4 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7109)
  call void @llvm.experimental.noalias.scope.decl(metadata !7110)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !7111, !noalias !7103, !nonnull !10, !noundef !10
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !7111
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7112)
  call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  %i.x = load ptr, ptr %i.s, align 8, !alias.scope !7114, !noalias !7103, !nonnull !10, !noundef !10
  %i.y = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !7114
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.ab) #31
          to label %.body.i unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseCDlJsl44RV_5tokio7runtime5TimerEECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body.i:                                          ; preds = %bb.ap, %bb.q, %bb.n, %bb.f
  %.pn6.i = phi { ptr, i32 } [ %i.ct, %bb.ap ], [ %i.o, %bb.f ], [ %i.ah, %bb.q ], [ %i.aa, %bb.n ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !22, !alias.scope !7115, !noalias !7103, !noundef !10
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.p

bb.p:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.an

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler6HandleECs92BnbMq7p8c_15influxdb3_write.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !22, !alias.scope !7116, !noalias !7103, !noundef !10
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio4time5sleep5SleepECs92BnbMq7p8c_15influxdb3_write.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24.i unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit32.i: ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit32.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body25.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit32.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ah

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit24.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val15.i = load ptr, ptr %i.ao, align 8, !noalias !7103, !nonnull !10, !noundef !10
  %i.ap = getelementptr i8, ptr %.val, i64 24
  %.val16.i = load ptr, ptr %i.ap, align 8, !noalias !7103, !nonnull !10, !align !19, !noundef !10 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !14, !invariant.load !10
  %i.as = add nsw i64 %i.ar, -1
  %i.at = and i64 %i.as, -16
  %i.au = getelementptr inbounds nuw i8, ptr %.val15.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.val16.i, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !10, !nonnull !10
  %i.az = invoke { ptr, ptr } %i.ay(ptr noundef nonnull %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.w unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.ag, %bb.u, %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.w:                                             ; preds = %bb.u
  %i.bb = extractvalue { ptr, ptr } %i.az, 0      ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.az, 1      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store ptr %i.bb, ptr %i.bd, align 8, !noalias !7103
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 152
  store ptr %i.bc, ptr %i.be, align 8, !noalias !7103
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7103
  %.val19.i = load ptr, ptr %i.bg, align 8, !noalias !7103
  %.val20.i = load ptr, ptr %i.bh, align 8, !noalias !7103, !nonnull !10, !align !19, !noundef !10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val19.i, ptr nonnull %.val20.i) #31
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.an

bb.y:                                             ; preds = %bb.w, %._crit_edge.i
  %.val1.i.i = phi ptr [ %.val1.i.pre.i, %._crit_edge.i ], [ %i.bc, %bb.w ]
  %.val.i.i = phi ptr [ %.val.i.pre.i, %._crit_edge.i ], [ %i.bb, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7103
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !10, !noalias !7117, !nonnull !10
  invoke void %i.bj(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.x, !inline_history !62

_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.y
  %i.bk = load i64, ptr %i.b, align 8, !range !52, !noalias !7103, !noundef !10
  %i.bl = icmp eq i64 %i.bk, -2
  br i1 %i.bl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7103
  br label %_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00Ba_.exit

bb.aa:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !7103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7103
  %.val17.i = load ptr, ptr %i.bg, align 8, !noalias !7103 ; 5 uses
  %.val18.i = load ptr, ptr %i.bh, align 8, !noalias !7103, !nonnull !10, !align !19, !noundef !10 ; 5 uses
  %i.bn = load ptr, ptr %.val18.i, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  invoke void %i.bn(ptr noundef nonnull %.val17.i)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !14, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !14, !invariant.load !10
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %i.bv, i64 noundef range(i64 1, 536870913) %i.by) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ad, %bb.ac
  %i.bz = load i64, ptr %i.bm, align 8, !range !22, !noalias !7103, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bz, -1
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit32.i, label %2

2:                                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %3 = icmp ne i64 %i.bz, -9223372036854775800
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.bz, -9223372036854775801
  br i1 %4, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit32.i unwind label %bb.v

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i, %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs92BnbMq7p8c_15influxdb3_write.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7118)
  call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  %i.cb = load ptr, ptr %.val, align 8, !alias.scope !7120, !noalias !7103, !nonnull !10, !noundef !10
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 release, align 8, !noalias !7120
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7121)
  call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !7123, !noalias !7103, !nonnull !10, !noundef !10
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !7123
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i: ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !7126, !noalias !7103, !nonnull !10, !noundef !10
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !7126
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.al, label %_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00Ba_.exit

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00Ba_.exit unwind label %bb.am

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.am, %bb.ak, %bb.aj
  %.pn12.i = phi { ptr, i32 } [ %i.cn, %bb.am ], [ %i.ce, %bb.aj ], [ %i.ce, %bb.ak ], [ %.pn10.i, %bb.ar ], [ %.pn10.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  store i8 2, ptr %i.c, align 8, !noalias !7103
  resume { ptr, i32 } %.pn12.i

bb.am:                                            ; preds = %bb.al
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.an:                                            ; preds = %bb.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.ak, %bb.x, %bb.p, %bb.f, %bb.c
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ao:                                            ; preds = %2
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !7103, !noundef !10
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !noalias !7103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7103
  %i.cs = mul i64 %i.cr, 10
  invoke void @_RNvNtNtCseCDlJsl44RV_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i64 noundef %i.cs, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7103
  br label %.body.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !7103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7103
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.af, %bb.ae, %bb.x, %bb.v, %bb.p, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body.i ], [ %i.bf, %bb.x ], [ %.pn6.i, %bb.p ], [ %i.ba, %bb.v ], [ %i.bt, %bb.af ], [ %i.bt, %bb.ae ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.cu) #31
          to label %.body25.i unwind label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.c, %.body25.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7127)
  call void @llvm.experimental.noalias.scope.decl(metadata !7128)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !7129, !noalias !7103, !nonnull !10, !noundef !10
  %i.cx = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !7129
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1LivM9IBWqb_12object_store11ObjectStoreEL_EECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.an

_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data00Ba_.exit: ; preds = %bb.h, %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i, %bb.al
  %.sink.i = phi i8 [ 1, %bb.al ], [ 3, %bb.z ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i ], [ 4, %bb.h ]
  %common.ret.op.i = phi i1 [ false, %bb.al ], [ true, %bb.z ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit34.i ], [ true, %bb.h ]
  store i8 %.sink.i, ptr %i.c, align 8, !noalias !7103
  ret i1 %common.ret.op.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB1A_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data0s_0EENtB4_6Future4pollB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 !guid !7130 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.a = tail call fastcc noundef zeroext i1 @_RNCNCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer16queryable_bufferNtB6_15QueryableBuffer48buffer_wal_contents_and_persist_snapshotted_data0s_0Ba_(ptr noundef nonnull align 8 %.val, ptr noalias noundef align 8 dereferenceable(32) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB1D_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0EENtB4_6Future4pollB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !7261 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.15.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %.sroa.4110.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.21.i.i = alloca [16 x i8], align 8       ; 7 uses
  %.sroa.15.i.i = alloca [16 x i8], align 8       ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [208 x i8], align 8               ; 13 uses
  %i.q = alloca [208 x i8], align 8               ; 16 uses
  %.sroa.4.sroa.3.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.6148.i.i = alloca [104 x i8], align 8    ; 6 uses
  %i.s = alloca [192 x i8], align 8               ; 16 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.12107.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.13108.i = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.17.i = alloca [16 x i8], align 8         ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 152 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12107.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13108.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !23, !noalias !7263, !noundef !10
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.ca, %bb.s, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 161
  store i8 1, ptr %i.al, align 1, !noalias !7263
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !noalias !7263, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 168
  store ptr %i.an, ptr %i.ao, align 8, !noalias !7263
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 248
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7263
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !7262
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !7262
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7263
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtCseCDlJsl44RV_5tokio4sync9semaphoreNtBG_9Semaphore13acquire_owned0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.aq) #31
          to label %.body31.i unwind label %bb.o, !noalias !7262

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7263
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 5 uses
  invoke fastcc void @_RNCNvMNtNtCseCDlJsl44RV_5tokio4sync9semaphoreNtB4_9Semaphore13acquire_owned0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai, ptr noundef nonnull align 8 %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.e, !noalias !7262

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.ai, align 8, !range !11, !noalias !7263, !noundef !10
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7263
  store i64 -2, ptr %0, align 8, !alias.scope !7262
  br label %_RNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB9_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0Bb_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !7263, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !noalias !7263
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store ptr %i.au, ptr %i.ax, align 8, !noalias !7263
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 152
  store i32 %i.aw, ptr %i.ay, align 8, !noalias !7263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7263
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtCseCDlJsl44RV_5tokio4sync9semaphoreNtBG_9Semaphore13acquire_owned0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.aq)
          to label %bb.j unwind label %bb.fe, !noalias !7262

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7263
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %.val.i = load ptr, ptr %i.az, align 8, !noalias !7263, !nonnull !10, !noundef !10 ; 5 uses
  %i.ba = getelementptr i8, ptr %.val, i64 136
  %.val20.i = load ptr, ptr %i.ba, align 8, !noalias !7263 ; 4 uses
  %i.bb = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !7262
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  store ptr %.val.i, ptr %i.ah, align 8, !noalias !7263
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.val20.i, ptr %i.bd, align 8, !noalias !7263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7263
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val)
          to label %.thread.i unwind label %bb.m, !noalias !7262

.thread.i:                                        ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !7263
end_hunk_1
