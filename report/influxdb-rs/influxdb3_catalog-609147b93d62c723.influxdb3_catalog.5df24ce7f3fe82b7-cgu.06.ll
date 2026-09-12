Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.06?download=true
inline.NumInlined: 4463
inline.NumDeleted: 2366
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417DatabaseCatalogOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.32.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.44.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.012.0484.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.bq, %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 138 uses
  %.sroa.7.0482.i = phi i64 [ 0, %.lr.ph.i ], [ %i.br, %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.0481.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.bo, %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.bo = add i64 %.sroa.10.0481.i, -1            ; 2 uses
  %i.bp = icmp eq ptr %.sroa.012.0484.i, %i.an
  br i1 %i.bp, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417DatabaseCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 152
  %i.br = add nuw nsw i64 %.sroa.7.0482.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11305)
  %i.bs = load i64, ptr %.sroa.012.0484.i, align 8, !range !22, !alias.scope !11306, !noalias !11307, !noundef !4 ; 4 uses
  %i.bt = icmp ne i64 %i.bs, 14
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i64 %i.bs, -5
  %i.bv = icmp samesign ugt i64 %i.bs, 4
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 9
  switch i64 %i.bw, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.l
    i64 4, label %bb.p
    i64 5, label %bb.af
    i64 6, label %bb.aw
    i64 7, label %bb.ba
    i64 8, label %bb.bu
    i64 9, label %bb.by
    i64 10, label %bb.cx
    i64 11, label %bb.cy
    i64 12, label %bb.dc
    i64 13, label %bb.dg
    i64 14, label %bb.dm
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !11306, !noalias !11307, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.cd = atomicrmw add ptr %i.ca, i64 1 monotonic, align 8, !noalias !11304
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.dt, label %bb.ds

bb.g:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !11306, !noalias !11307, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.cl = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !11304
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.dv, label %bb.du

bb.h:                                             ; preds = %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11308)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.cp = load i32, ptr %i.co, align 8, !alias.scope !11309, !noalias !11310, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !11309, !noalias !11310, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !11309, !noalias !11310, !noundef !4
  %i.cu = atomicrmw add ptr %i.cr, i64 1 monotonic, align 8, !noalias !11311
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !11309, !noalias !11310, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !11309, !noalias !11310, !noundef !4 ; 3 uses
  %i.da = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !11311
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.k, label %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 60
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !11309, !noalias !11310, !noundef !4
  %i.de = load i64, ptr %i.cn, align 8, !alias.scope !11309, !noalias !11310
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !range !32, !alias.scope !11309, !noalias !11310, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.di = load i8, ptr %i.dh, align 8, !range !13, !alias.scope !11309, !noalias !11310, !noundef !4
  %i.dj = ptrtoint ptr %i.cr to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc176.i = trunc i64 %i.dj to i32
  %.sroa.44.sroa.18.0.extract.shift198.i = lshr i64 %i.dj, 32
  %.sroa.44.sroa.18.0.extract.trunc199.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift198.i to i8
  %.sroa.44.sroa.19.0.extract.shift224.i = and i64 %i.dj, -1099511627776
  %i.dk = ptrtoint ptr %i.cx to i64               ; 3 uses
  %.sroa.69.sroa.0.0.extract.trunc123.i = trunc i64 %i.dk to i32
  %.sroa.69.sroa.17.0.extract.shift134.i = lshr i64 %i.dk, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc144.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift134.i to i16
  %sum.shift332.i = lshr i64 %i.dk, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc158.i = trunc nuw nsw i64 %sum.shift332.i to i32
  %.sroa.85.sroa.0.0.extract.trunc93.i = trunc i64 %i.cz to i32
  %.sroa.85.sroa.12.0.extract.shift103.i = lshr i64 %i.cz, 32
  %.sroa.85.sroa.12.0.extract.trunc104.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift103.i to i8
  %.sroa.85.sroa.13.0.extract.shift115.i = and i64 %i.cz, -1099511627776
  %i.dl = zext i32 %i.dd to i64
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11312)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !alias.scope !11313, !noalias !11314, !noundef !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !11313, !noalias !11314, !nonnull !4, !noundef !4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !11313, !noalias !11314, !noundef !4
  %i.dt = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8, !noalias !11315
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 68
  %i.dw = load i32, ptr %i.dv, align 4, !alias.scope !11313, !noalias !11314, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !11313, !noalias !11314, !nonnull !4, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !11313, !noalias !11314, !noundef !4 ; 3 uses
  %i.eb = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !11315
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.o, label %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !11313, !noalias !11314, !noundef !4 ; 2 uses
  %i.ef = load i64, ptr %i.dm, align 8, !range !17, !alias.scope !11313, !noalias !11314, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !11313, !noalias !11314 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 72
  %i.ej = load i8, ptr %i.ei, align 8, !range !11316, !alias.scope !11313, !noalias !11314, !noundef !4
  %.sroa.32.sroa.0.0.extract.trunc241.i = trunc i64 %i.eh to i32
  %.sroa.32.sroa.18.0.extract.shift261.i = and i64 %i.eh, -4294967296
  %i.ek = ptrtoint ptr %i.dq to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc175.i = trunc i64 %i.ek to i32
  %.sroa.44.sroa.18.0.extract.shift196.i = lshr i64 %i.ek, 32
  %.sroa.44.sroa.18.0.extract.trunc197.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift196.i to i8
  %.sroa.44.sroa.19.0.extract.shift222.i = and i64 %i.ek, -1099511627776
  %i.el = ptrtoint ptr %i.dy to i64               ; 3 uses
  %.sroa.69.sroa.0.0.extract.trunc122.i = trunc i64 %i.el to i32
  %.sroa.69.sroa.17.0.extract.shift132.i = lshr i64 %i.el, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc143.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift132.i to i16
  %sum.shift330.i = lshr i64 %i.el, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc156.i = trunc nuw nsw i64 %sum.shift330.i to i32
  %.sroa.85.sroa.0.0.extract.trunc92.i = trunc i64 %i.ea to i32
  %.sroa.85.sroa.12.0.extract.shift101.i = lshr i64 %i.ea, 32
  %.sroa.85.sroa.12.0.extract.trunc102.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift101.i to i8
  %.sroa.85.sroa.13.0.extract.shift113.i = and i64 %i.ea, -1099511627776
  %.sroa.93.sroa.0.0.extract.trunc80.i = trunc i64 %i.ee to i32
  %.sroa.93.sroa.10.0.extract.shift87.i = lshr i64 %i.ee, 32
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc62.i = trunc i32 %i.do to i8
  %.sroa.99.sroa.0.sroa.10.0.extract.shift67.i = lshr i32 %i.do, 8
  %i.em = zext i32 %i.dw to i64
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !11318
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !11319, !noalias !11320, !nonnull !4, !noundef !4 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !11319, !noalias !11320, !noundef !4 ; 4 uses
  %i.es = atomicrmw add ptr %i.ep, i64 1 monotonic, align 8, !noalias !11321
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ep, ptr %i.w, align 8, !noalias !11318
  store i64 %i.er, ptr %i.bk, align 8, !noalias !11318
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 88
  %i.ev = load i32, ptr %i.eu, align 8, !alias.scope !11319, !noalias !11320, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11318
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !11319, !noalias !11320, !nonnull !4, !noundef !4 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 80
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !11319, !noalias !11320, !noundef !4 ; 3 uses
  %i.fa = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !11321
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  store ptr %i.ex, ptr %i.v, align 8, !noalias !11318
  store i64 %i.ez, ptr %i.bl, align 8, !noalias !11318
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 92
  %i.fd = load i32, ptr %i.fc, align 4, !alias.scope !11319, !noalias !11320, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11318
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419ColumnDefinitionLogENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.en)
          to label %bb.x unwind label %bb.w, !noalias !11322

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.ac, %bb.w
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi365.i, %bb.ac ], [ %i.fg, %bb.w ] ; 2 uses
  %i.fe = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !11323
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.ad, !noalias !11321

bb.w:                                             ; preds = %bb.s
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.x:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11324)
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !11325, !noalias !11326, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = load i64, ptr %i.fh, align 8, !alias.scope !11325, !noalias !11326, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !11328
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef range(i64 0, 384307168202282326) %i.fk, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i.i.i unwind label %.loopexit361.i, !noalias !11321

.noexc4.i.i.i:                                    ; preds = %bb.x
  %i.fl = load i64, ptr %i.t, align 8, !range !17, !noalias !11328, !noundef !4
  %i.fm = trunc nuw i64 %i.fl to i1
  %i.fn = load i64, ptr %i.bm, align 8, !range !26, !noalias !11328, !noundef !4 ; 5 uses
  br i1 %i.fm, label %bb.y, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, !prof !5

bb.y:                                             ; preds = %.noexc4.i.i.i
  %i.fo = load i64, ptr %i.bn, align 8, !noalias !11328
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fn, i64 %i.fo) #32
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp362.i, !noalias !11321

