Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.00?download=true
inline.NumInlined: 8912
inline.NumDeleted: 2773
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write:bb.a
  br label %bb.n

.body.i.i:                                        ; preds = %.body46.i.i, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body46.i.i ], [ %i.bj, %bb.m ], [ %i.jq, %bb.aj ], [ %i.jq, %bb.ak ], [ %i.lq, %bb.ay ], [ %i.lq, %bb.ax ] ; 2 uses
  %i.bh = load i64, ptr %i.m, align 8, !range !122, !alias.scope !17375, !noalias !17373, !noundef !114
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs92BnbMq7p8c_15influxdb3_write.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs92BnbMq7p8c_15influxdb3_write.exit.i.i unwind label %bb.cu, !noalias !17373

bb.m:                                             ; preds = %bb.as, %bb.ae
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 360
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !noalias !17373
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 344
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !noalias !17373
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 376
  %i.bp = load <2 x i64>, ptr %i.bo, align 8, !noalias !17373
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 392
  %i.br = load i64, ptr %i.bq, align 8, !noalias !17373, !noundef !114
  %i.bs = load i64, ptr %.sroa.013.0213.i, align 8, !range !115, !noalias !17373, !noundef !114
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !17373, !noundef !114
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.bv, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !115, !noalias !17373, !noundef !114
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !17373, !noundef !114
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.ca, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17373
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 96
  %i.cc = load i64, ptr %i.cb, align 8, !range !144, !noalias !17373, !noundef !114 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.cc, -1
  br i1 %.not23.i.i, label %bb.be, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.sroa.14.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.60.sroa.0.sroa.14.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.87.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.90.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.104.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17376)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 104 ; 8 uses
  switch i64 %i.cc, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.aa
    i64 5, label %bb.ab
    i64 6, label %bb.ac
    i64 7, label %bb.aq
  ]

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.cf = load i8, ptr %i.ce, align 4, !range !269, !alias.scope !17377, !noalias !17378, !noundef !114
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.ch = load i8, ptr %i.cg, align 1, !range !269, !alias.scope !17377, !noalias !17378, !noundef !114
  %i.ci = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17377, !noalias !17378, !noundef !114 ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !17377, !noalias !17378
  %.sroa.5.0.i.i.i.i = select i1 %i.cj, i64 %i.cl, i64 undef
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.cn = load i64, ptr %i.cm, align 8, !range !115, !alias.scope !17377, !noalias !17378, !noundef !114 ; 2 uses
  %i.co = trunc nuw i64 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !17377, !noalias !17378
  %.sroa.54.0.i.i.i.i = select i1 %i.co, i64 %i.cq, i64 undef
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.cs = load i8, ptr %i.cr, align 8, !range !167, !alias.scope !17377, !noalias !17378, !noundef !114
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 137
  %i.cu = load i8, ptr %i.ct, align 1, !range !167, !alias.scope !17377, !noalias !17378, !noundef !114
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 138
  %i.cw = load i8, ptr %i.cv, align 2, !range !167, !alias.scope !17377, !noalias !17378, !noundef !114
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 139
  %i.cy = load i8, ptr %i.cx, align 1, !range !167, !alias.scope !17377, !noalias !17378, !noundef !114
  %.sroa.36.sroa.14.sroa.11.i.i.1..sroa.36.sroa.14.sroa.11.i.i.1..sroa.36.sroa.14.sroa.11.i.i.1..sroa.36.sroa.14.sroa.11.i.1..sroa.36.sroa.14.sroa.11.i.1..sroa.36.sroa.14.sroa.11.1..sroa.36.sroa.14.sroa.11.1..sroa.36.sroa.14.sroa.11.1..sroa.36.sroa.14.4..sroa.36.0.copyload109118134.pre.i.i = load i16, ptr %.sroa.36.sroa.14.sroa.11.i.i.1.i.i.1.i.i.1.i.1.i.1.sroa_idx355, align 1, !noalias !17373
  br label %bb.bg

