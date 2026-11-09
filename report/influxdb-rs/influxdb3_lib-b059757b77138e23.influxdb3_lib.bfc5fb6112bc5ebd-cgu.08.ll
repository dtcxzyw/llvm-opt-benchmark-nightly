Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.08?download=true
inline.NumInlined: 6681
inline.NumDeleted: 2341
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_18ObjectStoreCatalog11persist_log0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
bb.p:                                             ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtB5_4IntoNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadE4intoCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ce = extractvalue { i64, i64 } %i.cb, 0
  %i.cf = extractvalue { i64, i64 } %i.cb, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !10317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !10317
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) @661, i64 32, i1 false), !noalias !10317
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ce, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !10319, !noalias !10317
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cf, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !10319, !noalias !10317
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.ci, align 8, !alias.scope !10319, !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10320
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !10317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !10317
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !noalias !10317
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr null, ptr %i.cl, align 8, !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10317
  %i.cm = invoke { ptr, ptr } @_RNvXsc_Cs1LivM9IBWqb_12object_storeINtNtCscdodAO9FK5_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB15_8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, ptr noundef nonnull %i.by, i64 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.r)
          to label %bb.r unwind label %bb.q, !noalias !10318 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10317
  br label %.body46.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10317
  %i.co = extractvalue { ptr, ptr } %i.cm, 0
  %i.cp = extractvalue { ptr, ptr } %i.cm, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.co, ptr %i.cq, align 8, !noalias !10317
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cp, ptr %i.cr, align 8, !noalias !10317
  br label %bb.z

.body46.i:                                        ; preds = %bb.bh, %bb.bf, %bb.ag, %bb.af, %bb.y, %bb.q
  %i.cs = phi ptr [ %i.bm, %bb.q ], [ %i.df, %bb.bh ], [ %i.df, %bb.bf ], [ %i.df, %bb.y ], [ %i.df, %bb.af ], [ %i.df, %bb.ag ]
  %i.ct = phi ptr [ %i.bn, %bb.q ], [ %i.dg, %bb.bh ], [ %i.dg, %bb.bf ], [ %i.dg, %bb.y ], [ %i.dg, %bb.af ], [ %i.dg, %bb.ag ]
  %.sroa.0.1187 = phi ptr [ %.sroa.0.1181.a, %bb.q ], [ %.sroa.0.1180, %bb.bh ], [ %.sroa.0.1180, %bb.bf ], [ %.sroa.0.1180, %bb.y ], [ %.sroa.0.1180, %bb.af ], [ %.sroa.0.1180, %bb.ag ]
  %.sroa.9.1177 = phi ptr [ %.sroa.9.1171.a, %bb.q ], [ %.sroa.9.1170, %bb.bh ], [ %.sroa.9.1170, %bb.bf ], [ %.sroa.9.1170, %bb.y ], [ %.sroa.9.1170, %bb.af ], [ %.sroa.9.1170, %bb.ag ]
  %.sroa.10.1167 = phi i64 [ %.sroa.10.1161.a, %bb.q ], [ %.sroa.10.1160, %bb.bh ], [ %.sroa.10.1160, %bb.bf ], [ %.sroa.10.1160, %bb.y ], [ %.sroa.10.1160, %bb.af ], [ %.sroa.10.1160, %bb.ag ]
  %.sroa.11.1157 = phi ptr [ %.sroa.11.1151.a, %bb.q ], [ %.sroa.11.1150, %bb.bh ], [ %.sroa.11.1150, %bb.bf ], [ %.sroa.11.1150, %bb.y ], [ %.sroa.11.1150, %bb.af ], [ %.sroa.11.1150, %bb.ag ]
  %.sroa.10.1.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.q ], [ %.sroa.10.0.i, %bb.bh ], [ %.sroa.10.0.i, %bb.bf ], [ %.sroa.10.0.i, %bb.y ], [ %.sroa.10.0.i, %bb.af ], [ %.sroa.10.0.i, %bb.ag ]
  %.sroa.9.1.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.q ], [ %.sroa.9.0.i, %bb.bh ], [ %.sroa.9.0.i, %bb.bf ], [ %.sroa.9.0.i, %bb.y ], [ %.sroa.9.0.i, %bb.af ], [ %.sroa.9.0.i, %bb.ag ]
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.q ], [ %.sroa.8.0.i, %bb.bh ], [ %.sroa.8.0.i, %bb.bf ], [ %.sroa.8.0.i, %bb.y ], [ %.sroa.8.0.i, %bb.af ], [ %.sroa.8.0.i, %bb.ag ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.q ], [ %.sroa.0.0.i46, %bb.bh ], [ %.sroa.0.0.i46, %bb.bf ], [ %.sroa.0.0.i46, %bb.y ], [ %.sroa.0.0.i46, %bb.af ], [ %.sroa.0.0.i46, %bb.ag ]
  %.pn27.i = phi { ptr, i32 } [ %i.cn, %bb.q ], [ %.pn23.ph.i, %bb.bh ], [ %.pn23.ph.i, %bb.bf ], [ %i.dd, %bb.y ], [ %i.dv, %bb.af ], [ %i.dw, %bb.ag ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.cu) #44
          to label %bb.v unwind label %bb.s, !noalias !10318