.noexc5.i.i.i:                                    ; preds = %bb.y
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %.noexc4.i.i.i
  %i.fp = load ptr, ptr %i.bn, align 8, !noalias !11328, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = icmp ule i64 %i.fk, %i.fn
  tail call void @llvm.assume(i1 %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11328
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fk
  %i.fs = icmp eq i64 %i.fn, 0
  br i1 %i.fs, label %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.012.037.i.i.i.i.i = phi ptr [ %i.fv, %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.fj, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.7.036.i.i.i.i.i = phi i64 [ %i.fw, %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.10.035.i.i.i.i.i = phi i64 [ %i.ft, %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.fn, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i ]
  %i.ft = add i64 %.sroa.10.035.i.i.i.i.i, -1     ; 2 uses
  %i.fu = icmp eq ptr %.sroa.012.037.i.i.i.i.i, %i.fr
  br i1 %i.fu, label %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i, i64 24
  %i.fw = add nuw nsw i64 %.sroa.7.036.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11329)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i, i64 16
  %i.fy = load i16, ptr %i.fx, align 8, !alias.scope !11330, !noalias !11331, !noundef !4
  %i.fz = load ptr, ptr %.sroa.012.037.i.i.i.i.i, align 8, !alias.scope !11330, !noalias !11331, !noundef !4 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !11330, !noalias !11331
  br i1 %i.ga, label %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gb = atomicrmw add ptr %i.fz, i64 1 monotonic, align 8, !noalias !11332
  %i.gc = icmp slt i64 %i.gb, 0
  br i1 %i.gc, label %bb.ab, label %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.trap()
  unreachable

_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %.sroa.7.036.i.i.i.i.i ; 3 uses
  store ptr %i.fz, ptr %i.gd, align 8, !noalias !11333
  %.sroa.425.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11333
  %.sroa.526.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i16 %i.fy, ptr %.sroa.526.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11333
  %i.ge = icmp eq i64 %i.ft, 0
  br i1 %i.ge, label %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.loopexit361.i:                                   ; preds = %bb.x
  %lpad.loopexit363.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp362.i:                          ; preds = %bb.y
  %lpad.loopexit.split-lp364.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp362.i, %.loopexit361.i
  %lpad.phi365.i = phi { ptr, i32 } [ %lpad.loopexit363.i, %.loopexit361.i ], [ %lpad.loopexit.split-lp364.i, %.loopexit.split-lp362.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419ColumnDefinitionLogEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.u) #33
          to label %bb.u unwind label %bb.ad, !noalias !11321

bb.ad:                                            ; preds = %bb.ae, %bb.ac, %bb.v
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !11321
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !11334)
  call void @llvm.experimental.noalias.scope.decl(metadata !11335)
  %i.gg = load ptr, ptr %i.w, align 8, !alias.scope !11336, !noalias !11318, !nonnull !4, !noundef !4
  %i.gh = atomicrmw sub ptr %i.gg, i64 1 release, align 8, !noalias !11337
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.ae, label %bb.dz

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.dz unwind label %bb.ad, !noalias !11321

_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs3X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_24FieldFamilyDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  %.sroa.18.8.copyload16.i = load i64, ptr %i.u, align 8, !noalias !11338
  %.sroa.32.8.copyload18.i = load i64, ptr %.sroa.32.8..sroa_idx.i, align 8, !noalias !11338 ; 2 uses
  %.sroa.32.sroa.0.0.extract.trunc233.i = trunc i64 %.sroa.32.8.copyload18.i to i32
  %.sroa.32.sroa.18.0.extract.shift245.i = and i64 %.sroa.32.8.copyload18.i, -4294967296
  %.sroa.44.8.copyload20.i = load i64, ptr %.sroa.44.8..sroa_idx.i, align 8, !noalias !11338 ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc168.i = trunc i64 %.sroa.44.8.copyload20.i to i32
  %.sroa.44.sroa.18.0.extract.shift182.i = lshr i64 %.sroa.44.8.copyload20.i, 32
  %.sroa.44.sroa.18.0.extract.trunc183.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift182.i to i8
  %.sroa.44.sroa.19.0.extract.shift208.i = and i64 %.sroa.44.8.copyload20.i, -1099511627776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !11318
  %i.gj = ptrtoint ptr %i.fp to i64               ; 3 uses
  %.sroa.69.sroa.0.0.extract.trunc121.i = trunc i64 %i.gj to i32
  %.sroa.69.sroa.17.0.extract.shift130.i = lshr i64 %i.gj, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc142.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift130.i to i16
  %sum.shift328.i = lshr i64 %i.gj, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc154.i = trunc nuw nsw i64 %sum.shift328.i to i32
  %.sroa.85.sroa.0.0.extract.trunc91.i = trunc i64 %i.fk to i32
  %.sroa.85.sroa.12.0.extract.shift99.i = lshr i64 %i.fk, 32
  %.sroa.85.sroa.12.0.extract.trunc100.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift99.i to i8
  %.sroa.85.sroa.13.0.extract.shift111.i = and i64 %i.fk, -1099511627776
  %i.gk = ptrtoint ptr %i.ep to i64               ; 2 uses
  %.sroa.93.sroa.0.0.extract.trunc78.i = trunc i64 %i.gk to i32
  %.sroa.93.sroa.10.0.extract.shift83.i = lshr i64 %i.gk, 32
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc66.i = trunc i64 %i.er to i8
  %2 = lshr i64 %i.er, 8
  %.sroa.99.sroa.0.sroa.10.0.extract.trunc76.i = trunc i64 %2 to i32
  %.sroa.99.sroa.10.0.extract.shift60.i = lshr i64 %i.er, 32
  %i.gl = ptrtoint ptr %i.ex to i64               ; 2 uses
  %.sroa.105.sroa.0.0.extract.trunc44.i = trunc i64 %i.gl to i8
  %.sroa.105.sroa.8.0.extract.shift47.i = and i64 %i.gl, -256
  %.sroa.109.sroa.0.0.extract.trunc39.i = trunc i64 %i.ez to i32
  %.sroa.109.sroa.7.0.extract.shift42.i = and i64 %i.ez, -4294967296
  %i.gm = zext i32 %i.fd to i64
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.af:                                            ; preds = %bb.d
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11339)
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 144
  %i.gp = load i32, ptr %i.go, align 8, !alias.scope !11340, !noalias !11341, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11342
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 104
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !11340, !noalias !11341, !nonnull !4, !noundef !4 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 112
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !11340, !noalias !11341, !noundef !4 ; 2 uses
  %i.gu = atomicrmw add ptr %i.gr, i64 1 monotonic, align 8, !noalias !11343
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gr, ptr %i.s, align 8, !noalias !11342
  store i64 %i.gt, ptr %i.be, align 8, !noalias !11342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11342
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.gx = load i64, ptr %i.gw, align 8, !range !12, !alias.scope !11340, !noalias !11341, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.gx, -1
  br i1 %.not.i.i.i, label %bb.al, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11344)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !11345, !noalias !11346, !nonnull !4, !noundef !4
  %i.hb = load i64, ptr %i.gy, align 8, !alias.scope !11345, !noalias !11346, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11347
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef range(i64 0, 2305843009213693952) %i.hb, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit351.i, !noalias !11343

.noexc.i.i.i:                                     ; preds = %bb.ai
  %i.hc = load i64, ptr %i.p, align 8, !range !17, !noalias !11347, !noundef !4
  %i.hd = trunc nuw i64 %i.hc to i1
  %i.he = load i64, ptr %i.bf, align 8, !range !26, !noalias !11347, !noundef !4 ; 4 uses
  br i1 %i.hd, label %bb.aj, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i18.i.i, !prof !5

bb.aj:                                            ; preds = %.noexc.i.i.i
  %i.hf = load i64, ptr %i.bg, align 8, !noalias !11347
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.he, i64 %i.hf) #32
          to label %.noexc4.i21.i.i unwind label %.loopexit.split-lp352.i, !noalias !11343

.noexc4.i21.i.i:                                  ; preds = %bb.aj
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i18.i.i: ; preds = %.noexc.i.i.i
  %i.hg = load ptr, ptr %i.bg, align 8, !noalias !11347, !nonnull !4, !noundef !4 ; 2 uses
  %i.hh = icmp ule i64 %i.hb, %i.he
  tail call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11347
  %.not.i.i.i.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i18.i.i
  %i.hi = shl nuw nsw i64 %i.hb, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr nonnull readonly align 4 %i.ha, i64 %i.hi, i1 false), !noalias !11348
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.al:                                            ; preds = %bb.ag
  store i64 -1, ptr %i.r, align 8, !noalias !11342
  br label %bb.am

bb.am:                                            ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.al
  %.sroa.85.48.copyload.i = phi i64 [ %i.he, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ -1, %bb.al ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 148
  %i.hk = load i16, ptr %i.hj, align 4, !alias.scope !11340, !noalias !11341, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11342
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 120
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !11340, !noalias !11341, !nonnull !4, !noundef !4 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 128
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !11340, !noalias !11341, !noundef !4 ; 2 uses
  %i.hp = atomicrmw add ptr %i.hm, i64 1 monotonic, align 8, !noalias !11343
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %bb.ar, label %bb.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i: ; preds = %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i, %.loopexit.split-lp352.i, %.loopexit351.i
  %.pn.i16.i.i = phi { ptr, i32 } [ %lpad.phi360.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i ], [ %lpad.phi360.i, %bb.av ], [ %lpad.loopexit353.i, %.loopexit351.i ], [ %lpad.loopexit.split-lp354.i, %.loopexit.split-lp352.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11349)
  call void @llvm.experimental.noalias.scope.decl(metadata !11350)
  %i.hr = load ptr, ptr %i.s, align 8, !alias.scope !11351, !noalias !11342, !nonnull !4, !noundef !4
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !11352
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.an, label %bb.dz

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.dz unwind label %bb.au, !noalias !11343

.loopexit351.i:                                   ; preds = %bb.ai
  %lpad.loopexit353.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i

.loopexit.split-lp352.i:                          ; preds = %bb.aj
  %lpad.loopexit.split-lp354.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.ak, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i18.i.i
  store i64 %i.he, ptr %i.r, align 8, !noalias !11342
  store ptr %i.hg, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !11342
  store i64 %i.hb, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !11342
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  store ptr %i.hm, ptr %i.q, align 8, !noalias !11342
  store i64 %i.ho, ptr %i.bh, align 8, !noalias !11342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11353)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !11354, !noalias !11355, !nonnull !4, !noundef !4
  %i.hx = load i64, ptr %i.hu, align 8, !alias.scope !11354, !noalias !11355, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11356
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef range(i64 0, 1537228672809129302) %i.hx, i1 noundef zeroext false, i64 noundef 2, i64 noundef 6)
          to label %.noexc8.i.i.i unwind label %.loopexit356.i, !noalias !11343

.noexc8.i.i.i:                                    ; preds = %bb.ao
  %i.hy = load i64, ptr %i.o, align 8, !range !17, !noalias !11356, !noundef !4
  %i.hz = trunc nuw i64 %i.hy to i1
  %i.ia = load i64, ptr %i.bi, align 8, !range !26, !noalias !11356, !noundef !4 ; 5 uses
  br i1 %i.hz, label %bb.ap, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i6.i.i.i, !prof !5

bb.ap:                                            ; preds = %.noexc8.i.i.i
  %i.ib = load i64, ptr %i.bj, align 8, !noalias !11356
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ia, i64 %i.ib) #32
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp357.i, !noalias !11343

.noexc9.i.i.i:                                    ; preds = %bb.ap
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i6.i.i.i: ; preds = %.noexc8.i.i.i
  %i.ic = load ptr, ptr %i.bj, align 8, !noalias !11356, !nonnull !4, !noundef !4 ; 2 uses
  %i.id = icmp ule i64 %i.hx, %i.ia
  tail call void @llvm.assume(i1 %i.id)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11356
  %.not.i.i7.i.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i7.i.i.i, label %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i6.i.i.i
  %i.ie = mul nuw nsw i64 %i.hx, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ic, ptr nonnull readonly align 2 %i.hw, i64 %i.ie, i1 false), !noalias !11357
  br label %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.ar:                                            ; preds = %bb.am
  tail call void @llvm.trap()
  unreachable

.loopexit356.i:                                   ; preds = %bb.ao
  %lpad.loopexit358.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp357.i:                          ; preds = %bb.ap
  %lpad.loopexit.split-lp359.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp357.i, %.loopexit356.i
  %lpad.phi360.i = phi { ptr, i32 } [ %lpad.loopexit358.i, %.loopexit356.i ], [ %lpad.loopexit.split-lp359.i, %.loopexit.split-lp357.i ] ; 2 uses
  %i.if = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !11358
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i unwind label %bb.au, !noalias !11343

bb.au:                                            ; preds = %bb.av, %bb.at, %bb.an
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !11343
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i: ; preds = %bb.at, %bb.as
  %i.ii = load i64, ptr %i.r, align 8, !range !12, !alias.scope !11359, !noalias !11342, !noundef !4
  %i.ij = icmp eq i64 %i.ii, -1
  br i1 %i.ij, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit11.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i unwind label %bb.au, !noalias !11343

