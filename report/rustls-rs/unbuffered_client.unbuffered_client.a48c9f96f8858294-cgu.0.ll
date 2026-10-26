Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_client.unbuffered_client.a48c9f96f8858294-cgu.0?download=true
inline.NumInlined: 313
inline.NumDeleted: 180
begin_hunk_0_@_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_12WriteTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE7encryptCse7TjioWD9Jw_17unbuffered_client:bb.a
    i8 18, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 19, label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
    i8 20, label %bb.ed
    i8 21, label %bb.ee
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !334, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val1.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !334, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !335
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef range(i64 0, 4611686018427387904) %.val1.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !336
  %i.au = load i64, ptr %i.ai, align 8, !range !13, !noalias !335, !noundef !7
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !14, !noalias !335, !noundef !7 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.ay, align 8, !noalias !335
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #21, !noalias !336
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !335, !nonnull !7, !noundef !7 ; 2 uses
  %i.bb = icmp samesign ule i64 %.val1.i.i.i, %i.ax
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !335
  %.not.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bc = shl nuw nsw i64 %.val1.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %.val.i.i.i, i64 %i.bc, i1 false), !noalias !337
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i: ; preds = %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.be = load i8, ptr %i.bd, align 1, !range !15, !alias.scope !334, !noundef !7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 898
  %i.bg = load i8, ptr %i.bf, align 2, !alias.scope !334
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ax, ptr %i.bh, align 8, !alias.scope !332, !noalias !331
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.be, ptr %i.bi, align 1, !alias.scope !332, !noalias !331
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.bg, ptr %i.bj, align 2, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val2.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !334, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val3.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !334, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !338
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef range(i64 0, 4611686018427387904) %.val3.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !339
  %i.bm = load i64, ptr %i.ah, align 8, !range !13, !noalias !338, !noundef !7
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !14, !noalias !338, !noundef !7 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.br = load i64, ptr %i.bq, align 8, !noalias !338
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #21, !noalias !339
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i: ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !338, !nonnull !7, !noundef !7 ; 2 uses
  %i.bt = icmp samesign ule i64 %.val3.i.i.i, %i.bp
  tail call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !338
  %.not.i.i5.i.i.i = icmp eq i64 %.val3.i.i.i, 0
  br i1 %.not.i.i5.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i
  %i.bu = shl nuw nsw i64 %.val3.i.i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %i.bu, i1 false), !noalias !340
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i: ; preds = %bb.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i4.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.bw = load i8, ptr %i.bv, align 1, !range !341, !alias.scope !334, !noundef !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 898
  %i.by = load i8, ptr %i.bx, align 2, !alias.scope !334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.bp, ptr %i.bz, align 8, !alias.scope !332, !noalias !331
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.bs, ptr %.sroa.432.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.533.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.val3.i.i.i, ptr %.sroa.533.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.bw, ptr %i.ca, align 1, !alias.scope !332, !noalias !331
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.by, ptr %i.cb, align 2, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 897
  %i.cd = load i8, ptr %i.cc, align 1, !range !342, !alias.scope !334, !noundef !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !alias.scope !343, !noalias !344
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ci = load i64, ptr %i.ch, align 8, !range !346, !alias.scope !347, !noundef !7 ; 3 uses
  %i.cj = icmp slt i64 %i.ci, -9223372036854775787
  br i1 %i.cj, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i.i, label %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val3.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !347, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !349
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef range(i64 0, 82351536043346213) %.val3.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !350
  %i.cm = load i64, ptr %i.af, align 8, !range !13, !noalias !349, !noundef !7
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !14, !noalias !349, !noundef !7 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.cn, label %bb.o, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !349
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cp, i64 %i.cr) #21, !noalias !351
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.cs = load ptr, ptr %i.cq, align 8, !noalias !349, !nonnull !7, !noundef !7 ; 4 uses
  %i.ct = icmp samesign ule i64 %.val3.i.i.i.i, %i.cp
  tail call void @llvm.assume(i1 %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !349
  store i64 %i.cp, ptr %i.ag, align 8, !noalias !349
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.cu, align 8, !noalias !349
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw [112 x i8], ptr %.val.i.i.i.i, i64 %.val3.i.i.i.i
  %i.cx = icmp eq i64 %i.cp, 0
  br i1 %i.cx, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.0.i.sroa.9.56..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i.i.i.i.i.i, i64 20
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.0.i.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %.sroa.0.i.sroa.9.80..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i.i.i.i.i.i, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.018.0151.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.dp, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ] ; 18 uses
  %.sroa.7.0148.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.dq, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ] ; 7 uses
  %.sroa.10.0147.i.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.dn, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ]
  %i.dn = add nsw i64 %.sroa.10.0147.i.i.i.i.i.i, -1 ; 2 uses
  %i.do = icmp eq ptr %.sroa.018.0151.i.i.i.i.i.i, %i.cw
  br i1 %i.do, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i, label %bb.q

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.u, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 112
  %i.dq = add nuw nsw i64 %.sroa.7.0148.i.i.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1028.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.dr = load i64, ptr %.sroa.018.0151.i.i.i.i.i.i, align 8, !range !6, !alias.scope !353, !noalias !354, !noundef !7
  %i.ds = icmp eq i64 %i.dr, -1
  br i1 %i.ds, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 32
  %i.du = load <2 x i16>, ptr %i.dt, align 8, !alias.scope !353, !noalias !354 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !356, !noalias !354, !nonnull !7, !noundef !7
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !356, !noalias !354, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !357
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.dy, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !351

