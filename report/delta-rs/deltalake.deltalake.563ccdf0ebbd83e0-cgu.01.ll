inline.NumInlined: 10669
inline.NumDeleted: 3626
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.phi.trans.insert241.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.31.8..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.37.8..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.46.8..sroa_idx79.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.61.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.79.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.91.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %.sroa.9190.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.93.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.95.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.sroa.97.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %.sroa.99.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.cz, %.lr.ph.i
  %.sroa.10.0214.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.au, %bb.cz ]
  %.sroa.013.0212.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.aw, %bb.cz ] ; 129 uses
  %.sroa.7.0211.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.cz ] ; 3 uses
  %i.au = add i64 %.sroa.10.0214.i, -1            ; 2 uses
  %i.av = icmp eq ptr %.sroa.013.0212.i, %i.ag
  br i1 %i.av, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 416
  %i.ax = add nuw nsw i64 %.sroa.7.0211.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !20166
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 352 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !20166, !nonnull !3, !noundef !3
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !20166
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.l, %.body.i.i, %bb.g
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn.pn.pn.pn.i.i, %bb.l ], [ %.pn.pn.pn.pn.i.i, %.body.i.i ]
  %i.bc = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !20169
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.f, label %bb.db

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %bb.db unwind label %bb.cy, !noalias !20166

bb.g:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.ay, align 8, !noalias !20166, !nonnull !3, !noundef !3 ; 3 uses
  store ptr %i.bf, ptr %i.p, align 8, !noalias !20166
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 408
  %.val.i.i = load i32, ptr %i.bg, align 8, !noalias !20166, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20166
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 224 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !62, !noalias !20166, !noundef !3
  %.not.i.i = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !20166
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.k unwind label %bb.g, !noalias !20166

bb.j:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !20166
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !20166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20166
  br label %bb.n

.body.i.i:                                        ; preds = %.body47.i.i, %bb.ba, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body47.i.i ], [ %i.bl, %bb.m ], [ %i.ix, %bb.aj ], [ %i.ix, %bb.al ], [ %i.ix, %bb.ak ], [ %i.kr, %bb.ba ], [ %i.kr, %bb.az ], [ %i.kr, %bb.ay ] ; 2 uses
  %i.bj = load i64, ptr %i.o, align 8, !range !62, !alias.scope !20174, !noalias !20166, !noundef !3
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.cy, !noalias !20166

bb.m:                                             ; preds = %bb.at, %bb.ae
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 360
  %i.bn = load <2 x i64>, ptr %i.bm, align 8, !noalias !20166
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 344
  %i.bp = load <2 x i32>, ptr %i.bo, align 8, !noalias !20166
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 376
  %i.br = load <2 x i64>, ptr %i.bq, align 8, !noalias !20166
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 392
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !20166, !noundef !3
  %i.bu = load i64, ptr %.sroa.013.0212.i, align 8, !range !4, !noalias !20166, !noundef !3
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !20166, !noundef !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.bx, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !4, !noalias !20166, !noundef !3
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !20166, !noundef !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.cc, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20166
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !range !422, !noalias !20166, !noundef !3 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.ce, 8
  br i1 %.not23.i.i, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.91.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 104 ; 8 uses
  switch i64 %i.ce, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.aa
    i64 5, label %bb.ab
    i64 6, label %bb.ac
    i64 7, label %bb.ar
  ]

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.ch = load i8, ptr %i.cg, align 4, !range !556, !alias.scope !20177, !noalias !20180, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 141
  %i.cj = load i8, ptr %i.ci, align 1, !range !556, !alias.scope !20177, !noalias !20180, !noundef !3
  %i.ck = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20177, !noalias !20180, !noundef !3 ; 2 uses
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !20177, !noalias !20180
  %.sroa.5.0.i.i.i.i = select i1 %i.cl, i64 %i.cn, i64 undef
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.cp = load i64, ptr %i.co, align 8, !range !4, !alias.scope !20177, !noalias !20180, !noundef !3 ; 2 uses
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !20177, !noalias !20180
  %.sroa.54.0.i.i.i.i = select i1 %i.cq, i64 %i.cs, i64 undef
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.cu = load i8, ptr %i.ct, align 8, !range !4252, !alias.scope !20177, !noalias !20180, !noundef !3
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 137
  %i.cw = load i8, ptr %i.cv, align 1, !range !4252, !alias.scope !20177, !noalias !20180, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 138
  %i.cy = load i8, ptr %i.cx, align 2, !range !4252, !alias.scope !20177, !noalias !20180, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 139
  %i.da = load i8, ptr %i.cz, align 1, !range !4252, !alias.scope !20177, !noalias !20180, !noundef !3
  %2 = zext nneg i8 %i.da to i32
  br label %bb.bi

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.dc = load i32, ptr %i.db, align 8, !range !20184, !alias.scope !20185, !noalias !20188, !noundef !3 ; 2 uses
  %i.dd = trunc nuw i32 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.df = load i32, ptr %i.de, align 4, !alias.scope !20185, !noalias !20188
  %.sroa.5.0.i1.i.i.i = select i1 %i.dd, i32 %i.df, i32 undef ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.dh = load i32, ptr %i.dg, align 8, !range !20184, !alias.scope !20185, !noalias !20188, !noundef !3 ; 2 uses
  %i.di = trunc nuw i32 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !20185, !noalias !20188
  %.sroa.52.0.i.i.i.i = select i1 %i.di, i32 %i.dk, i32 undef
  %i.dl = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20185, !noalias !20188, !noundef !3 ; 2 uses
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !20185, !noalias !20188
  %.sroa.54.0.i2.i.i.i = select i1 %i.dm, i64 %i.do, i64 undef
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.dq = load i64, ptr %i.dp, align 8, !range !4, !alias.scope !20185, !noalias !20188, !noundef !3 ; 2 uses
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !20185, !noalias !20188
  %.sroa.56.0.i.i.i.i = select i1 %i.dr, i64 %i.dt, i64 undef
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.dv = load i8, ptr %i.du, align 8, !range !4252, !alias.scope !20185, !noalias !20188, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.dx = load i8, ptr %i.dw, align 1, !range !4252, !alias.scope !20185, !noalias !20188, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.dz = load i8, ptr %i.dy, align 2, !range !4252, !alias.scope !20185, !noalias !20188, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.eb = load i8, ptr %i.ea, align 1, !range !4252, !alias.scope !20185, !noalias !20188, !noundef !3
  %.sroa.37.sroa.0.0.extract.trunc180.i.i = trunc nuw nsw i32 %i.dc to i8
  %.sroa.46.sroa.0.0.extract.trunc149.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift159.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc160.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift159.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift171.i.i = and i32 %.sroa.5.0.i1.i.i.i, -65536
  br label %bb.bi

