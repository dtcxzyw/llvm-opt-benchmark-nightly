Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.08?download=true
inline.NumInlined: 3953
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog19apply_catalog_batch:bb.a
bb.gh:                                            ; preds = %bb.gg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %common.resume unwind label %bb.gr, !noalias !5270

bb.gi:                                            ; preds = %bb.ge
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.03.055.i, i64 88
  %i.xh = load i64, ptr %i.xg, align 8, !noalias !5270, !noundef !11
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.03.055.i, i64 24
  %i.xj = load i64, ptr %i.xi, align 8, !range !10, !noalias !5270, !noundef !11
  %i.xk = trunc nuw i64 %i.xj to i1
  br i1 %i.xk, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.03.055.i, i64 32
  %i.xm = load i64, ptr %i.xl, align 8, !noalias !5270
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.024.0.i = phi i64 [ %i.xm, %bb.gj ], [ 9223372036854775807, %bb.gi ]
  store i64 %i.wp, ptr %i.vt, align 8, !noalias !5271
  store ptr %i.wr, ptr %i.vu, align 8, !noalias !5271
  store i64 %i.wt, ptr %i.vv, align 8, !noalias !5271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vw, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !5271
  store i64 -1, ptr %i.vx, align 8, !noalias !5271
  store i64 0, ptr %i.bg, align 8, !noalias !5271
  store i64 %i.xh, ptr %i.vy, align 8, !noalias !5271
  store i64 0, ptr %i.vz, align 8, !noalias !5271
  store i64 0, ptr %i.wa, align 8, !noalias !5271
  store i64 %.sroa.024.0.i, ptr %i.wb, align 8, !noalias !5271
  store i64 0, ptr %i.wc, align 8, !noalias !5271
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !5271
  store i64 0, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !5271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !5271
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5270
  %i.xn = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 825) 112, i64 noundef range(i64 8, 129) 8) #33, !noalias !5270 ; 6 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %bb.gl, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, !prof !46

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #32
          to label %.noexc45.i unwind label %.loopexit.split-lp.i244, !noalias !5270

.noexc45.i:                                       ; preds = %bb.gl
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.gk
  store i64 3, ptr %i.xn, align 8, !noalias !5270
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  store i64 -1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !5270
  %.sroa.5.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %i.xn, i64 104
  store i16 3, ptr %.sroa.5.0..sroa_idx.i242, align 8, !noalias !5270
  %.sroa.7.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.xn, i64 108
  store i8 3, ptr %.sroa.7.0..sroa_idx.i243, align 4, !noalias !5270
  store i64 1, ptr %i.bd, align 8, !noalias !5271
  store ptr %i.xn, ptr %i.wd, align 8, !noalias !5271
  store i64 1, ptr %i.we, align 8, !noalias !5271
  invoke void @_RNvMs1_CsaXLCtUcOqO5_15influxdb3_authzNtB5_9TokenInfo15set_permissions(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd)
          to label %bb.gm unwind label %.loopexit.i, !noalias !5270

bb.gm:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !5271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !5271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull align 8 dereferenceable(160) %i.bg, i64 160, i1 false), !noalias !5271
  call void @_RNvMs4_NtCs844E4pPEVZX_17influxdb3_catalog7catalogNtB5_15TokenRepository9add_token(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(320) %i.vr, i64 noundef %i.wp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.bb), !noalias !5270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5271
  %i.xp = load i8, ptr %i.bc, align 8, !range !27, !noalias !5271, !noundef !11 ; 2 uses
  %.not43.i = icmp eq i8 %i.xp, -1
  br i1 %.not43.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.sroa.9305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %.sroa.9305.0.copyload307 = load i8, ptr %.sroa.9305.0..sroa_idx306, align 1, !noalias !5274
  %.sroa.13308.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.13308, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.13308.0..sroa_idx309, i64 78, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !5271
  br label %bb.ku

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !5271
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gt, %bb.go, %bb.gb
  %.sroa.05.0.i = phi i1 [ true, %bb.gt ], [ true, %bb.go ], [ %.sroa.0.056.i, %bb.gb ] ; 2 uses
  %i.xq = icmp eq ptr %i.wf, %i.vp
  br i1 %i.xq, label %._crit_edge.loopexit.i, label %bb.gb

.loopexit.i:                                      ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp.i244:                          ; preds = %bb.gl
  %lpad.loopexit.split-lp.i245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit.split-lp.i244, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i245, %.loopexit.split-lp.i244 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(160) %i.bg) #35
          to label %common.resume unwind label %bb.gr, !noalias !5270

bb.gr:                                            ; preds = %bb.gq, %bb.gh
  %i.xr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !5270
  unreachable

