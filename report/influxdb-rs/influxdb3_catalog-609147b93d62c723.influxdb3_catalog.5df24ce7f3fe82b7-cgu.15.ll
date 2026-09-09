Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.15?download=true
inline.NumInlined: 2685
inline.NumDeleted: 1200
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v16updateNtB5_26DatabaseCatalogTransaction15table_or_create:bb.a
  store i32 %i.ec, ptr %i.k, align 4
  store ptr %i.l, ptr %i.m, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @343, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.v, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @344, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.k, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @348, ptr %i.eh, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.557.0..sroa_idx, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.dz, ptr %i.ei, align 8
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn, ptr noundef nonnull %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.du, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.av unwind label %bb.ad

bb.au:                                            ; preds = %bb.as, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.an

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.au

bb.aw:                                            ; preds = %bb.an
  %i.ej = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.ek = load i64, ptr %i.ap, align 8, !noundef !6
  %i.el = getelementptr inbounds nuw i8, ptr %i.cn, i64 656 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !6, !noundef !6
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.bc, label %bb.ay

bb.ax:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cn, i64 664
  %i.eq = load ptr, ptr %i.el, align 8, !nonnull !6, !noundef !6
  %i.er = load i64, ptr %i.ep, align 8, !noundef !6
  %i.es = getelementptr inbounds nuw i8, ptr %i.cn, i64 720
  %i.et = load i32, ptr %i.es, align 8, !noundef !6
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.eu, align 8
  %.sroa.026.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.026.sroa.4.0..sroa_idx, align 8
  %.sroa.026.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.026.sroa.6.sroa.4.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.026.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.026.sroa.6.sroa.4.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.026.sroa.6.sroa.5.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 0, ptr %.sroa.026.sroa.6.sroa.5.0..sroa.026.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 -1, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.ej, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.ek, ptr %.sroa.830.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.eq, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.er, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i32 %i.ah, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  store i32 %i.et, ptr %.sroa.12.0..sroa_idx, align 4
  store i64 7, ptr %i.j, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !4700, !noalias !4701, !noundef !6 ; 3 uses
  %i.ex = load i64, ptr %1, align 8, !range !14, !alias.scope !4700, !noalias !4701, !noundef !6
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bd unwind label %bb.ba, !noalias !4701

bb.ba:                                            ; preds = %bb.az
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.j) #36
          to label %.body75 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.bc:                                            ; preds = %bb.aw
  call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %bb.az, %bb.ay
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !4700, !noalias !4701, !nonnull !6, !noundef !6
  %i.fd = getelementptr inbounds nuw [152 x i8], ptr %i.fc, i64 %i.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.fd, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  %i.fe = add i64 %i.ew, 1
  store i64 %i.fe, ptr %i.ev, align 8, !alias.scope !4700, !noalias !4701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %i.ff, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !4702)
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  %i.fg = load ptr, ptr %i.u, align 8, !alias.scope !4704, !nonnull !6, !noundef !6
  %i.fh = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !4704
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.be, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit77

bb.be:                                            ; preds = %bb.bd
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit77

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit77: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ae, %bb.h
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %.pn