bb.v:                                             ; preds = %bb.s
  %i.ec = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20190, !noalias !20193, !noundef !3 ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !20190, !noalias !20193
  %.sroa.5.0.i3.i.i.i = select i1 %i.ed, i64 %i.ef, i64 undef
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.eh = load i64, ptr %i.eg, align 8, !range !4, !alias.scope !20190, !noalias !20193, !noundef !3 ; 2 uses
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !20190, !noalias !20193
  %.sroa.52.0.i4.i.i.i = select i1 %i.ei, i64 %i.ek, i64 undef
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !noalias !20166 ; 4 uses
  %.sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.en = load i32, ptr %.sroa_idx68.i.i, align 4, !noalias !20166 ; 3 uses
  %i.eo = load i64, ptr %i.el, align 8, !range !4, !alias.scope !20190, !noalias !20193, !noundef !3
  %i.ep = trunc nuw i64 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !20190, !noalias !20193
  %.sroa.54.0.i5.i.i.i = select i1 %i.ep, i64 %i.er, i64 undef ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.et = load i64, ptr %i.es, align 8, !range !4, !alias.scope !20190, !noalias !20193, !noundef !3 ; 2 uses
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !20190, !noalias !20193
  %.sroa.56.0.i6.i.i.i = select i1 %i.eu, i64 %i.ew, i64 undef
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.ey = load <4 x i8>, ptr %i.ex, align 8, !alias.scope !20190, !noalias !20193
  %.sroa.37.sroa.0.0.extract.trunc177.i.i = trunc i32 %i.em to i8
  %.sroa.37.sroa.11.0.extract.shift185.i.i = lshr i32 %i.em, 8
  %.sroa.37.sroa.11.0.extract.trunc186.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift185.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift197.i.i = lshr i32 %i.em, 16
  %.sroa.37.sroa.12.0.extract.trunc198.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift197.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift209.i.i = lshr i32 %i.em, 24
  %.sroa.46.sroa.0.0.extract.trunc148.i.i = trunc i32 %i.en to i8
  %.sroa.46.sroa.11.0.extract.shift157.i.i = lshr i32 %i.en, 8
  %.sroa.46.sroa.11.0.extract.trunc158.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift157.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift169.i.i = and i32 %i.en, -65536
  %.sroa.53.sroa.0.0.extract.trunc138.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift143.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc144.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift143.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i = trunc nuw nsw i64 %i.et to i8
  br label %bb.bi