.noexc.i.i.i.i.i.i:                               ; preds = %bb.r
  %i.dz = load i64, ptr %i.ae, align 8, !range !13, !noalias !357, !noundef !7
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.dl, align 8, !range !14, !noalias !357, !noundef !7 ; 4 uses
  br i1 %i.ea, label %bb.s, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i, !prof !10

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ec = load i64, ptr %i.dm, align 8, !noalias !357
  br label %.invoke

.invoke:                                          ; preds = %bb.v, %bb.s
  %i.ed = phi i64 [ %i.eb, %bb.s ], [ %i.er, %bb.v ]
  %i.ee = phi i64 [ %i.ec, %bb.s ], [ %i.es, %bb.v ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ed, i64 %i.ee) #21
          to label %.cont unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !351

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.ef = load ptr, ptr %i.dm, align 8, !noalias !357, !nonnull !7, !noundef !7 ; 3 uses
  %i.eg = icmp samesign ule i64 %i.dy, %i.eb
  tail call void @llvm.assume(i1 %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !357
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %i.dx, i64 range(i64 0, -9223372036854775808) %i.dy, i1 false), !noalias !358
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.9.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 52
  %i.ei = load i8, ptr %i.eh, align 4, !alias.scope !363, !noalias !354, !noundef !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 48
  %i.ek = load <2 x i16>, ptr %i.ej, align 8, !alias.scope !363, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !366, !noalias !354, !nonnull !7, !noundef !7
  %i.eo = load i64, ptr %i.el, align 8, !alias.scope !366, !noalias !354, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !367
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !351

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.u
  %i.ep = load i64, ptr %i.z, align 8, !range !13, !noalias !367, !noundef !7
  %i.eq = trunc nuw i64 %i.ep to i1
  %i.er = load i64, ptr %i.cy, align 8, !range !14, !noalias !367, !noundef !7 ; 3 uses
  br i1 %i.eq, label %bb.v, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !10

bb.v:                                             ; preds = %.noexc13.i.i.i.i.i.i
  %i.es = load i64, ptr %i.cz, align 8, !noalias !367
  br label %.invoke

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc13.i.i.i.i.i.i
  %i.et = load ptr, ptr %i.cz, align 8, !noalias !367, !nonnull !7, !noundef !7 ; 2 uses
  %i.eu = icmp samesign ule i64 %i.eo, %i.er
  tail call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !367
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.en, i64 range(i64 0, -9223372036854775808) %i.eo, i1 false), !noalias !368
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.er, ptr %i.aa, align 8, !noalias !364
  store ptr %i.et, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !364
  store i64 %i.eo, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !364
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 32
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !363, !noalias !354, !nonnull !7, !noundef !7
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 40
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !363, !noalias !354, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !369
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 8)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !370

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i
  %i.ex = load i64, ptr %i.y, align 8, !range !13, !noalias !369, !noundef !7
  %i.ey = trunc nuw i64 %i.ex to i1
  %i.ez = load i64, ptr %i.da, align 8, !range !14, !noalias !369, !noundef !7 ; 4 uses
  br i1 %i.ey, label %bb.x, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i2.i.i.i.i.i.i.i.i.i, !prof !10

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.fa = load i64, ptr %i.db, align 8, !noalias !369
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ez, i64 %i.fa) #21
          to label %.noexc4.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !370

.noexc4.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.x
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.fb = load ptr, ptr %i.db, align 8, !noalias !369, !nonnull !7, !noundef !7 ; 3 uses
  %i.fc = icmp samesign ule i64 %.val1.i.i.i.i.i.i.i.i.i, %i.ez
  tail call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !369
  %.not.i.i3.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i, label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i2.i.i.i.i.i.i.i.i.i
  %i.fd = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fb, ptr nonnull readonly align 2 %.val.i.i.i.i.i.i.i.i.i, i64 %i.fd, i1 false), !noalias !371
  br label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i, %bb.x
  %lpad.loopexit.split-lp263 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.loopexit.split-lp.i.i.i.i.i.i unwind label %bb.z, !noalias !370

bb.z:                                             ; preds = %.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !370
  unreachable

_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i2.i.i.i.i.i.i.i.i.i
  store i8 %i.ei, ptr %i.dc, align 4, !alias.scope !361, !noalias !360
  store <2 x i16> %i.ek, ptr %i.dd, align 8, !alias.scope !361, !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !372
  store i64 %i.ez, ptr %i.de, align 8, !alias.scope !361, !noalias !360
  store ptr %i.fb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !361, !noalias !360
  store i64 %.val1.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !361, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !364
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 104
  %i.fg = load i8, ptr %i.ff, align 8, !alias.scope !373, !noalias !354, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !360
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !range !6, !alias.scope !373, !noalias !354, !noundef !7
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, -1
  %i.fj = ptrtoint ptr %i.fb to i64
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !360
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fh)
          to label %bb.an unwind label %bb.am, !noalias !374