bb.bg:                                            ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit73, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit77
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v16updateNtB5_26DatabaseCatalogTransaction16column_or_create(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 noundef range(i8 0, 7) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [744 x i8], align 8               ; 6 uses
  %i.m = alloca [80 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [152 x i8], align 8               ; 14 uses
  %i.q = alloca [2 x i8], align 2                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [64 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [2 x i8], align 2                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [728 x i8], align 8              ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 10 uses
  %i.ae = alloca [80 x i8], align 8               ; 4 uses
  %i.af = alloca [80 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [8 x i8], align 8                ; 14 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  store ptr %4, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i64 %5, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !6, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = tail call noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtB7_7catalog8versions2v115TableDefinitionE11get_by_nameB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 3 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.ap, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtB7_7catalog8versions2v116ColumnDefinitionE11get_by_nameB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(728) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %_RINvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_15TableDefinition17column_definitionReEBc_.exit unwind label %bb.e ; 10 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.as = load i64, ptr %i.k, align 8, !range !7, !noundef !6
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !10, !noundef !6 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.at, label %bb.cj, label %bb.ck, !prof !11

.thread:                                          ; preds = %bb.ch, %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151, %bb.e
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.ch ], [ %.pn102, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151 ], [ %i.ba, %bb.e ], [ %.pn102, %bb.ci ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4782)
  call void @llvm.experimental.noalias.scope.decl(metadata !4783)
  %i.ax = load ptr, ptr %i.aj, align 8, !alias.scope !4784, !nonnull !6, !noundef !6
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !4784
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit

bb.d:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit unwind label %bb.bo

bb.e:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_15TableDefinition17column_definitionReEBc_.exit: ; preds = %bb.b
  store ptr %i.ar, ptr %i.ai, align 8
  %.not90 = icmp eq ptr %i.ar, null               ; 2 uses
  br i1 %.not90, label %bb.g, label %bb.cb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151: ; preds = %bb.bh, %bb.v, %bb.bw, %bb.bx, %.thread187, %bb.f
  %.pn102 = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %.pn94186, %.thread187 ], [ %.pn99.ph, %bb.bx ], [ %.pn99.ph, %bb.bw ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.kl, %bb.bh ] ; 3 uses
  %i.bb = load ptr, ptr %i.ai, align 8, !noundef !6 ; 2 uses
  %i.bc = icmp ne ptr %i.bb, null
  %or.cond = and i1 %.not90, %i.bc
  br i1 %or.cond, label %bb.ch, label %.thread

bb.f:                                             ; preds = %bb.cg, %bb.ce, %bb.bt, %bb.k, %bb.i, %bb.by, %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151

bb.g:                                             ; preds = %_RINvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_15TableDefinition17column_definitionReEBc_.exit
  %i.be = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 672
  %.val106 = load ptr, ptr %i.bf, align 8, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %.val106, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !6 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !6 ; 2 uses
  %.not91 = icmp ult i64 %i.bh, %i.bj
  br i1 %.not91, label %bb.h, label %bb.by

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i8 %6, 6
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4785)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !4785, !nonnull !6, !noundef !6 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !4785, !noundef !6 ; 2 uses
  %.idx.i = mul i64 %i.bo, 24                     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4785
  store ptr %i.bm, ptr %i.i, align 8, !noalias !4785
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !4785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4785
  invoke void @_RNvXsS_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_6ValuesNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB2a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc108 unwind label %bb.f

.noexc108:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4785
  %i.br = icmp eq i64 %i.bo, 0
  br i1 %i.br, label %.thread170, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc108
  %i.bs = add i64 %.idx.i, -24                    ; 2 uses
  %i.bt = udiv i64 %i.bs, 24
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 3 uses
  %i.bv = icmp ult i64 %i.bs, 72
  br i1 %i.bv, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bu, 2305843009213693948
  br label %.lr.ph.i.i.i

.thread170:                                       ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4785
  br label %bb.j

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.011.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i.i ]
  %.sroa.0.0610.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader.new ], [ %i.cr, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i, i64 24
  %.val.i.i.i = load ptr, ptr %.sroa.0.0610.i.i.i, align 8, !alias.scope !4786, !noalias !4785, !nonnull !6, !noundef !6
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 34
  %i.by = load i8, ptr %i.bx, align 2, !range !53, !noalias !4787, !noundef !6 ; 2 uses
  %i.bz = icmp ne i8 %i.by, 6
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i8 %i.by, 5
  %i.cb = zext i1 %i.ca to i64
  %i.cc = add i64 %.sroa.0.011.i.i.i, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i, i64 48
  %.val.i.i.i.1 = load ptr, ptr %i.bw, align 8, !alias.scope !4786, !noalias !4785, !nonnull !6, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i.i.1, i64 34
  %i.cf = load i8, ptr %i.ce, align 2, !range !53, !noalias !4787, !noundef !6 ; 2 uses
  %i.cg = icmp ne i8 %i.cf, 6
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i8 %i.cf, 5
  %i.ci = zext i1 %i.ch to i64
  %i.cj = add i64 %i.cc, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i, i64 72
  %.val.i.i.i.2 = load ptr, ptr %i.cd, align 8, !alias.scope !4786, !noalias !4785, !nonnull !6, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.2, i64 34
  %i.cm = load i8, ptr %i.cl, align 2, !range !53, !noalias !4787, !noundef !6 ; 2 uses
  %i.cn = icmp ne i8 %i.cm, 6
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp eq i8 %i.cm, 5
  %i.cp = zext i1 %i.co to i64
  %i.cq = add i64 %i.cj, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i, i64 96 ; 2 uses
  %.val.i.i.i.3 = load ptr, ptr %i.ck, align 8, !alias.scope !4786, !noalias !4785, !nonnull !6, !noundef !6
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.3, i64 34
  %i.ct = load i8, ptr %i.cs, align 2, !range !53, !noalias !4787, !noundef !6 ; 2 uses
  %i.cu = icmp ne i8 %i.ct, 6
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp eq i8 %i.ct, 5
  %i.cw = zext i1 %i.cv to i64
  %i.cx = add i64 %i.cq, %i.cw                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %.thread170, %.epilog-lcssa, %bb.h
  %i.cy = load ptr, ptr %i.am, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 432
  %i.da = load i32, ptr %i.cz, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 416 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !6, !noundef !6
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %bb.p, label %bb.o

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.011.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cx, %.unr-lcssa ]
  %.sroa.0.0610.i.i.i.epil.init = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.cr, %.unr-lcssa ]
  %lcmp.mod239 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod239)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.011.i.i.i.epil = phi i64 [ %i.dl, %.lr.ph.i.i.i.epil ], [ %.sroa.0.011.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.0.0610.i.i.i.epil = phi ptr [ %i.df, %.lr.ph.i.i.i.epil ], [ %.sroa.0.0610.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i.epil, i64 24
  %.val.i.i.i.epil = load ptr, ptr %.sroa.0.0610.i.i.i.epil, align 8, !alias.scope !4786, !noalias !4785, !nonnull !6, !noundef !6
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.epil, i64 34
  %i.dh = load i8, ptr %i.dg, align 2, !range !53, !noalias !4787, !noundef !6 ; 2 uses
  %i.di = icmp ne i8 %i.dh, 6
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i8 %i.dh, 5
  %i.dk = zext i1 %i.dj to i64
  %i.dl = add i64 %.sroa.0.011.i.i.i.epil, %i.dk  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.i.i.epil, !llvm.loop !4715

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.i.epil, %.unr-lcssa
  %.lcssa237 = phi i64 [ %i.cx, %.unr-lcssa ], [ %i.dl, %.lr.ph.i.i.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4785
  %i.dm = icmp ugt i64 %.lcssa237, 4095
  br i1 %i.dm, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.dn = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4788)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !4788, !nonnull !6, !noundef !6 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !4788, !noundef !6 ; 2 uses
  %.idx.i109 = mul i64 %i.dr, 24                  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx.i109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4788
  store ptr %i.dp, ptr %i.g, align 8, !noalias !4788
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !4788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4788
  invoke void @_RNvXsS_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_6ValuesNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB2a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc115 unwind label %bb.f

.noexc115:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4788
  %i.du = icmp eq i64 %i.dr, 0
  br i1 %i.du, label %.loopexit, label %.lr.ph.i.i.i110.preheader

.lr.ph.i.i.i110.preheader:                        ; preds = %.noexc115
  %i.dv = add i64 %.idx.i109, -24                 ; 2 uses
  %i.dw = udiv i64 %i.dv, 24
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %xtraiter240 = and i64 %i.dx, 3                 ; 3 uses
  %i.dy = icmp ult i64 %i.dv, 72
  br i1 %i.dy, label %.lr.ph.i.i.i110.epil.preheader, label %.lr.ph.i.i.i110.preheader.new

.lr.ph.i.i.i110.preheader.new:                    ; preds = %.lr.ph.i.i.i110.preheader
  %unroll_iter245 = and i64 %i.dx, 2305843009213693948
  br label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %.lr.ph.i.i.i110, %.lr.ph.i.i.i110.preheader.new
  %.sroa.0.011.i.i.i111 = phi i64 [ 0, %.lr.ph.i.i.i110.preheader.new ], [ %i.fa, %.lr.ph.i.i.i110 ]
  %.sroa.0.0610.i.i.i112 = phi ptr [ %i.dp, %.lr.ph.i.i.i110.preheader.new ], [ %i.eu, %.lr.ph.i.i.i110 ] ; 5 uses
  %niter246 = phi i64 [ 0, %.lr.ph.i.i.i110.preheader.new ], [ %niter246.next.3, %.lr.ph.i.i.i110 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0610.i.i.i112, i64 24
  %.val.i.i.i113 = load ptr, ptr %.sroa.0.0610.i.i.i112, align 8, !alias.scope !4789, !noalias !4788, !nonnull !6, !noundef !6
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i.i113, i64 34
  %i.eb = load i8, ptr %i.ea, align 2, !range !53, !noalias !4790, !noundef !6 ; 2 uses
  %i.ec = icmp ne i8 %i.eb, 6
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i8 %i.eb, 5
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v16updateNtB5_26DatabaseCatalogTransaction16column_or_create:bb.a
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !4799, !noalias !4800, !nonnull !6, !noundef !6
  %i.kf = getelementptr inbounds nuw [152 x i8], ptr %i.ke, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.kf, ptr noundef nonnull align 8 dereferenceable(152) %i.p, i64 152, i1 false)
  %i.kg = add i64 %i.jy, 1
  store i64 %i.kg, ptr %i.jx, align 8, !alias.scope !4799, !noalias !4800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %i.kh, ptr noundef nonnull align 8 dereferenceable(728) %i.ab, i64 728, i1 false)
  store i64 1, ptr %i.l, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.ki, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !4801
  %i.kj = call noundef align 8 dereferenceable_or_null(744) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 825) 744, i64 noundef 8) #38, !noalias !4801 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.bg, label %bb.bj, !prof !11

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 744) #35
          to label %.noexc133 unwind label %bb.bh

