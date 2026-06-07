inline.NumInlined: 1838
inline.NumDeleted: 674
begin_hunk_0_@_RNCNvMs_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB6_18S3DynamoDbLogStore12repair_entry0Ba_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ev, %bb.bd
  %i.gj = phi ptr [ %i.ga, %bb.bd ], [ %i.gp, %bb.ev ] ; 2 uses
  %i.gk = phi ptr [ %i.gb, %bb.bd ], [ %i.gq, %bb.ev ] ; 2 uses
  %.sroa.061.0.i = phi i64 [ %i.ge, %bb.bd ], [ %.sroa.066.0.i72.i, %bb.ev ]
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.copyload.i, %bb.bd ], [ %.sroa.367.0.i73.i, %bb.ev ]
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %i.gl, align 1, !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1856
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 8, !range !703, !noalias !1856, !noundef !3
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ex, label %bb.fd

bb.bg:                                            ; preds = %bb.at, %bb.o
  %i.gp = phi ptr [ %i.cz, %bb.at ], [ %i.cy, %bb.o ] ; 4 uses
  %i.gq = phi ptr [ %i.da, %bb.at ], [ %i.cx, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1856
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 5 uses
  %i.gt = load i8, ptr %i.gs, align 8, !range !120, !noalias !1880, !noundef !3
  switch i8 %i.gt, label %default.unreachable294 [
    i8 0, label %bb.bh
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.gu = load ptr, ptr %i.gr, align 8, !noalias !1880, !nonnull !3, !noundef !3
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1880, !nonnull !3, !align !99, !noundef !3
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1880, !nonnull !3, !align !99, !noundef !3
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !1880, !noundef !3
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hb, i64 noundef %i.ha)
          to label %bb.bk unwind label %bb.bj, !noalias !1884

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %.body32.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 184
  %i.he = load ptr, ptr %i.hd, align 8, !invariant.load !3, !noalias !1884, !nonnull !3
  %i.hf = invoke { ptr, ptr } %i.he(ptr noundef nonnull %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hb)
          to label %bb.bm unwind label %bb.bl, !noalias !1884 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.hh = extractvalue { ptr, ptr } %i.hf, 0
  %i.hi = extractvalue { ptr, ptr } %i.hf, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.hh, ptr %i.hj, align 8, !noalias !1880
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.hi, ptr %i.hk, align 8, !noalias !1880
  br label %bb.bq

.body.i.i:                                        ; preds = %bb.dm, %bb.bz, %bb.bx, %bb.bw, %bb.bp, %bb.bl
  %.pn11.i.i = phi { ptr, i32 } [ %i.hg, %bb.bl ], [ %i.hm, %bb.bp ], [ %i.hy, %bb.bw ], [ %i.ii, %bb.bz ], [ %i.hy, %bb.bx ], [ %i.mc, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl) #31
          to label %.body32.i.i unwind label %bb.er, !noalias !1884

bb.bn:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #34
          to label %.noexc48.i unwind label %bb.es, !noalias !1861

.noexc48.i:                                       ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #34
          to label %.noexc49.i unwind label %bb.es, !noalias !1861

.noexc49.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bq
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1880
  %.val17.i.i = load ptr, ptr %i.ho, align 8, !noalias !1880
  %i.hn = getelementptr i8, ptr %1, i64 320
  %.val18.i.i = load ptr, ptr %i.hn, align 8, !noalias !1880, !nonnull !3, !align !99, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val17.i.i, ptr nonnull %.val18.i.i) #31
          to label %.body.i.i unwind label %bb.er, !noalias !1884

bb.bq:                                            ; preds = %bb.bm, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1880
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bp, !noalias !1884

bb.br:                                            ; preds = %bb.bq
  %i.hp = load i64, ptr %i.ac, align 8, !range !882, !noalias !1880, !noundef !3 ; 5 uses
  %i.hq = icmp eq i64 %i.hp, -9223372036854775789
  br i1 %i.hq, label %.thread.i, label %bb.bs

.thread.i:                                        ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  store i8 3, ptr %i.gs, align 8, !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  br label %bb.eu

bb.bs:                                            ; preds = %bb.br
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i.i, i64 64, i1 false), !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1880
  %.val.i.i = load ptr, ptr %i.ho, align 8, !noalias !1880 ; 5 uses
  %i.hr = getelementptr i8, ptr %1, i64 320
  %.val16.i.i = load ptr, ptr %i.hr, align 8, !noalias !1880, !nonnull !3, !align !99, !noundef !3 ; 5 uses
  %i.hs = load ptr, ptr %.val16.i.i, align 8, !invariant.load !3, !noalias !1884 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.hs(ptr noundef nonnull %.val.i.i)
          to label %bb.bu unwind label %bb.bw, !noalias !1884

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ht = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !range !4, !invariant.load !3, !noalias !1884 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hw = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !range !5, !invariant.load !3, !noalias !1884
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.hu, i64 noundef range(i64 1, 536870913) %i.hx) #29, !noalias !1884
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !range !4, !invariant.load !3, !noalias !1884 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.body.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ic = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !range !5, !invariant.load !3, !noalias !1884
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ia, i64 noundef range(i64 1, 536870913) %i.id) #29, !noalias !1884
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bv, %bb.bu
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val24.i.i = load i64, ptr %i.ie, align 8, !noalias !1880
  %.not.i27.i.i = icmp eq i64 %i.hp, -9223372036854775790
  br i1 %.not.i27.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1885
  store i64 %i.hp, ptr %i.u, align 8, !noalias !1889
  %.sroa.3.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx54.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.i.i, i64 64, i1 false), !noalias !1889
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1885
  %i.if = icmp ne i64 %i.hp, -9223372036854775800
  call void @llvm.assume(i1 %i.if)
  %i.ig = icmp eq i64 %i.hp, -9223372036854775797
  %i.ih = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1895 ; 2 uses
  br i1 %i.ig, label %bb.ca, label %bb.ct

bb.bz:                                            ; preds = %bb.dj, %bb.dh, %bb.dg, %bb.dc, %.noexc48.i.i.i.i, %bb.db, %bb.cz, %bb.cw, %bb.cv, %bb.cr, %bb.cp, %bb.co, %bb.cj, %.noexc42.i.i.i.i, %bb.ci, %bb.cg, %bb.cd, %bb.cc
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u) #31
          to label %.body.i.i unwind label %bb.dl, !noalias !1896

bb.ca:                                            ; preds = %bb.by
  %i.ij = icmp ult i64 %i.ih, 4
  br i1 %i.ij, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  %i.ik = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, i64 16) monotonic, align 8, !noalias !1895 ; 3 uses
  switch i8 %i.ik, label %bb.cc [
    i8 0, label %bb.cm
    i8 1, label %bb.cd
    i8 2, label %bb.cd
  ], !prof !1897

bb.cc:                                            ; preds = %bb.cb
  %i.il = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE)
          to label %bb.ce unwind label %bb.bz, !noalias !1898 ; 2 uses

bb.cd:                                            ; preds = %bb.cb, %bb.ce, %bb.cb
  %.sroa.06.0.i.i.i.i = phi i8 [ %i.il, %bb.ce ], [ %i.ik, %bb.cb ], [ %i.ik, %bb.cb ]
  %i.im = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3
  %i.in = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.im, i8 noundef %.sroa.06.0.i.i.i.i)
          to label %bb.cf unwind label %bb.bz, !noalias !1898