bb.w:                                             ; preds = %bb.s
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.fa = load i32, ptr %i.ez, align 8, !range !20184, !alias.scope !20195, !noalias !20198, !noundef !3
  %i.fb = trunc nuw i32 %i.fa to i1
  br i1 %i.fb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fc, align 4, !noalias !20200
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20200
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 4, !noalias !20200
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.5.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.fe = load i32, ptr %i.fd, align 8, !range !20184, !alias.scope !20195, !noalias !20198, !noundef !3
  %i.ff = trunc nuw i32 %i.fe to i1
  br i1 %i.ff, label %bb.z, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fg, align 4, !noalias !20200
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !20200
  %3 = zext i32 %.sroa.52.i.i.sroa.0.0.copyload.i.i to i64
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i64 [ %3, %bb.z ], [ 0, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i8 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fh = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20195, !noalias !20198, !noundef !3 ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i1
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !20195, !noalias !20198
  %.sroa.54.0.i7.i.i.i = select i1 %i.fi, i64 %i.fk, i64 undef
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.fm = load i64, ptr %i.fl, align 8, !range !4, !alias.scope !20195, !noalias !20198, !noundef !3 ; 2 uses
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !20195, !noalias !20198
  %.sroa.56.0.i8.i.i.i = select i1 %i.fn, i64 %i.fp, i64 undef
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.fr = load <4 x i8>, ptr %i.fq, align 8, !alias.scope !20195, !noalias !20198
  %.sroa.46.sroa.0.0.extract.trunc150.i.i = trunc i32 %.sroa.5.i.i.sroa.0.0.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift161.i.i = lshr i32 %.sroa.5.i.i.sroa.0.0.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc162.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift161.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift173.i.i = and i32 %.sroa.5.i.i.sroa.0.0.i.i, -65536
  br label %bb.bi

bb.aa:                                            ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ft = load i32, ptr %i.fs, align 8, !range !20184, !alias.scope !20201, !noalias !20204, !noundef !3 ; 2 uses
  %i.fu = trunc nuw i32 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.fw = load i32, ptr %i.fv, align 4, !alias.scope !20201, !noalias !20204
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.fy = load i32, ptr %i.fx, align 8, !range !20184, !alias.scope !20201, !noalias !20204, !noundef !3 ; 2 uses
  %i.fz = trunc nuw i32 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 148
  %i.gb = load i32, ptr %i.ga, align 4, !alias.scope !20201, !noalias !20204
  %i.gc = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20201, !noalias !20204, !noundef !3 ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !20201, !noalias !20204
  %.sroa.54.0.i11.i.i.i = select i1 %i.gd, i64 %i.gf, i64 undef
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.gh = load i64, ptr %i.gg, align 8, !range !4, !alias.scope !20201, !noalias !20204, !noundef !3 ; 2 uses
  %i.gi = trunc nuw i64 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !20201, !noalias !20204
  %.sroa.56.0.i12.i.i.i = select i1 %i.gi, i64 %i.gk, i64 undef
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.gm = load i8, ptr %i.gl, align 8, !range !4252, !alias.scope !20201, !noalias !20204, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 153
  %i.go = load i8, ptr %i.gn, align 1, !range !4252, !alias.scope !20201, !noalias !20204, !noundef !3
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 154
  %i.gq = load i8, ptr %i.gp, align 2, !range !4252, !alias.scope !20201, !noalias !20204, !noundef !3
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 155
  %i.gs = load i8, ptr %i.gr, align 1, !range !4252, !alias.scope !20201, !noalias !20204, !noundef !3
  %.sroa.37.sroa.0.0.extract.trunc178.i.i = trunc nuw nsw i32 %i.ft to i8
  %i.gt = select i1 %i.fu, i32 %i.fw, i32 undef   ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc146.i.i = trunc i32 %i.gt to i8
  %.sroa.46.sroa.11.0.extract.shift153.i.i = lshr i32 %i.gt, 8
  %.sroa.46.sroa.11.0.extract.trunc154.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift153.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift165.i.i = and i32 %i.gt, -65536
  %i.gu = select i1 %i.fz, i32 %i.gb, i32 undef
  br label %bb.bi

bb.ab:                                            ; preds = %bb.s
  %i.gv = load i64, ptr %i.cf, align 8, !range !4, !alias.scope !20206, !noalias !20209, !noundef !3 ; 2 uses
  %i.gw = trunc nuw i64 %i.gv to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !20206, !noalias !20209
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ha = load i64, ptr %i.gz, align 8, !range !4, !alias.scope !20206, !noalias !20209, !noundef !3 ; 2 uses
  %i.hb = trunc nuw i64 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !20206, !noalias !20209
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !noalias !20166 ; 4 uses
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 140
  %i.hg = load i32, ptr %.sroa_idx.i.i, align 4, !noalias !20166 ; 3 uses
  %i.hh = load i64, ptr %i.he, align 8, !range !4, !alias.scope !20206, !noalias !20209, !noundef !3
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !20206, !noalias !20209
  %.sroa.54.0.i15.i.i.i = select i1 %i.hi, i64 %i.hk, i64 undef ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  %i.hm = load i64, ptr %i.hl, align 8, !range !4, !alias.scope !20206, !noalias !20209, !noundef !3 ; 2 uses
  %i.hn = trunc nuw i64 %i.hm to i1
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !20206, !noalias !20209
  %.sroa.56.0.i16.i.i.i = select i1 %i.hn, i64 %i.hp, i64 undef
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.hr = load <4 x i8>, ptr %i.hq, align 8, !alias.scope !20206, !noalias !20209
  %i.hs = select i1 %i.gw, i64 %i.gy, i64 undef
  %i.ht = select i1 %i.hb, i64 %i.hd, i64 undef
  %.sroa.37.sroa.0.0.extract.trunc176.i.i = trunc i32 %i.hf to i8
  %.sroa.37.sroa.11.0.extract.shift183.i.i = lshr i32 %i.hf, 8
  %.sroa.37.sroa.11.0.extract.trunc184.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift183.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift195.i.i = lshr i32 %i.hf, 16
  %.sroa.37.sroa.12.0.extract.trunc196.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift195.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift207.i.i = lshr i32 %i.hf, 24
  %.sroa.46.sroa.0.0.extract.trunc147.i.i = trunc i32 %i.hg to i8
  %.sroa.46.sroa.11.0.extract.shift155.i.i = lshr i32 %i.hg, 8
  %.sroa.46.sroa.11.0.extract.trunc156.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift155.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift167.i.i = and i32 %i.hg, -65536
  %.sroa.53.sroa.0.0.extract.trunc137.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.53.sroa.10.0.extract.shift141.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.53.sroa.10.0.extract.trunc142.i.i = trunc nuw i64 %.sroa.53.sroa.10.0.extract.shift141.i.i to i32
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i = trunc nuw nsw i64 %i.hm to i8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !20200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !20211
  %i.hu = load i64, ptr %i.cf, align 8, !range !4, !noalias !20211, !noundef !3
  %i.hv = trunc nuw i64 %i.hu to i1               ; 2 uses
  br i1 %i.hv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !20214, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !20217, !nonnull !3, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !20214, !noundef !3
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.id = load i64, ptr %i.ic, align 8, !noalias !20214, !noundef !3
  invoke void %i.hy(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hz, ptr noundef %i.ib, i64 noundef %i.id)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !20166, !inline_history !20218

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !noalias !20211
  br label %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.al, align 8, !noalias !20211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !20211
  %i.ie = ptrtoint ptr %.sroa.0.0.i.i.i.i.i to i64
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.19.8.copyload72.i.i = phi i64 [ %i.ie, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ]
  %.sroa.11.8.copyload70.i.i = phi i64 [ 1, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.if = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_9ByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  store i64 %.sroa.11.8.copyload70.i.i, ptr %i.j, align 8, !noalias !20211
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.ih = load i64, ptr %i.ig, align 8, !range !4, !noalias !20211, !noundef !3
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20211
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !20219, !noundef !3 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i6.i.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !20222, !nonnull !3, !noundef !3
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.io = load ptr, ptr %i.in, align 8, !noalias !20219, !noundef !3
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !20219, !noundef !3
  invoke void %i.il(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.im, ptr noundef %i.io, i64 noundef %i.iq)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !20223, !inline_history !20224

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !20219
  %i.ir = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert241.i.i, align 8, !noalias !20200
  %i.is = load <4 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !20200
  br label %bb.am

bb.ai:                                            ; preds = %bb.am, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.am ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.am ], [ undef, %bb.af ] ; 5 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.am ], [ 0, %bb.af ]
  %i.it = phi <4 x i8> [ %i.jd, %bb.am ], [ undef, %bb.af ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.iv = load i64, ptr %i.iu, align 8, !range !4, !noalias !20211, !noundef !3
  %i.iw = trunc nuw i64 %i.iv to i1
  br i1 %i.iw, label %bb.an, label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20225)
  br i1 %i.hv, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !20228)
  call void @llvm.experimental.noalias.scope.decl(metadata !20231)
  %i.iy = icmp eq ptr %i.if, null
  br i1 %i.iy, label %.body.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !20234)
  call void @llvm.experimental.noalias.scope.decl(metadata !20237)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !20240, !nonnull !3, !noundef !3
  %i.jb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !20241, !noalias !20211, !noundef !3
  %i.jc = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !alias.scope !20241, !noalias !20211, !noundef !3
  invoke void %i.ja(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx77.i.i, ptr noundef %i.jb, i64 noundef %i.jc)
          to label %.body.i.i unwind label %bb.aq, !noalias !20223, !inline_history !505