bb.gs:                                            ; preds = %bb.gd
  %.sroa.9305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %.sroa.9305.0.copyload = load i8, ptr %.sroa.9305.0..sroa_idx, align 1, !noalias !5274
  %.sroa.13308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.13308, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.13308.0..sroa_idx, i64 78, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5271
  br label %bb.ku

bb.gt:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5271
  br label %bb.gp

bb.gu:                                            ; preds = %._crit_edge.i238
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.13308, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.535.0..sroa_idx.i, i64 78, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5271
  br label %bb.ku

bb.gv:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val210 = load ptr, ptr %i.xs, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val211 = load i64, ptr %i.xt, align 8, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %.idx.i246 = mul nuw nsw i64 %.val211, 12
  %i.xu = getelementptr inbounds nuw i8, ptr %.val210, i64 %.idx.i246 ; 2 uses
  %i.xv = icmp eq i64 %.val211, 0
  br i1 %i.xv, label %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog18apply_delete_batch.exit.thread, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.gv
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.yd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.4.0..sroa_idx.i247 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.6.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i59.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.53.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4.0..sroa_idx.i.i250 = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.sroa.5.0..sroa_idx.i.i251 = getelementptr inbounds nuw i8, ptr %i.ab, i64 22
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.0.0.ph128.i = phi i8 [ 0, %.lr.ph.lr.ph.i ], [ 1, %.outer.i ]
  %.sroa.01.0.ph127.i = phi ptr [ %.val210, %.lr.ph.lr.ph.i ], [ %i.yh, %.outer.i ]
  br label %bb.gw

bb.gw:                                            ; preds = %bb.jd, %.lr.ph.i252
  %.sroa.01.0113.i = phi ptr [ %.sroa.01.0.ph127.i, %.lr.ph.i252 ], [ %i.yh, %bb.jd ] ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.01.0113.i, i64 12 ; 4 uses
  %i.yi = load i32, ptr %.sroa.01.0113.i, align 4, !range !56, !noalias !5276, !noundef !11
  %i.yj = trunc nuw i32 %i.yi to i1
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.01.0113.i, i64 4 ; 7 uses
  br i1 %i.yj, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.01.0113.i, i64 8 ; 2 uses
  %i.ym = call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtB7_7catalog8versions2v214DatabaseSchemaE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.xw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.yk), !noalias !5277 ; 3 uses
  %.not43.i274 = icmp eq ptr %i.ym, null
  br i1 %.not43.i274, label %bb.jd, label %bb.je

bb.gy:                                            ; preds = %bb.gw
  %i.yn = call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtB7_7catalog8versions2v214DatabaseSchemaE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.xw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.yk), !noalias !5277 ; 6 uses
  %.not.i253 = icmp eq ptr %i.yn, null
  br i1 %.not.i253, label %bb.jd, label %bb.gz

.thread23.i:                                      ; preds = %._crit_edge117.i, %bb.iw, %bb.hk, %bb.hc
  %lpad.thr_comm.i255 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i256

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5276
  store ptr %i.yn, ptr %i.ax, align 8, !noalias !5276
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 449
  %i.yp = load i8, ptr %i.yo, align 1, !range !48, !noalias !5277, !noundef !11 ; 2 uses
  %.not.i.i254 = icmp eq i8 %i.yp, -1
  %..i.i = select i1 %.not.i.i254, i8 0, i8 %i.yp
  switch i8 %..i.i, label %bb.ha [
    i8 0, label %bb.hb
    i8 1, label %bb.hc
    i8 2, label %bb.hl
  ]

bb.ha:                                            ; preds = %bb.gz
  unreachable

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5276
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 416 ; 2 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !noalias !5277, !nonnull !11, !noundef !11
  %i.ys = atomicrmw add ptr %i.yr, i64 1 monotonic, align 8, !noalias !5277
  %i.yt = icmp slt i64 %i.ys, 0
  br i1 %i.yt, label %bb.hd, label %bb.hg