.noexc133:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(728) %i.kh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(744) %i.kj, ptr noundef nonnull align 8 dereferenceable(744) %i.l, i64 744, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4802
  invoke void @_RINvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB6_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtNtNtNtB8_7catalog8versions2v115TableDefinitionE6updateINtNtCscdodAO9FK5_5alloc4sync3ArcB1L_EEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(440) %i.fq, i32 noundef %i.fu, ptr noundef nonnull %i.kj)
          to label %.noexc137 unwind label %bb.v

.noexc137:                                        ; preds = %bb.bj
  %i.kn = load i32, ptr %i.b, align 8, !range !52, !noalias !4802, !noundef !6
  %.not.i136 = icmp eq i32 %i.kn, -1
  br i1 %.not.i136, label %_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %.noexc137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !4802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4802
  invoke void @_RNvXs_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryNtNtB6_5error12CatalogErrorINtNtCs4NRVxsYgnAr_4core7convert4FromINtB4_15RepositoryErrorNtCsbFlE7Gjht9i_12influxdb3_id7TableIdEE4fromB6_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit unwind label %bb.v

_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit.thread: ; preds = %.noexc137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4802
  br label %bb.bl

_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4802
  %.pr = load i8, ptr %i.m, align 8
  %.not96 = icmp eq i8 %.pr, -1
  br i1 %.not96, label %bb.bl, label %.thread210