bb.s:                                             ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.y, %bb.u, %.body46.i, %.body.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !10318
  unreachable

bb.t:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10317
  %i.cw = atomicrmw add ptr %i.by, i64 -1 release, align 8, !noalias !10322
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.s, !noalias !10318

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10317
  br label %bb.v

bb.v:                                             ; preds = %bb.be, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %.body46.i, %bb.l
  %i.cy = phi ptr [ %i.df, %bb.be ], [ %i.cs, %.body46.i ], [ %i.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.bm, %bb.l ]
  %i.cz = phi ptr [ %i.dg, %bb.be ], [ %i.ct, %.body46.i ], [ %i.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.bn, %bb.l ]
  %.sroa.0.1186 = phi ptr [ %.sroa.0.1180, %bb.be ], [ %.sroa.0.1187, %.body46.i ], [ %.sroa.0.1181.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.0.1181.a, %bb.l ]
  %.sroa.9.1176 = phi ptr [ %.sroa.9.1170, %bb.be ], [ %.sroa.9.1177, %.body46.i ], [ %.sroa.9.1171.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.9.1171.a, %bb.l ]
  %.sroa.10.1166 = phi i64 [ %.sroa.10.1160, %bb.be ], [ %.sroa.10.1167, %.body46.i ], [ %.sroa.10.1161.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.10.1161.a, %bb.l ]
  %.sroa.11.1156 = phi ptr [ %.sroa.11.1150, %bb.be ], [ %.sroa.11.1157, %.body46.i ], [ %.sroa.11.1151.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.11.1151.a, %bb.l ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.0.i, %bb.be ], [ %.sroa.10.1.i, %.body46.i ], [ %.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.10.0.copyload.i, %bb.l ]
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %bb.be ], [ %.sroa.9.1.i, %.body46.i ], [ %.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.9.0.copyload.i, %bb.l ]
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0.i, %bb.be ], [ %.sroa.8.1.i, %.body46.i ], [ %.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.8.0.copyload.i, %bb.l ]
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i46, %bb.be ], [ %.sroa.0.1.i, %.body46.i ], [ %.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.0.0.copyload.i, %bb.l ] ; 2 uses
  %.pn29.i = phi { ptr, i32 } [ %i.gi, %bb.be ], [ %.pn27.i, %.body46.i ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store7payload10PutPayloadECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10317
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !range !137, !noalias !10317, !noundef !123
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.w:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #43
          to label %.noexc48 unwind label %bb.h

.noexc48:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #43
          to label %.noexc49 unwind label %bb.h

.noexc49:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10317
  %.val35.i = load ptr, ptr %i.dh, align 8, !noalias !10317
  %i.de = getelementptr i8, ptr %1, i64 216
  %.val36.i = load ptr, ptr %i.de, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val35.i, ptr nonnull %.val36.i) #44
          to label %.body46.i unwind label %bb.s, !noalias !10318