bb.ce:                                            ; preds = %bb.cc
  %i.io = icmp eq i8 %i.il, 0
  br i1 %i.io, label %bb.cm, label %bb.cd

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.in, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1895
  %i.ip = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1895
  store ptr @17, ptr %i.r, align 8, !noalias !1895
  %i.ir = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.ir, align 8, !noalias !1895
  store ptr %i.r, ptr %i.s, align 8, !noalias !1895
  %i.is = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @18, ptr %i.is, align 8, !noalias !1895
  store i64 1, ptr %i.t, align 8, !noalias !1895
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.iq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1895
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc.i.i.i.i unwind label %bb.bz, !noalias !1898

.noexc.i.i.i.i:                                   ; preds = %bb.cg
  %i.it = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1899
  %i.iu = icmp eq i8 %i.it, 0
  br i1 %i.iu, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %.noexc.i.i.i.i
  %i.iv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1899 ; 2 uses
  %i.iw = icmp ult i64 %i.iv, 6
  call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp samesign ugt i64 %i.iv, 1
  br i1 %i.ix, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.iy = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1899, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !1898, !nonnull !3, !noundef !3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %i.jc = load i64, ptr %i.jb, align 8, !noalias !1898, !noundef !3
  store i64 2, ptr %i.d, align 8, !noalias !1899
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ja, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1899
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.jc, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1899
  %i.jd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc42.i.i.i.i unwind label %bb.bz, !noalias !1898 ; 2 uses

.noexc42.i.i.i.i:                                 ; preds = %bb.ci
  %i.je = extractvalue { ptr, ptr } %i.jd, 0      ; 2 uses
  %i.jf = extractvalue { ptr, ptr } %i.jd, 1      ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !invariant.load !3, !noalias !1898, !nonnull !3
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #33
          to label %.noexc43.i.i.i.i unwind label %bb.bz, !noalias !1898, !inline_history !1902

.noexc43.i.i.i.i:                                 ; preds = %.noexc42.i.i.i.i
  br i1 %i.ji, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc43.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noundef nonnull %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %bb.ck unwind label %bb.bz, !noalias !1898

bb.ck:                                            ; preds = %bb.cj, %.noexc43.i.i.i.i, %bb.ch, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1895
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cs, %bb.cq, %bb.cn, %bb.cm, %bb.ck
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread71.i.i unwind label %bb.dm, !noalias !1884

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread71.i.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, i64 56, i1 false), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %bb.eo

bb.cm:                                            ; preds = %bb.cf, %bb.ce, %bb.cb, %bb.ca
  %i.jj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1895
  %i.jk = icmp eq i8 %i.jj, 0
  br i1 %i.jk, label %bb.cn, label %bb.cl

bb.cn:                                            ; preds = %bb.cm
  %i.jl = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1895 ; 2 uses
  %i.jm = icmp ult i64 %i.jl, 6
  call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp samesign ugt i64 %i.jl, 1
  br i1 %i.jn, label %bb.co, label %bb.cl

bb.co:                                            ; preds = %bb.cn
  %i.jo = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !1898, !nonnull !3, !noundef !3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1898, !noundef !3
  store i64 2, ptr %i.q, align 8, !noalias !1895
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.jq, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.js, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %i.jt = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cp unwind label %bb.bz, !noalias !1898 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.ju = extractvalue { ptr, ptr } %i.jt, 0      ; 2 uses
  %i.jv = extractvalue { ptr, ptr } %i.jt, 1      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !invariant.load !3, !noalias !1898, !nonnull !3
  %i.jy = invoke noundef zeroext i1 %i.jx(ptr noundef %i.ju, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.cq unwind label %bb.bz, !noalias !1898

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.jy, label %bb.cr, label %bb.cl

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1895
  %i.jz = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00010___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1895
  store ptr @17, ptr %i.n, align 8, !noalias !1895
  %i.kb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.kb, align 8, !noalias !1895
  store ptr %i.n, ptr %i.o, align 8, !noalias !1895
  %i.kc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @18, ptr %i.kc, align 8, !noalias !1895
  store i64 1, ptr %i.p, align 8, !noalias !1895
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.526.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %i.kd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.ka, ptr %i.kd, align 8, !noalias !1895
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jo, ptr noundef nonnull %i.ju, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %bb.cs unwind label %bb.bz, !noalias !1898

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1895
  br label %bb.cl

bb.ct:                                            ; preds = %bb.by
  %i.ke = icmp ult i64 %i.ih, 5
  br i1 %i.ke, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.kf = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1895 ; 3 uses
  switch i8 %i.kf, label %bb.cv [
    i8 0, label %bb.de
    i8 1, label %bb.cw
    i8 2, label %bb.cw
  ], !prof !1897

bb.cv:                                            ; preds = %bb.cu
  %i.kg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE)
          to label %bb.cx unwind label %bb.bz, !noalias !1898 ; 2 uses

bb.cw:                                            ; preds = %bb.cu, %bb.cx, %bb.cu
  %.sroa.015.0.i.i.i.i = phi i8 [ %i.kg, %bb.cx ], [ %i.kf, %bb.cu ], [ %i.kf, %bb.cu ]
  %i.kh = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3
  %i.ki = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kh, i8 noundef %.sroa.015.0.i.i.i.i)
          to label %bb.cy unwind label %bb.bz, !noalias !1898

bb.cx:                                            ; preds = %bb.cv
  %i.kj = icmp eq i8 %i.kg, 0
  br i1 %i.kj, label %bb.de, label %bb.cw

bb.cy:                                            ; preds = %bb.cw
  br i1 %i.ki, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1895
  %i.kk = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1895
  store ptr @19, ptr %i.k, align 8, !noalias !1895
  %i.km = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 57 to ptr), ptr %i.km, align 8, !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1895
  store ptr %i.u, ptr %i.j, align 8, !noalias !1895
  store ptr %i.k, ptr %i.l, align 8, !noalias !1895
  %i.kn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @18, ptr %i.kn, align 8, !noalias !1895
  %i.ko = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.ko, align 8, !noalias !1895
  %i.kp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @20, ptr %i.kp, align 8, !noalias !1895
  store i64 1, ptr %i.m, align 8, !noalias !1895
  %.sroa.017.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.017.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %.sroa.017.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.kl, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1895
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %.noexc47.i.i.i.i unwind label %bb.bz, !noalias !1896

.noexc47.i.i.i.i:                                 ; preds = %bb.cz
  %i.kq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1904
  %i.kr = icmp eq i8 %i.kq, 0
  br i1 %i.kr, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %.noexc47.i.i.i.i
  %i.ks = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1904 ; 2 uses
  %i.kt = icmp ult i64 %i.ks, 6
  call void @llvm.assume(i1 %i.kt)
  %.not.i.i.i.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i.i.i.i.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ku = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1904, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !1896, !nonnull !3, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !1896, !noundef !3
  store i64 1, ptr %i.c, align 8, !noalias !1904
  %.sroa.3.0..sroa_idx.i45.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.kw, ptr %.sroa.3.0..sroa_idx.i45.i.i.i.i, align 8, !noalias !1904
  %.sroa.5.0..sroa_idx.i46.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ky, ptr %.sroa.5.0..sroa_idx.i46.i.i.i.i, align 8, !noalias !1904
  %i.kz = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc48.i.i.i.i unwind label %bb.bz, !noalias !1896 ; 2 uses

.noexc48.i.i.i.i:                                 ; preds = %bb.db
  %i.la = extractvalue { ptr, ptr } %i.kz, 0      ; 2 uses
  %i.lb = extractvalue { ptr, ptr } %i.kz, 1      ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !invariant.load !3, !noalias !1896, !nonnull !3
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef %i.la, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #33
          to label %.noexc49.i.i.i.i unwind label %bb.bz, !noalias !1896, !inline_history !1907