_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.aq, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i6.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 136
  %i.il = load i64, ptr %i.ik, align 8, !range !33, !alias.scope !11340, !noalias !11341, !noundef !4 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 72
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !11340, !noalias !11341, !noundef !4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 80
  %i.ip = load i32, ptr %i.io, align 8, !range !34, !alias.scope !11340, !noalias !11341, !noundef !4
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 150
  %i.ir = load i8, ptr %i.iq, align 2, !range !13, !alias.scope !11340, !noalias !11341, !noundef !4
  %i.is = load i64, ptr %i.gn, align 8, !range !17, !alias.scope !11340, !noalias !11341, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !11340, !noalias !11341 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 88
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !11340, !noalias !11341 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 96
  %i.iy = load i32, ptr %i.ix, align 8, !range !32, !alias.scope !11340, !noalias !11341, !noundef !4
  %.sroa.85.sroa.0.0.extract.trunc94.i = trunc i64 %.sroa.85.48.copyload.i to i32
  %.sroa.85.sroa.12.0.extract.shift105.i = lshr i64 %.sroa.85.48.copyload.i, 32
  %.sroa.85.sroa.12.0.extract.trunc106.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift105.i to i8
  %.sroa.85.sroa.13.0.extract.shift117.i = and i64 %.sroa.85.48.copyload.i, -1099511627776
  %.sroa.93.48.copyload.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !11338 ; 2 uses
  %.sroa.93.sroa.0.0.extract.trunc77.i = trunc i64 %.sroa.93.48.copyload.i to i32
  %.sroa.93.sroa.10.0.extract.shift81.i = lshr i64 %.sroa.93.48.copyload.i, 32
  %.sroa.99.48.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !11338 ; 3 uses
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc64.i = trunc i64 %.sroa.99.48.copyload.i to i8
  %3 = lshr i64 %.sroa.99.48.copyload.i, 8
  %.sroa.99.sroa.0.sroa.10.0.extract.trunc72.i = trunc i64 %3 to i32
  %.sroa.99.sroa.10.0.extract.shift56.i = lshr i64 %.sroa.99.48.copyload.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11342
  %.sroa.32.sroa.0.0.extract.trunc240.i = trunc i64 %i.iu to i32
  %.sroa.32.sroa.18.0.extract.shift259.i = and i64 %i.iu, -4294967296
  %.sroa.44.sroa.0.0.extract.trunc179.i = trunc i64 %i.ia to i32
  %.sroa.44.sroa.18.0.extract.shift204.i = lshr i64 %i.ia, 32
  %.sroa.44.sroa.18.0.extract.trunc205.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift204.i to i8
  %.sroa.44.sroa.19.0.extract.shift230.i = and i64 %i.ia, -1099511627776
  %i.iz = ptrtoint ptr %i.ic to i64
  %.sroa.69.sroa.0.0.extract.trunc124.i = trunc i64 %i.hx to i32
  %.sroa.69.sroa.17.0.extract.shift136.i = lshr i64 %i.hx, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc145.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift136.i to i16
  %sum.shift326.i = lshr i64 %i.hx, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc160.i = trunc nuw nsw i64 %sum.shift326.i to i32
  %.sroa.105.sroa.0.0.extract.trunc46.i = trunc i64 %i.in to i8
  %.sroa.105.sroa.8.0.extract.shift51.i = and i64 %i.in, -256
  %.sroa.113.sroa.0.0.extract.trunc35.i = trunc i64 %i.iw to i32
  %.sroa.113.sroa.7.0.extract.shift36.i = lshr i64 %i.iw, 32
  %.sroa.118.0.insert.ext.i = zext i32 %i.iy to i64
  %i.ja = inttoptr i64 %.sroa.118.0.insert.ext.i to ptr
  %i.jb = ptrtoint ptr %i.gr to i64
  %i.jc = ptrtoint ptr %i.hm to i64
  %.sroa.132.sroa.0.0.extract.trunc30.i = trunc i64 %i.il to i32
  %.sroa.132.sroa.6.0.extract.shift31.i = lshr i64 %i.il, 32
  %.sroa.132.sroa.6.0.extract.trunc32.i = trunc i64 %.sroa.132.sroa.6.0.extract.shift31.i to i16
  %.sroa.132.sroa.7.0.extract.shift33.i = and i64 %i.il, -281474976710656
  %.sroa.137.sroa.0.0.extract.trunc.i = trunc i16 %i.hk to i8
  %.sroa.137.sroa.5.0.extract.shift.i = lshr i16 %i.hk, 8
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.aw:                                            ; preds = %bb.d
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11360)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.jf = load i32, ptr %i.je, align 8, !alias.scope !11361, !noalias !11362, !noundef !4
  %i.jg = load ptr, ptr %i.jd, align 8, !alias.scope !11361, !noalias !11362, !nonnull !4, !noundef !4 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !11361, !noalias !11362, !noundef !4 ; 2 uses
  %i.jj = atomicrmw add ptr %i.jg, i64 1 monotonic, align 8, !noalias !11363
  %i.jk = icmp slt i64 %i.jj, 0
  br i1 %i.jk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 44
  %i.jm = load i16, ptr %i.jl, align 4, !alias.scope !11361, !noalias !11362, !noundef !4
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !11361, !noalias !11362, !nonnull !4, !noundef !4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !11361, !noalias !11362, !noundef !4
  %i.jr = atomicrmw add ptr %i.jo, i64 1 monotonic, align 8, !noalias !11363
  %i.js = icmp slt i64 %i.jr, 0
  br i1 %i.js, label %bb.az, label %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  tail call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %bb.ax
  tail call void @llvm.trap()
  unreachable

_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ax
  %i.jt = ptrtoint ptr %i.jg to i64
  %.sroa.32.sroa.0.0.extract.trunc239.i = trunc i64 %i.ji to i32
  %.sroa.32.sroa.18.0.extract.shift257.i = and i64 %i.ji, -4294967296
  %i.ju = ptrtoint ptr %i.jo to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc174.i = trunc i64 %i.ju to i32
  %.sroa.44.sroa.18.0.extract.shift194.i = lshr i64 %i.ju, 32
  %.sroa.44.sroa.18.0.extract.trunc195.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift194.i to i8
  %.sroa.44.sroa.19.0.extract.shift220.i = and i64 %i.ju, -1099511627776
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.ba:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 136
  %i.jw = load i32, ptr %i.jv, align 8, !alias.scope !11365, !noalias !11366, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11367
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 96
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !11365, !noalias !11366, !nonnull !4, !noundef !4 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 104
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !11365, !noalias !11366, !noundef !4 ; 2 uses
  %i.kb = atomicrmw add ptr %i.jy, i64 1 monotonic, align 8, !noalias !11368
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.jy, ptr %i.n, align 8, !noalias !11367
  store i64 %i.ka, ptr %i.au, align 8, !noalias !11367
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 140
  %i.ke = load i16, ptr %i.kd, align 4, !alias.scope !11365, !noalias !11366, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11367
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.kg = load i64, ptr %i.kf, align 8, !range !12, !alias.scope !11365, !noalias !11366, !noundef !4
  %.not.i22.i.i = icmp eq i64 %i.kg, -1
  br i1 %.not.i22.i.i, label %bb.bg, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %bb.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11369)
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !11370, !noalias !11371, !nonnull !4, !noundef !4
  %i.kk = load i64, ptr %i.kh, align 8, !alias.scope !11370, !noalias !11371, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11372
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, 2305843009213693952) %i.kk, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i25.i.i unwind label %.loopexit336.i, !noalias !11368

.noexc.i25.i.i:                                   ; preds = %bb.bd
  %i.kl = load i64, ptr %i.j, align 8, !range !17, !noalias !11372, !noundef !4
  %i.km = trunc nuw i64 %i.kl to i1
  %i.kn = load i64, ptr %i.av, align 8, !range !26, !noalias !11372, !noundef !4 ; 4 uses
  br i1 %i.km, label %bb.be, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i26.i.i, !prof !5

bb.be:                                            ; preds = %.noexc.i25.i.i
  %i.ko = load i64, ptr %i.aw, align 8, !noalias !11372
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.kn, i64 %i.ko) #32
          to label %.noexc8.i31.i.i unwind label %.loopexit.split-lp337.i, !noalias !11368

.noexc8.i31.i.i:                                  ; preds = %bb.be
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i26.i.i: ; preds = %.noexc.i25.i.i
  %i.kp = load ptr, ptr %i.aw, align 8, !noalias !11372, !nonnull !4, !noundef !4 ; 2 uses
  %i.kq = icmp ule i64 %i.kk, %i.kn
  tail call void @llvm.assume(i1 %i.kq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11372
  %.not.i.i.i27.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not.i.i.i27.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i28.i.i, label %bb.bf

bb.bf:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i26.i.i
  %i.kr = shl nuw nsw i64 %i.kk, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr nonnull readonly align 4 %i.kj, i64 %i.kr, i1 false), !noalias !11373
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i28.i.i

bb.bg:                                            ; preds = %bb.bb
  store i64 -1, ptr %i.m, align 8, !noalias !11367
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i28.i.i, %bb.bg
  %.sroa.0103.i.sroa.6.24.copyload.i = phi i64 [ %i.kn, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i28.i.i ], [ -1, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11367
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 112
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !11365, !noalias !11366, !nonnull !4, !noundef !4 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 120
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !11365, !noalias !11366, !noundef !4 ; 2 uses
  %i.kw = atomicrmw add ptr %i.kt, i64 1 monotonic, align 8, !noalias !11368
  %i.kx = icmp slt i64 %i.kw, 0
  br i1 %i.kx, label %bb.bm, label %bb.bj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i: ; preds = %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i, %.loopexit.split-lp337.i, %.loopexit336.i
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i30.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i ], [ %.pn.i30.i.i, %bb.bt ], [ %lpad.loopexit338.i, %.loopexit336.i ], [ %lpad.loopexit.split-lp339.i, %.loopexit.split-lp337.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11374)
  call void @llvm.experimental.noalias.scope.decl(metadata !11375)
  %i.ky = load ptr, ptr %i.n, align 8, !alias.scope !11376, !noalias !11367, !nonnull !4, !noundef !4
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 release, align 8, !noalias !11377
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.bi, label %bb.dz

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.dz unwind label %bb.bs, !noalias !11368

.loopexit336.i:                                   ; preds = %bb.bd
  %lpad.loopexit338.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i

.loopexit.split-lp337.i:                          ; preds = %bb.be
  %lpad.loopexit.split-lp339.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i28.i.i: ; preds = %bb.bf, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i26.i.i
  store i64 %i.kn, ptr %i.m, align 8, !noalias !11367
  store ptr %i.kp, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 8, !noalias !11367
  store i64 %i.kk, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !11367
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  store ptr %i.kt, ptr %i.l, align 8, !noalias !11367
  store i64 %i.kv, ptr %i.ax, align 8, !noalias !11367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11379)
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !11380, !noalias !11381, !nonnull !4, !noundef !4
  %i.le = load i64, ptr %i.lb, align 8, !alias.scope !11380, !noalias !11381, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11383
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 0, 1537228672809129302) %i.le, i1 noundef zeroext false, i64 noundef 2, i64 noundef 6)
          to label %.noexc12.i.i.i unwind label %.loopexit341.i, !noalias !11368

.noexc12.i.i.i:                                   ; preds = %bb.bj
  %i.lf = load i64, ptr %i.i, align 8, !range !17, !noalias !11383, !noundef !4
  %i.lg = trunc nuw i64 %i.lf to i1
  %i.lh = load i64, ptr %i.ay, align 8, !range !26, !noalias !11383, !noundef !4 ; 4 uses
  br i1 %i.lg, label %bb.bk, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i10.i.i.i, !prof !5

bb.bk:                                            ; preds = %.noexc12.i.i.i
  %i.li = load i64, ptr %i.az, align 8, !noalias !11383
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.lh, i64 %i.li) #32
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp342.i, !noalias !11368

.noexc13.i.i.i:                                   ; preds = %bb.bk
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i10.i.i.i: ; preds = %.noexc12.i.i.i
  %i.lj = load ptr, ptr %i.az, align 8, !noalias !11383, !nonnull !4, !noundef !4 ; 3 uses
  %i.lk = icmp ule i64 %i.le, %i.lh
  tail call void @llvm.assume(i1 %i.lk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11383
  store i64 %i.lh, ptr %i.k, align 8, !alias.scope !11384, !noalias !11385
  store ptr %i.lj, ptr %i.ba, align 8, !alias.scope !11384, !noalias !11385
  store i64 0, ptr %i.bb, align 8, !alias.scope !11384, !noalias !11385
  %.not.i.i11.i.i.i = icmp eq i64 %i.le, 0
  %i.ll = ptrtoint ptr %i.lj to i64               ; 2 uses
  br i1 %.not.i.i11.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i10.i.i.i
  %i.lm = mul nuw nsw i64 %i.le, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.lj, ptr nonnull readonly align 2 %i.ld, i64 %i.lm, i1 false), !noalias !11386
  store i64 %i.le, ptr %i.bb, align 8, !alias.scope !11384, !noalias !11385
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.bm:                                            ; preds = %bb.bh
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.br, %.loopexit.split-lp342.i, %.loopexit341.i
  %.pn.i30.i.i = phi { ptr, i32 } [ %lpad.phi350.i, %bb.br ], [ %lpad.loopexit343.i, %.loopexit341.i ], [ %lpad.loopexit.split-lp344.i, %.loopexit.split-lp342.i ] ; 2 uses
  %i.ln = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !11387
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i unwind label %bb.bs, !noalias !11368