.thread210:                                       ; preds = %_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit145

bb.bl:                                            ; preds = %_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit.thread, %_RNvMsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_14DatabaseSchema12update_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.gs, ptr %i.ko, align 2
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit159, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !4803)
  call void @llvm.experimental.noalias.scope.decl(metadata !4804)
  %i.kp = load ptr, ptr %i.aj, align 8, !alias.scope !4805, !nonnull !6, !noundef !6
  %i.kq = atomicrmw sub ptr %i.kp, i64 1 release, align 8, !noalias !4805
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit139

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit139

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit139: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ca

bb.bo:                                            ; preds = %bb.ci, %bb.bx, %bb.bv, %bb.bp, %bb.ax, %bb.d, %.thread191
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !4806)
  call void @llvm.experimental.noalias.scope.decl(metadata !4807)
  %i.kt = load ptr, ptr %i.o, align 8, !alias.scope !4808, !nonnull !6, !noundef !6
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !4808
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.bp, label %.thread191

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.thread191 unwind label %bb.bo

bb.bq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !4809)
  call void @llvm.experimental.noalias.scope.decl(metadata !4810)
  %i.kw = load ptr, ptr %i.ac, align 8, !alias.scope !4811, !nonnull !6, !noundef !6
  %i.kx = atomicrmw sub ptr %i.kw, i64 1 release, align 8, !noalias !4811
  %i.ky = icmp eq i64 %i.kx, 1
  br i1 %i.ky, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.bs unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit145: ; preds = %bb.bs, %bb.bt, %.thread210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.m

bb.bs:                                            ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.experimental.noalias.scope.decl(metadata !4812)
  call void @llvm.experimental.noalias.scope.decl(metadata !4813)
  %i.kz = load ptr, ptr %i.ad, align 8, !alias.scope !4814, !nonnull !6, !noundef !6
  %i.la = atomicrmw sub ptr %i.kz, i64 1 release, align 8, !noalias !4814
  %i.lb = icmp eq i64 %i.la, 1
  br i1 %i.lb, label %bb.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit145