.noexc49.i.i.i.i:                                 ; preds = %.noexc48.i.i.i.i
  br i1 %i.le, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.noexc49.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ku, ptr noundef nonnull %i.la, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.dd unwind label %bb.bz, !noalias !1896

bb.dd:                                            ; preds = %bb.dc, %.noexc49.i.i.i.i, %bb.da, %.noexc47.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1895
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.de:                                            ; preds = %bb.cy, %bb.cx, %bb.cu, %bb.ct
  %i.lf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1895
  %i.lg = icmp eq i8 %i.lf, 0
  br i1 %i.lg, label %bb.df, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.df:                                            ; preds = %bb.de
  %i.lh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1895 ; 2 uses
  %i.li = icmp ult i64 %i.lh, 6
  call void @llvm.assume(i1 %i.li)
  %.not.i.i28.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not.i.i28.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lj = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !1898, !nonnull !3, !noundef !3
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ln = load i64, ptr %i.lm, align 8, !noalias !1898, !noundef !3
  store i64 1, ptr %i.i, align 8, !noalias !1895
  %.sroa.332.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ll, ptr %.sroa.332.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.533.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ln, ptr %.sroa.533.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %i.lo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dh unwind label %bb.bz, !noalias !1898 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.lp = extractvalue { ptr, ptr } %i.lo, 0      ; 2 uses
  %i.lq = extractvalue { ptr, ptr } %i.lo, 1      ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !invariant.load !3, !noalias !1898, !nonnull !3
  %i.lt = invoke noundef zeroext i1 %i.ls(ptr noundef %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.di unwind label %bb.bz, !noalias !1898

bb.di:                                            ; preds = %bb.dh
  br i1 %i.lt, label %bb.dj, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1895
  %i.lu = load ptr, ptr @_RNvNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry000s_10___CALLSITE, align 8, !noalias !1895, !nonnull !3, !align !99, !noundef !3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1895
  store ptr @19, ptr %i.f, align 8, !noalias !1895
  %i.lw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 57 to ptr), ptr %i.lw, align 8, !noalias !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1895
  store ptr %i.u, ptr %i.e, align 8, !noalias !1895
  store ptr %i.f, ptr %i.g, align 8, !noalias !1895
  %i.lx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @18, ptr %i.lx, align 8, !noalias !1895
  %i.ly = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.ly, align 8, !noalias !1895
  %i.lz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @20, ptr %i.lz, align 8, !noalias !1895
  store i64 1, ptr %i.h, align 8, !noalias !1895
  %.sroa.435.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.435.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %.sroa.536.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 2, ptr %.sroa.536.0..sroa_idx.i.i.i.i, align 8, !noalias !1895
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.lv, ptr %i.ma, align 8, !noalias !1895
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lj, ptr noundef nonnull %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.dk unwind label %bb.bz, !noalias !1896

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1895
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.dl:                                            ; preds = %bb.bz
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1896
  unreachable

bb.dm:                                            ; preds = %bb.cl
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dk, %bb.di, %bb.df, %bb.de, %bb.dd
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1908, !noalias !1885 ; 2 uses
  %.sroa.5.0.copyload3.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx54.i.i, align 8, !alias.scope !1908, !noalias !1885
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx4.i.i.i, i64 56, i1 false), !alias.scope !1908, !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i.i, i64 56, i1 false), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.not.i31.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775781
  br i1 %.not.i31.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i, label %bb.eo

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorE7map_errNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNCNCNCNvNtB1y_8logstore18write_commit_entry000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0Bb_:bb.a
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !2398, !nonnull !3, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !2398, !noundef !3 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.not.i.i = icmp eq i64 %i.dr, 7
  br i1 %.not.i.i, label %.thread153, label %bb.ae

.thread153:                                       ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !noalias !2418
  store i8 1, ptr %i.dm, align 8, !noalias !2398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.898)
  br label %bb.ch

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2419
  store i64 %i.dr, ptr %i.ao, align 8, !noalias !2424
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.i, i64 400, i1 false), !noalias !2424
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  %i.ec = icmp samesign ult i64 %i.dr, 3
  br i1 %i.ec, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.ee = load i64, ptr %i.ed, align 8, !range !535, !alias.scope !2428, !noalias !2430, !noundef !3
  %i.ef = call i64 @llvm.umax.i64(i64 %i.ee, i64 -9223372036854775808)
  %i.eg = and i64 %i.ef, 9223372036854775807
  switch i64 %i.eg, label %bb.ag [
    i64 0, label %bb.ah
    i64 4, label %bb.an
  ]

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2432
  store i64 %i.dr, ptr %i.an, align 8, !noalias !2424
  %.sroa.4.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.0..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.i, i64 400, i1 false), !noalias !2424
  invoke void @_RNvXsh_NtCs9rVkZwOUgsI_13deltalake_aws6errorsNtB5_15LockClientErrorINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtB1L_4http8response8ResponseEE4fromB7_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.an)
          to label %bb.at unwind label %bb.ar, !noalias !2402

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2432
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, i64 noundef %i.ea, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %bb.ap, !noalias !2433

bb.ai:                                            ; preds = %bb.ah
  %i.eh = load i64, ptr %i.am, align 8, !range !65, !noalias !2432, !noundef !3
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !6, !noalias !2432, !noundef !3 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br i1 %i.ei, label %bb.aj, label %bb.ak, !prof !1778

bb.aj:                                            ; preds = %bb.ai
  %i.em = load i64, ptr %i.el, align 8, !noalias !2432
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.em) #35
          to label %bb.ao unwind label %bb.ap, !noalias !2433

bb.ak:                                            ; preds = %bb.ai
  %i.en = load ptr, ptr %i.el, align 8, !noalias !2432, !nonnull !3, !noundef !3 ; 2 uses
  %i.eo = icmp ule i64 %i.ea, %i.ek
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2432
  %.not.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.ep = load i64, ptr %i.eb, align 8, !noalias !2432, !noundef !3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ek, ptr %i.eq, align 8, !alias.scope !2425, !noalias !2434
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.en, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !2425, !noalias !2434
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %i.ea, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2425, !noalias !2434
  %i.er = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ep, ptr %i.er, align 8, !alias.scope !2425, !noalias !2434
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull align 1 %i.dy, i64 %i.ea, i1 false), !noalias !2433
  br label %bb.al

bb.an:                                            ; preds = %bb.al, %bb.af
  %storemerge.i.i.i = phi i64 [ 8, %bb.al ], [ 3, %bb.af ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtBN_4http8response8ResponseEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(408) %i.ao)
          to label %.thread156 unwind label %bb.ar, !noalias !2402

.thread156:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2419
  %.sroa.3.0..sroa_idx27.i152 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx27.i152, i64 32, i1 false), !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !noalias !2418
  store i8 1, ptr %i.dm, align 8, !noalias !2398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.898)
  br label %bb.aw

bb.ao:                                            ; preds = %bb.aj
  unreachable

bb.ap:                                            ; preds = %bb.aj, %bb.ah
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11delete_item15DeleteItemErrorNtNtNtBN_4http8response8ResponseEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(408) %i.ao) #31
          to label %.body5.i unwind label %bb.aq, !noalias !2436

bb.aq:                                            ; preds = %bb.ap
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2436
  unreachable

bb.ar:                                            ; preds = %bb.an, %bb.ag
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

bb.as:                                            ; preds = %.body.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2402
  unreachable