.loopexit341.i:                                   ; preds = %bb.bj
  %lpad.loopexit343.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

.loopexit.split-lp342.i:                          ; preds = %bb.bk
  %lpad.loopexit.split-lp344.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.bl, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i10.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.lq = load i64, ptr %i.lp, align 8, !range !12, !alias.scope !11365, !noalias !11366, !noundef !4
  %i.lr = icmp eq i64 %i.lq, -1
  br i1 %i.lr, label %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11388)
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 72
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.lu = load ptr, ptr %i.lt, align 8, !alias.scope !11389, !noalias !11390, !nonnull !4, !noundef !4
  %i.lv = load i64, ptr %i.ls, align 8, !alias.scope !11389, !noalias !11390, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11391
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 1537228672809129302) %i.lv, i1 noundef zeroext false, i64 noundef 2, i64 noundef 6)
          to label %.noexc18.i.i.i unwind label %.loopexit346.i, !noalias !11368

.noexc18.i.i.i:                                   ; preds = %bb.bo
  %i.lw = load i64, ptr %i.h, align 8, !range !17, !noalias !11391, !noundef !4
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = load i64, ptr %i.bc, align 8, !range !26, !noalias !11391, !noundef !4 ; 4 uses
  br i1 %i.lx, label %bb.bp, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i, !prof !5

bb.bp:                                            ; preds = %.noexc18.i.i.i
  %i.lz = load i64, ptr %i.bd, align 8, !noalias !11391
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ly, i64 %i.lz) #32
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp347.i, !noalias !11368

.noexc19.i.i.i:                                   ; preds = %bb.bp
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i: ; preds = %.noexc18.i.i.i
  %i.ma = load ptr, ptr %i.bd, align 8, !noalias !11391, !nonnull !4, !noundef !4 ; 3 uses
  %i.mb = icmp ule i64 %i.lv, %i.ly
  tail call void @llvm.assume(i1 %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11391
  %.not.i.i17.i.i.i = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i17.i.i.i, label %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i
  %i.mc = mul nuw nsw i64 %i.lv, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ma, ptr nonnull readonly align 2 %i.lu, i64 %i.mc, i1 false), !noalias !11392
  br label %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

.loopexit346.i:                                   ; preds = %bb.bo
  %lpad.loopexit348.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp347.i:                          ; preds = %bb.bp
  %lpad.loopexit.split-lp349.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp347.i, %.loopexit346.i
  %lpad.phi350.i = phi { ptr, i32 } [ %lpad.loopexit348.i, %.loopexit346.i ], [ %lpad.loopexit.split-lp349.i, %.loopexit.split-lp347.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.bs, !noalias !11368

bb.bs:                                            ; preds = %bb.bt, %bb.br, %bb.bn, %bb.bi
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !11368
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i: ; preds = %bb.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  %i.me = load i64, ptr %i.m, align 8, !range !12, !alias.scope !11393, !noalias !11367, !noundef !4
  %i.mf = icmp eq i64 %i.me, -1
  br i1 %i.mf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i unwind label %bb.bs, !noalias !11368

_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bq, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i ], [ %i.lv, %bb.bq ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i.i = phi ptr [ undef, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %i.ma, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i ], [ %i.ma, %bb.bq ]
  %.sroa.0.0.i.i.i = phi i64 [ -1, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %i.ly, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i16.i.i.i ], [ %i.ly, %bb.bq ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 128
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !11365, !noalias !11366, !noundef !4
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 80
  %i.mj = load i64, ptr %i.mi, align 8, !alias.scope !11365, !noalias !11366, !noundef !4 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 88
  %i.ml = load i32, ptr %i.mk, align 8, !range !34, !alias.scope !11365, !noalias !11366, !noundef !4
  %.sroa.0103.i.sroa.8.24.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i29.i.i, align 8, !noalias !11394 ; 3 uses
  %.sroa.0103.i.sroa.9.24.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !11394 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11367
  %.sroa.32.sroa.0.0.extract.trunc232.i = trunc i64 %i.ll to i32
  %.sroa.32.sroa.18.0.extract.shift243.i = and i64 %i.ll, -4294967296
  %.sroa.44.sroa.0.0.extract.trunc167.i = trunc i64 %i.le to i32
  %.sroa.44.sroa.18.0.extract.shift180.i = lshr i64 %i.le, 32
  %.sroa.44.sroa.18.0.extract.trunc181.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift180.i to i8
  %.sroa.44.sroa.19.0.extract.shift206.i = and i64 %i.le, -1099511627776
  %.sroa.69.sroa.0.0.extract.trunc119.i = trunc i64 %.sroa.0103.i.sroa.8.24.copyload.i to i32
  %.sroa.69.sroa.17.0.extract.shift126.i = lshr i64 %.sroa.0103.i.sroa.8.24.copyload.i, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc140.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift126.i to i16
  %sum.shift324.i = lshr i64 %.sroa.0103.i.sroa.8.24.copyload.i, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc150.i = trunc nuw nsw i64 %sum.shift324.i to i32
  %.sroa.85.sroa.0.0.extract.trunc89.i = trunc i64 %.sroa.0103.i.sroa.9.24.copyload.i to i32
  %.sroa.85.sroa.12.0.extract.shift95.i = lshr i64 %.sroa.0103.i.sroa.9.24.copyload.i, 32
  %.sroa.85.sroa.12.0.extract.trunc96.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift95.i to i8
  %.sroa.85.sroa.13.0.extract.shift107.i = and i64 %.sroa.0103.i.sroa.9.24.copyload.i, -1099511627776
  %.sroa.93.sroa.0.0.extract.trunc79.i = trunc i64 %.sroa.0.0.i.i.i to i32
  %.sroa.93.sroa.10.0.extract.shift85.i = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.mm = ptrtoint ptr %.sroa.5.sroa.0.0.i.i.i to i64 ; 3 uses
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc65.i = trunc i64 %i.mm to i8
  %4 = lshr i64 %i.mm, 8
  %.sroa.99.sroa.0.sroa.10.0.extract.trunc74.i = trunc i64 %4 to i32
  %.sroa.99.sroa.10.0.extract.shift58.i = lshr i64 %i.mm, 32
  %.sroa.105.sroa.0.0.extract.trunc45.i = trunc i64 %.sroa.5.sroa.4.0.i.i.i to i8
  %.sroa.105.sroa.8.0.extract.shift49.i = and i64 %.sroa.5.sroa.4.0.i.i.i, -256
  %.sroa.109.sroa.0.0.extract.trunc38.i = trunc i64 %i.mj to i32
  %.sroa.109.sroa.7.0.extract.shift40.i = and i64 %i.mj, -4294967296
  %i.mn = ptrtoint ptr %i.kt to i64
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.bu:                                            ; preds = %bb.d
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11395)
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.mq = load i32, ptr %i.mp, align 8, !alias.scope !11396, !noalias !11397, !noundef !4
  %i.mr = load ptr, ptr %i.mo, align 8, !alias.scope !11396, !noalias !11397, !nonnull !4, !noundef !4 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !11396, !noalias !11397, !noundef !4 ; 2 uses
  %i.mu = atomicrmw add ptr %i.mr, i64 1 monotonic, align 8, !noalias !11398
  %i.mv = icmp slt i64 %i.mu, 0
  br i1 %i.mv, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 44
  %i.mx = load i16, ptr %i.mw, align 4, !alias.scope !11396, !noalias !11397, !noundef !4
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !alias.scope !11396, !noalias !11397, !nonnull !4, !noundef !4 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !11396, !noalias !11397, !noundef !4
  %i.nc = atomicrmw add ptr %i.mz, i64 1 monotonic, align 8, !noalias !11398
  %i.nd = icmp slt i64 %i.nc, 0
  br i1 %i.nd, label %bb.bx, label %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.bw:                                            ; preds = %bb.bu
  tail call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.bv
  tail call void @llvm.trap()
  unreachable

_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bv
  %i.ne = ptrtoint ptr %i.mr to i64
  %.sroa.32.sroa.0.0.extract.trunc238.i = trunc i64 %i.mt to i32
  %.sroa.32.sroa.18.0.extract.shift255.i = and i64 %i.mt, -4294967296
  %i.nf = ptrtoint ptr %i.mz to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc173.i = trunc i64 %i.nf to i32
  %.sroa.44.sroa.18.0.extract.shift192.i = lshr i64 %i.nf, 32
  %.sroa.44.sroa.18.0.extract.trunc193.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift192.i to i8
  %.sroa.44.sroa.19.0.extract.shift218.i = and i64 %i.nf, -1099511627776
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.by:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11399)
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 144
  %i.nh = load i32, ptr %i.ng, align 8, !alias.scope !11400, !noalias !11401, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11402
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 80
  %i.nj = load ptr, ptr %i.ni, align 8, !alias.scope !11400, !noalias !11401, !nonnull !4, !noundef !4 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 88
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !11400, !noalias !11401, !noundef !4 ; 3 uses
  %i.nm = atomicrmw add ptr %i.nj, i64 1 monotonic, align 8, !noalias !11403
  %i.nn = icmp slt i64 %i.nm, 0
  br i1 %i.nn, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store ptr %i.nj, ptr %i.g, align 8, !noalias !11402
  store i64 %i.nl, ptr %i.ap, align 8, !noalias !11402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11402
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.no)
          to label %bb.cd unwind label %bb.cc, !noalias !11404

bb.ca:                                            ; preds = %bb.by
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit_crit_edge.i.i.i, %bb.cc
  %i.np = phi ptr [ %i.nj, %bb.cc ], [ %.pre.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit_crit_edge.i.i.i ]
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ns, %bb.cc ], [ %.pn.pn.i35.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit_crit_edge.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11405)
  call void @llvm.experimental.noalias.scope.decl(metadata !11406)
  %i.nq = atomicrmw sub ptr %i.np, i64 1 release, align 8, !noalias !11407
  %i.nr = icmp eq i64 %i.nq, 1
  br i1 %i.nr, label %bb.cb, label %bb.dz

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.dz unwind label %bb.cw, !noalias !11404

bb.cc:                                            ; preds = %bb.bz
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.cd:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11402
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 96
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !11400, !noalias !11401, !nonnull !4, !noundef !4 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 104
  %i.nw = load i64, ptr %i.nv, align 8, !alias.scope !11400, !noalias !11401, !noundef !4 ; 2 uses
  %i.nx = atomicrmw add ptr %i.nu, i64 1 monotonic, align 8, !noalias !11404
  %i.ny = icmp slt i64 %i.nx, 0
  br i1 %i.ny, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.nu, ptr %i.e, align 8, !noalias !11402
  store i64 %i.nw, ptr %i.aq, align 8, !noalias !11402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11402
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %i.oa = load i64, ptr %i.nz, align 8, !range !12, !alias.scope !11400, !noalias !11401, !noundef !4
  %.not.i33.i.i = icmp eq i64 %i.oa, -1           ; 2 uses
  br i1 %.not.i33.i.i, label %bb.cj, label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  tail call void @llvm.trap()
  unreachable

