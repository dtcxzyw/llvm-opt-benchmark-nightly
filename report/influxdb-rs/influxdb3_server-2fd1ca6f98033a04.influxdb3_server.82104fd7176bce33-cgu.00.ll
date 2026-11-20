Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.00?download=true
inline.NumInlined: 8786
inline.NumDeleted: 2783
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0CsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.cf = extractvalue { i64, i64 } %i.cb, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !6891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !6891
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) @364, i64 32, i1 false), !noalias !6891
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ce, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !6893, !noalias !6891
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cf, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !6893, !noalias !6891
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.ci, align 8, !alias.scope !6893, !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6894
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !6891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !6891
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !noalias !6891
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr null, ptr %i.cl, align 8, !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6891
  %i.cm = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noundef nonnull %i.by, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.r)
          to label %bb.r unwind label %bb.q, !noalias !6892 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6891
  br label %.body46.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6891
  %i.co = extractvalue { ptr, ptr } %i.cm, 0
  %i.cp = extractvalue { ptr, ptr } %i.cm, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.co, ptr %i.cq, align 8, !noalias !6891
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cp, ptr %i.cr, align 8, !noalias !6891
  br label %bb.z

.body46.i:                                        ; preds = %bb.bi, %bb.bg, %bb.ah, %bb.ag, %bb.af, %bb.y, %bb.q
  %i.cs = phi ptr [ %i.bm, %bb.q ], [ %i.df, %bb.bi ], [ %i.df, %bb.bg ], [ %i.df, %bb.y ], [ %i.df, %bb.af ], [ %i.df, %bb.ag ], [ %i.df, %bb.ah ]
  %i.ct = phi ptr [ %i.bn, %bb.q ], [ %i.dg, %bb.bi ], [ %i.dg, %bb.bg ], [ %i.dg, %bb.y ], [ %i.dg, %bb.af ], [ %i.dg, %bb.ag ], [ %i.dg, %bb.ah ]
  %.sroa.0.1185 = phi ptr [ %.sroa.0.1179.a, %bb.q ], [ %.sroa.0.1178, %bb.bi ], [ %.sroa.0.1178, %bb.bg ], [ %.sroa.0.1178, %bb.y ], [ %.sroa.0.1178, %bb.af ], [ %.sroa.0.1178, %bb.ag ], [ %.sroa.0.1178, %bb.ah ]
  %.sroa.9.1175 = phi ptr [ %.sroa.9.1169.a, %bb.q ], [ %.sroa.9.1168, %bb.bi ], [ %.sroa.9.1168, %bb.bg ], [ %.sroa.9.1168, %bb.y ], [ %.sroa.9.1168, %bb.af ], [ %.sroa.9.1168, %bb.ag ], [ %.sroa.9.1168, %bb.ah ]
  %.sroa.10.1165 = phi i64 [ %.sroa.10.1159.a, %bb.q ], [ %.sroa.10.1158, %bb.bi ], [ %.sroa.10.1158, %bb.bg ], [ %.sroa.10.1158, %bb.y ], [ %.sroa.10.1158, %bb.af ], [ %.sroa.10.1158, %bb.ag ], [ %.sroa.10.1158, %bb.ah ]
  %.sroa.11.1155 = phi ptr [ %.sroa.11.1149.a, %bb.q ], [ %.sroa.11.1148, %bb.bi ], [ %.sroa.11.1148, %bb.bg ], [ %.sroa.11.1148, %bb.y ], [ %.sroa.11.1148, %bb.af ], [ %.sroa.11.1148, %bb.ag ], [ %.sroa.11.1148, %bb.ah ]
  %.sroa.10.1.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.q ], [ %.sroa.10.0.i, %bb.bi ], [ %.sroa.10.0.i, %bb.bg ], [ %.sroa.10.0.i, %bb.y ], [ %.sroa.10.0.i, %bb.af ], [ %.sroa.10.0.i, %bb.ag ], [ %.sroa.10.0.i, %bb.ah ]
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.q ], [ %.sroa.9.0.i, %bb.bi ], [ %.sroa.9.0.i, %bb.bg ], [ %.sroa.9.0.i, %bb.y ], [ %.sroa.9.0.i, %bb.af ], [ %.sroa.9.0.i, %bb.ag ], [ %.sroa.9.0.i, %bb.ah ]
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sroa.8.0.i, %bb.bi ], [ %.sroa.8.0.i, %bb.bg ], [ %.sroa.8.0.i, %bb.y ], [ %.sroa.8.0.i, %bb.af ], [ %.sroa.8.0.i, %bb.ag ], [ %.sroa.8.0.i, %bb.ah ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.q ], [ %.sroa.0.0.i46, %bb.bi ], [ %.sroa.0.0.i46, %bb.bg ], [ %.sroa.0.0.i46, %bb.y ], [ %.sroa.0.0.i46, %bb.af ], [ %.sroa.0.0.i46, %bb.ag ], [ %.sroa.0.0.i46, %bb.ah ]
  %.pn27.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %.pn23.ph.i, %bb.bi ], [ %.pn23.ph.i, %bb.bg ], [ %i.dd, %bb.y ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ], [ %i.dx, %bb.ah ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.cu) #26
          to label %bb.v unwind label %bb.s, !noalias !6892