bb.at:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2432
  %.sroa.025.0.copyload26.pre.i = load i64, ptr %i.ap, align 8, !noalias !2435 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2419
  %.sroa.3.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx27.i, i64 32, i1 false), !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !noalias !2418
  store i8 1, ptr %i.dm, align 8, !noalias !2398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.ev = icmp eq i64 %.sroa.025.0.copyload26.pre.i, 10
  br i1 %i.ev, label %bb.au, label %bb.av

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.fs, %bb.au
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 4, %bb.fs ], [ 3, %bb.au ]
  store i8 %.sink, ptr %i.aw, align 1
  ret void

bb.au:                                            ; preds = %.thread, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.898)
  store i64 -9223372036854775780, ptr %0, align 8
  br label %common.ret

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.898, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.898)
  %.not.i = icmp eq i64 %.sroa.025.0.copyload26.pre.i, 9
  br i1 %.not.i, label %bb.ch, label %bb.aw

bb.aw:                                            ; preds = %.thread156, %bb.av
  %.sroa.025.0.i149159 = phi i64 [ %storemerge.i.i.i, %.thread156 ], [ %.sroa.025.0.copyload26.pre.i, %bb.av ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2437
  store i64 %.sroa.025.0.i149159, ptr %i.al, align 8, !noalias !2441
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103, i64 32, i1 false), !noalias !2441
  call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2437
  switch i64 %.sroa.025.0.i149159, label %bb.ax [
    i64 3, label %bb.ay
    i64 8, label %bb.ba
  ], !prof !2445

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2446
  store i64 %.sroa.025.0.i149159, ptr %i.y, align 8, !noalias !2441
  %.sroa.6103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103.0..sroa_idx104, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6103, i64 32, i1 false), !noalias !2441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2446
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 42, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.by unwind label %bb.cf, !noalias !2446

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 187 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
          to label %bb.az unwind label %bb.cg, !noalias !2446

bb.az:                                            ; preds = %bb.bz, %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2446
  %i.ew = load i64, ptr %.sroa.6103.0..sroa_idx, align 8, !alias.scope !2442, !noalias !2448, !noundef !3
  store i64 %i.ew, ptr %i.ak, align 8, !noalias !2446
  %i.ex = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2446
  %i.ey = icmp ult i64 %i.ex, 5
  br i1 %i.ey, label %bb.bb, label %bb.bm

bb.bb:                                            ; preds = %bb.ba
  %i.ez = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2446 ; 3 uses
  switch i8 %i.ez, label %bb.bc [
    i8 0, label %bb.bm
    i8 1, label %bb.bd
    i8 2, label %bb.bd
  ], !prof !1897

bb.bc:                                            ; preds = %bb.bb
  %i.fa = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE)
          to label %bb.be unwind label %bb.cg, !noalias !2446 ; 2 uses

bb.bd:                                            ; preds = %bb.bb, %bb.be, %bb.bb
  %.sroa.06.0.i.i = phi i8 [ %i.fa, %bb.be ], [ %i.ez, %bb.bb ], [ %i.ez, %bb.bb ]
  %i.fb = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, align 8, !noalias !2446, !nonnull !3, !align !99, !noundef !3
  %i.fc = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fb, i8 noundef %.sroa.06.0.i.i)
          to label %bb.bf unwind label %bb.cg, !noalias !2446

bb.be:                                            ; preds = %bb.bc
  %i.fd = icmp eq i8 %i.fa, 0
  br i1 %i.fd, label %bb.bm, label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.fc, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2446
  %i.fe = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, align 8, !noalias !2446, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2446
  store ptr @38, ptr %i.ah, align 8, !noalias !2446
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.fg, align 8, !noalias !2446
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !2446
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @18, ptr %i.fh, align 8, !noalias !2446
  store i64 1, ptr %i.aj, align 8, !noalias !2446
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2446
  %.sroa.08.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2446
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ff, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2446
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc.i.i unwind label %bb.cg, !noalias !2446

.noexc.i.i:                                       ; preds = %bb.bg
  %i.fi = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2449
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.noexc.i.i
  %i.fk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2449 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 6
  call void @llvm.assume(i1 %i.fl)
  %.not.i.i.i29 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i29, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fm = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, align 8, !noalias !2449, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !2446, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !2446, !noundef !3
  store i64 1, ptr %i.u, align 8, !noalias !2449
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.fo, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !2449
  %.sroa.5.0..sroa_idx.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.fq, ptr %.sroa.5.0..sroa_idx.i.i.i30, align 8, !noalias !2449
  %i.fr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc35.i.i unwind label %bb.cg, !noalias !2446 ; 2 uses

.noexc35.i.i:                                     ; preds = %bb.bi
  %i.fs = extractvalue { ptr, ptr } %i.fr, 0      ; 2 uses
  %i.ft = extractvalue { ptr, ptr } %i.fr, 1      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !invariant.load !3, !noalias !2446, !nonnull !3
  %i.fw = invoke noundef zeroext i1 %i.fv(ptr noundef %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #33
          to label %.noexc36.i.i unwind label %bb.cg, !noalias !2446, !inline_history !2452

.noexc36.i.i:                                     ; preds = %.noexc35.i.i
  br i1 %i.fw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.noexc36.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fm, ptr noundef nonnull %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.bk unwind label %bb.cg, !noalias !2446

bb.bk:                                            ; preds = %bb.bj, %.noexc36.i.i, %bb.bh, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2446
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bs, %bb.bq, %bb.bn, %bb.bm, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2446
  store ptr %i.ak, ptr %i.aa, align 8, !noalias !2446
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !2446
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @39, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.cg, !noalias !2446

bb.bm:                                            ; preds = %bb.bf, %bb.be, %bb.bb, %bb.ba
  %i.fx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2446
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.fz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2446 ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 6
  call void @llvm.assume(i1 %i.ga)
  %.not.i.i28 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i28, label %bb.bl, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gb = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, align 8, !noalias !2446, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !2446, !nonnull !3, !noundef !3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !2446, !noundef !3
  store i64 1, ptr %i.ag, align 8, !noalias !2446
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.gd, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2446
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.gf, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !2446
  %i.gg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bp unwind label %bb.cg, !noalias !2446 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.gh = extractvalue { ptr, ptr } %i.gg, 0      ; 2 uses
  %i.gi = extractvalue { ptr, ptr } %i.gg, 1      ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !invariant.load !3, !noalias !2446, !nonnull !3
  %i.gl = invoke noundef zeroext i1 %i.gk(ptr noundef %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.bq unwind label %bb.cg, !noalias !2446

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.gl, label %bb.br, label %bb.bl

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2446
  %i.gm = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry0010___CALLSITE, align 8, !noalias !2446, !nonnull !3, !align !99, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2446
  store ptr @38, ptr %i.ad, align 8, !noalias !2446
  %i.go = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 69 to ptr), ptr %i.go, align 8, !noalias !2446
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !2446
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @18, ptr %i.gp, align 8, !noalias !2446
  store i64 1, ptr %i.af, align 8, !noalias !2446
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !2446
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 1, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !2446
  %i.gq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.gn, ptr %i.gq, align 8, !noalias !2446
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gb, ptr noundef nonnull %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %bb.bs unwind label %bb.cg, !noalias !2446

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2446
  br label %bb.bl

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !2448
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2453
  %i.gr = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 8369) 40, i64 noundef 8) #29, !noalias !2453 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bt, label %bb.bw, !prof !1778

bb.bt:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc39.i.i unwind label %bb.bu, !noalias !2446

.noexc39.i.i:                                     ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.z) #31
          to label %.body31.i.i unwind label %bb.bv, !noalias !2446

bb.bv:                                            ; preds = %bb.bu
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2446
  unreachable