bb.cg:                                            ; preds = %bb.ce
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11408)
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 72
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !11409, !noalias !11410, !nonnull !4, !noundef !4
  %i.oe = load i64, ptr %i.ob, align 8, !alias.scope !11409, !noalias !11410, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11411
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.oe, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc10.i.i.i unwind label %.loopexit.i, !noalias !11404

.noexc10.i.i.i:                                   ; preds = %bb.cg
  %i.of = load i64, ptr %i.a, align 8, !range !17, !noalias !11411, !noundef !4
  %i.og = trunc nuw i64 %i.of to i1
  %i.oh = load i64, ptr %i.ar, align 8, !range !26, !noalias !11411, !noundef !4 ; 4 uses
  br i1 %i.og, label %bb.ch, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i36.i.i, !prof !5

bb.ch:                                            ; preds = %.noexc10.i.i.i
  %i.oi = load i64, ptr %i.as, align 8, !noalias !11411
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.oh, i64 %i.oi) #32
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i, !noalias !11404

.noexc11.i.i.i:                                   ; preds = %bb.ch
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i36.i.i: ; preds = %.noexc10.i.i.i
  %i.oj = load ptr, ptr %i.as, align 8, !noalias !11411, !nonnull !4, !noundef !4 ; 2 uses
  %i.ok = icmp ule i64 %i.oe, %i.oh
  tail call void @llvm.assume(i1 %i.ok)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11411
  %.not.i.i.i37.i.i = icmp eq i64 %i.oe, 0
  br i1 %.not.i.i.i37.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i38.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i36.i.i
  %i.ol = shl nuw nsw i64 %i.oe, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oj, ptr nonnull readonly align 4 %i.od, i64 %i.ol, i1 false), !noalias !11412
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i38.i.i

bb.cj:                                            ; preds = %bb.ce
  store i64 -1, ptr %i.d, align 8, !noalias !11402
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i38.i.i, %bb.cj
  %.sroa.0125.i.sroa.11.56.copyload.i = phi i64 [ %i.oh, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i38.i.i ], [ -1, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11413)
  switch i64 %i.bs, label %default.unreachable.i.i.i [
    i64 0, label %bb.cl
    i64 1, label %bb.cm
    i64 2, label %bb.cn
    i64 3, label %bb.co
    i64 4, label %bb.cp
  ]

default.unreachable.i.i.i:                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.om)
          to label %.noexc12.i45.i.i unwind label %bb.cs, !noalias !11404

.noexc12.i45.i.i:                                 ; preds = %bb.cl
  store i64 0, ptr %i.c, align 8, !alias.scope !11414, !noalias !11415
  br label %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

bb.cm:                                            ; preds = %bb.ck
  store i64 1, ptr %i.c, align 8, !alias.scope !11414, !noalias !11415
  br label %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

bb.cn:                                            ; preds = %bb.ck
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.on)
          to label %.noexc13.i44.i.i unwind label %bb.cs, !noalias !11404

.noexc13.i44.i.i:                                 ; preds = %bb.cn
  store i64 2, ptr %i.c, align 8, !alias.scope !11414, !noalias !11415
  br label %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

bb.co:                                            ; preds = %bb.ck
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oo)
          to label %.noexc14.i.i.i unwind label %bb.cs, !noalias !11404

.noexc14.i.i.i:                                   ; preds = %bb.co
  store i64 3, ptr %i.c, align 8, !alias.scope !11414, !noalias !11415
  br label %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

bb.cp:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(152) %.sroa.012.0484.i, i64 32, i1 false), !alias.scope !11416, !noalias !11401
  br label %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i: ; preds = %bb.cr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.i35.i.i = phi { ptr, i32 } [ %.pn.i40.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i ], [ %.pn.i40.i.i, %bb.cr ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.op = atomicrmw sub ptr %i.nu, i64 1 release, align 8, !noalias !11417
  %i.oq = icmp eq i64 %i.op, 1
  br i1 %i.oq, label %bb.cq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i unwind label %bb.cw, !noalias !11404

.loopexit.i:                                      ; preds = %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i

.loopexit.split-lp.i:                             ; preds = %bb.ch
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog.exit.i38.i.i: ; preds = %bb.ci, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i36.i.i
  store i64 %i.oh, ptr %i.d, align 8, !noalias !11402
  store ptr %i.oj, ptr %.sroa.4.0..sroa_idx.i39.i.i, align 8, !noalias !11402
  store i64 %i.oe, ptr %.sroa.520.0..sroa_idx.i.i.i, align 8, !noalias !11402
  br label %bb.ck

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.cu, %bb.cs
  %.pn.i40.i.i = phi { ptr, i32 } [ %i.or, %bb.cs ], [ %i.oy, %.sink.split.i.i.i.i ], [ %i.oy, %bb.cu ] ; 2 uses
  br i1 %.not.i33.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i unwind label %bb.cw, !noalias !11404

bb.cs:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i

_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.cp, %.noexc14.i.i.i, %.noexc13.i44.i.i, %bb.cm, %.noexc12.i45.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 148
  %i.ot = load i8, ptr %i.os, align 4, !range !13, !alias.scope !11400, !noalias !11401, !noundef !4
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 149
  %i.ov = load i8, ptr %i.ou, align 1, !range !28, !alias.scope !11400, !noalias !11401, !noundef !4
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 112 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !11400, !noalias !11401, !noundef !4
  %.not6.i.i.i = icmp eq ptr %i.ox, null
  br i1 %.not6.i.i.i, label %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11402
  invoke void @_RNvXNtCsc96bKABWO34_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringBK_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.cv unwind label %bb.cu, !noalias !11404

bb.cu:                                            ; preds = %bb.ct
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = load i64, ptr %i.c, align 8, !range !21, !alias.scope !11418, !noalias !11402, !noundef !4
  switch i64 %i.oz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i [
    i64 0, label %.sink.split.i.i.i.i
    i64 2, label %.sink.split.i.i.i.i
    i64 3, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.cu, %bb.cu, %bb.cu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v430TriggerSpecificationDefinitionEBJ_.exit.i.i.i unwind label %bb.cw, !noalias !11404

bb.cv:                                            ; preds = %bb.ct
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %i.b, align 8, !noalias !11402
  %.sroa.5.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx2.i41.i.i, align 8, !noalias !11419
  %.sroa.5.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i41.i.sroa_idx.i, align 8, !noalias !11419
  %.sroa.5.i.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.i.i.sroa.5.0..sroa.5.0..sroa_idx2.i41.i.sroa_idx.i, align 8, !noalias !11419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11402
  %i.pa = ptrtoint ptr %.sroa.0.0.copyload1.i.i.i to i64
  br label %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.cw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i, %.sink.split.i.i.i.i, %bb.cr, %bb.cq, %bb.cb
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !11404
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i: ; preds = %bb.cq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i34.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit_crit_edge.i.i.i unwind label %bb.cw, !noalias !11404

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit_crit_edge.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !11420, !noalias !11402
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.cv, %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.5.i.i.sroa.0.0.i = phi i64 [ undef, %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.sroa.0.0.copyload.i, %bb.cv ]
  %.sroa.5.i.i.sroa.4.0.i = phi i64 [ undef, %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.sroa.4.0.copyload.i, %bb.cv ]
  %.sroa.5.i.i.sroa.5.0.i = phi i64 [ undef, %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.sroa.5.0.copyload.i, %bb.cv ] ; 3 uses
  %.sroa.0.0.i42.i.i = phi i64 [ 0, %_RNvXs68_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_30TriggerSpecificationDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pa, %bb.cv ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 150
  %i.pd = load i8, ptr %i.pc, align 2, !range !13, !alias.scope !11400, !noalias !11401, !noundef !4
  %.sroa.0125.i.sroa.7.32.copyload.i = load i64, ptr %i.f, align 8, !noalias !11421
  %.sroa.0125.i.sroa.9.32.copyload.i = load i64, ptr %.sroa.0125.i.sroa.9.32..sroa_idx.i, align 8, !noalias !11421 ; 3 uses
  %.sroa.0125.i.sroa.10.32.copyload.i = load i64, ptr %.sroa.0125.i.sroa.10.32..sroa_idx.i, align 8, !noalias !11421 ; 3 uses
  %.sroa.0125.i.sroa.13.56.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i39.i.i, align 8, !noalias !11421 ; 3 uses
  %.sroa.0125.i.sroa.14.56.copyload.i = load i64, ptr %.sroa.520.0..sroa_idx.i.i.i, align 8, !noalias !11421 ; 2 uses
  %.sroa.0125.i.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !11421
  %.sroa.0125.i.sroa.4.0.copyload.i = load i64, ptr %i.at, align 8, !noalias !11421
  %.sroa.0125.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.0125.i.sroa.5.0..sroa_idx.i, align 8, !noalias !11421 ; 2 uses
  %.sroa.0125.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.0125.i.sroa.6.0..sroa_idx.i, align 8, !noalias !11421 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11402
  %.sroa.32.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.5.0.copyload.i to i32
  %.sroa.32.sroa.18.0.extract.shift.i = and i64 %.sroa.0125.i.sroa.5.0.copyload.i, -4294967296
  %.sroa.44.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.6.0.copyload.i to i32
  %.sroa.44.sroa.18.0.extract.shift.i = lshr i64 %.sroa.0125.i.sroa.6.0.copyload.i, 32
  %.sroa.44.sroa.18.0.extract.trunc.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift.i to i8
  %.sroa.44.sroa.19.0.extract.shift.i = and i64 %.sroa.0125.i.sroa.6.0.copyload.i, -1099511627776
  %.sroa.69.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.9.32.copyload.i to i32
  %.sroa.69.sroa.17.0.extract.shift.i = lshr i64 %.sroa.0125.i.sroa.9.32.copyload.i, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift.i to i16
  %sum.shift322.i = lshr i64 %.sroa.0125.i.sroa.9.32.copyload.i, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc.i = trunc nuw nsw i64 %sum.shift322.i to i32
  %.sroa.85.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.10.32.copyload.i to i32
  %.sroa.85.sroa.12.0.extract.shift.i = lshr i64 %.sroa.0125.i.sroa.10.32.copyload.i, 32
  %.sroa.85.sroa.12.0.extract.trunc.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift.i to i8
  %.sroa.85.sroa.13.0.extract.shift.i = and i64 %.sroa.0125.i.sroa.10.32.copyload.i, -1099511627776
  %.sroa.93.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.11.56.copyload.i to i32
  %.sroa.93.sroa.10.0.extract.shift.i = lshr i64 %.sroa.0125.i.sroa.11.56.copyload.i, 32
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc63.i = trunc i64 %.sroa.0125.i.sroa.13.56.copyload.i to i8
  %5 = lshr i64 %.sroa.0125.i.sroa.13.56.copyload.i, 8
  %.sroa.99.sroa.0.sroa.10.0.extract.trunc70.i = trunc i64 %5 to i32
  %.sroa.99.sroa.10.0.extract.shift.i = lshr i64 %.sroa.0125.i.sroa.13.56.copyload.i, 32
  %.sroa.105.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0125.i.sroa.14.56.copyload.i to i8
  %.sroa.105.sroa.8.0.extract.shift.i = and i64 %.sroa.0125.i.sroa.14.56.copyload.i, -256
  %i.pe = ptrtoint ptr %i.nj to i64               ; 2 uses
  %.sroa.109.sroa.0.0.extract.trunc.i = trunc i64 %i.pe to i32
  %.sroa.109.sroa.7.0.extract.shift.i = and i64 %i.pe, -4294967296
  %.sroa.113.sroa.0.0.extract.trunc.i = trunc i64 %i.nl to i32
  %.sroa.113.sroa.7.0.extract.shift.i = lshr i64 %i.nl, 32
  %.sroa.132.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.i.i.sroa.5.0.i to i32
  %.sroa.132.sroa.6.0.extract.shift.i = lshr i64 %.sroa.5.i.i.sroa.5.0.i, 32
  %.sroa.132.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.132.sroa.6.0.extract.shift.i to i16
  %.sroa.132.sroa.7.0.extract.shift.i = and i64 %.sroa.5.i.i.sroa.5.0.i, -281474976710656
  %i.pf = zext nneg i8 %i.ov to i16
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.cx:                                            ; preds = %bb.d
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.pi = load i32, ptr %i.ph, align 8, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.pj = load ptr, ptr %i.pg, align 8, !alias.scope !11306, !noalias !11307, !nonnull !4, !noundef !4 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.pl = load i64, ptr %i.pk, align 8, !alias.scope !11306, !noalias !11307, !noundef !4 ; 2 uses
  %i.pm = atomicrmw add ptr %i.pj, i64 1 monotonic, align 8, !noalias !11304
  %i.pn = icmp slt i64 %i.pm, 0
  br i1 %i.pn, label %bb.dx, label %bb.dw

bb.cy:                                            ; preds = %bb.d
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11422)
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.pq = load i32, ptr %i.pp, align 8, !alias.scope !11423, !noalias !11424, !noundef !4
  %i.pr = load ptr, ptr %i.po, align 8, !alias.scope !11423, !noalias !11424, !nonnull !4, !noundef !4 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !11423, !noalias !11424, !noundef !4 ; 2 uses
  %i.pu = atomicrmw add ptr %i.pr, i64 1 monotonic, align 8, !noalias !11425
  %i.pv = icmp slt i64 %i.pu, 0
  br i1 %i.pv, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 44
  %i.px = load i32, ptr %i.pw, align 4, !alias.scope !11423, !noalias !11424, !noundef !4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.pz = load ptr, ptr %i.py, align 8, !alias.scope !11423, !noalias !11424, !nonnull !4, !noundef !4 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !11423, !noalias !11424, !noundef !4
  %i.qc = atomicrmw add ptr %i.pz, i64 1 monotonic, align 8, !noalias !11425
  %i.qd = icmp slt i64 %i.qc, 0
  br i1 %i.qd, label %bb.db, label %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.da:                                            ; preds = %bb.cy
  tail call void @llvm.trap()
  unreachable

bb.db:                                            ; preds = %bb.cz
  tail call void @llvm.trap()
  unreachable

_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.cz
  %i.qe = ptrtoint ptr %i.pr to i64
  %.sroa.32.sroa.0.0.extract.trunc236.i = trunc i64 %i.pt to i32
  %.sroa.32.sroa.18.0.extract.shift251.i = and i64 %i.pt, -4294967296
  %i.qf = ptrtoint ptr %i.pz to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc172.i = trunc i64 %i.qf to i32
  %.sroa.44.sroa.18.0.extract.shift190.i = lshr i64 %i.qf, 32
  %.sroa.44.sroa.18.0.extract.trunc191.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift190.i to i8
  %.sroa.44.sroa.19.0.extract.shift216.i = and i64 %i.qf, -1099511627776
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc148.i = trunc i32 %i.px to i16
  %.sroa.69.sroa.17.sroa.15.0.extract.shift165.i = lshr i32 %i.px, 16
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dc:                                            ; preds = %bb.d
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11426)
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.qi = load i32, ptr %i.qh, align 8, !alias.scope !11427, !noalias !11428, !noundef !4
  %i.qj = load ptr, ptr %i.qg, align 8, !alias.scope !11427, !noalias !11428, !nonnull !4, !noundef !4 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !11427, !noalias !11428, !noundef !4 ; 2 uses
  %i.qm = atomicrmw add ptr %i.qj, i64 1 monotonic, align 8, !noalias !11429
  %i.qn = icmp slt i64 %i.qm, 0
  br i1 %i.qn, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 44
  %i.qp = load i32, ptr %i.qo, align 4, !alias.scope !11427, !noalias !11428, !noundef !4 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !11427, !noalias !11428, !nonnull !4, !noundef !4 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !11427, !noalias !11428, !noundef !4
  %i.qu = atomicrmw add ptr %i.qr, i64 1 monotonic, align 8, !noalias !11429
  %i.qv = icmp slt i64 %i.qu, 0
  br i1 %i.qv, label %bb.df, label %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i

bb.de:                                            ; preds = %bb.dc
  tail call void @llvm.trap()
  unreachable

bb.df:                                            ; preds = %bb.dd
  tail call void @llvm.trap()
  unreachable

_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i: ; preds = %bb.dd
  %i.qw = ptrtoint ptr %i.qj to i64
  %.sroa.32.sroa.0.0.extract.trunc235.i = trunc i64 %i.ql to i32
  %.sroa.32.sroa.18.0.extract.shift249.i = and i64 %i.ql, -4294967296
  %i.qx = ptrtoint ptr %i.qr to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc171.i = trunc i64 %i.qx to i32
  %.sroa.44.sroa.18.0.extract.shift188.i = lshr i64 %i.qx, 32
  %.sroa.44.sroa.18.0.extract.trunc189.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift188.i to i8
  %.sroa.44.sroa.19.0.extract.shift214.i = and i64 %i.qx, -1099511627776
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc147.i = trunc i32 %i.qp to i16
  %.sroa.69.sroa.17.sroa.15.0.extract.shift163.i = lshr i32 %i.qp, 16
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dg:                                            ; preds = %bb.d
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11430)
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !alias.scope !11431, !noalias !11432, !nonnull !4, !noundef !4 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !11431, !noalias !11432, !noundef !4
  %i.rd = atomicrmw add ptr %i.ra, i64 1 monotonic, align 8, !noalias !11433
  %i.re = icmp slt i64 %i.rd, 0
  br i1 %i.re, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 64
  %i.rg = load i32, ptr %i.rf, align 8, !alias.scope !11431, !noalias !11432, !noundef !4 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8, !alias.scope !11431, !noalias !11432, !noundef !4 ; 3 uses
  %.not.i47.i.i = icmp eq ptr %i.ri, null
  br i1 %.not.i47.i.i, label %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.dj

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.trap()
  unreachable