bb.s:                                             ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.y, %bb.u, %.body46.i, %.body.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !6892
  unreachable

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6891
  %i.cw = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !6896
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.s, !noalias !6892

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6891
  br label %bb.v

bb.v:                                             ; preds = %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i, %.body46.i, %bb.l
  %i.cy = phi ptr [ %i.df, %bb.bf ], [ %i.cs, %.body46.i ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.bm, %bb.l ]
  %i.cz = phi ptr [ %i.dg, %bb.bf ], [ %i.ct, %.body46.i ], [ %i.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.bn, %bb.l ]
  %.sroa.0.1184 = phi ptr [ %.sroa.0.1178, %bb.bf ], [ %.sroa.0.1185, %.body46.i ], [ %.sroa.0.1179.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.0.1179.a, %bb.l ]
  %.sroa.9.1174 = phi ptr [ %.sroa.9.1168, %bb.bf ], [ %.sroa.9.1175, %.body46.i ], [ %.sroa.9.1169.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.9.1169.a, %bb.l ]
  %.sroa.10.1164 = phi i64 [ %.sroa.10.1158, %bb.bf ], [ %.sroa.10.1165, %.body46.i ], [ %.sroa.10.1159.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.10.1159.a, %bb.l ]
  %.sroa.11.1154 = phi ptr [ %.sroa.11.1148, %bb.bf ], [ %.sroa.11.1155, %.body46.i ], [ %.sroa.11.1149.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.11.1149.a, %bb.l ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.i, %bb.bf ], [ %.sroa.10.1.i, %.body46.i ], [ %.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.10.0.copyload.i, %bb.l ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %bb.bf ], [ %.sroa.9.1.i, %.body46.i ], [ %.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.9.0.copyload.i, %bb.l ]
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0.i, %bb.bf ], [ %.sroa.8.1.i, %.body46.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.8.0.copyload.i, %bb.l ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i46, %bb.bf ], [ %.sroa.0.1.i, %.body46.i ], [ %.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.0.0.copyload.i, %bb.l ] ; 2 uses
  %.pn29.i = phi { ptr, i32 } [ %i.gj, %bb.bf ], [ %.pn27.i, %.body46.i ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6891
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !range !35, !noalias !6891, !noundef !16
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.bj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.w:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #29
          to label %.noexc48 unwind label %bb.h

.noexc48:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #29
          to label %.noexc49 unwind label %bb.h

.noexc49:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6891
  %.val35.i = load ptr, ptr %i.dh, align 8, !noalias !6891
  %i.de = getelementptr i8, ptr %1, i64 216
  %.val36.i = load ptr, ptr %i.de, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server(ptr %.val35.i, ptr nonnull %.val36.i) #26
          to label %.body46.i unwind label %bb.s, !noalias !6892

bb.z:                                             ; preds = %bb.r, %bb.j
  %i.df = phi ptr [ %i.bm, %bb.r ], [ %i.bl, %bb.j ] ; 9 uses
  %i.dg = phi ptr [ %i.bn, %bb.r ], [ %i.bk, %bb.j ] ; 8 uses
  %.sroa.0.1178 = phi ptr [ %.sroa.0.1179.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.9.1168 = phi ptr [ %.sroa.9.1169.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.10.1158 = phi i64 [ %.sroa.10.1159.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.11.1148 = phi ptr [ %.sroa.11.1149.a, %bb.r ], [ undef, %bb.j ] ; 13 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  %.sroa.0.0.i46 = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6891
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.y, !noalias !6892

bb.aa:                                            ; preds = %bb.z
  %i.di = load i64, ptr %i.p, align 8, !range !73, !noalias !6891, !noundef !16
  %i.dj = icmp eq i64 %i.di, -2
  br i1 %i.dj, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6891
  store i8 3, ptr %i.df, align 1, !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6891
  %.val.i = load ptr, ptr %i.dh, align 8, !noalias !6891 ; 5 uses
  %i.dk = getelementptr i8, ptr %1, i64 216
  %.val34.i = load ptr, ptr %i.dk, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16 ; 5 uses
  %i.dl = load ptr, ptr %.val34.i, align 8, !invariant.load !16, !noalias !6892 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.dl(ptr noundef nonnull %.val.i)
          to label %bb.ad unwind label %bb.af, !noalias !6892

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !18, !invariant.load !16, !noalias !6892 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !19, !invariant.load !16, !noalias !6892
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #28, !noalias !6892
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.af:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !18, !invariant.load !16, !noalias !6892 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.body46.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !19, !invariant.load !16, !noalias !6892
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dt, i64 noundef range(i64 1, 536870913) %i.dw) #28, !noalias !6892
  br label %.body46.i

bb.ah:                                            ; preds = %bb.be, %.thread.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.ae, %bb.ad
  %i.dy = load i64, ptr %i.u, align 8, !range !29, !noalias !6891, !noundef !16 ; 3 uses
  switch i64 %i.dy, label %.noexc.i [
    i64 -1, label %.thread.i
    i64 -9223372036854775797, label %bb.be
  ]

.thread94.i:                                      ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsbakdBCgU4AF_16influxdb3_server.exit, %bb.au, %bb.ap, %bb.ao
  %.sroa.078.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !6891 ; 2 uses
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.579.0.copyload.i = load i8, ptr %.sroa.579.0..sroa_idx.i, align 8, !noalias !6891 ; 2 uses
  %.sroa.680.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.680.0..sroa_idx.i, i64 63, i1 false), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6891
  %.pr98.i = load i64, ptr %i.u, align 8, !noalias !6891
  %.not2699.i = icmp eq i64 %.pr98.i, -1
  br i1 %.not2699.i, label %.thread.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i

.noexc.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %3 = icmp ne i64 %i.dy, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !6891
  %i.dz = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !6891
  %i.ea = and i64 %i.dz, -2
  %switch.i = icmp eq i64 %i.ea, 4
  br i1 %switch.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i
  %i.eb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !6891 ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 3
  br i1 %i.ec, label %bb.ak, label %bb.aj, !prof !74

bb.aj:                                            ; preds = %bb.ai
  %i.ed = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.ak unwind label %bb.al, !noalias !6892

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i48.i = phi i8 [ %i.eb, %bb.ai ], [ %i.ed, %bb.aj ] ; 2 uses
  %i.ee = icmp eq i8 %.sroa.0.0.i48.i, 0
  br i1 %i.ee, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.am:                                            ; preds = %bb.ak
  %i.eg = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16
  %i.eh = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eg, i8 noundef %.sroa.0.0.i48.i)
          to label %bb.an unwind label %bb.al, !noalias !6892

bb.an:                                            ; preds = %bb.am
  br i1 %i.eh, label %bb.az, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak, %.noexc.i
  %i.ei = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !6891
  %.not113.i = icmp eq i8 %i.ei, 0
  br i1 %.not113.i, label %bb.ap, label %.thread94.i

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !6891 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 6
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i64 %i.ej, 1
  br i1 %i.el, label %bb.aq, label %.thread94.i

bb.aq:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6891
  %i.en = getelementptr i8, ptr %i.em, i64 32
  %.val42.i = load ptr, ptr %i.en, align 8, !noalias !6892, !nonnull !16, !noundef !16
  %i.eo = getelementptr i8, ptr %i.em, i64 40
  %.val43.i = load i64, ptr %i.eo, align 8, !noalias !6892, !noundef !16
  store i64 2, ptr %i.i, align 8, !alias.scope !6897, !noalias !6891
  %.sroa.674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val42.i, ptr %.sroa.674.0..sroa_idx.i, align 8, !alias.scope !6897, !noalias !6891
  %.sroa.875.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val43.i, ptr %.sroa.875.0..sroa_idx.i, align 8, !alias.scope !6897, !noalias !6891
  %i.ep = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ar unwind label %bb.as, !noalias !6892 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !invariant.load !16, !noalias !6892, !nonnull !16
  %i.eu = invoke noundef zeroext i1 %i.et(ptr noundef %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.at unwind label %bb.as, !noalias !6892

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  br i1 %i.eu, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6891
  br label %.thread94.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6891
  %i.ew = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6891
  store ptr @126, ptr %i.f, align 8, !noalias !6891
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ey, align 8, !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6891
  store ptr %i.o, ptr %i.e, align 8, !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6891
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.ez, ptr %i.d, align 8, !noalias !6891
  store ptr %i.f, ptr %i.g, align 8, !noalias !6891
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @13, ptr %i.fa, align 8, !noalias !6891
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.fb, align 8, !noalias !6891
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @127, ptr %i.fc, align 8, !noalias !6891
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.d, ptr %i.fd, align 8, !noalias !6891
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @128, ptr %i.fe, align 8, !noalias !6891
  store i64 1, ptr %i.h, align 8, !alias.scope !6898, !noalias !6891
  %.sroa.4.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i50.i, align 8, !alias.scope !6898, !noalias !6891
  %.sroa.5.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i51.i, align 8, !alias.scope !6898, !noalias !6891
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ex, ptr %i.ff, align 8, !alias.scope !6898, !noalias !6891
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.em, ptr noundef nonnull %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.er, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.ax unwind label %bb.aw, !noalias !6892

bb.aw:                                            ; preds = %bb.av
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6891
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6891
  br label %bb.au

bb.ay:                                            ; preds = %bb.aw, %bb.as
  %.pn12.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fg, %bb.aw ], [ %i.ev, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6891
  br label %bb.bh

bb.az:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6891
  %i.fh = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !6891, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6891
  store ptr @126, ptr %i.l, align 8, !noalias !6891
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.fj, align 8, !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6891
  store ptr %i.o, ptr %i.k, align 8, !noalias !6891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6891
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.fk, ptr %i.j, align 8, !noalias !6891
  store ptr %i.l, ptr %i.m, align 8, !noalias !6891
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @13, ptr %i.fl, align 8, !noalias !6891
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.fm, align 8, !noalias !6891
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @127, ptr %i.fn, align 8, !noalias !6891
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.j, ptr %i.fo, align 8, !noalias !6891
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @128, ptr %i.fp, align 8, !noalias !6891
  store i64 1, ptr %i.n, align 8, !noalias !6891
  %.sroa.867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.867.0..sroa_idx.i, align 8, !noalias !6891
  %.sroa.968.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.968.0..sroa_idx.i, align 8, !noalias !6891
  %.sroa.1069.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fi, ptr %.sroa.1069.0..sroa_idx.i, align 8, !noalias !6891
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc68 unwind label %bb.bd

.noexc68:                                         ; preds = %bb.az
  %i.fq = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !6899
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.ba, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsbakdBCgU4AF_16influxdb3_server.exit

bb.ba:                                            ; preds = %.noexc68
  %i.fs = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !6899 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, 6
  call void @llvm.assume(i1 %i.ft), !noalias !6892
  %i.fu = icmp samesign ugt i64 %i.fs, 1
  br i1 %i.fu, label %bb.bb, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsbakdBCgU4AF_16influxdb3_server.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !6899, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6899
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !6892, !nonnull !16, !noundef !16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !6892, !noundef !16
  store i64 2, ptr %i.a, align 8, !noalias !6899
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fx, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !6899
  %.sroa.5.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fz, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !6899
  %i.ga = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc69 unwind label %bb.bd  ; 2 uses

.noexc69:                                         ; preds = %bb.bb
  %i.gb = extractvalue { ptr, ptr } %i.ga, 0      ; 2 uses
  %i.gc = extractvalue { ptr, ptr } %i.ga, 1      ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !invariant.load !16, !noalias !6892, !nonnull !16
  %i.gf = invoke noundef zeroext i1 %i.ge(ptr noundef %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc70 unwind label %bb.bd, !inline_history !6876

.noexc70:                                         ; preds = %.noexc69
  br i1 %i.gf, label %bb.bc, label %.noexc71

bb.bc:                                            ; preds = %.noexc70
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fv, ptr noundef nonnull %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc71 unwind label %bb.bd

.noexc71:                                         ; preds = %bb.bc, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6899
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsbakdBCgU4AF_16influxdb3_server.exit

bb.bd:                                            ; preds = %bb.bc, %.noexc69, %bb.bb, %bb.az
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6891
  br label %bb.bh

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.noexc71, %bb.ba, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6891
  br label %.thread94.i

.thread.i:                                        ; preds = %.thread94.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.03.088.i = phi i64 [ %.sroa.078.0.copyload.i, %.thread94.i ], [ %i.dy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.4.086.i = phi i8 [ %.sroa.579.0.copyload.i, %.thread94.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.gh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.ah, !noalias !6892

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.be, %.thread.i, %.thread94.i
  %.sroa.03.087.i = phi i64 [ %.sroa.078.0.copyload.i, %.thread94.i ], [ -1, %bb.be ], [ %.sroa.03.088.i, %.thread.i ] ; 3 uses
  %.sroa.4.085.i = phi i8 [ %.sroa.579.0.copyload.i, %.thread94.i ], [ 1, %bb.be ], [ %.sroa.4.086.i, %.thread.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.gi)
          to label %bb.bk unwind label %bb.bf, !noalias !6892

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsbakdBCgU4AF_16influxdb3_server.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.ah, !noalias !6892

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.bg:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6891
  %i.gk = load i64, ptr %i.u, align 8, !range !29, !noalias !6891, !noundef !16
  %.not25.i = icmp eq i64 %i.gk, -1
  br i1 %.not25.i, label %bb.bi, label %.body46.i

bb.bh:                                            ; preds = %bb.bd, %bb.ay, %bb.al
  %.pn23.ph.i = phi { ptr, i32 } [ %i.gg, %bb.bd ], [ %i.ef, %bb.al ], [ %.pn12.pn.pn.pn.pn.i, %bb.ay ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(72) %i.o) #26
          to label %bb.bg unwind label %bb.s, !noalias !6892

bb.bi:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(72) %i.u) #26
          to label %.body46.i unwind label %bb.s, !noalias !6892

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.bj, %bb.v
  store i8 0, ptr %i.da, align 8, !noalias !6891
  store i8 2, ptr %i.cy, align 1, !noalias !6891
  br label %.body

bb.bj:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i) ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !6900, !nonnull !16, !noundef !16
  invoke void %i.gm(ptr noundef %.sroa.10.2.i, ptr noundef %.sroa.8.2.i, i64 noundef %.sroa.9.2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.s, !noalias !6892, !inline_history !2

bb.bk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6891
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.gn, align 8, !noalias !6891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, i64 63, i1 false), !noalias !6901
  store i8 1, ptr %i.df, align 1, !noalias !6891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.go = icmp eq i64 %.sroa.03.087.i, -2
  br i1 %i.go, label %bb.bl, label %bb.bm

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECsbakdBCgU4AF_16influxdb3_server.exit65, %bb.bl
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECsbakdBCgU4AF_16influxdb3_server.exit65 ], [ 3, %bb.bl ]
  store i8 %storemerge, ptr %i.al, align 1
  ret void

bb.bl:                                            ; preds = %.thread, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6103, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.999, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.dg)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %.not.i50 = icmp eq i64 %.sroa.03.087.i, -1
  br i1 %.not.i50, label %bb.bo, label %bb.cn

bb.bo:                                            ; preds = %bb.bn
  store i8 %.sroa.4.085.i, ptr %i.ak, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gp)
          to label %.noexc unwind label %bb.bu    ; 2 uses