bb.am:                                            ; preds = %.noexc.i.i.i.i, %bb.ag
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.pre.i.i, %.noexc.i.i.i.i ], [ undef, %bb.ag ]
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.ir, %.noexc.i.i.i.i ], [ 0, %bb.ag ]
  %i.jd = phi <4 x i8> [ %i.is, %.noexc.i.i.i.i ], [ undef, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !20200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20211
  br label %bb.ai

bb.an:                                            ; preds = %bb.ai
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 192
  %i.jf = load i64, ptr %i.je, align 8, !noalias !20211, !noundef !3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.sroa.52.0.i18.i.i.i = phi i64 [ %i.jf, %bb.an ], [ undef, %bb.ai ]
  %.sroa.01.0.i19.i.i.i = phi i64 [ 1, %bb.an ], [ 0, %bb.ai ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 200
  %i.jh = load i64, ptr %i.jg, align 8, !range !4, !noalias !20211, !noundef !3
  %i.ji = trunc nuw i64 %i.jh to i1
  br i1 %i.ji, label %bb.ap, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 208
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !20211, !noundef !3
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.aq:                                            ; preds = %bb.al
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20223
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.sroa.54.0.i20.i.i.i = phi i64 [ %i.jk, %bb.ap ], [ undef, %bb.ao ]
  %.sroa.03.0.i.i.i.i = phi i64 [ 1, %bb.ap ], [ 0, %bb.ao ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 216
  %i.jn = load <4 x i8>, ptr %i.jm, align 8, !noalias !20211
  %.sroa.25.8.copyload74.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !20166
  %.sroa.31.8.copyload76.i.i = load i64, ptr %.sroa.31.8..sroa_idx75.i.i, align 8, !noalias !20166
  %.sroa.37.8.copyload78.i.i = load i32, ptr %.sroa.37.8..sroa_idx77.i.i, align 8, !noalias !20166 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc175.i.i = trunc i32 %.sroa.37.8.copyload78.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift181.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc182.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift181.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift193.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc194.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift193.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift205.i.i = lshr i32 %.sroa.37.8.copyload78.i.i, 24
  %.sroa.46.8.copyload80.i.i = load i32, ptr %.sroa.46.8..sroa_idx79.i.i, align 4, !noalias !20166 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc145.i.i = trunc i32 %.sroa.46.8.copyload80.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift151.i.i = lshr i32 %.sroa.46.8.copyload80.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc152.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift151.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift163.i.i = and i32 %.sroa.46.8.copyload80.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !20200
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i = trunc i64 %.sroa.5.sroa.0.0.i.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift109232.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift117233.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift125234.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift97.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, i64 12, i1 false), !noalias !20166
  br label %bb.bi

bb.ar:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !20200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20242
  %i.jo = load i64, ptr %i.cf, align 8, !range !4, !noalias !20242, !noundef !3
  %i.jp = trunc nuw i64 %i.jo to i1               ; 2 uses
  br i1 %i.jp, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !20245, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !20250, !nonnull !3, !noundef !3
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 136
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !20245, !noundef !3
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 128
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !20245, !noundef !3
  invoke void %i.js(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.jt, ptr noundef %i.jv, i64 noundef %i.jx)
          to label %.noexc43.i.i unwind label %bb.m, !noalias !20166, !inline_history !20218

.noexc43.i.i:                                     ; preds = %bb.at
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !20242
  br label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc43.i.i, %bb.as
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc43.i.i ], [ null, %bb.as ] ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.aj, align 8, !noalias !20242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i33.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !20242
  %i.jy = ptrtoint ptr %.sroa.0.0.i.i.i.i.i.i to i64
  br label %bb.au

bb.au:                                            ; preds = %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ar
  %.sroa.19.8.copyload.i.i = phi i64 [ %i.jy, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ar ]
  %.sroa.11.8.copyload.i.i = phi i64 [ 1, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.jz = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ar ] ; 2 uses
  store i64 %.sroa.11.8.copyload.i.i, ptr %i.g, align 8, !noalias !20242
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 144
  %i.kb = load i64, ptr %i.ka, align 8, !range !4, !noalias !20242, !noundef !3
  %i.kc = trunc nuw i64 %i.kb to i1
  br i1 %i.kc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20242
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !20251, !noundef !3 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i6.i.i.i.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !20256, !nonnull !3, !noundef !3
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 176
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 160
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !20251, !noundef !3
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 168
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !20251, !noundef !3
  invoke void %i.kf(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.kg, ptr noundef %i.ki, i64 noundef %i.kk)
          to label %.noexc.i32.i.i.i unwind label %bb.ay, !noalias !20257, !inline_history !20258

.noexc.i32.i.i.i:                                 ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i7.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !20259
  %i.kl = ptrtoint ptr %.sroa.0.0.copyload.i.i7.i.i.i.i to i64
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !20200
  %i.km = load <4 x i8>, ptr %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !20200
  br label %bb.bb

bb.ax:                                            ; preds = %bb.bb, %bb.au
  %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i, %bb.bb ], [ undef, %bb.au ]
  %.sroa.5.sroa.0.0.i24.i.i.i = phi i64 [ %.sroa.0.0.i.i8.i.i.i.i, %bb.bb ], [ undef, %bb.au ] ; 5 uses
  %.sroa.0.0.i25.i.i.i = phi i32 [ 1, %bb.bb ], [ 0, %bb.au ]
  %i.kn = phi <4 x i8> [ %i.kx, %bb.bb ], [ undef, %bb.au ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 184
  %i.kp = load i64, ptr %i.ko, align 8, !range !4, !noalias !20242, !noundef !3
  %i.kq = trunc nuw i64 %i.kp to i1
  br i1 %i.kq, label %bb.bc, label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20260)
  br i1 %i.jp, label %bb.az, label %.body.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !20263)
  call void @llvm.experimental.noalias.scope.decl(metadata !20266)
  call void @llvm.experimental.noalias.scope.decl(metadata !20269)
  %i.ks = icmp eq ptr %i.jz, null
  br i1 %i.ks, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !20272)
  call void @llvm.experimental.noalias.scope.decl(metadata !20275)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !20278, !nonnull !3, !noundef !3
  %i.kv = load ptr, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !alias.scope !20279, !noalias !20242, !noundef !3
  %i.kw = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !alias.scope !20279, !noalias !20242, !noundef !3
  invoke void %i.ku(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.37.8..sroa_idx.i.i, ptr noundef %i.kv, i64 noundef %i.kw)
          to label %.body.i.i unwind label %bb.bf, !noalias !20257, !inline_history !450