bb.z:                                             ; preds = %bb.r, %bb.j
  %i.df = phi ptr [ %i.bm, %bb.r ], [ %i.bl, %bb.j ] ; 8 uses
  %i.dg = phi ptr [ %i.bn, %bb.r ], [ %i.bk, %bb.j ] ; 7 uses
  %.sroa.0.1180 = phi ptr [ %.sroa.0.1181.a, %bb.r ], [ undef, %bb.j ] ; 12 uses
  %.sroa.9.1170 = phi ptr [ %.sroa.9.1171.a, %bb.r ], [ undef, %bb.j ] ; 12 uses
  %.sroa.10.1160 = phi i64 [ %.sroa.10.1161.a, %bb.r ], [ undef, %bb.j ] ; 12 uses
  %.sroa.11.1150 = phi ptr [ %.sroa.11.1151.a, %bb.r ], [ undef, %bb.j ] ; 12 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 6 uses
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 6 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 6 uses
  %.sroa.0.0.i46 = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ undef, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10317
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.y, !noalias !10318

bb.aa:                                            ; preds = %bb.z
  %i.di = load i64, ptr %i.p, align 8, !range !192, !noalias !10317, !noundef !123
  %i.dj = icmp eq i64 %i.di, -2
  br i1 %i.dj, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10317
  store i8 3, ptr %i.df, align 1, !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bk

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10317
  %.val.i = load ptr, ptr %i.dh, align 8, !noalias !10317 ; 5 uses
  %i.dk = getelementptr i8, ptr %1, i64 216
  %.val34.i = load ptr, ptr %i.dk, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123 ; 4 uses
  %i.dl = load ptr, ptr %.val34.i, align 8, !invariant.load !123, !noalias !10318 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.dl(ptr noundef nonnull %.val.i)
          to label %bb.ad unwind label %bb.af, !noalias !10318

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.val34.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !140, !invariant.load !123, !noalias !10318 ; 3 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr inbounds nuw i8, ptr %.val34.i, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !141, !invariant.load !123, !noalias !10318 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.dr = icmp samesign ult i64 %i.dq, 17
  %i.ds = icmp samesign ule i64 %i.dq, %i.dn
  %or.cond.i.i.i.i.i.i.i = and i1 %i.dr, %i.ds
  %i.dt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 536870913) %i.dq, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 0, i32 %i.du
  call void @sdallocx(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dn, i32 noundef %.sroa.0.0.i.i.i.i.i.i.i) #46, !noalias !10318
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.af:                                            ; preds = %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs4NRVxsYgnAr_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB1X_5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i, ptr nonnull readonly %.val34.i) #44, !noalias !10318
  br label %.body46.i

bb.ag:                                            ; preds = %bb.bd, %.thread.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ae, %bb.ad
  %i.dx = load i64, ptr %i.u, align 8, !range !155, !noalias !10317, !noundef !123 ; 3 uses
  switch i64 %i.dx, label %.noexc.i [
    i64 -1, label %.thread.i
    i64 -9223372036854775797, label %bb.bd
  ]

.thread97.i:                                      ; preds = %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.at, %bb.ao, %bb.an
  %.sroa.081.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !10317 ; 2 uses
  %.sroa.582.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.582.0.copyload.i = load i8, ptr %.sroa.582.0..sroa_idx.i, align 8, !noalias !10317 ; 2 uses
  %.sroa.683.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.683.0..sroa_idx.i, i64 63, i1 false), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10317
  %.pr101.i = load i64, ptr %i.u, align 8, !noalias !10317
  %.not26102.i = icmp eq i64 %.pr101.i, -1
  br i1 %.not26102.i, label %.thread.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

.noexc.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %3 = icmp ne i64 %i.dx, -9223372036854775800
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !10317
  %i.dy = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !10317
  %i.dz = and i64 %i.dy, -2
  %switch.i = icmp eq i64 %i.dz, 4
  br i1 %switch.i, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %.noexc.i
  %i.ea = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, i64 16) monotonic, align 8, !noalias !10317 ; 2 uses
  %i.eb = icmp ult i8 %i.ea, 3
  br i1 %i.eb, label %bb.aj, label %bb.ai, !prof !193

bb.ai:                                            ; preds = %bb.ah
  %i.ec = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE)
          to label %bb.aj unwind label %bb.ak, !noalias !10318

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i49.i = phi i8 [ %i.ea, %bb.ah ], [ %i.ec, %bb.ai ] ; 2 uses
  %i.ed = icmp eq i8 %.sroa.0.0.i49.i, 0
  br i1 %i.ed, label %bb.an, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.al:                                            ; preds = %bb.aj
  %i.ef = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123
  %i.eg = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ef, i8 noundef %.sroa.0.0.i49.i)
          to label %bb.am unwind label %bb.ak, !noalias !10318