bb.bt:                                            ; preds = %bb.bs
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit145 unwind label %bb.f

.thread191:                                       ; preds = %bb.x, %bb.ab, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit, %bb.bp, %bb.bd, %.thread196
  %.pn94186 = phi { ptr, i32 } [ %i.kb, %bb.bd ], [ %lpad.thr_comm, %.thread196 ], [ %.pn, %bb.bp ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.gu, %bb.x ], [ %lpad.thr_comm.i, %bb.ab ], [ %lpad.thr_comm.i, %bb.aa ] ; 2 uses
  %.sroa.049.1185 = phi i1 [ false, %bb.bd ], [ true, %.thread196 ], [ false, %bb.bp ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit ], [ true, %bb.x ], [ true, %bb.ab ], [ true, %bb.aa ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(728) %i.ab) #36
          to label %.thread187 unwind label %bb.bo

bb.bu:                                            ; preds = %.thread176, %.thread187
  %.pn97179 = phi { ptr, i32 } [ %i.gf, %.thread176 ], [ %.pn94186, %.thread187 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4815)
  call void @llvm.experimental.noalias.scope.decl(metadata !4816)
  %i.lc = load ptr, ptr %i.ac, align 8, !alias.scope !4817, !nonnull !6, !noundef !6
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 release, align 8, !noalias !4817
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.bw unwind label %bb.bo

bb.bw:                                            ; preds = %bb.q, %bb.bv, %bb.bu
  %.pn99.ph = phi { ptr, i32 } [ %i.fr, %bb.q ], [ %.pn97179, %bb.bv ], [ %.pn97179, %bb.bu ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4818)
  call void @llvm.experimental.noalias.scope.decl(metadata !4819)
  %i.lf = load ptr, ptr %i.ad, align 8, !alias.scope !4820, !nonnull !6, !noundef !6
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !4820
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151 unwind label %bb.bo

bb.by:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.li = add i64 %i.bh, 1
  invoke void @_RINvMs0_NtCs844E4pPEVZX_17influxdb3_catalog5errorNtB6_12CatalogError16too_many_columnsReEB8_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.li, i64 noundef %i.bj)
          to label %bb.bz unwind label %bb.f

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.m

bb.ca:                                            ; preds = %bb.cl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit139, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit117
  ret void

bb.cb:                                            ; preds = %_RINvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_15TableDefinition17column_definitionReEBc_.exit
  %7 = shl nuw nsw i8 %6, 3
  %switch.shiftamt = zext nneg i8 %7 to i56
  %switch.downshift = lshr i56 1415097335809542, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %8 = shl nuw nsw i8 %6, 3
  %switch.shiftamt230 = zext nneg i8 %8 to i56
  %switch.downshift231 = lshr i56 1415088644948227, %switch.shiftamt230
  %switch.masked232 = trunc i56 %switch.downshift231 to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ar, i64 34 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 2, !range !53, !noundef !6 ; 4 uses
  %i.ll = icmp ne i8 %i.lk, 6
  tail call void @llvm.assume(i1 %i.ll)
  %9 = icmp samesign ugt i8 %i.lk, 4              ; 2 uses
  %10 = select i1 %9, i8 %i.lk, i8 6
  %11 = icmp eq i8 %10, %switch.masked
  %12 = icmp eq i8 %i.lk, %switch.masked232
  %or.cond105 = or i1 %9, %12
  %or.cond214 = and i1 %or.cond105, %11
  br i1 %or.cond214, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ar, ptr %i.ag, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !nonnull !6, !noundef !6
  %i.lo = atomicrmw add ptr %i.ln, i64 1 monotonic, align 8
  %i.lp = icmp slt i64 %i.lo, 0
  br i1 %i.lp, label %bb.cf, label %switch.lookup232

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ar, ptr %i.ah, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.lr = load i16, ptr %i.lq, align 8, !noundef !6
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.lr, ptr %i.ls, align 2
  store i8 -1, ptr %0, align 8
  %i.lt = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !4821
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.ce, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit unwind label %bb.f