.body31.i.i:                                      ; preds = %bb.bu
end_hunk_1
begin_hunk_2_@_RNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB7_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0Bb_:bb.a
  br label %bb.ff

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2774
  store i64 %i.gq, ptr %i.ar, align 8, !noalias !2779
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.0..sroa_idx20.i, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.i, i64 400, i1 false), !noalias !2779
  call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %i.hd = icmp samesign ult i64 %i.gq, 3
  br i1 %i.hd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.he = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.hf = load i64, ptr %i.he, align 8, !range !535, !alias.scope !2783, !noalias !2785, !noundef !3
  %i.hg = call i64 @llvm.umax.i64(i64 %i.hf, i64 -9223372036854775808)
  %i.hh = and i64 %i.hg, 9223372036854775807
  switch i64 %i.hh, label %bb.bl [
    i64 0, label %bb.bm
    i64 4, label %bb.bt
    i64 7, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2787
  store i64 %i.gq, ptr %i.aq, align 8, !noalias !2779
  %.sroa.4.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.0..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.4.i, i64 400, i1 false), !noalias !2779
  invoke void @_RNvXsb_NtCs9rVkZwOUgsI_13deltalake_aws6errorsNtB5_15LockClientErrorINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8put_item12PutItemErrorNtNtNtB1L_4http8response8ResponseEE4fromB7_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.aq)
          to label %bb.bz unwind label %bb.bx, !noalias !2758

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2787
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, i64 noundef %i.gz, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bo unwind label %bb.bv, !noalias !2788

bb.bn:                                            ; preds = %bb.bk
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bm
  %i.hi = load i64, ptr %i.ap, align 8, !range !65, !noalias !2787, !noundef !3
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !range !6, !noalias !2787, !noundef !3 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  br i1 %i.hj, label %bb.bp, label %bb.bq, !prof !1778

bb.bp:                                            ; preds = %bb.bo
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !2787
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hl, i64 %i.hn) #35
          to label %bb.bu unwind label %bb.bv, !noalias !2788

bb.bq:                                            ; preds = %bb.bo
  %i.ho = load ptr, ptr %i.hm, align 8, !noalias !2787, !nonnull !3, !noundef !3 ; 2 uses
  %i.hp = icmp ule i64 %i.gz, %i.hl
  call void @llvm.assume(i1 %i.hp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2787
  %.not.i.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !2788, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %i.hl, ptr %i.hs, align 8, !alias.scope !2780, !noalias !2789
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.ho, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !2780, !noalias !2789
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %i.gz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2780, !noalias !2789
  %i.ht = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !2780, !noalias !2789
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr nonnull align 1 %i.gx, i64 %i.gz, i1 false), !noalias !2788
  br label %bb.br

bb.bt:                                            ; preds = %bb.br, %bb.bn, %bb.bk
  %.sink.i.i.i = phi i64 [ 2, %bb.br ], [ 4, %bb.bn ], [ 3, %bb.bk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8put_item12PutItemErrorNtNtNtBN_4http8response8ResponseEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(408) %i.ar)
          to label %.thread202 unwind label %bb.bx, !noalias !2758

.thread202:                                       ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2774
  %.sroa.3.0..sroa_idx27.i198 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx27.i198, i64 32, i1 false), !noalias !2790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !noalias !2791
  store i8 1, ptr %i.gl, align 8, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bp
  unreachable

bb.bv:                                            ; preds = %bb.bp, %bb.bm
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation8put_item12PutItemErrorNtNtNtBN_4http8response8ResponseEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(408) %i.ar) #31
          to label %.body5.i unwind label %bb.bw, !noalias !2792

bb.bw:                                            ; preds = %bb.bv
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2792
  unreachable

bb.bx:                                            ; preds = %bb.bt, %bb.bl
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

bb.by:                                            ; preds = %.body.i
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2758
  unreachable

bb.bz:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2787
  %.sroa.025.0.copyload26.pre.i = load i64, ptr %i.as, align 8, !noalias !2790 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2774
  %.sroa.3.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx27.i, i64 32, i1 false), !noalias !2790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i, i64 32, i1 false), !noalias !2791
  store i8 1, ptr %i.gl, align 8, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.hy = icmp eq i64 %.sroa.025.0.copyload26.pre.i, 10
  br i1 %i.hy, label %bb.ca, label %bb.cb

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.fo, %bb.ca
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 4, %bb.fo ], [ 3, %bb.ca ]
  store i8 %.sink, ptr %i.bn, align 1
  ret void

bb.ca:                                            ; preds = %.thread, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  store i64 -9223372036854775780, ptr %0, align 8
  br label %common.ret

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8151, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8151)
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.not.i63 = icmp eq i64 %.sroa.025.0.copyload26.pre.i, 9
  br i1 %.not.i63, label %bb.ff, label %bb.cc

bb.cc:                                            ; preds = %.thread202, %bb.cb
  %.in = phi ptr [ %i.hu, %.thread202 ], [ %i.hz, %bb.cb ]
  %.sroa.025.0.i195205 = phi i64 [ %.sink.i.i.i, %.thread202 ], [ %.sroa.025.0.copyload26.pre.i, %bb.cb ] ; 3 uses
  %i.ia = load ptr, ptr %.in, align 8, !nonnull !3, !align !99, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2793
  store i64 %.sroa.025.0.i195205, ptr %i.ao, align 8, !noalias !2798
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154, i64 32, i1 false), !noalias !2798
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2793
  switch i64 %.sroa.025.0.i195205, label %bb.ec [
    i64 2, label %bb.cg
    i64 3, label %bb.cd
    i64 4, label %bb.ce
  ], !prof !2802

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 187 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #35
          to label %bb.cz unwind label %.body117.thread135.i.i, !noalias !2803

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2805
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 312
  invoke void @_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient19get_lock_table_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.ib)
          to label %bb.dc unwind label %.body117.thread135.i.i, !noalias !2803

bb.cf:                                            ; preds = %bb.da
  br i1 %.sroa.029.2.i.i, label %bb.fd, label %.body61

.body117.thread135.i.i:                           ; preds = %bb.cx, %bb.cv, %bb.cu, %bb.cp, %.noexc106.i.i, %bb.co, %bb.cm, %bb.cj, %bb.ci, %bb.ce, %bb.cd
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.cg:                                            ; preds = %bb.cc
  %i.ic = load i64, ptr %.sroa.4154.0..sroa_idx, align 8, !alias.scope !2799, !noalias !2807, !noundef !3
  store i64 %i.ic, ptr %i.an, align 8, !noalias !2805
  %i.id = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2805
  %i.ie = icmp ult i64 %i.id, 4
  br i1 %i.ie, label %bb.ch, label %bb.cs

bb.ch:                                            ; preds = %bb.cg
  %i.if = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2805 ; 3 uses
  switch i8 %i.if, label %bb.ci [
    i8 0, label %bb.cs
    i8 1, label %bb.cj
    i8 2, label %bb.cj
  ], !prof !1897

bb.ci:                                            ; preds = %bb.ch
  %i.ig = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE)
          to label %bb.ck unwind label %.body117.thread135.i.i, !noalias !2803 ; 2 uses

bb.cj:                                            ; preds = %bb.ch, %bb.ck, %bb.ch
  %.sroa.06.0.i.i = phi i8 [ %i.ig, %bb.ck ], [ %i.if, %bb.ch ], [ %i.if, %bb.ch ]
  %i.ih = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.ii = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ih, i8 noundef %.sroa.06.0.i.i)
          to label %bb.cl unwind label %.body117.thread135.i.i, !noalias !2803