bb.dj:                                            ; preds = %bb.dh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11434)
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.rj, align 8, !alias.scope !11435, !noalias !11436
  %i.rk = atomicrmw add ptr %i.ri, i64 1 monotonic, align 8, !noalias !11437
  %i.rl = icmp slt i64 %i.rk, 0
  br i1 %i.rl, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.trap()
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 56
  %.val2.i.i.i.i = load i32, ptr %i.rm, align 8, !alias.scope !11435, !noalias !11436, !noundef !4
  br label %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.dl, %bb.dh
  %.sroa.5.sroa.4.0.i48.i.i = phi i32 [ undef, %bb.dh ], [ %.val2.i.i.i.i, %bb.dl ]
  %.sroa.5.sroa.0.0.i49.i.i = phi i64 [ undef, %bb.dh ], [ %.val1.i.i.i.i, %bb.dl ] ; 3 uses
  %i.rn = load i64, ptr %i.qy, align 8, !alias.scope !11431, !noalias !11432
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.rp = load i32, ptr %i.ro, align 8, !range !32, !alias.scope !11431, !noalias !11432, !noundef !4
  %i.rq = ptrtoint ptr %i.ra to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc170.i = trunc i64 %i.rq to i32
  %.sroa.44.sroa.18.0.extract.shift186.i = lshr i64 %i.rq, 32
  %.sroa.44.sroa.18.0.extract.trunc187.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift186.i to i8
  %.sroa.44.sroa.19.0.extract.shift212.i = and i64 %i.rq, -1099511627776
  %i.rr = ptrtoint ptr %i.ri to i64               ; 3 uses
  %.sroa.69.sroa.0.0.extract.trunc120.i = trunc i64 %i.rr to i32
  %.sroa.69.sroa.17.0.extract.shift128.i = lshr i64 %i.rr, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc141.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift128.i to i16
  %sum.shift.i = lshr i64 %i.rr, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc152.i = trunc nuw nsw i64 %sum.shift.i to i32
  %.sroa.85.sroa.0.0.extract.trunc90.i = trunc i64 %.sroa.5.sroa.0.0.i49.i.i to i32
  %.sroa.85.sroa.12.0.extract.shift97.i = lshr i64 %.sroa.5.sroa.0.0.i49.i.i, 32
  %.sroa.85.sroa.12.0.extract.trunc98.i = trunc i64 %.sroa.85.sroa.12.0.extract.shift97.i to i8
  %.sroa.85.sroa.13.0.extract.shift109.i = and i64 %.sroa.5.sroa.0.0.i49.i.i, -1099511627776
  %.sroa.99.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %i.rg to i8
  %.sroa.99.sroa.0.sroa.10.0.extract.shift.i = lshr i32 %i.rg, 8
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dm:                                            ; preds = %bb.d
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11438)
  %i.rt = load ptr, ptr %i.rs, align 8, !alias.scope !11439, !noalias !11440, !nonnull !4, !noundef !4 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !11439, !noalias !11440, !noundef !4 ; 2 uses
  %i.rw = atomicrmw add ptr %i.rt, i64 1 monotonic, align 8, !noalias !11441
  %i.rx = icmp slt i64 %i.rw, 0
  br i1 %i.rx, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 48
  %i.rz = load i32, ptr %i.ry, align 8, !alias.scope !11439, !noalias !11440, !noundef !4
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !11439, !noalias !11440, !noundef !4 ; 3 uses
  %.not.i51.i.i = icmp eq ptr %i.sb, null
  br i1 %.not.i51.i.i, label %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.dp

bb.do:                                            ; preds = %bb.dm
  tail call void @llvm.trap()
  unreachable