bb.bb:                                            ; preds = %.noexc.i32.i.i.i, %bb.av
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.pre.i.i, %.noexc.i32.i.i.i ], [ undef, %bb.av ]
  %.sroa.0.0.i.i8.i.i.i.i = phi i64 [ %i.kl, %.noexc.i32.i.i.i ], [ 0, %bb.av ]
  %i.kx = phi <4 x i8> [ %i.km, %.noexc.i32.i.i.i ], [ undef, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !20200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20242
  br label %bb.ax

bb.bc:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 192
  %i.kz = load i64, ptr %i.ky, align 8, !noalias !20242, !noundef !3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.sroa.52.0.i26.i.i.i = phi i64 [ %i.kz, %bb.bc ], [ undef, %bb.ax ]
  %.sroa.01.0.i27.i.i.i = phi i64 [ 1, %bb.bc ], [ 0, %bb.ax ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 200
  %i.lb = load i64, ptr %i.la, align 8, !range !4, !noalias !20242, !noundef !3
  %i.lc = trunc nuw i64 %i.lb to i1
  br i1 %i.lc, label %bb.be, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 208
  %i.le = load i64, ptr %i.ld, align 8, !noalias !20242, !noundef !3
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.bf:                                            ; preds = %bb.ba
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !20257
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %.sroa.54.0.i28.i.i.i = phi i64 [ %i.le, %bb.be ], [ undef, %bb.bd ]
  %.sroa.03.0.i29.i.i.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bd ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 216
  %i.lh = load <4 x i8>, ptr %i.lg, align 8, !noalias !20242
  %.sroa.25.8.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i33.i.i.i, align 8, !noalias !20166
  %.sroa.31.8.copyload.i.i = load i64, ptr %.sroa.31.8..sroa_idx.i.i, align 8, !noalias !20166
  %.sroa.37.8.copyload.i.i = load i32, ptr %.sroa.37.8..sroa_idx.i.i, align 8, !noalias !20166 ; 4 uses
  %.sroa.37.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.37.8.copyload.i.i to i8
  %.sroa.37.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 8
  %.sroa.37.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.11.0.extract.shift.i.i to i8
  %.sroa.37.sroa.12.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 16
  %.sroa.37.sroa.12.0.extract.trunc.i.i = trunc i32 %.sroa.37.sroa.12.0.extract.shift.i.i to i8
  %.sroa.37.sroa.13.0.extract.shift.i.i = lshr i32 %.sroa.37.8.copyload.i.i, 24
  %.sroa.46.8.copyload.i.i = load i32, ptr %.sroa.46.8..sroa_idx.i.i, align 4, !noalias !20166 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.46.8.copyload.i.i to i8
  %.sroa.46.sroa.11.0.extract.shift.i.i = lshr i32 %.sroa.46.8.copyload.i.i, 8
  %.sroa.46.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.46.sroa.11.0.extract.shift.i.i to i8
  %.sroa.46.sroa.12.0.extract.shift.i.i = and i32 %.sroa.46.8.copyload.i.i, -65536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20200
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i = trunc i64 %.sroa.5.sroa.0.0.i24.i.i.i to i8
  %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i = trunc i64 %.sroa.61.sroa.0.sroa.10.0.extract.shift107229.i.i to i8
  %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i = trunc i64 %.sroa.61.sroa.0.sroa.12.0.extract.shift115230.i.i to i8
  %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 24
  %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i = trunc i64 %.sroa.61.sroa.0.sroa.14.0.extract.shift123231.i.i to i8
  %.sroa.61.sroa.16.0.extract.shift.i.i = lshr i64 %.sroa.5.sroa.0.0.i24.i.i.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, i64 12, i1 false), !noalias !20166
  br label %bb.bi

bb.bg:                                            ; preds = %bb.r
  store i64 8, ptr %i.n, align 8, !noalias !20166
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 400
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !20166, !align !785, !noundef !3 ; 10 uses
  %.not24.i.i = icmp eq ptr %i.lj, null
  br i1 %.not24.i.i, label %bb.bq, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.ab, %bb.aa, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.37.sroa.13.0.i.i = phi i32 [ %2, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.13.0.extract.shift209.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.13.0.extract.shift207.i.i, %bb.ab ], [ %.sroa.37.sroa.13.0.extract.shift205.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.37.sroa.13.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.37.sroa.12.0.i.i = phi i8 [ %i.cy, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.12.0.extract.trunc198.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.12.0.extract.trunc196.i.i, %bb.ab ], [ %.sroa.37.sroa.12.0.extract.trunc194.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.37.sroa.12.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.37.sroa.11.0.i.i = phi i8 [ %i.cw, %bb.t ], [ 0, %bb.u ], [ %.sroa.37.sroa.11.0.extract.trunc186.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.37.sroa.11.0.extract.trunc184.i.i, %bb.ab ], [ %.sroa.37.sroa.11.0.extract.trunc182.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.37.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.37.sroa.0.0.i.i = phi i8 [ %i.cu, %bb.t ], [ %.sroa.37.sroa.0.0.extract.trunc180.i.i, %bb.u ], [ %.sroa.37.sroa.0.0.extract.trunc177.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc178.i.i, %bb.aa ], [ %.sroa.37.sroa.0.0.extract.trunc176.i.i, %bb.ab ], [ %.sroa.37.sroa.0.0.extract.trunc175.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.37.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.46.sroa.12.0.i.i = phi i32 [ 0, %bb.t ], [ %.sroa.46.sroa.12.0.extract.shift171.i.i, %bb.u ], [ %.sroa.46.sroa.12.0.extract.shift169.i.i, %bb.v ], [ %.sroa.46.sroa.12.0.extract.shift173.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift165.i.i, %bb.aa ], [ %.sroa.46.sroa.12.0.extract.shift167.i.i, %bb.ab ], [ %.sroa.46.sroa.12.0.extract.shift163.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.12.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.46.sroa.11.0.i.i = phi i8 [ %i.cj, %bb.t ], [ %.sroa.46.sroa.11.0.extract.trunc160.i.i, %bb.u ], [ %.sroa.46.sroa.11.0.extract.trunc158.i.i, %bb.v ], [ %.sroa.46.sroa.11.0.extract.trunc162.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc154.i.i, %bb.aa ], [ %.sroa.46.sroa.11.0.extract.trunc156.i.i, %bb.ab ], [ %.sroa.46.sroa.11.0.extract.trunc152.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.11.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.46.sroa.0.0.i.i = phi i8 [ %i.ch, %bb.t ], [ %.sroa.46.sroa.0.0.extract.trunc149.i.i, %bb.u ], [ %.sroa.46.sroa.0.0.extract.trunc148.i.i, %bb.v ], [ %.sroa.46.sroa.0.0.extract.trunc150.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc146.i.i, %bb.aa ], [ %.sroa.46.sroa.0.0.extract.trunc147.i.i, %bb.ab ], [ %.sroa.46.sroa.0.0.extract.trunc145.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.46.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.53.sroa.10.0.i.i = phi i32 [ undef, %bb.t ], [ %.sroa.52.0.i.i.i.i, %bb.u ], [ %.sroa.53.sroa.10.0.extract.trunc144.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.5.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gu, %bb.aa ], [ %.sroa.53.sroa.10.0.extract.trunc142.i.i, %bb.ab ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ undef, %bb.t ], [ %i.dh, %bb.u ], [ %.sroa.53.sroa.0.0.extract.trunc138.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.fy, %bb.aa ], [ %.sroa.53.sroa.0.0.extract.trunc137.i.i, %bb.ab ], [ %.sroa.0.0.i17.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.0.0.i25.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.14.0.i.i = phi i8 [ undef, %bb.t ], [ %i.eb, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gs, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc126.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.14.0.extract.trunc124.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.12.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dz, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gq, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc118.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.12.0.extract.trunc116.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.10.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dx, %bb.u ], [ 0, %bb.v ], [ 0, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.go, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc110.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.10.0.extract.trunc108.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.61.sroa.0.sroa.0.0.i.i = phi i8 [ undef, %bb.t ], [ %i.dv, %bb.u ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc106.i.i, %bb.v ], [ %.sroa.01.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gm, %bb.aa ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc105.i.i, %bb.ab ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc104.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc103.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.61.sroa.16.0.i.i = phi i64 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ %.sroa.52.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ %.sroa.61.sroa.16.0.extract.shift97.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.61.sroa.16.0.extract.shift.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.97.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.54.0.i20.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.54.0.i28.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.95.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.03.0.i.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.03.0.i29.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.93.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.52.0.i18.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.52.0.i26.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.9190.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.01.0.i19.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.01.0.i27.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.75.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ %.sroa.56.0.i6.i.i.i, %bb.v ], [ %.sroa.52.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ %.sroa.56.0.i16.i.i.i, %bb.ab ], [ %.sroa.5.sroa.4.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.31.0.i.i = phi i64 [ %.sroa.54.0.i.i.i.i, %bb.t ], [ %.sroa.56.0.i.i.i.i, %bb.u ], [ %.sroa.52.0.i4.i.i.i, %bb.v ], [ %.sroa.56.0.i8.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.56.0.i12.i.i.i, %bb.aa ], [ %i.ht, %bb.ab ], [ %.sroa.31.8.copyload76.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.31.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.25.0.i.i = phi i64 [ %i.cp, %bb.t ], [ %i.dq, %bb.u ], [ %i.eh, %bb.v ], [ %i.fm, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gh, %bb.aa ], [ %i.ha, %bb.ab ], [ %.sroa.25.8.copyload74.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.25.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.19.0.i.i = phi i64 [ %.sroa.5.0.i.i.i.i, %bb.t ], [ %.sroa.54.0.i2.i.i.i, %bb.u ], [ %.sroa.5.0.i3.i.i.i, %bb.v ], [ %.sroa.54.0.i7.i.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.54.0.i11.i.i.i, %bb.aa ], [ %i.hs, %bb.ab ], [ %.sroa.19.8.copyload72.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.19.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.11.0.i.i = phi i64 [ %i.ck, %bb.t ], [ %i.dl, %bb.u ], [ %i.ec, %bb.v ], [ %i.fh, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.gc, %bb.aa ], [ %i.gv, %bb.ab ], [ %.sroa.11.8.copyload70.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.11.8.copyload.i.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %i.lk = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ %i.ey, %bb.v ], [ %i.fr, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ %i.hr, %bb.ab ], [ %i.it, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.kn, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %i.ll = phi <4 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.jn, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %i.lh, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  store i64 %i.ce, ptr %i.n, align 8, !noalias !20166
  store i64 %.sroa.11.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.19.0.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.25.0.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.31.0.i.i, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !noalias !20166
  %.sroa.37.sroa.13.0.insert.shift.i.i = shl nuw i32 %.sroa.37.sroa.13.0.i.i, 24
  %.sroa.37.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.12.0.i.i to i32
  %.sroa.37.sroa.12.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.12.0.insert.ext.i.i, 16
  %.sroa.37.sroa.12.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.shift.i.i, %.sroa.37.sroa.13.0.insert.shift.i.i
  %.sroa.37.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.11.0.i.i to i32
  %.sroa.37.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.37.sroa.11.0.insert.ext.i.i, 8
  %.sroa.37.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.12.0.insert.insert.i.i, %.sroa.37.sroa.11.0.insert.shift.i.i
  %.sroa.37.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.37.sroa.0.0.i.i to i32
  %.sroa.37.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.37.sroa.11.0.insert.insert.i.i, %.sroa.37.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.37.sroa.0.0.insert.insert.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !noalias !20166
  %.sroa.46.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.11.0.i.i to i32
  %.sroa.46.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.46.sroa.11.0.insert.ext.i.i, 8
  %.sroa.46.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.shift.i.i, %.sroa.46.sroa.12.0.i.i
  %.sroa.46.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.46.sroa.0.0.i.i to i32
  %.sroa.46.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.46.sroa.11.0.insert.insert.i.i, %.sroa.46.sroa.0.0.insert.ext.i.i
  store i32 %.sroa.46.sroa.0.0.insert.insert.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !noalias !20166
  store i32 %.sroa.53.sroa.0.0.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !20166
  store i32 %.sroa.53.sroa.10.0.i.i, ptr %.sroa.53.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !20166
  %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.14.0.i.i to i64
  %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.14.0.insert.ext.i.i, 24
  %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.12.0.i.i to i64
  %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.12.0.insert.ext.i.i, 16
  %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.shift.i.i, %.sroa.61.sroa.0.sroa.14.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.10.0.i.i to i64
  %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.61.sroa.0.sroa.10.0.insert.ext.i.i, 8
  %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.12.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.10.0.insert.shift.i.i
  %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.61.sroa.0.sroa.0.0.i.i to i64
  %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.10.0.insert.insert.i.i, %.sroa.61.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.61.sroa.16.0.insert.shift.i.i = shl nuw i64 %.sroa.61.sroa.16.0.i.i, 32
  %.sroa.61.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.61.sroa.0.sroa.0.0.insert.insert.i.i, %.sroa.61.sroa.16.0.insert.shift.i.i
  store i64 %.sroa.61.sroa.0.0.insert.insert.i.i, ptr %.sroa.61.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.75.0.i.i, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !20166
  store <4 x i8> %i.lk, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !noalias !20166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.91.i.i, i64 12, i1 false), !noalias !20166
  store i64 %.sroa.9190.0.i.i, ptr %.sroa.9190.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.93.0.i.i, ptr %.sroa.93.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.95.0.i.i, ptr %.sroa.95.0..sroa_idx.i.i, align 8, !noalias !20166
  store i64 %.sroa.97.0.i.i, ptr %.sroa.97.0..sroa_idx.i.i, align 8, !noalias !20166
  store <4 x i8> %i.ll, ptr %.sroa.99.0..sroa_idx.i.i, align 8, !noalias !20166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91.i.i)
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  %i.lm = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc46.i.i unwind label %bb.br, !noalias !20166 ; 11 uses

.noexc46.i.i:                                     ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !20280)
  call void @llvm.experimental.noalias.scope.decl(metadata !20283)
  %i.ln = load i64, ptr %i.lj, align 8, !range !167, !alias.scope !20286, !noalias !20287, !noundef !3 ; 3 uses
  %.not.i.i.i44.i.i = icmp eq i64 %i.ln, 2
  br i1 %.not.i.i.i44.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc46.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lp = load <2 x double>, ptr %i.lo, align 8, !alias.scope !20286, !noalias !20287
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.lr = load <2 x double>, ptr %i.lq, align 8, !alias.scope !20286, !noalias !20287
  %i.ls = trunc i64 %i.ln to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lu = load <2 x double>, ptr %i.lt, align 8, !alias.scope !20286, !noalias !20287
  %i.lv = insertelement <2 x i1> poison, i1 %i.ls, i64 0
  %i.lw = shufflevector <2 x i1> %i.lv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lx = select <2 x i1> %i.lw, <2 x double> %i.lu, <2 x double> undef
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !range !4, !alias.scope !20286, !noalias !20287, !noundef !3 ; 2 uses
  %i.ma = trunc nuw i64 %i.lz to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.mc = load <2 x double>, ptr %i.mb, align 8, !alias.scope !20286, !noalias !20287
  %i.md = insertelement <2 x i1> poison, i1 %i.ma, i64 0
  %i.me = shufflevector <2 x i1> %i.md, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mf = select <2 x i1> %i.me, <2 x double> %i.mc, <2 x double> undef
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.noexc46.i.i
  %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.lz, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mg = phi <2 x double> [ %i.lx, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mh = phi <2 x double> [ %i.mf, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mi = phi <2 x double> [ %i.lp, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mj = phi <2 x double> [ %i.lr, %bb.bk ], [ undef, %.noexc46.i.i ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  %i.ml = load i64, ptr %i.mk, align 8, !range !62, !alias.scope !20286, !noalias !20287, !noundef !3
  %.not16.i.i.i.i.i = icmp eq i64 %i.ml, -9223372036854775808
  br i1 %.not16.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !20289)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  %i.mo = load ptr, ptr %i.mn, align 8, !alias.scope !20292, !noalias !20293, !nonnull !3, !noundef !3
  %i.mp = load i64, ptr %i.mm, align 8, !alias.scope !20292, !noalias !20293, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20295
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %i.mp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.i, !noalias !20166

.noexc.i.i.i:                                     ; preds = %bb.bm
  %i.mq = load i64, ptr %i.d, align 8, !range !4, !noalias !20295, !noundef !3
  %i.mr = trunc nuw i64 %i.mq to i1
  %i.ms = load i64, ptr %i.am, align 8, !range !62, !noalias !20295, !noundef !3 ; 4 uses
  br i1 %i.mr, label %bb.bn, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i, !prof !10

bb.bn:                                            ; preds = %.noexc.i.i.i
  %i.mt = load i64, ptr %i.an, align 8, !noalias !20295
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ms, i64 %i.mt) #23
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp.i, !noalias !20166

.noexc1.i.i.i:                                    ; preds = %bb.bn
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.mu = load ptr, ptr %i.an, align 8, !noalias !20295, !nonnull !3, !noundef !3 ; 3 uses
  %i.mv = icmp ule i64 %i.mp, %i.ms
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20295
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.mw = shl nuw nsw i64 %i.mp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 4 %i.mo, i64 %i.mw, i1 false), !noalias !20299
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i

.loopexit.i:                                      ; preds = %bb.bm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp.i:                             ; preds = %bb.bn
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lm, i64 noundef 104, i64 noundef 8) #27, !noalias !20166
  br label %.body47.i.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bo, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i, %bb.bl
  %.sroa.55.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %bb.bl ], [ %i.mu, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i ], [ %i.mu, %bb.bo ]
  %.sroa.55.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.bl ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i ], [ %i.mp, %bb.bo ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.bl ], [ %i.ms, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i ], [ %i.ms, %bb.bo ]
  store i64 %i.ln, ptr %i.lm, align 8, !noalias !20300
  %.sroa.4.0..sroa_idx.i.i45.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store <2 x double> %i.mg, ptr %.sroa.4.0..sroa_idx.i.i45.i.i, align 8, !noalias !20300
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store i64 %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  store <2 x double> %i.mh, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  store <2 x double> %i.mi, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  store <2 x double> %i.mj, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 80
  store i64 %.sroa.03.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 88
  store ptr %.sroa.55.sroa.0.0.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 96
  store i64 %.sroa.55.sroa.4.0.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !20300
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.bh
  %storemerge.i.i = phi ptr [ null, %bb.bh ], [ %i.lm, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4tdlwR1I4n2_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20166
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 296
  %i.my = load i64, ptr %i.mx, align 8, !range !189, !noalias !20166, !noundef !3 ; 2 uses
  %.not25.i.i = icmp eq i64 %i.my, -9223372036854775807
  br i1 %.not25.i.i, label %bb.bx, label %bb.bs

.body47.i.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.br, %bb.bp
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata24ParquetPageEncodingStatsEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.mz, %bb.br ], [ %lpad.phi.i, %bb.bp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10statistics10StatisticsEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(128) %i.n) #25
          to label %.body.i.i unwind label %bb.cy, !noalias !20166

bb.br:                                            ; preds = %bb.bj
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !20301)
  call void @llvm.experimental.noalias.scope.decl(metadata !20304)
  %i.na = icmp eq i64 %i.my, -9223372036854775808
  br i1 %i.na, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5.0..sroa_idx219.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 304
  %.sroa.5.0.copyload220.i.i = load ptr, ptr %.sroa.5.0..sroa_idx219.i.i, align 8, !alias.scope !20306, !noalias !20166
  %.sroa.6.0..sroa_idx221.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 312
  %.sroa.6.0.copyload222.i.i = load i64, ptr %.sroa.6.0..sroa_idx221.i.i, align 8, !alias.scope !20306, !noalias !20166
  br label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !20307)
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 312
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.013.0212.i, i64 304
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !20310, !noalias !20311, !nonnull !3, !noundef !3 ; 4 uses
  %i.ne = load i64, ptr %i.nb, align 8, !alias.scope !20310, !noalias !20311, !noundef !3 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20313)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20316
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.ne, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc51.i.i unwind label %.loopexit139.i, !noalias !20166

.noexc51.i.i:                                     ; preds = %bb.bu
  %i.nf = load i64, ptr %i.c, align 8, !range !4, !noalias !20316, !noundef !3
  %i.ng = trunc nuw i64 %i.nf to i1
  %i.nh = load i64, ptr %i.ao, align 8, !range !62, !noalias !20316, !noundef !3 ; 8 uses
  br i1 %i.ng, label %bb.bv, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, !prof !10

bb.bv:                                            ; preds = %.noexc51.i.i
  %i.ni = load i64, ptr %i.ap, align 8, !noalias !20316
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.nh, i64 %i.ni) #23
          to label %.noexc52.i.i unwind label %.loopexit.split-lp140.i, !noalias !20166

.noexc52.i.i:                                     ; preds = %bb.bv
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %.noexc51.i.i
  %i.nj = load ptr, ptr %i.ap, align 8, !noalias !20316, !nonnull !3, !noundef !3 ; 5 uses
  %i.nk = icmp ule i64 %i.ne, %i.nh
  call void @llvm.assume(i1 %i.nk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20316
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.ne
  %i.nm = icmp eq i64 %i.nh, 0
  br i1 %i.nm, label %_RNvXsA_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.nn = and i64 %i.ne, 2305843009213693951
  %i.no = add i64 %i.nh, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.nn, i64 %i.no) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 4
end_hunk_0