bb.ab:                                            ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !373, !noalias !354, !nonnull !7, !noundef !7
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 96
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !373, !noalias !354, !noundef !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.an, %bb.ab
  %.sroa.6.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i, %bb.an ], [ %i.fn, %bb.ab ]
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i, %bb.an ], [ %i.fl, %bb.ab ]
  %i.fo = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, %bb.an ], [ -1, %bb.ab ] ; 2 uses
  store i64 %i.fo, ptr %i.ac, align 8, !noalias !360
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !360
  store i64 %.sroa.6.0.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !360
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 64
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !373, !noalias !354, !nonnull !7, !noundef !7 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.018.0151.i.i.i.i.i.i, i64 72
  %.val9.i.i.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !alias.scope !373, !noalias !354, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !376
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i64 noundef range(i64 0, 288230376151711744) %.val9.i.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp72.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !374

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ac
  %i.fr = load i64, ptr %i.w, align 8, !range !13, !noalias !376, !noundef !7
  %i.fs = trunc nuw i64 %i.fr to i1
  %i.ft = load i64, ptr %i.df, align 8, !range !14, !noalias !376, !noundef !7 ; 5 uses
  br i1 %i.fs, label %bb.ad, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i, !prof !10

bb.ad:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.fu = load i64, ptr %i.dg, align 8, !noalias !376
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ft, i64 %i.fu) #21
          to label %.noexc10.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp72.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !374

.noexc10.i.i.i.i.i.i.i.i:                         ; preds = %bb.ad
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.fv = load ptr, ptr %i.dg, align 8, !noalias !376, !nonnull !7, !noundef !7 ; 2 uses
  %i.fw = icmp samesign ule i64 %.val9.i.i.i.i.i.i.i.i, %i.ft
  tail call void @llvm.assume(i1 %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !376
  store i64 %i.ft, ptr %i.x, align 8, !noalias !376
  store ptr %i.fv, ptr %i.dh, align 8, !noalias !376
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.val9.i.i.i.i.i.i.i.i
  %i.fy = icmp eq i64 %i.ft, 0
  br i1 %i.fy, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.049.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gb, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.7.048.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.047.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fz, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ft, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.fz = add nsw i64 %.sroa.10.047.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ga = icmp eq ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, %i.fx
  br i1 %i.ga, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.gc = add nuw nsw i64 %.sroa.7.048.i.i.i.i.i.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ge = load <2 x i16>, ptr %i.gd, align 8, !alias.scope !379, !noalias !380
  %i.gf = load i64, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, align 8, !range !6, !alias.scope !379, !noalias !380, !noundef !7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !382, !noalias !380, !nonnull !7, !noundef !7
  %i.gj = load i64, ptr %i.gg, align 8, !alias.scope !382, !noalias !380, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !383
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.gj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !384

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.af
  %i.gk = load i64, ptr %i.v, align 8, !range !13, !noalias !383, !noundef !7
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = load i64, ptr %i.dj, align 8, !range !14, !noalias !383, !noundef !7 ; 4 uses
  br i1 %i.gl, label %bb.ag, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !10

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.gn = load i64, ptr %i.dk, align 8, !noalias !383
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.gm, i64 %i.gn) #21
          to label %.noexc12.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !384

.noexc12.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ag
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.go = load ptr, ptr %i.dk, align 8, !noalias !383, !nonnull !7, !noundef !7 ; 3 uses
  %i.gp = icmp samesign ule i64 %i.gj, %i.gm
  tail call void @llvm.assume(i1 %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !383
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull readonly align 1 %i.gi, i64 range(i64 0, -9223372036854775808) %i.gj, i1 false), !noalias !385
  br label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !379, !noalias !380, !nonnull !7, !noundef !7
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !379, !noalias !380, !noundef !7
  br label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gt, %bb.ai ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gj, %bb.ah ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %bb.ai ], [ %i.go, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.go, %bb.ah ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -1, %bb.ai ], [ %i.gm, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %bb.ah ]
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.fv, i64 %.sroa.7.048.i.i.i.i.i.i.i.i.i.i ; 4 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gu, align 8, !noalias !384
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !384
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !384
  %.sroa.633.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store <2 x i16> %i.ge, ptr %.sroa.633.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !384
  %i.gv = icmp eq i64 %i.fz, 0
  br i1 %i.gv, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !384
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.ag
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.048.i.i.i.i.i.i.i.i.i.i, ptr %i.di, align 8, !noalias !376
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionEECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #18
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !384

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %.body.i.i.i.i.i.i.i.i, %bb.am
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gz, %bb.am ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.ao ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !374

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body16.i.i.i.i.i.i unwind label %bb.al, !noalias !374

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.loopexit.split-lp.i.i.i.i.i.i unwind label %bb.ap, !noalias !351

bb.al:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !374
  unreachable

bb.am:                                            ; preds = %bb.aa
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !360
  %.sroa.5.0.copyload3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !360
  %.sroa.6.0.copyload5.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i, align 8, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !360
  br label %bb.ac

.loopexit.split-lp72.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ad
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %.loopexit.split-lp72.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp259, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp72.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ha = icmp eq i64 %i.fo, -1
  br i1 %i.ha, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i unwind label %bb.ap, !noalias !374

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i.i.i.i.i.i

.body16.i.i.i.i.i.i:                              ; preds = %bb.ap, %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !374
  unreachable

_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %.val9.i.i.i.i.i.i.i.i, ptr %i.di, align 8, !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.56..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !376
  %.sroa.0.i.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !386
  %.sroa.0.i.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !386
  %.sroa.0.i.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.0..sroa_idx.i.i.i.i.i.i, i64 20, i1 false), !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.80..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.i.sroa.9.i.i.i.i.i.i, i64 68, i1 false), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.9.i.i.i.i.i.i)
  %i.hc = bitcast i64 %i.fj to <4 x i16>
  %i.hd = shufflevector <4 x i16> %i.hc, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i