bb.u:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.da = load i32, ptr %i.cz, align 8, !range !281, !alias.scope !17379, !noalias !17378, !noundef !114 ; 2 uses
  %i.db = trunc nuw i32 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !17379, !noalias !17378
  %.sroa.5.0.i1.i.i.i = select i1 %i.db, i32 %i.dd, i32 undef ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.df = load i32, ptr %i.de, align 8, !range !281, !alias.scope !17379, !noalias !17378, !noundef !114 ; 2 uses
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !17379, !noalias !17378
  %.sroa.52.0.i.i.i.i = select i1 %i.dg, i32 %i.di, i32 undef
  %i.dj = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17379, !noalias !17378, !noundef !114 ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !17379, !noalias !17378
  %.sroa.54.0.i2.i.i.i = select i1 %i.dk, i64 %i.dm, i64 undef
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.do = load i64, ptr %i.dn, align 8, !range !115, !alias.scope !17379, !noalias !17378, !noundef !114 ; 2 uses
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !17379, !noalias !17378
  %.sroa.56.0.i.i.i.i = select i1 %i.dp, i64 %i.dr, i64 undef
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.dt = load i16, ptr %i.ds, align 8, !alias.scope !17379, !noalias !17378
  %i.du = zext i16 %i.dt to i24
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 154
  %i.dw = load i8, ptr %i.dv, align 2, !range !167, !alias.scope !17379, !noalias !17378, !noundef !114
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.dy = load i8, ptr %i.dx, align 1, !range !167, !alias.scope !17379, !noalias !17378, !noundef !114
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc143.i.i = trunc nuw nsw i32 %i.da to i8
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc126.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift131.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc132.i.i = trunc nuw i32 %.sroa.36.sroa.14.sroa.11.0.extract.shift131.i.i to i24
  store i24 %.sroa.36.sroa.14.sroa.11.0.extract.trunc132.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !alias.scope !17376, !noalias !17373
  %.sroa.60.sroa.0.sroa.0.2.insert.ext220.i.i = zext nneg i8 %i.dw to i24
  %.sroa.60.sroa.0.sroa.0.2.insert.shift221.i.i = shl nuw nsw i24 %.sroa.60.sroa.0.sroa.0.2.insert.ext220.i.i, 16
  %.sroa.60.sroa.0.sroa.0.2.insert.insert223.i.i = or disjoint i24 %.sroa.60.sroa.0.sroa.0.2.insert.shift221.i.i, %i.du
  %i.dz = lshr i32 %.sroa.5.0.i1.i.i.i, 16
  %i.ea = trunc nuw i32 %i.dz to i16
  br label %bb.bg