bb.ck:                                            ; preds = %bb.ci
  %i.ij = icmp eq i8 %i.ig, 0
  br i1 %i.ij, label %bb.cs, label %bb.cj

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.ii, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2805
  %i.ik = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2805
  store ptr %i.an, ptr %i.aj, align 8, !noalias !2805
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @41, ptr %i.ak, align 8, !noalias !2805
  %i.im = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.im, align 8, !noalias !2805
  store ptr %i.ak, ptr %i.al, align 8, !noalias !2805
  %i.in = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @18, ptr %i.in, align 8, !noalias !2805
  store i64 1, ptr %i.am, align 8, !noalias !2805
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.08.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.il, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2805
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ik, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am)
          to label %.noexc.i.i unwind label %.body117.thread135.i.i, !noalias !2803

.noexc.i.i:                                       ; preds = %bb.cm
  %i.io = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2808
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %.noexc.i.i
  %i.iq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2808 ; 2 uses
  %i.ir = icmp ult i64 %i.iq, 6
  call void @llvm.assume(i1 %i.ir)
  %i.is = icmp samesign ugt i64 %i.iq, 1
  br i1 %i.is, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.it = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, align 8, !noalias !2808, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !2803, !noundef !3
  store i64 2, ptr %i.c, align 8, !noalias !2808
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.iv, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !2808
  %.sroa.5.0..sroa_idx.i.i.i68 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ix, ptr %.sroa.5.0..sroa_idx.i.i.i68, align 8, !noalias !2808
  %i.iy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc106.i.i unwind label %.body117.thread135.i.i, !noalias !2803 ; 2 uses

.noexc106.i.i:                                    ; preds = %bb.co
  %i.iz = extractvalue { ptr, ptr } %i.iy, 0      ; 2 uses
  %i.ja = extractvalue { ptr, ptr } %i.iy, 1      ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.jd = invoke noundef zeroext i1 %i.jc(ptr noundef %i.iz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #33
          to label %.noexc107.i.i unwind label %.body117.thread135.i.i, !noalias !2803, !inline_history !2811

.noexc107.i.i:                                    ; preds = %.noexc106.i.i
  br i1 %i.jd, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.noexc107.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.it, ptr noundef nonnull %i.iz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ja, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am)
          to label %bb.cq unwind label %.body117.thread135.i.i, !noalias !2803

bb.cq:                                            ; preds = %bb.cp, %.noexc107.i.i, %bb.cn, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2805
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cy, %bb.cw, %bb.ct, %bb.cs, %bb.cq
  %i.je = load i64, ptr %i.an, align 8, !noalias !2805, !noundef !3
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao)
          to label %bb.fg unwind label %bb.fe

bb.cs:                                            ; preds = %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %i.jf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2805
  %i.jg = icmp eq i8 %i.jf, 0
  br i1 %i.jg, label %bb.ct, label %bb.cr

bb.ct:                                            ; preds = %bb.cs
  %i.jh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2805 ; 2 uses
  %i.ji = icmp ult i64 %i.jh, 6
  call void @llvm.assume(i1 %i.ji)
  %i.jj = icmp samesign ugt i64 %i.jh, 1
  br i1 %i.jj, label %bb.cu, label %bb.cr

bb.cu:                                            ; preds = %bb.ct
  %i.jk = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jo = load i64, ptr %i.jn, align 8, !noalias !2803, !noundef !3
  store i64 2, ptr %i.ai, align 8, !noalias !2805
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.jm, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.539.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.jo, ptr %.sroa.539.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.jp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cv unwind label %.body117.thread135.i.i, !noalias !2803 ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.jq = extractvalue { ptr, ptr } %i.jp, 0      ; 2 uses
  %i.jr = extractvalue { ptr, ptr } %i.jp, 1      ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.ju = invoke noundef zeroext i1 %i.jt(ptr noundef %i.jq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.cw unwind label %.body117.thread135.i.i, !noalias !2803

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.ju, label %bb.cx, label %bb.cr

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2805
  %i.jv = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry0010___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2805
  store ptr %i.an, ptr %i.ae, align 8, !noalias !2805
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @41, ptr %i.af, align 8, !noalias !2805
  %i.jx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.jx, align 8, !noalias !2805
  store ptr %i.af, ptr %i.ag, align 8, !noalias !2805
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @18, ptr %i.jy, align 8, !noalias !2805
  store i64 1, ptr %i.ah, align 8, !noalias !2805
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.jw, ptr %i.jz, align 8, !noalias !2805
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jk, ptr noundef nonnull %i.jq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
          to label %bb.cy unwind label %.body117.thread135.i.i, !noalias !2803

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2805
  br label %bb.cr

bb.cz:                                            ; preds = %bb.ew, %bb.cd
  unreachable

bb.da:                                            ; preds = %.body102.i.i, %bb.db
  %.sroa.029.2.i.i = phi i1 [ false, %.body102.i.i ], [ true, %bb.db ]
  %.pn.i.i = phi { ptr, i32 } [ %i.lx, %.body102.i.i ], [ %i.ka, %bb.db ] ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #31
          to label %bb.cf unwind label %bb.eb, !noalias !2803

bb.db:                                            ; preds = %bb.dt, %bb.dr, %bb.dq, %bb.dn, %bb.dl, %.noexc112.i.i, %bb.dk, %bb.di, %bb.df, %bb.de
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.dc:                                            ; preds = %bb.ce
  %i.kb = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2805
  %i.kc = icmp ult i64 %i.kb, 5
  br i1 %i.kc, label %bb.dd, label %bb.do

bb.dd:                                            ; preds = %bb.dc
  %i.kd = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2805 ; 3 uses
  switch i8 %i.kd, label %bb.de [
    i8 0, label %bb.do
    i8 1, label %bb.df
    i8 2, label %bb.df
  ], !prof !1897

bb.de:                                            ; preds = %bb.dd
  %i.ke = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE)
          to label %bb.dg unwind label %bb.db, !noalias !2803 ; 2 uses

bb.df:                                            ; preds = %bb.dd, %bb.dg, %bb.dd
  %.sroa.015.0.i.i = phi i8 [ %i.ke, %bb.dg ], [ %i.kd, %bb.dd ], [ %i.kd, %bb.dd ]
  %i.kf = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.kg = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kf, i8 noundef %.sroa.015.0.i.i)
          to label %bb.dh unwind label %bb.db, !noalias !2803

bb.dg:                                            ; preds = %bb.de
  %i.kh = icmp eq i8 %i.ke, 0
  br i1 %i.kh, label %bb.do, label %bb.df

bb.dh:                                            ; preds = %bb.df
  br i1 %i.kg, label %bb.di, label %bb.do

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2805
  %i.ki = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2805
  store ptr %i.ad, ptr %i.z, align 8, !noalias !2805
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @43, ptr %i.aa, align 8, !noalias !2805
  %i.kk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.kk, align 8, !noalias !2805
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !2805
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @18, ptr %i.kl, align 8, !noalias !2805
  store i64 1, ptr %i.ac, align 8, !noalias !2805
  %.sroa.017.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.017.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.kj, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2805
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ki, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %.noexc111.i.i unwind label %bb.db, !noalias !2803

.noexc111.i.i:                                    ; preds = %bb.di
  %i.km = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2812
  %i.kn = icmp eq i8 %i.km, 0
  br i1 %i.kn, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %.noexc111.i.i
  %i.ko = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2812 ; 2 uses
  %i.kp = icmp ult i64 %i.ko, 6
  call void @llvm.assume(i1 %i.kp)
  %.not.i.i.i67 = icmp eq i64 %i.ko, 0
  br i1 %.not.i.i.i67, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kq = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, align 8, !noalias !2812, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.ku = load i64, ptr %i.kt, align 8, !noalias !2803, !noundef !3
  store i64 1, ptr %i.b, align 8, !noalias !2812
  %.sroa.3.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ks, ptr %.sroa.3.0..sroa_idx.i109.i.i, align 8, !noalias !2812
  %.sroa.5.0..sroa_idx.i110.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ku, ptr %.sroa.5.0..sroa_idx.i110.i.i, align 8, !noalias !2812
  %i.kv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc112.i.i unwind label %bb.db, !noalias !2803 ; 2 uses