_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, %bb.t, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i
  %.sroa.1029.0.i.i.i.i.i.i = phi i8 [ %i.fg, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.t ], [ undef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.724.0.i.i.i.i.i.i = phi i64 [ %i.ez, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.dy, %bb.t ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.i.sroa.5.0.copyload.i.i.i.i.i.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.ef, %bb.t ], [ %i.ef, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.521.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.i.sroa.4.0.copyload.i.i.i.i.i.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.eb, %bb.t ], [ %i.eb, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.019.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i.i.i.i.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ -1, %bb.t ], [ -1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %i.he = phi <2 x i16> [ %i.hd, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.du, %bb.t ], [ %i.du, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i.i.i ]
  %i.hf = getelementptr inbounds nuw [112 x i8], ptr %i.cs, i64 %.sroa.7.0148.i.i.i.i.i.i ; 7 uses
  %.sroa.954.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.954.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i.i.i.i.i.i, i64 68, i1 false), !noalias !351
  store i64 %.sroa.019.0.i.i.i.i.i.i, ptr %i.hf, align 8, !noalias !351
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %.sroa.521.0.i.i.i.i.i.i, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !351
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !351
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i64 %.sroa.724.0.i.i.i.i.i.i, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !351
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  store <2 x i16> %i.he, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !351
  %.sroa.1055.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 104
  store i8 %.sroa.1029.0.i.i.i.i.i.i, ptr %.sroa.1055.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1028.i.i.i.i.i.i)
  %i.hg = icmp eq i64 %i.dn, 0
  br i1 %i.hg, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i, label %bb.p

bb.aq:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i.i, %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !351
  unreachable

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i, %.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp67.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.0148.i.i.i.i.i.i, ptr %i.cv, align 8, !noalias !349
  %i.hi = icmp eq i64 %.sroa.7.0148.i.i.i.i.i.i, 0
  br i1 %i.hi, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i, label %.lr.ph

bb.ar:                                            ; preds = %.lr.ph
  %i.hj = icmp eq i64 %i.hl, %.sroa.7.0148.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvMs8_NtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB5_12WriteTrafficNtNtNtB9_6client11client_conn20ClientConnectionDataE7encryptCse7TjioWD9Jw_17unbuffered_client:bb.a
  %.not.i.i21.i.i.i.i = icmp eq i64 %i.jy, 0
  %i.kj = ptrtoint ptr %i.kf to i64
  br i1 %.not.i.i21.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit22.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i20.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kf, ptr nonnull readonly align 1 %i.jx, i64 range(i64 0, -9223372036854775808) %i.jy, i1 false), !noalias !415
  store i64 %i.jy, ptr %i.ki, align 8, !alias.scope !414, !noalias !396
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit22.i.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit22.i.i.i.i: ; preds = %bb.bt, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i20.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.am, i64 952
  %i.kl = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %i.km = load ptr, ptr %i.kl, align 8, !alias.scope !417, !nonnull !7, !noundef !7
  %i.kn = load i64, ptr %i.kk, align 8, !alias.scope !417, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !418
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.kn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc25.i.i.i.i unwind label %bb.cf, !noalias !406

.noexc25.i.i.i.i:                                 ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit22.i.i.i.i
  %i.ko = load i64, ptr %i.m, align 8, !range !13, !noalias !418, !noundef !7
  %i.kp = trunc nuw i64 %i.ko to i1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !range !14, !noalias !418, !noundef !7 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.kp, label %bb.bu, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i23.i.i.i.i, !prof !10

bb.bu:                                            ; preds = %.noexc25.i.i.i.i
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !418
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.kr, i64 %i.kt) #21
          to label %.noexc26.i.i.i.i unwind label %bb.cf, !noalias !406

.noexc26.i.i.i.i:                                 ; preds = %bb.bu
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i23.i.i.i.i: ; preds = %.noexc25.i.i.i.i
  %i.ku = load ptr, ptr %i.ks, align 8, !noalias !418, !nonnull !7, !noundef !7 ; 2 uses
  %i.kv = icmp samesign ule i64 %i.kn, %i.kr
  tail call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !418
  %.not.i.i24.i.i.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i24.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i23.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull readonly align 1 %i.km, i64 range(i64 0, -9223372036854775808) %i.kn, i1 false), !noalias !419
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i

bb.bw:                                            ; preds = %bb.ay
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.bx:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !396
  %i.kw = getelementptr inbounds nuw i8, ptr %i.am, i64 928
  %i.kx = load i8, ptr %i.kw, align 8, !range !12, !alias.scope !395, !noundef !7
  %i.ky = trunc nuw i8 %i.kx to i1                ; 2 uses
  br i1 %i.ky, label %bb.cg, label %bb.ch

bb.by:                                            ; preds = %bb.ay
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.bz:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !396
  %i.kz = getelementptr inbounds nuw i8, ptr %i.am, i64 936
  %i.la = load i64, ptr %i.kz, align 8, !range !9, !alias.scope !395, !noundef !7 ; 2 uses
  %i.lb = xor i64 %i.la, -9223372036854775808
  %i.lc = icmp slt i64 %i.la, 0
  %i.ld = select i1 %i.lc, i64 %i.lb, i64 2
  switch i64 %i.ld, label %bb.az [
    i64 0, label %bb.cu
    i64 1, label %bb.cv
    i64 2, label %bb.cw
  ]