bb.v:                                             ; preds = %bb.s
  %i.eb = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17380, !noalias !17378, !noundef !114 ; 2 uses
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !17380, !noalias !17378
  %.sroa.5.0.i3.i.i.i = select i1 %i.ec, i64 %i.ee, i64 undef
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.eg = load i64, ptr %i.ef, align 8, !range !115, !alias.scope !17380, !noalias !17378, !noundef !114 ; 2 uses
  %i.eh = trunc nuw i64 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !17380, !noalias !17378
  %.sroa.52.0.i4.i.i.i = select i1 %i.eh, i64 %i.ej, i64 undef
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !noalias !17373 ; 4 uses
  %.sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.em = load i8, ptr %.sroa_idx112.i.i, align 4, !noalias !17373
  %.sroa_idx112.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.en = load i8, ptr %.sroa_idx112.sroa_idx.i.i, align 1, !noalias !17373
  %.sroa_idx112.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %i.eo = load i16, ptr %.sroa_idx112.sroa_idx.sroa_idx.i.i, align 2, !noalias !17373 ; 2 uses
  %i.ep = load i64, ptr %i.ek, align 8, !range !115, !alias.scope !17380, !noalias !17378, !noundef !114
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !17380, !noalias !17378
  %.sroa.54.0.i5.i.i.i = select i1 %i.eq, i64 %i.es, i64 undef ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152 ; 2 uses
  %i.eu = load i24, ptr %i.et, align 8, !noalias !17373
  %.sroa_idx90.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.ev = load i8, ptr %.sroa_idx90.i.i, align 1, !noalias !17373
  %.sroa_idx90.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %i.ew = load i32, ptr %.sroa_idx90.sroa_idx.i.i, align 4, !noalias !17373
  %i.ex = load i64, ptr %i.et, align 8, !range !115, !alias.scope !17380, !noalias !17378, !noundef !114
  %i.ey = trunc nuw i64 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !17380, !noalias !17378
  %.sroa.56.0.i6.i.i.i = select i1 %i.ey, i64 %i.fa, i64 undef
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.fc = load <2 x i8>, ptr %i.fb, align 8, !alias.scope !17380, !noalias !17378
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.fe = load i8, ptr %i.fd, align 2, !range !167, !alias.scope !17380, !noalias !17378, !noundef !114
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.fg = load i8, ptr %i.ff, align 1, !range !167, !alias.scope !17380, !noalias !17378, !noundef !114
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc140.i.i = trunc i32 %i.el to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift146.i.i = lshr i32 %i.el, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc147.i.i = trunc i32 %.sroa.36.sroa.0.sroa.11.0.extract.shift146.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift158.i.i = lshr i32 %i.el, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc159.i.i = trunc i32 %.sroa.36.sroa.0.sroa.12.0.extract.shift158.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift170.i.i = lshr i32 %i.el, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc171.i.i = trunc nuw i32 %.sroa.36.sroa.0.sroa.13.0.extract.shift170.i.i to i8
  store i8 %i.en, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !alias.scope !17376, !noalias !17373
  store i16 %i.eo, ptr %.sroa.36.sroa.14.sroa.11.i.i.1.i.i.1.i.i.1.i.1.i.1.sroa_idx354, align 1, !alias.scope !17376, !noalias !17373
  %.sroa.52.sroa.0.0.extract.trunc101.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.52.sroa.10.0.extract.shift106.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.52.sroa.10.0.extract.trunc107.i.i = trunc nuw i64 %.sroa.52.sroa.10.0.extract.shift106.i.i to i32
  store i8 %i.ev, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !17376, !noalias !17373
  br label %bb.bg

bb.w:                                             ; preds = %bb.s
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.fi = load i32, ptr %i.fh, align 8, !range !281, !alias.scope !17381, !noalias !17378, !noundef !114
  %i.fj = trunc nuw i32 %i.fi to i1
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i8, ptr %i.fk, align 4, !noalias !17378
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 1, !noalias !17378
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 2, !noalias !17378
  %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %.sroa.5.i.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !17378
  %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %.sroa.5.i.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i, align 4, !noalias !17378
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.7.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.7.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.6.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.6.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.5.0.i.i = phi i16 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 2 uses
  %.sroa.5.i.i.sroa.4.0.i.i = phi i8 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i8 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.fm = load i32, ptr %i.fl, align 8, !range !281, !alias.scope !17381, !noalias !17378, !noundef !114
  %i.fn = trunc nuw i32 %i.fm to i1
  br i1 %i.fn, label %bb.z, label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fo, align 4, !noalias !17378
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17378
  br label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i

_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.52.i.i.sroa.0.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i32 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fp = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17381, !noalias !17378, !noundef !114 ; 2 uses
  %i.fq = trunc nuw i64 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !17381, !noalias !17378
  %.sroa.54.0.i7.i.i.i = select i1 %i.fq, i64 %i.fs, i64 undef
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.fu = load i64, ptr %i.ft, align 8, !range !115, !alias.scope !17381, !noalias !17378, !noundef !114 ; 2 uses
  %i.fv = trunc nuw i64 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !17381, !noalias !17378
  %.sroa.56.0.i8.i.i.i = select i1 %i.fv, i64 %i.fx, i64 undef
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.fz = load <2 x i8>, ptr %i.fy, align 8, !alias.scope !17381, !noalias !17378
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.gb = load i8, ptr %i.ga, align 2, !range !167, !alias.scope !17381, !noalias !17378, !noundef !114
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.gd = load i8, ptr %i.gc, align 1, !range !167, !alias.scope !17381, !noalias !17378, !noundef !114
  store i8 %.sroa.5.i.i.sroa.4.0.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !noalias !17373
  store i16 %.sroa.5.i.i.sroa.5.0.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i.1.i.i.1.i.i.1.i.1.i.1.sroa_idx353, align 1, !noalias !17373
  %.sroa.60.sroa.0.sroa.0.0.extract.trunc.i.i = trunc nuw nsw i32 %.sroa.01.0.i.i.i.i to i24
  store i8 0, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !17376, !noalias !17373
  br label %bb.bg