.noexc:                                           ; preds = %bb.bo
  %i.gr = extractvalue { i64, i32 } %i.gq, 0      ; 2 uses
  %i.gs = extractvalue { i64, i32 } %i.gq, 1      ; 2 uses
  %i.gt = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.gt, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread135, label %bb.bp

bb.bp:                                            ; preds = %.noexc
  %i.gu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.gv = icmp ult i8 %i.gu, 3
  br i1 %i.gv, label %bb.br, label %bb.bq, !prof !74

bb.bq:                                            ; preds = %bb.bp
  %i.gw = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.i51 = phi i8 [ %i.gu, %bb.bp ], [ %i.gw, %bb.bq ] ; 2 uses
  %i.gx = icmp eq i8 %.sroa.0.0.i51, 0
  br i1 %i.gx, label %.thread135, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gy = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !16, !align !21, !noundef !16
  %i.gz = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gy, i8 noundef %.sroa.0.0.i51)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.gz, label %bb.ci, label %.thread135

bb.bu:                                            ; preds = %bb.bm, %bb.bs, %bb.bq, %bb.bo
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.thread135:                                       ; preds = %.noexc, %bb.br, %bb.bt
  %i.hb = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.hb, 0
  br i1 %.not, label %bb.bv, label %bb.cf

bb.bv:                                            ; preds = %.thread135
  %i.hc = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hd = icmp ult i64 %i.hc, 6
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i64 %i.hc, 3
  br i1 %i.he, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.hf = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hg = getelementptr i8, ptr %i.hf, i64 32
  %.val36 = load ptr, ptr %i.hg, align 8, !nonnull !16, !noundef !16
  %i.hh = getelementptr i8, ptr %i.hf, i64 40
  %.val37 = load i64, ptr %i.hh, align 8, !noundef !16
  store i64 4, ptr %i.ac, align 8, !alias.scope !6902
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val36, ptr %.sroa.6122.0..sroa_idx, align 8, !alias.scope !6902
  %.sroa.8123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val37, ptr %.sroa.8123.0..sroa_idx, align 8, !alias.scope !6902
  %i.hi = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bx unwind label %bb.by     ; 2 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !16, !nonnull !16
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.hn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hp = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !16, !align !21, !noundef !16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @116, ptr %i.z, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.hr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val39 = load i64, ptr %i.hs, align 8, !noundef !16
  store i64 %.val39, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.ht, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hu = zext i64 %i.gr to i128
  %i.hv = mul nuw nsw i128 %i.hu, 1000
  %i.hw = udiv i32 %i.gs, 1000000
  %i.hx = zext nneg i32 %i.hw to i128
  %i.hy = add nuw nsw i128 %i.hv, %i.hx
  store i128 %i.hy, ptr %i.w, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ak, ptr %i.v, align 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @13, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @22, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.x, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @117, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.w, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @118, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.v, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @119, ptr %i.ih, align 8
  store i64 1, ptr %i.ab, align 8, !alias.scope !6903
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_0