bb.ca:                                            ; preds = %bb.ay
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.cb:                                            ; preds = %bb.ay
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.cc:                                            ; preds = %bb.ay
  %i.le = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !395, !nonnull !7, !noundef !7 ; 2 uses
  %i.lg = atomicrmw add ptr %i.lf, i64 1 monotonic, align 8, !noalias !406
  %i.lh = icmp slt i64 %i.lg, 0
  br i1 %i.lh, label %bb.dk, label %bb.dj

bb.cd:                                            ; preds = %bb.bp, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume.i unwind label %bb.ce, !noalias !406

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i: ; preds = %bb.bq, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i17.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !396
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.ce:                                            ; preds = %bb.di, %bb.ct, %bb.cf, %bb.cd
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !420
  unreachable

bb.cf:                                            ; preds = %bb.bu, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit22.i.i.i.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume.i unwind label %bb.ce, !noalias !406

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i: ; preds = %bb.bv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i23.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !396
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.cg:                                            ; preds = %bb.bx
  %i.ll = getelementptr inbounds nuw i8, ptr %i.am, i64 929
  %i.lm = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.lm, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.ll, i64 17, i1 false), !noalias !420
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %i.am, i64 936 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !range !6, !alias.scope !395, !noundef !7
  %.not.i16.i.i.i = icmp eq i64 %i.lo, -1
  br i1 %.not.i16.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !396
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ln), !noalias !420
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !396
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !396
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !396
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.lp = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !395, !nonnull !7, !noundef !7
  %i.lr = getelementptr inbounds nuw i8, ptr %i.am, i64 952
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !395, !noundef !7
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i, %bb.ci ], [ %i.ls, %bb.cj ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i, %bb.ci ], [ %i.lq, %bb.cj ]
  %.sroa.0.0.i17.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.ci ], [ -1, %bb.cj ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.0.0.i17.i.i.i, ptr %i.lt, align 8, !noalias !396
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !396
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !396
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cg
  %storemerge.i.i.i.i = phi i8 [ 0, %bb.ck ], [ 1, %bb.cg ]
  store i8 %storemerge.i.i.i.i, ptr %i.s, align 8, !noalias !396
  %i.lu = getelementptr inbounds nuw i8, ptr %i.am, i64 912
  %.val11.i.i.i.i = load ptr, ptr %i.lu, align 8, !alias.scope !395, !nonnull !7, !noundef !7 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val12.i.i.i.i = load i64, ptr %i.lv, align 8, !alias.scope !395, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !421
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, 384307168202282326) %.val12.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc32.i.i.i.i unwind label %bb.cr, !noalias !420

.noexc32.i.i.i.i:                                 ; preds = %bb.cl
  %i.lw = load i64, ptr %i.j, align 8, !range !13, !noalias !421, !noundef !7
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !range !14, !noalias !421, !noundef !7 ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.lx, label %bb.cm, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i, !prof !10

bb.cm:                                            ; preds = %.noexc32.i.i.i.i
  %i.mb = load i64, ptr %i.ma, align 8, !noalias !421
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.lz, i64 %i.mb) #21
          to label %.noexc33.i.i.i.i unwind label %bb.cr, !noalias !420

.noexc33.i.i.i.i:                                 ; preds = %bb.cm
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i: ; preds = %.noexc32.i.i.i.i
  %i.mc = load ptr, ptr %i.ma, align 8, !noalias !421, !nonnull !7, !noundef !7 ; 3 uses
  %i.md = icmp samesign ule i64 %.val12.i.i.i.i, %i.lz
  tail call void @llvm.assume(i1 %i.md)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !421
  store i64 %i.lz, ptr %i.l, align 8, !noalias !421
  %i.me = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.mc, ptr %i.me, align 8, !noalias !421
  %i.mf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i.i, i64 %.val12.i.i.i.i
  %i.mh = icmp eq i64 %i.lz, 0
  %i.mi = ptrtoint ptr %i.mc to i64
  br i1 %i.mh, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i18.i.i.i

.lr.ph.i.i.i18.i.i.i:                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i, %bb.co
  %.sroa.012.023.i.i.i.i.i.i = phi ptr [ %i.mm, %bb.co ], [ %.val11.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i.i = phi i64 [ %i.ml, %bb.co ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i ] ; 3 uses
  %.sroa.10.021.i.i.i.i.i.i = phi i64 [ %i.mj, %bb.co ], [ %i.lz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i ]
  %i.mj = add nsw i64 %.sroa.10.021.i.i.i.i.i.i, -1 ; 2 uses
  %i.mk = icmp eq ptr %.sroa.012.023.i.i.i.i.i.i, %i.mg
  br i1 %i.mk, label %.loopexit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i18.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !421
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i.i.i.i.i)
          to label %bb.co unwind label %bb.cq, !noalias !422

bb.co:                                            ; preds = %bb.cn
  %i.ml = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i.i, 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i.i.i, i64 24
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %i.mc, i64 %.sroa.7.022.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !421
  %i.mo = icmp eq i64 %i.mj, 0
  br i1 %i.mo, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i18.i.i.i

bb.cp:                                            ; preds = %bb.cq
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !422
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i.i.i, ptr %i.mf, align 8, !noalias !421
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %.body.i.i.i.i unwind label %bb.cp, !noalias !422

bb.cr:                                            ; preds = %bb.cm, %bb.cl
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.cr, %bb.cq
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.mq, %bb.cr ], [ %lpad.loopexit.i.i.i.i.i.i, %bb.cq ] ; 3 uses
  br i1 %i.ky, label %common.resume.i, label %bb.cs