bb.dp:                                            ; preds = %bb.dn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11442)
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 32
  %.val1.i.i52.i.i = load i64, ptr %i.sc, align 8, !alias.scope !11443, !noalias !11444
  %i.sd = atomicrmw add ptr %i.sb, i64 1 monotonic, align 8, !noalias !11445
  %i.se = icmp slt i64 %i.sd, 0
  br i1 %i.se, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.trap()
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %.val2.i.i53.i.i = load i32, ptr %i.sf, align 8, !alias.scope !11443, !noalias !11444, !noundef !4
  br label %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.dr, %bb.dn
  %.sroa.5.sroa.4.0.i54.i.i = phi i32 [ undef, %bb.dn ], [ %.val2.i.i53.i.i, %bb.dr ]
  %.sroa.5.sroa.0.0.i55.i.i = phi i64 [ undef, %bb.dn ], [ %.val1.i.i52.i.i, %bb.dr ]
  %i.sg = ptrtoint ptr %i.rt to i64
  %.sroa.32.sroa.0.0.extract.trunc234.i = trunc i64 %i.rv to i32
  %.sroa.32.sroa.18.0.extract.shift247.i = and i64 %i.rv, -4294967296
  %i.sh = ptrtoint ptr %i.sb to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc169.i = trunc i64 %i.sh to i32
  %.sroa.44.sroa.18.0.extract.shift184.i = lshr i64 %i.sh, 32
  %.sroa.44.sroa.18.0.extract.trunc185.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift184.i to i8
  %.sroa.44.sroa.19.0.extract.shift210.i = and i64 %i.sh, -1099511627776
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.ds:                                            ; preds = %bb.f
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !alias.scope !11306, !noalias !11307
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.sl = load i32, ptr %i.sk, align 8, !range !32, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.sm = ptrtoint ptr %i.ca to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc178.i = trunc i64 %i.sm to i32
  %.sroa.44.sroa.18.0.extract.shift202.i = lshr i64 %i.sm, 32
  %.sroa.44.sroa.18.0.extract.trunc203.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift202.i to i8
  %.sroa.44.sroa.19.0.extract.shift228.i = and i64 %i.sm, -1099511627776
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dt:                                            ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.du:                                            ; preds = %bb.g
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 40
  %i.sp = load i64, ptr %i.so, align 8, !alias.scope !11306, !noalias !11307, !noundef !4 ; 3 uses
  %i.sq = load i64, ptr %i.sn, align 8, !range !17, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 16
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !11306, !noalias !11307 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 52
  %i.su = load i8, ptr %i.st, align 4, !range !11316, !alias.scope !11306, !noalias !11307, !noundef !4
  %.sroa.32.sroa.0.0.extract.trunc242.i = trunc i64 %i.ss to i32
  %.sroa.32.sroa.18.0.extract.shift263.i = and i64 %i.ss, -4294967296
  %i.sv = ptrtoint ptr %i.ci to i64               ; 3 uses
  %.sroa.44.sroa.0.0.extract.trunc177.i = trunc i64 %i.sv to i32
  %.sroa.44.sroa.18.0.extract.shift200.i = lshr i64 %i.sv, 32
  %.sroa.44.sroa.18.0.extract.trunc201.i = trunc i64 %.sroa.44.sroa.18.0.extract.shift200.i to i8
  %.sroa.44.sroa.19.0.extract.shift226.i = and i64 %i.sv, -1099511627776
  %.sroa.69.sroa.0.0.extract.trunc125.i = trunc i64 %i.sp to i32
  %.sroa.69.sroa.17.0.extract.shift138.i = lshr i64 %i.sp, 32
  %.sroa.69.sroa.17.sroa.0.0.extract.trunc146.i = trunc i64 %.sroa.69.sroa.17.0.extract.shift138.i to i16
  %sum.shift334.i = lshr i64 %i.sp, 48
  %.sroa.69.sroa.17.sroa.15.0.extract.trunc162.i = trunc nuw nsw i64 %sum.shift334.i to i32
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dv:                                            ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.dw:                                            ; preds = %bb.cx
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.012.0484.i, i64 28
  %i.sx = load i8, ptr %i.sw, align 4, !range !13, !alias.scope !11306, !noalias !11307, !noundef !4
  %i.sy = ptrtoint ptr %i.pj to i64
  %.sroa.32.sroa.0.0.extract.trunc237.i = trunc i64 %i.pl to i32
  %.sroa.32.sroa.18.0.extract.shift253.i = and i64 %i.pl, -4294967296
  br label %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.dx:                                            ; preds = %bb.cx
  tail call void @llvm.trap()
  unreachable

