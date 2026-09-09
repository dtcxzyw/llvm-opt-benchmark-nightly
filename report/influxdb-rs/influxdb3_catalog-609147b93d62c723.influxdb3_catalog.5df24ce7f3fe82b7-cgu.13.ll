Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.13?download=true
inline.NumInlined: 2258
inline.NumDeleted: 970
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_26DatabaseCatalogTransaction15table_or_create:bb.a
  %i.hi = load ptr, ptr @_RNvNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB7_26DatabaseCatalogTransaction12create_tables_10___CALLSITE, align 8, !noalias !4027, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4027
  store ptr @24, ptr %i.y, align 8, !noalias !4027
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 95 to ptr), ptr %i.hk, align 8, !noalias !4027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4027
  %i.hl = load ptr, ptr %i.bv, align 8, !alias.scope !4026, !noalias !4032, !nonnull !4, !noundef !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 416
  store ptr %i.hm, ptr %i.x, align 8, !noalias !4027
  store ptr %i.y, ptr %i.z, align 8, !noalias !4027
  %i.hn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @19, ptr %i.hn, align 8, !noalias !4027
  %i.ho = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.x, ptr %i.ho, align 8, !noalias !4027
  %i.hp = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @25, ptr %i.hp, align 8, !noalias !4027
  %i.hq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ai, ptr %i.hq, align 8, !noalias !4027
  %i.hr = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr @20, ptr %i.hr, align 8, !noalias !4027
  %i.hs = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.cw, ptr %i.hs, align 8, !noalias !4027
  %i.ht = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr @26, ptr %i.ht, align 8, !noalias !4027
  %i.hu = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.cy, ptr %i.hu, align 8, !noalias !4027
  %i.hv = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr @26, ptr %i.hv, align 8, !noalias !4027
  store i64 1, ptr %i.aa, align 8, !noalias !4027
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.019.sroa.4.0..sroa_idx.i, align 8, !noalias !4027
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 5, ptr %.sroa.019.sroa.5.0..sroa_idx.i, align 8, !noalias !4027
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.hj, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !4027
  call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa), !noalias !4028
  %i.hw = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4043
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.bc, label %_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB8_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1Z_Es_0Bg_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.hy = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4043 ; 2 uses
  %i.hz = icmp ult i64 %i.hy, 6
  call void @llvm.assume(i1 %i.hz)
  %i.ia = icmp samesign ugt i64 %i.hy, 2
  br i1 %i.ia, label %bb.bd, label %_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB8_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1Z_Es_0Bg_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.ib = load ptr, ptr @_RNvNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB7_26DatabaseCatalogTransaction12create_tables_10___CALLSITE, align 8, !noalias !4043, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4043
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !4028, !nonnull !4, !noundef !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.if = load i64, ptr %i.ie, align 8, !noalias !4028, !noundef !4
  store i64 3, ptr %i.a, align 8, !noalias !4043
  %.sroa.3.0..sroa_idx.i178.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.id, ptr %.sroa.3.0..sroa_idx.i178.i, align 8, !noalias !4043
  %.sroa.5.0..sroa_idx.i179.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.if, ptr %.sroa.5.0..sroa_idx.i179.i, align 8, !noalias !4043
  %i.ig = call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger(), !noalias !4028 ; 2 uses
  %i.ih = extractvalue { ptr, ptr } %i.ig, 0      ; 2 uses
  %i.ii = extractvalue { ptr, ptr } %i.ig, 1      ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !invariant.load !4, !noalias !4028, !nonnull !4
  %i.il = call noundef zeroext i1 %i.ik(ptr noundef %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !4028, !inline_history !4024
  br i1 %i.il, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ib, ptr noundef nonnull %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ii, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa), !noalias !4028
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4043
  br label %_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB8_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1Z_Es_0Bg_.exit.i

_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB8_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1Z_Es_0Bg_.exit.i: ; preds = %bb.bf, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4027
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bl, %bb.bi, %bb.bh, %_RNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB8_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1Z_Es_0Bg_.exit.i
  store i8 21, ptr %0, align 8, !alias.scope !4025, !noalias !4033
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.im = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !4026, !noalias !4032
  store <2 x i64> %i.im, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !4025, !noalias !4033
  br label %_RINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB6_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1X_EBe_.exit

bb.bh:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.in = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !4027
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.ip = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4027 ; 2 uses
  %i.iq = icmp ult i64 %i.ip, 6
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp samesign ugt i64 %i.ip, 2
  br i1 %i.ir, label %bb.bj, label %bb.bg