bb.cs:                                            ; preds = %.body.i.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !range !6, !alias.scope !423, !noalias !396, !noundef !7
  %i.mt = icmp eq i64 %i.ms, -1
  br i1 %i.mt, label %common.resume.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mr)
          to label %common.resume.i unwind label %bb.ce, !noalias !420

.loopexit.i.i.i.i:                                ; preds = %bb.co, %.lr.ph.i.i.i18.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i31.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !421
  %.sroa.36.24.copyload.i.i.i = load i64, ptr %i.s, align 8, !noalias !424
  %.sroa.37.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.37.24.copyload.i.i.i = load i64, ptr %.sroa.37.24..sroa_idx.i.i.i, align 8, !noalias !424
  %.sroa.40.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.40.24.copyload.i.i.i = load ptr, ptr %.sroa.40.24..sroa_idx.i.i.i, align 8, !noalias !424
  %.sroa.42.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.42.24.copyload.i.i.i = load i64, ptr %.sroa.42.24..sroa_idx.i.i.i, align 8, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !396
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.cu:                                            ; preds = %bb.bz
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !396
  br label %bb.cx

bb.cv:                                            ; preds = %bb.bz
  store i64 -9223372036854775807, ptr %i.r, align 8, !noalias !396
  br label %bb.cx

bb.cw:                                            ; preds = %bb.bz
  %i.mu = getelementptr inbounds nuw i8, ptr %i.am, i64 944
  %.val13.i.i.i.i = load ptr, ptr %i.mu, align 8, !alias.scope !395, !nonnull !7, !noundef !7
  %i.mv = getelementptr inbounds nuw i8, ptr %i.am, i64 952
  %.val14.i.i.i.i = load i64, ptr %i.mv, align 8, !alias.scope !395, !noundef !7
  call fastcc void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull %.val13.i.i.i.i, i64 %.val14.i.i.i.i), !noalias !406
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %.val15.i.i.i.i = load ptr, ptr %i.mw, align 8, !alias.scope !395, !nonnull !7, !noundef !7 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.am, i64 928
  %.val16.i.i.i.i = load i64, ptr %i.mx, align 8, !alias.scope !395, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !426
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 384307168202282326) %.val16.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc37.i.i.i.i unwind label %bb.dh, !noalias !406

.noexc37.i.i.i.i:                                 ; preds = %bb.cx
  %i.my = load i64, ptr %i.h, align 8, !range !13, !noalias !426, !noundef !7
  %i.mz = trunc nuw i64 %i.my to i1
  %i.na = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !range !14, !noalias !426, !noundef !7 ; 6 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.mz, label %bb.cy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i35.i.i.i.i, !prof !10

bb.cy:                                            ; preds = %.noexc37.i.i.i.i
  %i.nd = load i64, ptr %i.nc, align 8, !noalias !426
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nb, i64 %i.nd) #21
          to label %.noexc38.i.i.i.i unwind label %bb.dh, !noalias !406