bb.hc:                                            ; preds = %bb.gz
  %i.yu = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE8make_mutBN_(ptr noalias noundef align 8 dereferenceable(8) %i.ax)
          to label %bb.iw unwind label %.thread23.i, !noalias !5277 ; 3 uses

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i258: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit67.i, %bb.hf
  %.pn39.pn.i = phi { ptr, i32 } [ %i.yy, %bb.hf ], [ %.pn39.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit67.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  %i.yv = load ptr, ptr %i.aw, align 8, !alias.scope !5280, !noalias !5276, !nonnull !11, !noundef !11
  %i.yw = atomicrmw sub ptr %i.yv, i64 1 release, align 8, !noalias !5281
  %i.yx = icmp eq i64 %i.yw, 1
  br i1 %i.yx, label %bb.he, label %.thread.i256

bb.he:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i258
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %.thread.i256 unwind label %bb.iv, !noalias !5277

bb.hf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit54.i, %._crit_edge126.i, %bb.hg
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i258

bb.hg:                                            ; preds = %bb.hb
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yn, i64 424
  %i.za = load ptr, ptr %i.yq, align 8, !noalias !5277, !nonnull !11, !noundef !11
  %i.zb = load i64, ptr %i.yz, align 8, !noalias !5277, !noundef !11
  store ptr %i.za, ptr %i.aw, align 8, !noalias !5276
  store i64 %i.zb, ptr %i.xz, align 8, !noalias !5276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5276
  %.val.i257 = load ptr, ptr %i.yb, align 8, !alias.scope !5275, !noalias !5277, !nonnull !11, !noundef !11 ; 2 uses
  %.val49.i = load i64, ptr %i.yc, align 8, !alias.scope !5275, !noalias !5277, !noundef !11
  %i.zc = getelementptr inbounds nuw [24 x i8], ptr %.val.i257, i64 %.val49.i
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4KeysB10_INtNtB6_4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEEEE9from_iterCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull %.val.i257, ptr noundef nonnull %i.zc)
          to label %bb.hh unwind label %bb.hf, !noalias !5277

bb.hh:                                            ; preds = %bb.hg
  %i.zd = load ptr, ptr %i.yd, align 8, !noalias !5276, !nonnull !11, !noundef !11 ; 4 uses
  %i.ze = load i64, ptr %i.av, align 8, !range !22, !noalias !5276, !noundef !11
  %i.zf = load i64, ptr %i.ye, align 8, !noalias !5276, !noundef !11 ; 3 uses
  %i.zg = icmp ult i64 %i.zf, 1152921504606846976
  call void @llvm.assume(i1 %i.zg)
  %.idx131.i = shl nuw nsw i64 %i.zf, 3
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.idx131.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5276
  store ptr %i.zd, ptr %i.au, align 8, !noalias !5276
  store ptr %i.zd, ptr %.sroa.4.0..sroa_idx.i247, align 8, !noalias !5276
  store i64 %i.ze, ptr %.sroa.5.0..sroa_idx.i248, align 8, !noalias !5276
  store ptr %i.zh, ptr %.sroa.6.0..sroa_idx.i249, align 8, !noalias !5276
  %i.zi = icmp eq i64 %i.zf, 0
  br i1 %i.zi, label %._crit_edge126.i, label %.lr.ph125.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit67.i: ; preds = %bb.ir, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit.i262, %bb.hi
  %.pn39.i = phi { ptr, i32 } [ %i.zj, %bb.hi ], [ %.pn37.i, %bb.ir ], [ %.pn37.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit.i262 ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i258 unwind label %bb.iv, !noalias !5277

bb.hi:                                            ; preds = %bb.it, %.lr.ph125.i
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit67.i

._crit_edge126.i:                                 ; preds = %bb.iu, %bb.hh
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit54.i unwind label %bb.hf, !noalias !5277

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit54.i: ; preds = %._crit_edge126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5276
  invoke void @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtNtNtNtB7_7catalog8versions2v214DatabaseSchemaE6removeB7_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.xw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.yk)
          to label %bb.hj unwind label %bb.hf, !noalias !5277

bb.hj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdEECs844E4pPEVZX_17influxdb3_catalog.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5276
  call void @llvm.experimental.noalias.scope.decl(metadata !5282)
  call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  %i.zk = load ptr, ptr %i.aw, align 8, !alias.scope !5284, !noalias !5276, !nonnull !11, !noundef !11
  %i.zl = atomicrmw sub ptr %i.zk, i64 1 release, align 8, !noalias !5285
  %i.zm = icmp eq i64 %i.zl, 1
  br i1 %i.zm, label %bb.hk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit56.i

bb.hk:                                            ; preds = %bb.hj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit56.i unwind label %.thread23.i, !noalias !5277

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit56.i: ; preds = %bb.hk, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5276
  %.pre.i264 = load ptr, ptr %i.ax, align 8, !alias.scope !5286, !noalias !5276
  br label %bb.hl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit.i: ; preds = %bb.ja, %bb.hm, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5276
  br label %.outer.i

bb.hl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit56.i, %bb.gz
  %i.zn = phi ptr [ %i.yn, %bb.gz ], [ %.pre.i264, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit56.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  call void @llvm.experimental.noalias.scope.decl(metadata !5288)
  %i.zo = atomicrmw sub ptr %i.zn, i64 1 release, align 8, !noalias !5289
  %i.zp = icmp eq i64 %i.zo, 1
  br i1 %i.zp, label %bb.hm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit.i

bb.hm:                                            ; preds = %bb.hl
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ax), !noalias !5277
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEB1g_.exit.i