bb.am:                                            ; preds = %bb.al
  br i1 %i.eg, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %.noexc.i
  %i.eh = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10317
  %.not116.i = icmp eq i8 %i.eh, 0
  br i1 %.not116.i, label %bb.ao, label %.thread97.i

bb.ao:                                            ; preds = %bb.an
  %i.ei = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10317 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, 6
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ugt i64 %i.ei, 1
  br i1 %i.ek, label %bb.ap, label %.thread97.i

bb.ap:                                            ; preds = %bb.ao
  %i.el = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10317
  %i.em = getelementptr i8, ptr %i.el, i64 32
  %.val42.i = load ptr, ptr %i.em, align 8, !noalias !10318, !nonnull !123, !noundef !123
  %i.en = getelementptr i8, ptr %i.el, i64 40
  %.val43.i = load i64, ptr %i.en, align 8, !noalias !10318, !noundef !123
  store i64 2, ptr %i.i, align 8, !alias.scope !10323, !noalias !10317
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val42.i, ptr %.sroa.677.0..sroa_idx.i, align 8, !alias.scope !10323, !noalias !10317
  %.sroa.878.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val43.i, ptr %.sroa.878.0..sroa_idx.i, align 8, !alias.scope !10323, !noalias !10317
  %i.eo = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.aq unwind label %bb.ar, !noalias !10318 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !123, !noalias !10318, !nonnull !123
  %i.et = invoke noundef zeroext i1 %i.es(ptr noundef %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.as unwind label %bb.ar, !noalias !10318

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %bb.aq
  br i1 %i.et, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10317
  br label %.thread97.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10317
  %i.ev = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10317
  store ptr @154, ptr %i.f, align 8, !noalias !10317
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.ex, align 8, !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10317
  store ptr %i.o, ptr %i.e, align 8, !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10317
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.ey, ptr %i.d, align 8, !noalias !10317
  store ptr %i.f, ptr %i.g, align 8, !noalias !10317
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @71, ptr %i.ez, align 8, !noalias !10317
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.fa, align 8, !noalias !10317
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @155, ptr %i.fb, align 8, !noalias !10317
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.d, ptr %i.fc, align 8, !noalias !10317
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @156, ptr %i.fd, align 8, !noalias !10317
  store i64 1, ptr %i.h, align 8, !alias.scope !10324, !noalias !10317
  %.sroa.4.0..sroa_idx.i53.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i53.i, align 8, !alias.scope !10324, !noalias !10317
  %.sroa.5.0..sroa_idx.i54.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i54.i, align 8, !alias.scope !10324, !noalias !10317
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ew, ptr %i.fe, align 8, !alias.scope !10324, !noalias !10317
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.el, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.aw unwind label %bb.av, !noalias !10318

bb.av:                                            ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10317
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10317
  br label %bb.at

bb.ax:                                            ; preds = %bb.av, %bb.ar
  %.pn12.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ff, %bb.av ], [ %i.eu, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10317
  br label %bb.bg

bb.ay:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10317
  %i.fg = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !10317, !nonnull !123, !align !129, !noundef !123 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10317
  store ptr @154, ptr %i.l, align 8, !noalias !10317
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.fi, align 8, !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10317
  store ptr %i.o, ptr %i.k, align 8, !noalias !10317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10317
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.fj, ptr %i.j, align 8, !noalias !10317
  store ptr %i.l, ptr %i.m, align 8, !noalias !10317
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @71, ptr %i.fk, align 8, !noalias !10317
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.fl, align 8, !noalias !10317
  %i.fm = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @155, ptr %i.fm, align 8, !noalias !10317
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.j, ptr %i.fn, align 8, !noalias !10317
  %i.fo = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @156, ptr %i.fo, align 8, !noalias !10317
  store i64 1, ptr %i.n, align 8, !noalias !10317
  %.sroa.870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.870.0..sroa_idx.i, align 8, !noalias !10317
  %.sroa.971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.971.0..sroa_idx.i, align 8, !noalias !10317
  %.sroa.1072.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.fh, ptr %.sroa.1072.0..sroa_idx.i, align 8, !noalias !10317
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.ay
  %i.fp = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10325
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.az, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit

bb.az:                                            ; preds = %.noexc71
  %i.fr = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10325 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 6
  call void @llvm.assume(i1 %i.fs), !noalias !10318
  %i.ft = icmp samesign ugt i64 %i.fr, 1
  br i1 %i.ft, label %bb.ba, label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit

bb.ba:                                            ; preds = %bb.az
  %i.fu = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists010___CALLSITE, align 8, !noalias !10325, !nonnull !123, !align !129, !noundef !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10325
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !10318, !nonnull !123, !noundef !123
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !10318, !noundef !123
  store i64 2, ptr %i.a, align 8, !noalias !10325
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fw, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10325
  %.sroa.5.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fy, ptr %.sroa.5.0..sroa_idx.i70, align 8, !noalias !10325
  %i.fz = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc72 unwind label %bb.bc  ; 2 uses

.noexc72:                                         ; preds = %bb.ba
  %i.ga = extractvalue { ptr, ptr } %i.fz, 0      ; 2 uses
  %i.gb = extractvalue { ptr, ptr } %i.fz, 1      ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !123, !noalias !10318, !nonnull !123
  %i.ge = invoke noundef zeroext i1 %i.gd(ptr noundef %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc73 unwind label %bb.bc, !inline_history !10302

.noexc73:                                         ; preds = %.noexc72
  br i1 %i.ge, label %bb.bb, label %.noexc74

bb.bb:                                            ; preds = %.noexc73
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fu, ptr noundef nonnull %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc74 unwind label %bb.bc

.noexc74:                                         ; preds = %bb.bb, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10325
  br label %_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit

bb.bc:                                            ; preds = %bb.bb, %.noexc72, %bb.ba, %bb.ay
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10317
  br label %bb.bg

_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog17put_if_not_exists00CsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %.noexc74, %bb.az, %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10317
  br label %.thread97.i

.thread.i:                                        ; preds = %.thread97.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sroa.03.091.i = phi i64 [ %.sroa.081.0.copyload.i, %.thread97.i ], [ %i.dx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.4.089.i = phi i8 [ %.sroa.582.0.copyload.i, %.thread97.i ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store9PutResultECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.gg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ag, !noalias !10318

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bd, %.thread.i, %.thread97.i
  %.sroa.03.090.i = phi i64 [ %.sroa.081.0.copyload.i, %.thread97.i ], [ -1, %bb.bd ], [ %.sroa.03.091.i, %.thread.i ] ; 3 uses
  %.sroa.4.088.i = phi i8 [ %.sroa.582.0.copyload.i, %.thread97.i ], [ 1, %bb.bd ], [ %.sroa.4.089.i, %.thread.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store7PutModeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.gh)
          to label %bb.bj unwind label %bb.be, !noalias !10318

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2q_5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ag, !noalias !10318

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.bf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10317
  %i.gj = load i64, ptr %i.u, align 8, !range !155, !noalias !10317, !noundef !123
  %.not25.i = icmp eq i64 %i.gj, -1
  br i1 %.not25.i, label %bb.bh, label %.body46.i

bb.bg:                                            ; preds = %bb.bc, %bb.ax, %bb.ak
  %.pn23.ph.i = phi { ptr, i32 } [ %i.gf, %bb.bc ], [ %i.ee, %bb.ak ], [ %.pn12.pn.pn.pn.pn.i, %bb.ax ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o) #44
          to label %bb.bf unwind label %bb.s, !noalias !10318

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(72) %i.u) #44
          to label %.body46.i unwind label %bb.s, !noalias !10318

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bi, %bb.v
  store i8 0, ptr %i.da, align 8, !noalias !10317
  store i8 2, ptr %i.cy, align 1, !noalias !10317
  br label %.body

bb.bi:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !10326, !nonnull !123, !noundef !123
  invoke void %i.gl(ptr noundef %.sroa.10.2.i, ptr noundef %.sroa.8.2.i, i64 noundef %.sroa.9.2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.s, !noalias !10318, !inline_history !0

bb.bj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtBZ_5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10317
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.gm, align 8, !noalias !10317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9102, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.i, i64 63, i1 false), !noalias !10327
  store i8 1, ptr %i.df, align 1, !noalias !10317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.gn = icmp eq i64 %.sroa.03.090.i, -2
  br i1 %i.gn, label %bb.bk, label %bb.bl

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECsgsNUVCRJO2f_13influxdb3_lib.exit68, %bb.bk
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECsgsNUVCRJO2f_13influxdb3_lib.exit68 ], [ 3, %bb.bk ]
  store i8 %storemerge, ptr %i.al, align 1
  ret void

bb.bk:                                            ; preds = %.thread, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9102)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %common.ret

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6106, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9102, i64 63, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9102)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog17put_if_not_exists0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.dg)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %.not.i50 = icmp eq i64 %.sroa.03.090.i, -1
  br i1 %.not.i50, label %bb.bn, label %bb.cm