.noexc38.i.i.i.i:                                 ; preds = %bb.cy
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i35.i.i.i.i: ; preds = %.noexc37.i.i.i.i
  %i.ne = load ptr, ptr %i.nc, align 8, !noalias !426, !nonnull !7, !noundef !7 ; 3 uses
  %i.nf = icmp samesign ule i64 %.val16.i.i.i.i, %i.nb
  tail call void @llvm.assume(i1 %i.nf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !426
  store i64 %i.nb, ptr %i.i, align 8, !noalias !426
  %i.ng = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ne, ptr %i.ng, align 8, !noalias !426
  %i.nh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.val15.i.i.i.i, i64 %.val16.i.i.i.i
  %i.nj = icmp eq i64 %i.nb, 0
  %i.nk = ptrtoint ptr %i.ne to i64
  br i1 %i.nj, label %.loopexit50.i.i.i.i, label %.lr.ph.i.i36.i.i.i.i

.lr.ph.i.i36.i.i.i.i:                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i35.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i36.i.i.i.i
  %.sroa.013.039.i.i.i.i.i.i = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i36.i.i.i.i ], [ %i.np, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.038.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i36.i.i.i.i ], [ %i.nq, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.037.i.i.i.i.i.i = phi i64 [ %i.nb, %.lr.ph.i.i36.i.i.i.i ], [ %i.nn, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i ]
  %i.nn = add nsw i64 %.sroa.10.037.i.i.i.i.i.i, -1 ; 2 uses
  %i.no = icmp eq ptr %.sroa.013.039.i.i.i.i.i.i, %i.ni
  br i1 %i.no, label %.loopexit50.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i.i.i.i.i.i, i64 24
  %i.nq = add nuw nsw i64 %.sroa.7.038.i.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.nr = load i64, ptr %.sroa.013.039.i.i.i.i.i.i, align 8, !range !9, !alias.scope !428, !noalias !429, !noundef !7 ; 2 uses
  %i.ns = xor i64 %i.nr, -9223372036854775808
  %i.nt = icmp slt i64 %i.nr, 0
  %i.nu = select i1 %i.nt, i64 %i.ns, i64 2
  switch i64 %i.nu, label %bb.db [
    i64 0, label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i
    i64 1, label %bb.dc
    i64 2, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.da
  br label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.dd:                                            ; preds = %bb.da
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.nv, align 8, !alias.scope !428, !noalias !429, !nonnull !7, !noundef !7
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.013.039.i.i.i.i.i.i, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.nw, align 8, !alias.scope !428, !noalias !429, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !430
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i.i.i9.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !431

.noexc.i.i.i9.i.i.i:                              ; preds = %bb.dd
  %i.nx = load i64, ptr %i.g, align 8, !range !13, !noalias !430, !noundef !7
  %i.ny = trunc nuw i64 %i.nx to i1
  %i.nz = load i64, ptr %i.nl, align 8, !range !14, !noalias !430, !noundef !7 ; 4 uses
  br i1 %i.ny, label %bb.de, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i, !prof !10

bb.de:                                            ; preds = %.noexc.i.i.i9.i.i.i
  %i.oa = load i64, ptr %i.nm, align 8, !noalias !430
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.nz, i64 %i.oa) #21
          to label %.noexc12.i.i.i15.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !431

.noexc12.i.i.i15.i.i.i:                           ; preds = %bb.de
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i: ; preds = %.noexc.i.i.i9.i.i.i
  %i.ob = load ptr, ptr %i.nm, align 8, !noalias !430, !nonnull !7, !noundef !7 ; 3 uses
  %i.oc = icmp samesign ule i64 %.val1.i.i.i.i.i.i.i, %i.nz
  tail call void @llvm.assume(i1 %i.oc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !430
  %.not.i.i.i.i.i.i11.i.i.i = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i11.i.i.i, label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i
  %i.od = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ob, ptr nonnull readonly align 8 %.val.i.i.i.i.i.i.i, i64 %i.od, i1 false), !noalias !432
  br label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i

_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.df, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i, %bb.dc, %bb.da
  %.sroa.715.0.i.i.i.i.i.i = phi i64 [ undef, %bb.da ], [ undef, %bb.dc ], [ %.val1.i.i.i.i.i.i.i, %bb.df ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i ]
  %.sroa.6.0.i.i.i12.i.i.i = phi ptr [ undef, %bb.da ], [ undef, %bb.dc ], [ %i.ob, %bb.df ], [ %i.ob, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i ]
  %.sroa.014.0.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.da ], [ -9223372036854775807, %bb.dc ], [ %i.nz, %bb.df ], [ %i.nz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i.i.i10.i.i.i ]
  %i.oe = getelementptr inbounds nuw [24 x i8], ptr %i.ne, i64 %.sroa.7.038.i.i.i.i.i.i ; 3 uses
  store i64 %.sroa.014.0.i.i.i.i.i.i, ptr %i.oe, align 8, !noalias !431
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store ptr %.sroa.6.0.i.i.i12.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !431
  %.sroa.524.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store i64 %.sroa.715.0.i.i.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !431
  %i.of = icmp eq i64 %i.nn, 0
  br i1 %i.of, label %.loopexit50.i.i.i.i, label %bb.cz

bb.dg:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !431
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dd, %bb.de
  %lpad.loopexit.split-lp314 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.038.i.i.i.i.i.i, ptr %i.nh, align 8, !noalias !426
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %.body39.i.i.i.i unwind label %bb.dg, !noalias !431

bb.dh:                                            ; preds = %bb.cy, %bb.cx
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i.i.i.i