.noexc112.i.i:                                    ; preds = %bb.dk
  %i.kw = extractvalue { ptr, ptr } %i.kv, 0      ; 2 uses
  %i.kx = extractvalue { ptr, ptr } %i.kv, 1      ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.la = invoke noundef zeroext i1 %i.kz(ptr noundef %i.kw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #33
          to label %.noexc113.i.i unwind label %bb.db, !noalias !2803, !inline_history !2815

.noexc113.i.i:                                    ; preds = %.noexc112.i.i
  br i1 %i.la, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.noexc113.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kq, ptr noundef nonnull %i.kw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.dm unwind label %bb.db, !noalias !2803

bb.dm:                                            ; preds = %bb.dl, %.noexc113.i.i, %bb.dj, %.noexc111.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2805
  br label %bb.dn

bb.dn:                                            ; preds = %bb.du, %bb.ds, %bb.dp, %bb.do, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2805
  store ptr %i.ad, ptr %i.r, align 8, !noalias !2805
  %.sroa.468.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.468.0..sroa_idx.i.i, align 8, !noalias !2805
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @44, ptr noundef nonnull %i.r)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.db, !noalias !2803

bb.do:                                            ; preds = %bb.dh, %bb.dg, %bb.dd, %bb.dc
  %i.lb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2805
  %i.lc = icmp eq i8 %i.lb, 0
  br i1 %i.lc, label %bb.dp, label %bb.dn

bb.dp:                                            ; preds = %bb.do
  %i.ld = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2805 ; 2 uses
  %i.le = icmp ult i64 %i.ld, 6
  call void @llvm.assume(i1 %i.le)
  %.not.i.i66 = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i66, label %bb.dn, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lf = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.lj = load i64, ptr %i.li, align 8, !noalias !2803, !noundef !3
  store i64 1, ptr %i.y, align 8, !noalias !2805
  %.sroa.356.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.lh, ptr %.sroa.356.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.lj, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.lk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dr unwind label %bb.db, !noalias !2803 ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.ll = extractvalue { ptr, ptr } %i.lk, 0      ; 2 uses
  %i.lm = extractvalue { ptr, ptr } %i.lk, 1      ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.lp = invoke noundef zeroext i1 %i.lo(ptr noundef %i.ll, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.ds unwind label %bb.db, !noalias !2803

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.lp, label %bb.dt, label %bb.dn

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2805
  %i.lq = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2805
  store ptr %i.ad, ptr %i.u, align 8, !noalias !2805
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @43, ptr %i.v, align 8, !noalias !2805
  %i.ls = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.ls, align 8, !noalias !2805
  store ptr %i.v, ptr %i.w, align 8, !noalias !2805
  %i.lt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @18, ptr %i.lt, align 8, !noalias !2805
  store i64 1, ptr %i.x, align 8, !noalias !2805
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.463.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.lu = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.lr, ptr %i.lu, align 8, !noalias !2805
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lf, ptr noundef nonnull %i.ll, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.du unwind label %bb.db, !noalias !2803

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2805
  br label %bb.dn

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !2807
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2816
  %i.lv = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 8369) 40, i64 noundef 8) #29, !noalias !2816 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.dv, label %bb.dy, !prof !1778

bb.dv:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc116.i.i unwind label %bb.dw, !noalias !2803

.noexc116.i.i:                                    ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q) #31
          to label %.body102.i.i unwind label %bb.dx, !noalias !2803

bb.dx:                                            ; preds = %bb.dw
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2803
  unreachable

.body102.i.i:                                     ; preds = %bb.dw
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #31
          to label %bb.da unwind label %bb.eb, !noalias !2803

bb.dy:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lv, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !2803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2805
  %.sroa.6.8.copyload.i = load i64, ptr %i.t, align 8, !noalias !2819
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i, i64 16, i1 false), !noalias !2819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2805
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.dz, !noalias !2803

bb.dz:                                            ; preds = %bb.dy
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body61 unwind label %bb.ea, !noalias !2803

bb.ea:                                            ; preds = %bb.dz
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2803
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.dy
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc70 unwind label %bb.fe

.noexc70:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2805
  br label %bb.fg

bb.eb:                                            ; preds = %bb.fd, %bb.fc, %.body.i.i, %.body102.i.i, %bb.da
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2820
  unreachable

bb.ec:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2805
  store i64 %.sroa.025.0.i195205, ptr %i.p, align 8, !noalias !2798
  %.sroa.4154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154.0..sroa_idx155, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4154, i64 32, i1 false), !noalias !2798
  %i.mc = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2805
  %i.md = icmp ult i64 %i.mc, 5
  br i1 %i.md, label %bb.ed, label %bb.eo

bb.ed:                                            ; preds = %bb.ec
  %i.me = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2805 ; 3 uses
  switch i8 %i.me, label %bb.ee [
    i8 0, label %bb.eo
    i8 1, label %bb.ef
    i8 2, label %bb.ef
  ], !prof !1897

bb.ee:                                            ; preds = %bb.ed
  %i.mf = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE)
          to label %bb.eg unwind label %bb.fc, !noalias !2803 ; 2 uses

bb.ef:                                            ; preds = %bb.ed, %bb.eg, %bb.ed
  %.sroa.025.0.i.i = phi i8 [ %i.mf, %bb.eg ], [ %i.me, %bb.ed ], [ %i.me, %bb.ed ]
  %i.mg = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.mh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mg, i8 noundef %.sroa.025.0.i.i)
          to label %bb.eh unwind label %bb.fc, !noalias !2803

bb.eg:                                            ; preds = %bb.ee
  %i.mi = icmp eq i8 %i.mf, 0
  br i1 %i.mi, label %bb.eo, label %bb.ef

bb.eh:                                            ; preds = %bb.ef
  br i1 %i.mh, label %bb.ei, label %bb.eo

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2805
  %i.mj = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2805
  store ptr %i.p, ptr %i.l, align 8, !noalias !2805
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs8_NtCs9rVkZwOUgsI_13deltalake_aws6errorsNtB5_15LockClientErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @45, ptr %i.m, align 8, !noalias !2805
  %i.ml = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.ml, align 8, !noalias !2805
  store ptr %i.m, ptr %i.n, align 8, !noalias !2805
  %i.mm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @18, ptr %i.mm, align 8, !noalias !2805
  store i64 1, ptr %i.o, align 8, !noalias !2805
  %.sroa.027.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.027.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.mk, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2805
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc123.i.i unwind label %bb.fc, !noalias !2803

.noexc123.i.i:                                    ; preds = %bb.ei
  %i.mn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2821
  %i.mo = icmp eq i8 %i.mn, 0
  br i1 %i.mo, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %.noexc123.i.i
  %i.mp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2821 ; 2 uses
  %i.mq = icmp ult i64 %i.mp, 6
  call void @llvm.assume(i1 %i.mq)
  %.not.i120.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i120.i.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mr = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, align 8, !noalias !2821, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.mv = load i64, ptr %i.mu, align 8, !noalias !2803, !noundef !3
  store i64 1, ptr %i.a, align 8, !noalias !2821
  %.sroa.3.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.mt, ptr %.sroa.3.0..sroa_idx.i121.i.i, align 8, !noalias !2821
  %.sroa.5.0..sroa_idx.i122.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.mv, ptr %.sroa.5.0..sroa_idx.i122.i.i, align 8, !noalias !2821
  %i.mw = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc124.i.i unwind label %bb.fc, !noalias !2803 ; 2 uses