bb.aa:                                            ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.gf = load i32, ptr %i.ge, align 8, !range !281, !alias.scope !17382, !noalias !17378, !noundef !114 ; 2 uses
  %i.gg = trunc nuw i32 %i.gf to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.gi = load i32, ptr %i.gh, align 4, !alias.scope !17382, !noalias !17378
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.gk = load i32, ptr %i.gj, align 8, !range !281, !alias.scope !17382, !noalias !17378, !noundef !114 ; 2 uses
  %i.gl = trunc nuw i32 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %i.gn = load i32, ptr %i.gm, align 4, !alias.scope !17382, !noalias !17378
  %i.go = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17382, !noalias !17378, !noundef !114 ; 2 uses
  %i.gp = trunc nuw i64 %i.go to i1
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !17382, !noalias !17378
  %.sroa.54.0.i11.i.i.i = select i1 %i.gp, i64 %i.gr, i64 undef
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.gt = load i64, ptr %i.gs, align 8, !range !115, !alias.scope !17382, !noalias !17378, !noundef !114 ; 2 uses
  %i.gu = trunc nuw i64 %i.gt to i1
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !17382, !noalias !17378
  %.sroa.56.0.i12.i.i.i = select i1 %i.gu, i64 %i.gw, i64 undef
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.gy = load i16, ptr %i.gx, align 8, !alias.scope !17382, !noalias !17378
  %i.gz = zext i16 %i.gy to i24
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 154
  %i.hb = load i8, ptr %i.ha, align 2, !range !167, !alias.scope !17382, !noalias !17378, !noundef !114
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.hd = load i8, ptr %i.hc, align 1, !range !167, !alias.scope !17382, !noalias !17378, !noundef !114
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc141.i.i = trunc nuw nsw i32 %i.gf to i8
  %i.he = select i1 %i.gg, i32 %i.gi, i32 undef   ; 3 uses
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc125.i.i = trunc i32 %i.he to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift129.i.i = lshr i32 %i.he, 8
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc130.i.i = trunc nuw i32 %.sroa.36.sroa.14.sroa.11.0.extract.shift129.i.i to i24
  store i24 %.sroa.36.sroa.14.sroa.11.0.extract.trunc130.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !alias.scope !17376, !noalias !17373
  %i.hf = select i1 %i.gl, i32 %i.gn, i32 undef
  %.sroa.60.sroa.0.sroa.0.2.insert.ext.i.i = zext nneg i8 %i.hb to i24
  %.sroa.60.sroa.0.sroa.0.2.insert.shift.i.i = shl nuw nsw i24 %.sroa.60.sroa.0.sroa.0.2.insert.ext.i.i, 16
  %.sroa.60.sroa.0.sroa.0.2.insert.insert.i.i = or disjoint i24 %.sroa.60.sroa.0.sroa.0.2.insert.shift.i.i, %i.gz
  %i.hg = lshr i32 %i.he, 16
  %i.hh = trunc nuw i32 %i.hg to i16
  br label %bb.bg