.body39.i.i.i.i:                                  ; preds = %bb.dh, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body40.i.i.i.i = phi { ptr, i32 } [ %i.oh, %bb.dh ], [ %lpad.loopexit.split-lp314, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i13.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.oi = load i64, ptr %i.r, align 8, !range !9, !alias.scope !433, !noalias !396, !noundef !7
  %switch1.i.i.i.i.i = icmp slt i64 %i.oi, -9223372036854775806
  br i1 %switch1.i.i.i.i.i, label %common.resume.i, label %bb.di

bb.di:                                            ; preds = %.body39.i.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.ce, !noalias !406

.loopexit50.i.i.i.i:                              ; preds = %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %bb.cz, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i35.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !426
  %.sroa.37.32.copyload.i.i.i = load i64, ptr %i.r, align 8, !noalias !424
  %.sroa.40.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.40.32.copyload.i.i.i = load ptr, ptr %.sroa.40.32..sroa_idx.i.i.i, align 8, !noalias !424
  %.sroa.42.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.42.32.copyload.i.i.i = load i64, ptr %.sroa.42.32..sroa_idx.i.i.i, align 8, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !396
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.dj:                                            ; preds = %bb.cc
  %i.oj = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %i.ok = load ptr, ptr %i.oj, align 8, !alias.scope !395, !nonnull !7, !align !11, !noundef !7
  %i.ol = ptrtoint ptr %i.lf to i64
  %i.om = ptrtoint ptr %i.ok to i64
  br label %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.dk:                                            ; preds = %bb.cc
  tail call void @llvm.trap()
  unreachable

_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.dj, %.loopexit50.i.i.i.i, %.loopexit.i.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i, %bb.cb, %bb.ca, %bb.by, %bb.bw, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.sroa.42.0.i.i.i = phi i64 [ undef, %bb.dj ], [ undef, %bb.ba ], [ undef, %bb.bb ], [ undef, %bb.bc ], [ undef, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ undef, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %.val10.i.i.i.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.kn, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %.sroa.42.24.copyload.i.i.i, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %.sroa.42.32.copyload.i.i.i, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.40.0.i.i.i = phi ptr [ undef, %bb.dj ], [ undef, %bb.ba ], [ undef, %bb.bb ], [ undef, %bb.bc ], [ undef, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ undef, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %i.js, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.ku, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %.sroa.40.24.copyload.i.i.i, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %.sroa.40.32.copyload.i.i.i, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.37.0.i.i.i = phi i64 [ undef, %bb.dj ], [ undef, %bb.ba ], [ undef, %bb.bb ], [ undef, %bb.bc ], [ undef, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ undef, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %i.jp, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.kr, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %.sroa.37.24.copyload.i.i.i, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %.sroa.37.32.copyload.i.i.i, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.36.0.i.i.i = phi i64 [ undef, %bb.dj ], [ undef, %bb.ba ], [ undef, %bb.bb ], [ undef, %bb.bc ], [ undef, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ undef, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %i.iy, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.jy, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %.sroa.36.24.copyload.i.i.i, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %.val16.i.i.i.i, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.32.0.i.i.i = phi i64 [ %i.om, %bb.dj ], [ undef, %bb.ba ], [ %i.im, %bb.bb ], [ undef, %bb.bc ], [ %i.iq, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ %i.iu, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %i.jj, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.kj, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %.val12.i.i.i.i, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %i.nk, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.2537.0.i.i.i = phi i64 [ %i.ol, %bb.dj ], [ undef, %bb.ba ], [ %i.ik, %bb.bb ], [ undef, %bb.bc ], [ %i.io, %bb.bd ], [ undef, %bb.be ], [ undef, %bb.bf ], [ undef, %bb.bg ], [ undef, %bb.bh ], [ undef, %bb.bi ], [ %i.is, %bb.bj ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ %i.jc, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ %i.kc, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ undef, %bb.bw ], [ %i.mi, %.loopexit.i.i.i.i ], [ undef, %bb.by ], [ %i.nb, %.loopexit50.i.i.i.i ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.ay ]
  %.sroa.035.0.i.i.i = phi i64 [ -9223372036854775787, %bb.dj ], [ -9223372036854775807, %bb.ba ], [ -9223372036854775806, %bb.bb ], [ -9223372036854775805, %bb.bc ], [ -9223372036854775804, %bb.bd ], [ -9223372036854775803, %bb.be ], [ -9223372036854775802, %bb.bf ], [ -9223372036854775801, %bb.bg ], [ -9223372036854775800, %bb.bh ], [ -9223372036854775799, %bb.bi ], [ -9223372036854775798, %bb.bj ], [ -9223372036854775797, %bb.bk ], [ -9223372036854775796, %bb.bl ], [ -9223372036854775795, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i.i ], [ -9223372036854775794, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCse7TjioWD9Jw_17unbuffered_client.exit27.i.i.i.i ], [ -9223372036854775793, %bb.bw ], [ %i.lz, %.loopexit.i.i.i.i ], [ -9223372036854775791, %bb.by ], [ -9223372036854775790, %.loopexit50.i.i.i.i ], [ -9223372036854775789, %bb.ca ], [ -9223372036854775788, %bb.cb ], [ -9223372036854775808, %bb.ay ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.035.0.i.i.i, ptr %i.on, align 8, !alias.scope !332, !noalias !331
  %.sroa.2537.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.2537.0.i.i.i, ptr %.sroa.2537.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %.sroa.32.0.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.36.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.36.0.i.i.i, ptr %.sroa.36.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.37.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %.sroa.37.0.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.40.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %.sroa.40.0.i.i.i, ptr %.sroa.40.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 %.sroa.42.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !332, !noalias !331
  br label %_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.dl:                                            ; preds = %bb.c
  %i.oo = getelementptr inbounds nuw i8, ptr %i.am, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.op = load i64, ptr %i.oo, align 8, !range !435, !alias.scope !436, !noundef !7 ; 2 uses
  switch i64 %i.op, label %default.unreachable [
    i64 0, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 1, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 2, label %bb.dm
    i64 3, label %bb.dr
    i64 4, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 5, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 6, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 7, label %bb.dw
    i64 8, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 9, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 10, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 11, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 12, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
    i64 13, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  ]

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.am, i64 928
  %i.or = getelementptr inbounds nuw i8, ptr %i.am, i64 920
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !440, !nonnull !7, !noundef !7
  %i.ot = load i64, ptr %i.oq, align 8, !alias.scope !440, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !442
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCse7TjioWD9Jw_17unbuffered_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.ot, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !443
  %i.ou = load i64, ptr %i.d, align 8, !range !13, !noalias !442, !noundef !7
  %i.ov = trunc nuw i64 %i.ou to i1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ox = load i64, ptr %i.ow, align 8, !range !14, !noalias !442, !noundef !7 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ov, label %bb.dn, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i23.i.i.i, !prof !10

bb.dn:                                            ; preds = %bb.dm
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !442
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ox, i64 %i.oz) #21, !noalias !443
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCse7TjioWD9Jw_17unbuffered_client.exit.i.i.i23.i.i.i: ; preds = %bb.dm
  %i.pa = load ptr, ptr %i.oy, align 8, !noalias !442, !nonnull !7, !noundef !7 ; 3 uses
  %i.pb = icmp samesign ule i64 %i.ot, %i.ox
  tail call void @llvm.assume(i1 %i.pb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !442
  store i64 %i.ox, ptr %i.f, align 8, !alias.scope !444, !noalias !437
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.pa, ptr %i.pc, align 8, !alias.scope !444, !noalias !437
  %i.pd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.pd, align 8, !alias.scope !444, !noalias !437
  %.not.i.i.i24.i.i.i = icmp eq i64 %i.ot, 0
end_hunk_1