bb.bj:                                            ; preds = %bb.bi
  %i.is = load ptr, ptr @_RNvNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB7_26DatabaseCatalogTransaction12create_tables_10___CALLSITE, align 8, !noalias !4027, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4027
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !4028, !nonnull !4, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !4028, !noundef !4
  store i64 3, ptr %i.w, align 8, !noalias !4027
  %.sroa.397.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.iu, ptr %.sroa.397.0..sroa_idx.i, align 8, !noalias !4027
  %.sroa.598.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.iw, ptr %.sroa.598.0..sroa_idx.i, align 8, !noalias !4027
  %i.ix = call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger(), !noalias !4028 ; 2 uses
  %i.iy = extractvalue { ptr, ptr } %i.ix, 0      ; 2 uses
  %i.iz = extractvalue { ptr, ptr } %i.ix, 1      ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !invariant.load !4, !noalias !4028, !nonnull !4
  %i.jc = call noundef zeroext i1 %i.jb(ptr noundef %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !4028, !inline_history !4007
  br i1 %i.jc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4027
  %i.jd = load ptr, ptr @_RNvNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB7_26DatabaseCatalogTransaction12create_tables_10___CALLSITE, align 8, !noalias !4027, !nonnull !4, !align !6, !noundef !4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4027
  store ptr @24, ptr %i.t, align 8, !noalias !4027
  %i.jf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 95 to ptr), ptr %i.jf, align 8, !noalias !4027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4027
  %i.jg = load ptr, ptr %i.bv, align 8, !alias.scope !4026, !noalias !4032, !nonnull !4, !noundef !4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 416
  store ptr %i.jh, ptr %i.s, align 8, !noalias !4027
  store ptr %i.t, ptr %i.u, align 8, !noalias !4027
  %i.ji = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @19, ptr %i.ji, align 8, !noalias !4027
  %i.jj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.s, ptr %i.jj, align 8, !noalias !4027
  %i.jk = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @25, ptr %i.jk, align 8, !noalias !4027
  %i.jl = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.ai, ptr %i.jl, align 8, !noalias !4027
  %i.jm = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @20, ptr %i.jm, align 8, !noalias !4027
  %i.jn = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.cw, ptr %i.jn, align 8, !noalias !4027
  %i.jo = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr @26, ptr %i.jo, align 8, !noalias !4027
  %i.jp = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.cy, ptr %i.jp, align 8, !noalias !4027
  %i.jq = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr @26, ptr %i.jq, align 8, !noalias !4027
  store i64 1, ptr %i.v, align 8, !noalias !4027
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !4027
  %.sroa.5101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 5, ptr %.sroa.5101.0..sroa_idx.i, align 8, !noalias !4027
  %i.jr = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.je, ptr %i.jr, align 8, !noalias !4027
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.is, ptr noundef nonnull %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v), !noalias !4028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4027
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4027
  br label %bb.bg

_RINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB6_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1X_EBe_.exit: ; preds = %_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_26DatabaseCatalogTransaction20table_exists_by_name.exit.thread.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorE6expectBM_.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB6_26DatabaseCatalogTransaction12create_tableINtNtCscdodAO9FK5_5alloc4sync3ArceEB1X_EBe_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_26DatabaseCatalogTransaction16column_or_create(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(280) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 noundef range(i8 0, 8) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = tail call fastcc noundef align 8 ptr @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_26DatabaseCatalogTransaction17table_transaction(ptr noalias noundef align 8 dereferenceable(280) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, ptr } @_RINvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB6_15TableDefinition17column_definitionReEBc_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 5 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 8 uses
  switch i64 %i.i, label %default.unreachable.i [
    i64 -1, label %bb.e
    i64 0, label %bb.s
    i64 1, label %7
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.aq, label %bb.ar, !prof !5

default.unreachable.i:                            ; preds = %bb.b
  unreachable

7:                                                ; preds = %bb.b
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %9 = load i8, ptr %8, align 8, !range !43, !noundef !4
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.p = icmp ne i8 %6, 6
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i8 %6, -5
  %i.r = icmp samesign ugt i8 %6, 4
  %narrow = select i1 %i.r, i8 %i.q, i8 1
  switch i8 %narrow, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs8_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB6_16TableTransaction7add_tagReEBe_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.d, ptr noalias noundef align 8 dereferenceable(1304) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.s = load i8, ptr %i.d, align 8, !range !9, !noundef !4
  %.not30 = icmp eq i8 %i.s, -1
  br i1 %.not30, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RINvMs8_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB6_16TableTransaction9add_fieldReEBe_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef align 8 dereferenceable(1304) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 noundef %6)
  %i.t = load i8, ptr %i.c, align 8, !range !9, !noundef !4
  %.not29 = icmp eq i8 %i.t, -1
  br i1 %.not29, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs8_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_16TableTransaction8add_time(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(1304) %i.g)
  %i.u = load i8, ptr %i.b, align 8, !range !9, !noundef !4
  %.not28 = icmp eq i8 %i.u, -1
  br i1 %.not28, label %bb.q, label %bb.p

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.y, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ap

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.ac, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ap

bb.p:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.ag, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.s:                                             ; preds = %bb.b, %bb.d, %7
  %.sroa.0.0.i = phi i8 [ %9, %bb.d ], [ 5, %7 ], [ 7, %bb.b ] ; 3 uses
  %10 = icmp samesign ugt i8 %.sroa.0.0.i, 4      ; 2 uses
  %i.ah = icmp ne i8 %6, 6
  tail call void @llvm.assume(i1 %i.ah)
  %11 = icmp samesign ugt i8 %6, 4
  %12 = select i1 %10, i8 %.sroa.0.0.i, i8 6
  %narrow32 = select i1 %11, i8 %6, i8 6
  %13 = icmp eq i8 %12, %narrow32
  %i.ai = icmp eq i8 %.sroa.0.0.i, %6
  %or.cond36 = or i1 %10, %i.ai
  %or.cond = and i1 %or.cond36, %13
  br i1 %or.cond, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.i, ptr %i.f, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr %i.j, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0                   ; 3 uses
  switch i64 %i.i, label %default.unreachable.i43 [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

default.unreachable.i43:                          ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  br i1 %i.an, label %bb.x, label %bb.ac

bb.v:                                             ; preds = %bb.t
  br i1 %i.an, label %bb.y, label %bb.ac

bb.w:                                             ; preds = %bb.t
  br i1 %i.an, label %bb.z, label %bb.ac

bb.x:                                             ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.ap, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ap

bb.ab:                                            ; preds = %bb.ah
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(16) %i.f) #31
          to label %.thread unwind label %bb.ao

bb.ac:                                            ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.4.0.in.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.i42 = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.4.0.i = load i64, ptr %.sroa.4.0.in.i, align 8, !noundef !4 ; 2 uses
  store ptr %.sroa.0.0.i42, ptr %i.e, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.4.0.i, ptr %i.ar, align 8
  %i.as = atomicrmw add ptr %.sroa.0.0.i42, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i64 %i.i, label %default.unreachable.i45 [
    i64 0, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

default.unreachable.i45:                          ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  br label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46

bb.af:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.av = load i8, ptr %i.au, align 8, !range !43, !noundef !4
  br label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46

bb.ag:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46: ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.0.0.i44 = phi i8 [ %i.av, %bb.af ], [ 5, %bb.ae ], [ 7, %bb.ad ]
  store i8 14, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i44, ptr %.sroa.412.0..sroa_idx, align 1
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %6, ptr %.sroa.513.0..sroa_idx, align 2
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i42, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aw = atomicrmw sub ptr %.sroa.0.0.i42, i64 1 release, align 8, !noalias !4062
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48

bb.ah:                                            ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48 unwind label %bb.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48: ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition11column_type.exit46, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  %i.ay = load i64, ptr %i.f, align 8, !range !14, !alias.scope !4063, !noundef !4
  switch i64 %i.ay, label %bb.ai [
    i64 0, label %bb.ak
    i64 1, label %bb.am
  ]

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48
  call void @llvm.experimental.noalias.scope.decl(metadata !4064)
  call void @llvm.experimental.noalias.scope.decl(metadata !4065)
  %i.az = load ptr, ptr %i.aj, align 8, !alias.scope !4066, !nonnull !4, !noundef !4
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !4066
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v211FieldColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  %i.bc = load ptr, ptr %i.aj, align 8, !alias.scope !4069, !nonnull !4, !noundef !4
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !4069
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

bb.al:                                            ; preds = %bb.ak
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TimestampColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit48
  call void @llvm.experimental.noalias.scope.decl(metadata !4070)
  call void @llvm.experimental.noalias.scope.decl(metadata !4071)
  %i.bf = load ptr, ptr %i.aj, align 8, !alias.scope !4072, !nonnull !4, !noundef !4
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !4072
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v29TagColumnE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit: ; preds = %bb.al, %bb.aj, %bb.an, %bb.am, %bb.ak, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ap:                                            ; preds = %bb.l, %bb.o, %bb.r, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_.exit, %bb.as
  ret void

.thread:                                          ; preds = %bb.ab
  resume { ptr, i32 } %i.aq

bb.aq:                                            ; preds = %bb.c
  %i.bj = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.bj) #30
  unreachable

bb.ar:                                            ; preds = %bb.c
  %i.bk = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = icmp ule i64 %3, %i.n
  tail call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not26 = icmp eq i64 %3, 0
  br i1 %.not26, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.ar
  store i8 4, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bk, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.ap

bb.at:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v26updateNtB5_26DatabaseCatalogTransaction17table_transaction(ptr noalias noundef nonnull align 8 dereferenceable(280) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [128 x i8], align 8               ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 4 uses
  %i.k = alloca [128 x i8], align 8               ; 5 uses
  %i.l = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [184 x i8], align 8         ; 5 uses
  %i.m = alloca [192 x i8], align 8               ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [192 x i8], align 8               ; 7 uses
  %i.r = alloca [192 x i8], align 8               ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [320 x i8], align 8               ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [1128 x i8], align 8          ; 10 uses
  %.sroa.22 = alloca [12 x i8], align 8           ; 4 uses
  %i.x = alloca [1304 x i8], align 8              ; 28 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = tail call noundef align 4 ptr @_RINvMs0_NtCsaaj5M71uUq9_5bimap4hashINtB6_9BiHashMapNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateB1Y_E12get_by_righteECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.ac, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 %.val.i, ptr %i.aa, align 4
end_hunk_0