switch.lookup232:                                 ; preds = %bb.cc
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.lw = load ptr, ptr %i.lm, align 8, !nonnull !6, !noundef !6
  %i.lx = load i64, ptr %i.lv, align 8, !noundef !6
  %i.ly = load i8, ptr %i.lj, align 2, !range !53, !noundef !6
  %i.lz = shl nuw nsw i8 %6, 3
  %switch.shiftamt234 = zext nneg i8 %i.lz to i56
  %switch.downshift235 = lshr i56 1415088644948227, %switch.shiftamt234
  %switch.masked236 = trunc i56 %switch.downshift235 to i8
  store i8 14, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ly, ptr %.sroa.47.0..sroa_idx, align 1
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %switch.masked236, ptr %.sroa.58.0..sroa_idx, align 2
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lw, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.lx, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ma = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !4822
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit159

bb.cf:                                            ; preds = %bb.cc
  tail call void @llvm.trap()
  unreachable

bb.cg:                                            ; preds = %switch.lookup232
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit159 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit159: ; preds = %switch.lookup232, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bm

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.bm

bb.ch:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit151
  %i.mc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !4823
  %i.md = icmp eq i64 %i.mc, 1
  br i1 %i.md, label %bb.ci, label %.thread

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.thread unwind label %bb.bo

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1g_.exit: ; preds = %.thread, %bb.d
  resume { ptr, i32 } %.pn102.pn

bb.cj:                                            ; preds = %bb.c
  %i.me = load i64, ptr %i.aw, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.me) #35
  unreachable