.noexc124.i.i:                                    ; preds = %bb.ek
  %i.mx = extractvalue { ptr, ptr } %i.mw, 0      ; 2 uses
  %i.my = extractvalue { ptr, ptr } %i.mw, 1      ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.nb = invoke noundef zeroext i1 %i.na(ptr noundef %i.mx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #33
          to label %.noexc125.i.i unwind label %bb.fc, !noalias !2803, !inline_history !2824

.noexc125.i.i:                                    ; preds = %.noexc124.i.i
  br i1 %i.nb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.noexc125.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mr, ptr noundef nonnull %i.mx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.my, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.em unwind label %bb.fc, !noalias !2803

bb.em:                                            ; preds = %bb.el, %.noexc125.i.i, %bb.ej, %.noexc123.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2805
  br label %bb.en

bb.en:                                            ; preds = %bb.eu, %bb.es, %bb.ep, %bb.eo, %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2805
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 41, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ev unwind label %bb.fc, !noalias !2803

bb.eo:                                            ; preds = %bb.eh, %bb.eg, %bb.ed, %bb.ec
  %i.nc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2805
  %i.nd = icmp eq i8 %i.nc, 0
  br i1 %i.nd, label %bb.ep, label %bb.en

bb.ep:                                            ; preds = %bb.eo
  %i.ne = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2805 ; 2 uses
  %i.nf = icmp ult i64 %i.ne, 6
  call void @llvm.assume(i1 %i.nf)
  %.not96.i.i = icmp eq i64 %i.ne, 0
  br i1 %.not96.i.i, label %bb.en, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ng = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !2803, !nonnull !3, !noundef !3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !2803, !noundef !3
  store i64 1, ptr %i.k, align 8, !noalias !2805
  %.sroa.380.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ni, ptr %.sroa.380.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.581.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.nk, ptr %.sroa.581.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.nl = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.er unwind label %bb.fc, !noalias !2803 ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.nm = extractvalue { ptr, ptr } %i.nl, 0      ; 2 uses
  %i.nn = extractvalue { ptr, ptr } %i.nl, 1      ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !invariant.load !3, !noalias !2803, !nonnull !3
  %i.nq = invoke noundef zeroext i1 %i.np(ptr noundef %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.es unwind label %bb.fc, !noalias !2803

bb.es:                                            ; preds = %bb.er
  br i1 %i.nq, label %bb.et, label %bb.en

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2805
  %i.nr = load ptr, ptr @_RNvNCNCNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtBb_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry00s0_10___CALLSITE, align 8, !noalias !2805, !nonnull !3, !align !99, !noundef !3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2805
  store ptr %i.p, ptr %i.g, align 8, !noalias !2805
  %.sroa.485.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs8_NtCs9rVkZwOUgsI_13deltalake_aws6errorsNtB5_15LockClientErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.485.0..sroa_idx.i.i, align 8, !noalias !2805
  store ptr @45, ptr %i.h, align 8, !noalias !2805
  %i.nt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.nt, align 8, !noalias !2805
  store ptr %i.h, ptr %i.i, align 8, !noalias !2805
  %i.nu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @18, ptr %i.nu, align 8, !noalias !2805
  store i64 1, ptr %i.j, align 8, !noalias !2805
  %.sroa.487.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.487.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.588.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.588.0..sroa_idx.i.i, align 8, !noalias !2805
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ns, ptr %i.nv, align 8, !noalias !2805
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ng, ptr noundef nonnull %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.eu unwind label %bb.fc, !noalias !2803

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2805
  br label %bb.en

bb.ev:                                            ; preds = %bb.en
  %i.nw = load i64, ptr %i.d, align 8, !range !65, !noalias !2805, !noundef !3
  %i.nx = trunc nuw i64 %i.nw to i1
  %i.ny = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !range !6, !noalias !2805, !noundef !3 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.nx, label %bb.ew, label %bb.ex, !prof !1778

bb.ew:                                            ; preds = %bb.ev
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !2805
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.nz, i64 %i.ob) #35
          to label %bb.cz unwind label %bb.fc, !noalias !2803

bb.ex:                                            ; preds = %bb.ev
  %i.oc = load ptr, ptr %i.oa, align 8, !noalias !2805, !nonnull !3, !noundef !3 ; 2 uses
  %i.od = icmp samesign ugt i64 %i.nz, 40
  call void @llvm.assume(i1 %i.od)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.oc, ptr noundef nonnull align 1 dereferenceable(41) @46, i64 41, i1 false), !noalias !2803
  store i64 %i.nz, ptr %i.f, align 8, !noalias !2805
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.oc, ptr %.sroa.490.0..sroa_idx.i.i, align 8, !noalias !2805
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 41, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2805
end_hunk_2
begin_hunk_3_@_RNvXsz_NtCs2pqxYH9ZEk8_3std4timeNtB5_15SystemTimeErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_table16CreateTableErrorENtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @203, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_table16CreateTableErrorENtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @204, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2y6mmZ7bjoM_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @205, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @203, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors15LockClientErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @206, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors19DynamoDbConfigErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @203, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors19DynamoDbConfigErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9rVkZwOUgsI_13deltalake_aws6errors19DynamoDbConfigErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @207, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @203, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @208, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore15transaction_urlB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(920) %1, ptr noalias readonly align 1 captures(none) dead_on_return %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %i.d, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.g = load i32, ptr %i.f, align 4, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 8
  store <4 x i32> %i.i, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <2 x i16>, ptr %i.e, align 8
  store <2 x i16> %i.j, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <4 x i32>, ptr %i.c, align 4
  store <4 x i32> %i.k, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.g, ptr %.sroa.14.0..sroa_idx, align 4
  store i64 -9223372036854775711, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore16object_store_urlB8_(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(920) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore16object_store_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_locationB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(920) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.b, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !3191
  %i.c = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 8369) 168, i64 noundef 8) #29, !noalias !3191 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBP_.exit, !prof !1778

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0EBR_(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_location0E3newBP_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @209, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6engineB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(920) %0, ptr noalias nofree readnone align 1 captures(none) dead_on_return %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3194, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3194, !nonnull !3, !align !99, !noundef !3
  %i.e = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !noalias !3194
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store.exit: ; preds = %bb.a
  %i.g = tail call { ptr, ptr } @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore10get_engine(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.d)
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6to_uriB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(920) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore6to_uri(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8log_pathB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b, !prof !2397

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore14DELTA_LOG_PATH
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8root_urlB8_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(920) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @203, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs9rVkZwOUgsI_13deltalake_aws(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @210, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16TransactionErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtB6_5Debug3fmtBy_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SyncNtB28_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types10__condition9ConditionEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types23__attribute_value_update20AttributeValueUpdateEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types25__expected_attribute_value22ExpectedAttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types9__capacity8CapacityEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBT_18runtime_components7TrackedNtBR_16SharedAuthSchemeEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBT_18runtime_components7TrackedNtNtBT_8identity22SharedIdentityResolverEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCsjPG5xYjJYir_9aws_types6origin6OriginEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map6BucketNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBI_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBK_12interceptors17SharedInterceptorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtBK_7retries11classifiers21SharedRetryClassifierEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types18__throttling_reason16ThrottlingReasonENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4ZQtPNQO4Jt_4http6header3map6BucketNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtBP_21SharedConfigValidatorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBR_12interceptors17SharedInterceptorEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtNtBR_7retries11classifiers21SharedRetryClassifierEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB7_6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