bb.ab:                                            ; preds = %bb.s
  %i.hi = load i64, ptr %i.cd, align 8, !range !115, !alias.scope !17383, !noalias !17378, !noundef !114 ; 2 uses
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !17383, !noalias !17378
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.hn = load i64, ptr %i.hm, align 8, !range !115, !alias.scope !17383, !noalias !17378, !noundef !114 ; 2 uses
  %i.ho = trunc nuw i64 %i.hn to i1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !17383, !noalias !17378
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !noalias !17373 ; 4 uses
  %.sroa_idx110.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.ht = load i8, ptr %.sroa_idx110.i.i, align 4, !noalias !17373
  %.sroa_idx110.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.hu = load i8, ptr %.sroa_idx110.sroa_idx.i.i, align 1, !noalias !17373
  %.sroa_idx110.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %i.hv = load i16, ptr %.sroa_idx110.sroa_idx.sroa_idx.i.i, align 2, !noalias !17373 ; 2 uses
  %i.hw = load i64, ptr %i.hr, align 8, !range !115, !alias.scope !17383, !noalias !17378, !noundef !114
  %i.hx = trunc nuw i64 %i.hw to i1
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !17383, !noalias !17378
  %.sroa.54.0.i15.i.i.i = select i1 %i.hx, i64 %i.hz, i64 undef ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152 ; 2 uses
  %i.ib = load i24, ptr %i.ia, align 8, !noalias !17373
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.ic = load i8, ptr %.sroa_idx.i.i, align 1, !noalias !17373
  %.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %i.id = load i32, ptr %.sroa_idx.sroa_idx.i.i, align 4, !noalias !17373
  %i.ie = load i64, ptr %i.ia, align 8, !range !115, !alias.scope !17383, !noalias !17378, !noundef !114
  %i.if = trunc nuw i64 %i.ie to i1
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !17383, !noalias !17378
  %.sroa.56.0.i16.i.i.i = select i1 %i.if, i64 %i.ih, i64 undef
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.ij = load <2 x i8>, ptr %i.ii, align 8, !alias.scope !17383, !noalias !17378
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.il = load i8, ptr %i.ik, align 2, !range !167, !alias.scope !17383, !noalias !17378, !noundef !114
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.in = load i8, ptr %i.im, align 1, !range !167, !alias.scope !17383, !noalias !17378, !noundef !114
  %i.io = select i1 %i.hj, i64 %i.hl, i64 undef
  %i.ip = select i1 %i.ho, i64 %i.hq, i64 undef
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %i.hs to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift.i.i = lshr i32 %i.hs, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.36.sroa.0.sroa.11.0.extract.shift.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift.i.i = lshr i32 %i.hs, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc.i.i = trunc i32 %.sroa.36.sroa.0.sroa.12.0.extract.shift.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift.i.i = lshr i32 %i.hs, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc.i.i = trunc nuw i32 %.sroa.36.sroa.0.sroa.13.0.extract.shift.i.i to i8
  store i8 %i.hu, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !alias.scope !17376, !noalias !17373
  store i16 %i.hv, ptr %.sroa.36.sroa.14.sroa.11.i.i.1.i.i.1.i.i.1.i.1.i.1.sroa_idx, align 1, !alias.scope !17376, !noalias !17373
  %.sroa.52.sroa.0.0.extract.trunc100.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.52.sroa.10.0.extract.shift104.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.52.sroa.10.0.extract.trunc105.i.i = trunc nuw i64 %.sroa.52.sroa.10.0.extract.shift104.i.i to i32
  store i8 %i.ic, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !17376, !noalias !17373
  br label %bb.bg