bb.bn:                                            ; preds = %bb.bm
  store i8 %.sroa.4.088.i, ptr %i.ak, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gp = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.go)
          to label %.noexc unwind label %bb.bt    ; 2 uses

.noexc:                                           ; preds = %bb.bn
  %i.gq = extractvalue { i64, i32 } %i.gp, 0      ; 2 uses
  %i.gr = extractvalue { i64, i32 } %i.gp, 1      ; 2 uses
  %i.gs = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.gs, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread138, label %bb.bo

bb.bo:                                            ; preds = %.noexc
  %i.gt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.gu = icmp ult i8 %i.gt, 3
  br i1 %i.gu, label %bb.bq, label %bb.bp, !prof !193

bb.bp:                                            ; preds = %bb.bo
  %i.gv = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.0.0.i52 = phi i8 [ %i.gt, %bb.bo ], [ %i.gv, %bb.bp ] ; 2 uses
  %i.gw = icmp eq i8 %.sroa.0.0.i52, 0
  br i1 %i.gw, label %.thread138, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gx = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !123, !align !129, !noundef !123
  %i.gy = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gx, i8 noundef %.sroa.0.0.i52)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %i.gy, label %bb.ch, label %.thread138

bb.bt:                                            ; preds = %bb.bl, %bb.br, %bb.bp, %bb.bn
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.thread138:                                       ; preds = %.noexc, %bb.bq, %bb.bs
  %i.ha = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.ha, 0
  br i1 %.not, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %.thread138
  %i.hb = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hc = icmp ult i64 %i.hb, 6
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp samesign ugt i64 %i.hb, 3
  br i1 %i.hd, label %bb.bv, label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  %i.he = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !123, !align !129, !noundef !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hf = getelementptr i8, ptr %i.he, i64 32
  %.val36 = load ptr, ptr %i.hf, align 8, !nonnull !123, !noundef !123
  %i.hg = getelementptr i8, ptr %i.he, i64 40
  %.val37 = load i64, ptr %i.hg, align 8, !noundef !123
  store i64 4, ptr %i.ac, align 8, !alias.scope !10328
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val36, ptr %.sroa.6125.0..sroa_idx, align 8, !alias.scope !10328
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val37, ptr %.sroa.8126.0..sroa_idx, align 8, !alias.scope !10328
  %i.hh = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.bw unwind label %bb.bx     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !123, !nonnull !123
  %i.hm = invoke noundef zeroext i1 %i.hl(ptr noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.by:                                            ; preds = %bb.bw
  br i1 %i.hm, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ho = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !123, !align !129, !noundef !123
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @143, ptr %i.z, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 49 to ptr), ptr %i.hq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val39 = load i64, ptr %i.hr, align 8, !noundef !123
  store i64 %.val39, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.hs, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ht = zext i64 %i.gq to i128
  %i.hu = mul nuw nsw i128 %i.ht, 1000
  %i.hv = udiv i32 %i.gr, 1000000
  %i.hw = zext nneg i32 %i.hv to i128
  %i.hx = add nuw nsw i128 %i.hu, %i.hw
  store i128 %i.hx, ptr %i.w, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.ak, ptr %i.v, align 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @71, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @144, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.x, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @145, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.w, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @146, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.v, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr @147, ptr %i.ig, align 8
  store i64 1, ptr %i.ab, align 8, !alias.scope !10329
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
end_hunk_0