.lr.ph125.i:                                      ; preds = %bb.hh, %bb.iu
  %i.zq = phi ptr [ %i.aby, %bb.iu ], [ %i.zd, %bb.hh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5290)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  store ptr %i.zr, ptr %.sroa.4.0..sroa_idx.i247, align 8, !alias.scope !5290, !noalias !5276
  %i.zs = load i64, ptr %i.zq, align 8, !noalias !5291, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5276
  store i64 %i.zs, ptr %i.at, align 8, !noalias !5276
  %i.zt = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ya, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at)
          to label %bb.hn unwind label %bb.hi, !noalias !5277 ; 3 uses

bb.hn:                                            ; preds = %.lr.ph125.i
  %.not33.i = icmp eq ptr %i.zt, null
  br i1 %.not33.i, label %bb.iu, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5276
  store ptr %i.zt, ptr %i.as, align 8, !noalias !5276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5276
  %i.zu = atomicrmw add ptr %i.zt, i64 1 monotonic, align 8, !noalias !5277
  %i.zv = icmp slt i64 %i.zu, 0
  br i1 %i.zv, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zw = load ptr, ptr %i.as, align 8, !noalias !5276, !nonnull !11, !noundef !11
  store ptr %i.zw, ptr %i.ar, align 8, !noalias !5276
  %i.zx = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE8make_mutCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(8) %i.ar)
          to label %bb.hs unwind label %.loopexit.split-lp.i259, !noalias !5277 ; 2 uses

bb.hq:                                            ; preds = %bb.ho
  call void @llvm.trap()
  unreachable

.body61.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i, %.body.i269, %.loopexit.split-lp.i259, %.loopexit.loopexit.split-lp.i267, %.loopexit.loopexit.i265
  %.pn.i261 = phi { ptr, i32 } [ %eh.lpad-body.i270, %.body.i269 ], [ %lpad.phi45.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i ], [ %lpad.loopexit.split-lp.i260, %.loopexit.split-lp.i259 ], [ %lpad.loopexit197.i, %.loopexit.loopexit.i265 ], [ %lpad.loopexit.split-lp198.i, %.loopexit.loopexit.split-lp.i267 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  %i.zy = load ptr, ptr %i.ar, align 8, !alias.scope !5294, !noalias !5276, !nonnull !11, !noundef !11
  %i.zz = atomicrmw sub ptr %i.zy, i64 1 release, align 8, !noalias !5295
  %i.aaa = icmp eq i64 %i.zz, 1
  br i1 %i.aaa, label %bb.hr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit.i262

bb.hr:                                            ; preds = %.body61.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs844E4pPEVZX_17influxdb3_catalog.exit.i262 unwind label %bb.iv, !noalias !5277

.loopexit.loopexit.i265:                          ; preds = %bb.ht
  %lpad.loopexit197.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

.loopexit.loopexit.split-lp.i267:                 ; preds = %bb.im, %bb.il, %bb.hx
  %lpad.loopexit.split-lp198.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

.loopexit.split-lp.i259:                          ; preds = %bb.iq, %bb.io, %._crit_edge122.thread.i, %bb.hp
  %lpad.loopexit.split-lp.i260 = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

bb.hs:                                            ; preds = %bb.hp
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 80
  %i.aac = load ptr, ptr %i.aab, align 8, !noalias !5277, !nonnull !11, !noundef !11 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 88
  %i.aae = load i64, ptr %i.aad, align 8, !noalias !5277, !noundef !11 ; 2 uses
  %.idx132.i = mul nuw nsw i64 %i.aae, 112
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 %.idx132.i ; 2 uses
  %i.aag = icmp eq i64 %i.aae, 0
  br i1 %i.aag, label %.critedge.i263, label %.lr.ph121.outer.i

.lr.ph121.outer.i:                                ; preds = %bb.hs, %.thread193.i
  %.sroa.011.0119.ph.i = phi i1 [ true, %.thread193.i ], [ false, %bb.hs ]
  %.sroa.012.0118.ph.i = phi ptr [ %i.aah, %.thread193.i ], [ %i.aac, %bb.hs ]
  br label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %bb.hu, %.lr.ph121.outer.i
  %.sroa.012.0118.i = phi ptr [ %i.aah, %bb.hu ], [ %.sroa.012.0118.ph.i, %.lr.ph121.outer.i ] ; 15 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.012.0118.i, i64 112 ; 4 uses
  %i.aai = load i64, ptr %.sroa.012.0118.i, align 8, !range !39, !noalias !5277, !noundef !11
  %i.aaj = icmp eq i64 %i.aai, 0
end_hunk_0