bb.ac:                                            ; preds = %bb.s
  %i.iq = load i64, ptr %i.cd, align 8, !range !115, !noalias !17384, !noundef !114
  %i.ir = trunc nuw i64 %i.iq to i1               ; 2 uses
  br i1 %i.ir, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17384
  %i.it = load ptr, ptr %i.is, align 8, !noalias !17385, !noundef !114 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !17386, !nonnull !114, !noundef !114
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !17385, !noundef !114
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !17385, !noundef !114
  invoke void %i.iu(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.iv, ptr noundef %i.ix, i64 noundef %i.iz)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !17373, !inline_history !17295

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !17385
  br label %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ]
  %.sroa.4.8.copyload.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !17384
  %.sroa.613.8.copyload.i.i.i.i = load i64, ptr %.sroa.613.8..sroa_idx.i.i.i.i, align 8, !noalias !17384
  %.sroa.7.8.copyload.i.i.i.i = load ptr, ptr %.sroa.7.8..sroa_idx.i.i.i.i, align 8, !noalias !17384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17384
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.7.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi i64 [ %.sroa.613.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.4.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.6.0.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi i64 [ 1, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.jb = load i64, ptr %i.ja, align 8, !range !115, !noalias !17384, !noundef !114
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17384
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !17387, !noundef !114 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i6.i.i.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !17388, !nonnull !114, !noundef !114
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 176
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !17387, !noundef !114
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !17387, !noundef !114
  invoke void %i.jf(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.jg, ptr noundef %i.ji, i64 noundef %i.jk)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !17389, !inline_history !17298

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !17387
  %i.jl = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  br label %bb.al

bb.ai:                                            ; preds = %bb.al, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.7.0.i.i = phi i8 [ %.sroa.5.sroa.4.i.i.sroa.7.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.4.i.i.sroa.6.0.i.i = phi i8 [ %.sroa.5.sroa.4.i.i.sroa.6.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.al ], [ undef, %bb.af ] ; 3 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.al ], [ 0, %bb.af ]
  %i.jm = phi <2 x i8> [ %i.ju, %bb.al ], [ undef, %bb.af ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 184
  %i.jo = load i64, ptr %i.jn, align 8, !range !115, !noalias !17384, !noundef !114
  %i.jp = trunc nuw i64 %i.jo to i1
  br i1 %i.jp, label %bb.am, label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.jq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = icmp ne ptr %.sroa.6.0.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.ir, i1 %i.jr, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i.i, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !17390, !nonnull !114, !noundef !114
  invoke void %i.jt(ptr noundef %.sroa.10.0.i.i.i.i, ptr noundef %.sroa.8.0.i.i.i.i, i64 noundef %.sroa.9.0.i.i.i.i)
          to label %.body.i.i unwind label %bb.ap, !noalias !17389, !inline_history !2

bb.al:                                            ; preds = %.noexc.i.i.i.i, %bb.ag
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.jl, %.noexc.i.i.i.i ], [ 0, %bb.ag ]
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8, !noalias !17378
  %i.ju = load <2 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !17378
  %.sroa.5.sroa.4.i.i.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i.i.sroa.6.0..sroa_idx.i.i, align 2, !noalias !17378
  %.sroa.5.sroa.4.i.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i.i.sroa.7.0..sroa_idx.i.i, align 1, !noalias !17378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !17378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17384
  br label %bb.ai

bb.am:                                            ; preds = %bb.ai
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 192
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !17384, !noundef !114
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.sroa.52.0.i18.i.i.i = phi i64 [ %i.jw, %bb.am ], [ undef, %bb.ai ]
  %.sroa.01.0.i19.i.i.i = phi i64 [ 1, %bb.am ], [ 0, %bb.ai ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 200
  %i.jy = load i64, ptr %i.jx, align 8, !range !115, !noalias !17384, !noundef !114
  %i.jz = trunc nuw i64 %i.jy to i1
  br i1 %i.jz, label %bb.ao, label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 208
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !17384, !noundef !114
  br label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i

bb.ap:                                            ; preds = %bb.ak
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !17389
  unreachable

_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs92BnbMq7p8c_15influxdb3_write.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.54.0.i20.i.i.i = phi i64 [ %i.kb, %bb.ao ], [ undef, %bb.an ]
  %.sroa.03.0.i.i.i.i = phi i64 [ 1, %bb.ao ], [ 0, %bb.an ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 216
  %i.ke = load i8, ptr %i.kd, align 8, !range !167, !noalias !17384, !noundef !114
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 217
  %i.kg = load i8, ptr %i.kf, align 1, !range !167, !noalias !17384, !noundef !114
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 218
  %i.ki = load i8, ptr %i.kh, align 2, !range !167, !noalias !17384, !noundef !114
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 219
  %i.kk = load i8, ptr %i.kj, align 1, !range !167, !noalias !17384, !noundef !114
  %i.kl = ptrtoint ptr %.sroa.6.0.i.i.i.i to i64
  %i.km = ptrtoint ptr %.sroa.8.0.i.i.i.i to i64
  %i.kn = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64 ; 7 uses
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc145.i.i = trunc i64 %i.kn to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift156230.i.i = lshr i64 %i.kn, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc157.i.i = trunc i64 %.sroa.36.sroa.0.sroa.11.0.extract.shift156230.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift168231.i.i = lshr i64 %i.kn, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc169.i.i = trunc i64 %.sroa.36.sroa.0.sroa.12.0.extract.shift168231.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift180232.i.i = lshr i64 %i.kn, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc181.i.i = trunc i64 %.sroa.36.sroa.0.sroa.13.0.extract.shift180232.i.i to i8
  %.sroa.36.sroa.14.0.extract.shift115.i.i = lshr i64 %i.kn, 32
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc124.i.i = trunc i64 %.sroa.36.sroa.14.0.extract.shift115.i.i to i8
  %sum.shift233.i.i = lshr i64 %i.kn, 40
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc128.i.i = trunc nuw i64 %sum.shift233.i.i to i24
  store i24 %.sroa.36.sroa.14.sroa.11.0.extract.trunc128.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 4, !alias.scope !17376, !noalias !17373
  %.sroa.60.sroa.0.sroa.0.0.extract.trunc203.i.i = trunc i64 %.sroa.5.sroa.0.0.i.i.i.i to i24
  %.sroa.60.sroa.0.sroa.14.0.extract.shift208235.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 24
  %.sroa.60.sroa.0.sroa.14.0.extract.trunc209.i.i = trunc i64 %.sroa.60.sroa.0.sroa.14.0.extract.shift208235.i.i to i8
  store i8 %.sroa.60.sroa.0.sroa.14.0.extract.trunc209.i.i, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !17376, !noalias !17373
  %.sroa.60.sroa.19.0.extract.shift200.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 32
  %.sroa.60.sroa.19.0.extract.trunc201.i.i = trunc nuw i64 %.sroa.60.sroa.19.0.extract.shift200.i.i to i32
  store i8 %.sroa.5.sroa.4.i.i.sroa.7.0.i.i, ptr %.sroa.87.i.i, align 1, !noalias !17373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.90.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, i64 12, i1 false), !noalias !17373
  %i.ko = lshr i64 %i.kn, 48
  %i.kp = trunc nuw i64 %i.ko to i16
  br label %bb.bg

bb.aq:                                            ; preds = %bb.s
  %i.kq = load i64, ptr %i.cd, align 8, !range !115, !noalias !17391, !noundef !114
  %i.kr = trunc nuw i64 %i.kq to i1               ; 2 uses
  br i1 %i.kr, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17391
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !17392, !noundef !114 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !17393, !nonnull !114, !noundef !114
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !17392, !noundef !114
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.kz = load i64, ptr %i.ky, align 8, !noalias !17392, !noundef !114
  invoke void %i.ku(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.kv, ptr noundef %i.kx, i64 noundef %i.kz)
          to label %.noexc43.i.i unwind label %bb.m, !noalias !17373, !inline_history !17295

.noexc43.i.i:                                     ; preds = %bb.as
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !17394
  br label %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc43.i.i, %bb.ar
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc43.i.i ], [ null, %bb.ar ]
  %.sroa.4.8.copyload.i42.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !17391
  %.sroa.613.8.copyload.i44.i.i.i = load i64, ptr %.sroa.613.8..sroa_idx.i43.i.i.i, align 8, !noalias !17391
  %.sroa.7.8.copyload.i46.i.i.i = load ptr, ptr %.sroa.7.8..sroa_idx.i45.i.i.i, align 8, !noalias !17391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17391
  br label %bb.at

end_hunk_0