_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.dw, %bb.du, %bb.ds, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
  %.sroa.32.sroa.18.0.i = phi i64 [ 0, %bb.ds ], [ %.sroa.32.sroa.18.0.extract.shift263.i, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift261.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift245.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift259.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift257.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift243.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift255.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift253.i, %bb.dw ], [ %.sroa.32.sroa.18.0.extract.shift251.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift249.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.18.0.extract.shift247.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.32.sroa.0.0.i = phi i32 [ %i.sl, %bb.ds ], [ %.sroa.32.sroa.0.0.extract.trunc242.i, %bb.du ], [ %i.dg, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc241.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc233.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc240.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc239.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc232.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc238.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc237.i, %bb.dw ], [ %.sroa.32.sroa.0.0.extract.trunc236.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc235.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %i.rp, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.sroa.0.0.extract.trunc234.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.44.sroa.19.sroa.0.0.i = phi i64 [ %.sroa.44.sroa.19.0.extract.shift228.i, %bb.ds ], [ %.sroa.44.sroa.19.0.extract.shift226.i, %bb.du ], [ %.sroa.44.sroa.19.0.extract.shift224.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift222.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift208.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift230.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift220.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift206.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift218.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ %.sroa.44.sroa.19.0.extract.shift216.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift214.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.44.sroa.19.0.extract.shift212.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.19.0.extract.shift210.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.44.sroa.18.0.i = phi i8 [ %.sroa.44.sroa.18.0.extract.trunc203.i, %bb.ds ], [ %.sroa.44.sroa.18.0.extract.trunc201.i, %bb.du ], [ %.sroa.44.sroa.18.0.extract.trunc199.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc197.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc183.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc205.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc195.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc181.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc193.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.sx, %bb.dw ], [ %.sroa.44.sroa.18.0.extract.trunc191.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc189.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc187.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.18.0.extract.trunc185.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.44.sroa.0.0.i = phi i32 [ %.sroa.44.sroa.0.0.extract.trunc178.i, %bb.ds ], [ %.sroa.44.sroa.0.0.extract.trunc177.i, %bb.du ], [ %.sroa.44.sroa.0.0.extract.trunc176.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc175.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc168.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc179.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc174.i, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc167.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc173.i, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.pi, %bb.dw ], [ %.sroa.44.sroa.0.0.extract.trunc172.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc171.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc170.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc169.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.69.sroa.17.sroa.15.0.i = phi i32 [ 0, %bb.ds ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc162.i, %bb.du ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc158.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc156.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc154.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc160.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc150.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ %.sroa.69.sroa.17.sroa.15.0.extract.shift165.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.shift163.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.69.sroa.17.sroa.15.0.extract.trunc152.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.69.sroa.17.sroa.0.0.i = phi i16 [ undef, %bb.ds ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc146.i, %bb.du ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc144.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc143.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc142.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc145.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jm, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc140.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.mx, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc148.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc147.i, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.69.sroa.17.sroa.0.0.extract.trunc141.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.69.sroa.0.0.i = phi i32 [ %i.by, %bb.ds ], [ %.sroa.69.sroa.0.0.extract.trunc125.i, %bb.du ], [ %.sroa.69.sroa.0.0.extract.trunc123.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc122.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc121.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc124.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jf, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc119.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.mq, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ %i.pq, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.qi, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.69.sroa.0.0.extract.trunc120.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.4.0.i54.i.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.85.sroa.13.sroa.0.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ %.sroa.85.sroa.13.0.extract.shift115.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.13.0.extract.shift113.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.13.0.extract.shift111.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.13.0.extract.shift117.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.13.0.extract.shift107.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.13.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.85.sroa.13.0.extract.shift109.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.85.sroa.12.0.i = phi i8 [ undef, %bb.ds ], [ %i.su, %bb.du ], [ %.sroa.85.sroa.12.0.extract.trunc104.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc102.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc100.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc106.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc96.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.85.sroa.12.0.extract.trunc98.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.85.sroa.0.0.i = phi i32 [ undef, %bb.ds ], [ %i.cg, %bb.du ], [ %.sroa.85.sroa.0.0.extract.trunc93.i, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc92.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc91.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc94.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc89.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.85.sroa.0.0.extract.trunc90.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.rz, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.93.sroa.10.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ %i.dl, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.10.0.extract.shift87.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.10.0.extract.shift83.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.10.0.extract.shift81.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.10.0.extract.shift85.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.10.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.93.sroa.0.0.i = phi i32 [ undef, %bb.ds ], [ undef, %bb.du ], [ %i.cp, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.0.0.extract.trunc80.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.0.0.extract.trunc78.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.0.0.extract.trunc77.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.0.0.extract.trunc79.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.93.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.5.sroa.4.0.i48.i.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.99.sroa.0.sroa.10.sroa.0.0.i = phi i32 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.shift67.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.trunc76.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.trunc72.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.trunc74.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.trunc70.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.99.sroa.0.sroa.10.0.extract.shift.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.99.sroa.0.sroa.0.0.i = phi i8 [ undef, %bb.ds ], [ undef, %bb.du ], [ %i.di, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc62.i, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc66.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc64.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc65.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc63.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %.sroa.99.sroa.0.sroa.0.0.extract.trunc.i, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.99.sroa.10.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.em, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.10.0.extract.shift60.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.10.0.extract.shift56.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.10.0.extract.shift58.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.99.sroa.10.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.105.sroa.8.sroa.0.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.8.0.extract.shift47.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.8.0.extract.shift51.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.8.0.extract.shift49.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.8.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.105.sroa.0.0.i = phi i8 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ej, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc44.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc46.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc45.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.105.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.109.sroa.7.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.7.0.extract.shift42.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.7.0.extract.shift40.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.7.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.109.sroa.0.0.i = phi i32 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc39.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ip, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc38.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.109.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.113.sroa.7.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.gm, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.113.sroa.7.0.extract.shift36.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.113.sroa.7.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.113.sroa.0.0.i = phi i32 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ev, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.113.sroa.0.0.extract.trunc35.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ml, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.113.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.118.0.i = phi ptr [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ja, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jy, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.nu, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.132.sroa.7.0.i = phi i64 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.7.0.extract.shift33.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.7.0.extract.shift.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.132.sroa.6.0.i = phi i16 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.6.0.extract.trunc32.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ke, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.6.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.132.sroa.0.0.i = phi i32 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.0.0.extract.trunc30.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jw, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.132.sroa.0.0.extract.trunc.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.137.sroa.5.0.i = phi i16 [ 0, %bb.ds ], [ 0, %bb.du ], [ 0, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.137.sroa.5.0.extract.shift.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.pf, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.dw ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 0, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.137.sroa.0.0.i = phi i8 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.137.sroa.0.0.extract.trunc.i, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ot, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.140.0.i = phi i8 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ir, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.pd, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.135.0.i = phi i32 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.gp, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.nh, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.130.0.i = phi i64 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ho, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.mh, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i.sroa.4.0.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.127.0.i = phi i64 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jc, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.kv, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i.sroa.0.0.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.124.0.i = phi i64 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.gt, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.mn, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i42.i.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.121.0.i = phi i64 [ undef, %bb.ds ], [ undef, %bb.du ], [ undef, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jb, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ka, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.nw, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ undef, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.57.0.i = phi i64 [ %i.cc, %bb.ds ], [ %i.ck, %bb.du ], [ %i.ct, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ds, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.fn, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.iz, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jq, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0103.i.sroa.6.24.copyload.i, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.nb, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0125.i.sroa.7.32.copyload.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.dw ], [ %i.qb, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.qt, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %i.rc, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.0.i55.i.i, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.18.0.i = phi i64 [ %i.sj, %bb.ds ], [ %i.sq, %bb.du ], [ %i.de, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ef, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.18.8.copyload16.i, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.is, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.jt, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.lh, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.ne, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0125.i.sroa.4.0.copyload.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.sy, %bb.dw ], [ %i.qe, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.qw, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ %i.rn, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %i.sg, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.013.0.i = phi i64 [ 5, %bb.ds ], [ 6, %bb.du ], [ 7, %_RNvXs3b_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14CreateTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 8, %_RNvXs36_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18SoftDeleteTableLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 9, %_RNvXs3q_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_13AddColumnsLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 10, %_RNvXs4Y_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23DistinctCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 11, %_RNvXs5i_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_22DeleteDistinctCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 12, %_RNvXs45_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19LastCacheDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 13, %_RNvXs4z_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_18DeleteLastCacheLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0125.i.sroa.0.0.copyload.i, %_RNvXs5C_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerDefinitionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 15, %bb.dw ], [ 16, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 17, %_RNvXs63_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17TriggerIdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit46.i.i ], [ 18, %_RNvXs3g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_21SetRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ], [ 19, %_RNvXs3l_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_23ClearRetentionPeriodLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %i.sz = getelementptr inbounds nuw [152 x i8], ptr %i.aj, i64 %.sroa.7.0482.i ; 21 uses
  %.sroa.32.sroa.0.0.insert.ext.i = zext i32 %.sroa.32.sroa.0.0.i to i64
  %.sroa.32.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.32.sroa.18.0.i, %.sroa.32.sroa.0.0.insert.ext.i
  %.sroa.44.sroa.18.0.insert.ext.i = zext i8 %.sroa.44.sroa.18.0.i to i64
  %.sroa.44.sroa.18.0.insert.shift.i = shl nuw nsw i64 %.sroa.44.sroa.18.0.insert.ext.i, 32
  %.sroa.44.sroa.18.0.insert.insert.i = or disjoint i64 %.sroa.44.sroa.18.0.insert.shift.i, %.sroa.44.sroa.19.sroa.0.0.i
  %.sroa.44.sroa.0.0.insert.ext.i = zext i32 %.sroa.44.sroa.0.0.i to i64
  %.sroa.44.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.44.sroa.18.0.insert.insert.i, %.sroa.44.sroa.0.0.insert.ext.i
  %.sroa.69.sroa.17.sroa.15.0.insert.ext.i = shl nuw i32 %.sroa.69.sroa.17.sroa.15.0.i, 16
  %.sroa.69.sroa.17.sroa.0.0.insert.ext.i = zext i16 %.sroa.69.sroa.17.sroa.0.0.i to i32
  %.sroa.69.sroa.17.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.69.sroa.17.sroa.15.0.insert.ext.i, %.sroa.69.sroa.17.sroa.0.0.insert.ext.i
  %.sroa.69.sroa.17.0.insert.ext.i = zext i32 %.sroa.69.sroa.17.sroa.0.0.insert.insert.i to i64
  %.sroa.69.sroa.17.0.insert.shift.i = shl nuw i64 %.sroa.69.sroa.17.0.insert.ext.i, 32
  %.sroa.69.sroa.0.0.insert.ext.i = zext i32 %.sroa.69.sroa.0.0.i to i64
  %.sroa.69.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.69.sroa.17.0.insert.shift.i, %.sroa.69.sroa.0.0.insert.ext.i
  %.sroa.85.sroa.12.0.insert.ext.i = zext i8 %.sroa.85.sroa.12.0.i to i64
  %.sroa.85.sroa.12.0.insert.shift.i = shl nuw nsw i64 %.sroa.85.sroa.12.0.insert.ext.i, 32
  %.sroa.85.sroa.12.0.insert.insert.i = or disjoint i64 %.sroa.85.sroa.12.0.insert.shift.i, %.sroa.85.sroa.13.sroa.0.0.i
  %.sroa.85.sroa.0.0.insert.ext.i = zext i32 %.sroa.85.sroa.0.0.i to i64
  %.sroa.85.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.85.sroa.12.0.insert.insert.i, %.sroa.85.sroa.0.0.insert.ext.i
  %.sroa.93.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.93.sroa.10.0.i, 32
  %.sroa.93.sroa.0.0.insert.ext.i = zext i32 %.sroa.93.sroa.0.0.i to i64
  %.sroa.93.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.93.sroa.10.0.insert.shift.i, %.sroa.93.sroa.0.0.insert.ext.i
  %.sroa.99.sroa.0.sroa.10.0.insert.ext.i = shl i32 %.sroa.99.sroa.0.sroa.10.sroa.0.0.i, 8
  %.sroa.99.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.sroa.99.sroa.0.sroa.0.0.i to i32
  %.sroa.99.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.99.sroa.0.sroa.10.0.insert.ext.i, %.sroa.99.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.99.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.99.sroa.10.0.i, 32
  %.sroa.99.sroa.0.0.insert.ext.i = zext i32 %.sroa.99.sroa.0.sroa.0.0.insert.insert.i to i64
  %.sroa.99.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.99.sroa.10.0.insert.shift.i, %.sroa.99.sroa.0.0.insert.ext.i
  %.sroa.105.sroa.0.0.insert.ext.i = zext i8 %.sroa.105.sroa.0.0.i to i64
  %.sroa.105.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.105.sroa.8.sroa.0.0.i, %.sroa.105.sroa.0.0.insert.ext.i
  %.sroa.109.sroa.0.0.insert.ext.i = zext i32 %.sroa.109.sroa.0.0.i to i64
  %.sroa.109.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.109.sroa.7.0.i, %.sroa.109.sroa.0.0.insert.ext.i
  %.sroa.113.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.113.sroa.7.0.i, 32
  %.sroa.113.sroa.0.0.insert.ext.i = zext i32 %.sroa.113.sroa.0.0.i to i64
  %.sroa.113.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.113.sroa.7.0.insert.shift.i, %.sroa.113.sroa.0.0.insert.ext.i
  %.sroa.132.sroa.6.0.insert.ext.i = zext i16 %.sroa.132.sroa.6.0.i to i64
  %.sroa.132.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.132.sroa.6.0.insert.ext.i, 32
  %.sroa.132.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.132.sroa.6.0.insert.shift.i, %.sroa.132.sroa.7.0.i
  %.sroa.132.sroa.0.0.insert.ext.i = zext i32 %.sroa.132.sroa.0.0.i to i64
  %.sroa.132.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.132.sroa.6.0.insert.insert.i, %.sroa.132.sroa.0.0.insert.ext.i
  %.sroa.137.sroa.5.0.insert.shift.i = shl nuw i16 %.sroa.137.sroa.5.0.i, 8
  %.sroa.137.sroa.0.0.insert.ext.i = zext i8 %.sroa.137.sroa.0.0.i to i16
  %.sroa.137.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.137.sroa.5.0.insert.shift.i, %.sroa.137.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.0.i, ptr %i.sz, align 8, !noalias !11304
  %.sroa.4294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store i64 %.sroa.18.0.i, ptr %.sroa.4294.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.5295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store i64 %.sroa.32.sroa.0.0.insert.insert.i, ptr %.sroa.5295.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.6296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  store i64 %.sroa.44.sroa.0.0.insert.insert.i, ptr %.sroa.6296.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.7297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  store i64 %.sroa.57.0.i, ptr %.sroa.7297.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.8298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  store i64 %.sroa.69.sroa.0.0.insert.insert.i, ptr %.sroa.8298.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.9299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 48
  store i64 %.sroa.85.sroa.0.0.insert.insert.i, ptr %.sroa.9299.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.10300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 56
  store i64 %.sroa.93.sroa.0.0.insert.insert.i, ptr %.sroa.10300.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.11301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  store i64 %.sroa.99.sroa.0.0.insert.insert.i, ptr %.sroa.11301.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.12302.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 72
  store i64 %.sroa.105.sroa.0.0.insert.insert.i, ptr %.sroa.12302.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.13303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 80
  store i64 %.sroa.109.sroa.0.0.insert.insert.i, ptr %.sroa.13303.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.14304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 88
  store i64 %.sroa.113.sroa.0.0.insert.insert.i, ptr %.sroa.14304.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.15305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  store ptr %.sroa.118.0.i, ptr %.sroa.15305.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.16306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 104
  store i64 %.sroa.121.0.i, ptr %.sroa.16306.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.17307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 112
  store i64 %.sroa.124.0.i, ptr %.sroa.17307.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.18308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 120
  store i64 %.sroa.127.0.i, ptr %.sroa.18308.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.19309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 128
  store i64 %.sroa.130.0.i, ptr %.sroa.19309.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.20310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 136
  store i64 %.sroa.132.sroa.0.0.insert.insert.i, ptr %.sroa.20310.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.21311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 144
  store i32 %.sroa.135.0.i, ptr %.sroa.21311.0..sroa_idx.i, align 8, !noalias !11304
  %.sroa.22312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 148
  store i16 %.sroa.137.sroa.0.0.insert.insert.i, ptr %.sroa.22312.0..sroa_idx.i, align 4, !noalias !11304
  %.sroa.23313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 150
  store i8 %.sroa.140.0.i, ptr %.sroa.23313.0..sroa_idx.i, align 2, !noalias !11304
  %i.ta = icmp eq i64 %i.bo, 0
  br i1 %i.ta, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417DatabaseCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.c

bb.dy:                                            ; preds = %bb.dz
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !11304
  unreachable

bb.dz:                                            ; preds = %bb.cb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.bi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i, %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %.pn.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i23.i.i ], [ %.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %.pn.i16.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeSpecEBJ_.exit.i.i.i ], [ %.pn.i.i.i, %bb.ae ], [ %.pn.i16.i.i, %bb.an ], [ %.pn.pn.i.i.i, %bb.bi ], [ %.pn.pn.pn.i.i.i, %bb.cb ]
  store i64 %.sroa.7.0482.i, ptr %i.am, align 8, !noalias !11303
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417DatabaseCatalogOpEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.y) #33
          to label %bb.ea unwind label %bb.dy, !noalias !11304

bb.ea:                                            ; preds = %bb.dz
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v417DatabaseCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit: ; preds = %bb.c, %_RNvXs2w_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_17DatabaseCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  store i64 %i.ac, ptr %i.am, align 8, !noalias !11303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !11302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11303
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419ColumnDefinitionLogENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11453
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !11453
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !11453, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !11453, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !11453
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !11453
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !11453, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11453
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419ColumnDefinitionLogNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
  %.sroa.012.052.i = phi ptr [ %i.r, %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ], [ %i.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i ] ; 11 uses
  %.sroa.7.051.i = phi i64 [ %i.s, %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i ] ; 2 uses
  %.sroa.10.050.i = phi i64 [ %i.p, %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ], [ %i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i ]
  %i.p = add i64 %.sroa.10.050.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.012.052.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v419ColumnDefinitionLogNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 40
  %i.s = add nuw nsw i64 %.sroa.7.051.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11454)
  %i.t = load i64, ptr %.sroa.012.052.i, align 8, !range !11, !alias.scope !11455, !noalias !11456, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 24
  %i.w = load <2 x i16>, ptr %i.v, align 8, !alias.scope !11455, !noalias !11456
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.u, align 8, !alias.scope !11455, !noalias !11456, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !11455, !noalias !11456, !noundef !4
  %i.aa = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !11457
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 28
  %i.ad = load i16, ptr %i.ac, align 4, !alias.scope !11455, !noalias !11456
  %i.ae = load ptr, ptr %i.u, align 8, !alias.scope !11455, !noalias !11456, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !11455, !noalias !11456, !noundef !4
  %i.ah = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !11457
  %i.ai = icmp slt i64 %i.ah, 0
  %i.aj = insertelement <2 x i16> <i16 poison, i16 undef>, i16 %i.ad, i64 0
  br i1 %i.ai, label %bb.h, label %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 28
  %i.al = load <2 x i16>, ptr %i.ak, align 4, !alias.scope !11455, !noalias !11456
  %i.am = load ptr, ptr %i.u, align 8, !alias.scope !11455, !noalias !11456, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !11455, !noalias !11456, !noundef !4
  %i.ap = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !11457
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !range !19, !alias.scope !11455, !noalias !11456, !noundef !4
  br label %_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXs3v_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_19ColumnDefinitionLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.e, %bb.d
  %.sroa.19.0.i = phi i8 [ %i.as, %bb.i ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.715.0.i = phi i64 [ %i.ao, %bb.i ], [ %i.z, %bb.d ], [ %i.ag, %bb.e ]
  %.sroa.414.0.i = phi ptr [ %i.am, %bb.i ], [ %i.x, %bb.d ], [ %i.ae, %bb.e ]
  %i.at = phi <2 x i16> [ %i.al, %bb.i ], [ undef, %bb.d ], [ %i.aj, %bb.e ]
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.sroa.7.051.i ; 6 uses
  store i64 %i.t, ptr %i.au, align 8, !noalias !11453
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.414.0.i, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !11453
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.715.0.i, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !11453
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store <2 x i16> %i.w, ptr %.sroa.634.0..sroa_idx.i, align 8, !noalias !11453
end_hunk_0