bb.ck:                                            ; preds = %bb.c
  %i.mf = load ptr, ptr %i.aw, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.mg = icmp ule i64 %3, %i.av
  tail call void @llvm.assume(i1 %i.mg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not89 = icmp eq i64 %3, 0
  br i1 %.not89, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  store i8 4, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.mf, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.ca

bb.cm:                                            ; preds = %bb.ck
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.cl
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v16updateNtB5_26DatabaseCatalogTransaction7push_op(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4827, !noalias !4828, !noundef !6 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !alias.scope !4827, !noalias !4828, !noundef !6
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpE8push_mutBM_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpE8push_mutBM_.exit unwind label %bb.c, !noalias !4828

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(152) %1) #36
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v317DatabaseCatalogOpE8push_mutBM_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4827, !noalias !4828, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !4827, !noalias !4828
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_7Catalog10catalog_id(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.b = and i64 %i.a, 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ugt i64 %i.a, -17
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !49

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %bb.a
  %i.e = add nuw i64 %i.a, 16
  %i.f = cmpxchg weak ptr %0, i64 %i.a, i64 %i.e acquire monotonic, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.b, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !50

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %bb.a, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.h = tail call noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %0, i1 noundef zeroext false, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.o = load i64, ptr %i.m, align 8, !noundef !6
  %i.p = atomicrmw sub ptr %0, i64 16 release, align 8
  %i.q = and i64 %i.p, -14
  %i.r = icmp eq i64 %i.q, 18
  br i1 %i.r, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogEEB2q_.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogEEB2q_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogEEB2q_.exit: ; preds = %bb.c, %bb.d
  %i.s = insertvalue { ptr, i64 } poison, ptr %i.n, 0
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %i.o, 1
  ret { ptr, i64 } %i.t

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_7Catalog11clone_inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([808 x i8]) align 8 captures(none) dereferenceable(808) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %1 monotonic, align 8 ; 4 uses
  %i.b = and i64 %i.a, 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ugt i64 %i.a, -17
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !49

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %bb.a
  %i.e = add nuw i64 %i.a, 16
  %i.f = cmpxchg weak ptr %1, i64 %i.a, i64 %i.e acquire monotonic, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.b, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !50

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %bb.a, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.h = tail call noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RNvXs17_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB6_12InnerCatalogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(808) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.i)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = atomicrmw sub ptr %1, i64 16 release, align 8
  %i.l = and i64 %i.k, -14
  %i.m = icmp eq i64 %i.l, 18
  br i1 %i.m, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogEEB2q_.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v112InnerCatalogEEB2q_.exit unwind label %bb.g

end_hunk_1
begin_hunk_2_@_RNvMse_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7triggerNtB5_30TriggerSpecificationDefinition15from_string_rep:bb.a
  %i.hf = load ptr, ptr %i.gr, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.hg = icmp ule i64 %i.ap, %i.gq
  tail call void @llvm.assume(i1 %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.hh, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gq, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hf, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ap, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.cj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_15TableDefinition10add_fields(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(728) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(728) %1, ptr captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [29 x i8], align 1            ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = icmp ult i64 %.16.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.16.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.b unwind label %.thread12

.thread12:                                        ; preds = %bb.c, %bb.ag, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.g, align 8, !range !7, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !10, !noundef !6 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #35
          to label %bb.as unwind label %.thread12

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6
  %i.v = icmp samesign ule i64 %.16.val, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.r, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul nuw nsw i64 %.16.val, 24
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %i.z = icmp eq i64 %.16.val, 0
  br i1 %i.z, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.0.041 = phi ptr [ %.8.val, %.lr.ph ], [ %i.ae, %bb.s ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 24 ; 2 uses
  %i.af = load i64, ptr %1, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.af, -1
  br i1 %.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i64, ptr %i.x, align 8             ; 2 uses
  %i.ag = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %.pre, 0
  br i1 %i.ah, label %._crit_edge.thread, label %bb.an

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.aa, align 8, !nonnull !6, !align !17, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.017.0 = phi ptr [ %i.ai, %bb.f ], [ %1, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 16 ; 2 uses
  %i.ak = invoke noundef ptr @_RNvMs1_NtCs844E4pPEVZX_17influxdb3_catalog10repositoryINtB5_10RepositoryNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdNtNtNtNtB7_7catalog8versions2v116ColumnDefinitionE9get_by_idB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.017.0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.aj)
          to label %bb.i unwind label %.thread30.loopexit ; 4 uses

.thread30.loopexit:                               ; preds = %bb.k, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

.thread30.loopexit.split-lp:                      ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

bb.h:                                             ; preds = %bb.ao
  %lpad.thr_comm.split-lp29 = landingpad { ptr, i32 }
          cleanup
  br label %.thread5

bb.i:                                             ; preds = %bb.g
  %.not22 = icmp eq ptr %i.ak, null
  br i1 %.not22, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ak, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 34
  %i.am = load i8, ptr %i.al, align 2, !range !53, !noundef !6 ; 5 uses
  %i.an = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !5604
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit unwind label %.thread30.loopexit

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ap = load i16, ptr %i.aj, align 8, !noundef !6
  %i.aq = load ptr, ptr %.sroa.0.041, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6
  %i.at = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.m, label %switch.lookup

switch.lookup:                                    ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !range !24, !noundef !6
  %i.ax = shl nuw nsw i8 %i.aw, 3
  %switch.shiftamt = zext nneg i8 %i.ax to i56
  %switch.downshift = lshr i56 1415088644948227, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  store i16 %i.ap, ptr %i.ab, align 8
  store ptr %i.aq, ptr %i.j, align 8
  store i64 %i.as, ptr %i.ac, align 8
  store i8 %switch.masked, ptr %i.ad, align 2
  %i.ay = load i64, ptr %i.x, align 8, !alias.scope !5605, !noalias !5606, !noundef !6 ; 3 uses
  %i.az = load i64, ptr %i.m, align 8, !range !14, !alias.scope !5605, !noalias !5606, !noundef !6
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.n, label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %switch.lookup
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEE8grow_oneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.r unwind label %bb.o, !noalias !5606

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !5607
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.p, label %.thread20

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread20 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.r:                                             ; preds = %bb.n, %switch.lookup
  %i.bf = load ptr, ptr %i.w, align 8, !alias.scope !5605, !noalias !5606, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bh = add i64 %i.ay, 1
  store i64 %i.bh, ptr %i.x, align 8, !alias.scope !5605, !noalias !5606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit, %bb.r
  %i.bi = icmp eq ptr %i.ae, %i.y
  br i1 %i.bi, label %._crit_edge, label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 18
  %i.bk = load i8, ptr %i.bj, align 2, !range !24, !noundef !6 ; 3 uses
  %switch.masked80 = icmp samesign ugt i8 %i.bk, 4
  %i.bl = shl nuw nsw i8 %i.bk, 3
  %switch.shiftamt82 = zext nneg i8 %i.bl to i56
  %switch.downshift83 = lshr i56 1415088644948227, %switch.shiftamt82
  %switch.masked84 = trunc i56 %switch.downshift83 to i8 ; 2 uses
  %i.bm = icmp ne i8 %i.am, 6
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i8 %i.am, 4           ; 2 uses
  %narrow = select i1 %switch.masked80, i8 %switch.masked84, i8 6
  %2 = select i1 %i.bn, i8 %i.am, i8 6
  %3 = icmp eq i8 %narrow, %2
  %i.bo = icmp eq i8 %i.am, %switch.masked84
  %or.cond = or i1 %i.bn, %i.bo
  %or.cond33 = and i1 %or.cond, %3
  br i1 %or.cond33, label %bb.s, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v116ColumnDefinitionEEB1g_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bp = load i64, ptr %1, align 8, !range !12, !noundef !6
  %.not24 = icmp eq i64 %i.bp, -1
  br i1 %.not24, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.aa, align 8, !nonnull !6, !align !17, !noundef !6
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.018.0 = phi ptr [ %i.bq, %bb.u ], [ %1, %bb.t ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5608
  store i64 0, ptr %i.e, align 8, !noalias !5608
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5608
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5608
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1610612768, ptr %i.bs, align 8, !noalias !5608
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !5608
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5608
  store ptr %i.e, ptr %i.d, align 8, !noalias !5608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @920, ptr %i.bt, align 8, !noalias !5608
  %i.bu = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.x unwind label %bb.w, !noalias !5609

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #36
          to label %.thread20 unwind label %bb.z, !noalias !5609

bb.x:                                             ; preds = %bb.v
  br i1 %i.bu, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @340, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @923) #35
          to label %.noexc.i unwind label %bb.w, !noalias !5609

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !5609
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5611
  store i64 0, ptr %i.c, align 8, !noalias !5611
  %.sroa.42.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i32, align 8, !noalias !5611
  %.sroa.53.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i33, align 8, !noalias !5611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5611
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.bx, align 8, !noalias !5611
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i34, align 4, !noalias !5611
  %.sroa.5.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i35, align 2, !noalias !5611
  store ptr %i.c, ptr %i.b, align 8, !noalias !5611
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @920, ptr %i.by, align 8, !noalias !5611
  %i.bz = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.041, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ac unwind label %bb.ab, !noalias !5612

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #36
          to label %.body37 unwind label %bb.ae, !noalias !5612

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.bz, label %bb.ad, label %switch.lookup85, !prof !11

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @340, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @923) #35
          to label %.noexc.i36 unwind label %bb.ab, !noalias !5612

.noexc.i36:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !5612
  unreachable

.body37:                                          ; preds = %bb.ab
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #36
          to label %.thread20 unwind label %bb.aj

switch.lookup85:                                  ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5611
  %i.cc = shl nuw nsw i8 %i.bk, 3
  %switch.shiftamt87 = zext nneg i8 %i.cc to i56
  %switch.downshift88 = lshr i56 1415088644948227, %switch.shiftamt87
  %switch.masked89 = trunc i56 %switch.downshift88 to i8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 28, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.am, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %switch.masked89, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6, i64 29, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %switch.lookup85
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread5 unwind label %bb.ah

bb.ag:                                            ; preds = %switch.lookup85
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtBG_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEEECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %.thread12

bb.ah:                                            ; preds = %bb.af
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtBG_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.ag, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cg = load i64, ptr %1, align 8, !range !12, !alias.scope !5614, !noundef !6
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1i_.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtBG_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEEECs844E4pPEVZX_17influxdb3_catalog.exit
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1i_.exit

bb.aj:                                            ; preds = %bb.at, %.thread20, %.body37
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(728) %1, i64 728, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.thread
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread8 unwind label %bb.am

bb.al:                                            ; preds = %._crit_edge.thread
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtB7_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtBG_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEEECs844E4pPEVZX_17influxdb3_catalog.exit48

bb.am:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.an:                                            ; preds = %._crit_edge
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvMs1_NtCscdodAO9FK5_5alloc6borrowINtB5_3CowNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionE6to_mutBP_(ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
          to label %bb.ao unwind label %.thread30.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdINtNtBG_4sync3ArceENtCsjGL2vCcvtUM_6schema16InfluxColumnTypeEEECs844E4pPEVZX_17influxdb3_catalog.exit48: ; preds = %bb.al, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v115TableDefinitionEEB1i_.exit

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RNvMsq_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtB5_15TableDefinition11add_columns(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.cl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ap unwind label %bb.h

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cm = load i8, ptr %i.i, align 8, !range !54, !noundef !6
  %.not26 = icmp eq i8 %i.cm, -1
  br i1 %.not26, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
end_hunk_2
