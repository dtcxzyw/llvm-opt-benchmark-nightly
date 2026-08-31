Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.03?download=true
inline.NumInlined: 6659
inline.NumDeleted: 2067
begin_hunk_0_@_RINvXs7_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexNtB6_19ColumnIndexMetaDataNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8.i.sroa.5.i145 = alloca [22 x i8], align 2 ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8.i.sroa.5.i75 = alloca [22 x i8], align 2 ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8.i.sroa.5.i5 = alloca [22 x i8], align 2 ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.8.i.sroa.5.i = alloca [22 x i8], align 2 ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [32 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 6 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [32 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = load i64, ptr %1, align 8, !range !11806, !noundef !6
  switch i64 %i.cb, label %default.unreachable507 [
    i64 1, label %bb.b
    i64 2, label %bb.aq
    i64 3, label %bb.cf
    i64 4, label %bb.du
    i64 5, label %bb.fj
    i64 6, label %bb.gy
    i64 7, label %bb.in
    i64 8, label %bb.io
    i64 0, label %bb.ip
  ]

default.unreachable507:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12806)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.cc, align 8, !alias.scope !12806, !noalias !12808 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i = load i64, ptr %i.cd, align 8, !alias.scope !12806, !noalias !12808 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !12810
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12814
  %i.ce = load i64, ptr %i.bp, align 8, !range !328, !noalias !12810, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.8134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.8134.0.copyload.i = load i16, ptr %.sroa.8134.0..sroa_idx.i, align 8, !noalias !12815
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i, i64 22, i1 false), !noalias !12816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12810
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !12817
  %i.cf = icmp sgt i64 %.val131.i, -1
  call void @llvm.assume(i1 %i.cf)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i), !noalias !12821
  %i.cg = load i64, ptr %i.bo, align 8, !range !328, !noalias !12817, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.8.0..sroa_idx3.i.i, align 8, !noalias !12810
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i, i64 22, i1 false), !noalias !12816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !12817
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !12817
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val131.i
  %i.ci = icmp eq i64 %.val131.i, 0               ; 3 uses
  br i1 %i.ci, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.h
  %.sroa.02.01.i.i.i = phi ptr [ %i.ck, %bb.h ], [ %.val.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !12817
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12821
  %i.cj = load i64, ptr %i.bn, align 8, !range !328, !noalias !12817, !noundef !6 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %i.cj, -1
  br i1 %.not4.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %.sroa.8.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i = load i16, ptr %.sroa.8.0..sroa_idx4.i.i, align 8, !noalias !12810
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i, i64 22, i1 false), !noalias !12816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12817
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12817
  %i.cl = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cl, label %.loopexit.i, label %.lr.ph.i.i.i

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.8134.0.i = phi i16 [ %.sroa.8134.0.copyload.i, %bb.c ], [ %.sroa.8.i.sroa.0.0.copyload135.i, %bb.g ], [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.e ]
  %.sroa.0.0.i = phi i64 [ %i.ce, %bb.c ], [ %i.cj, %bb.g ], [ %i.cg, %bb.e ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i, ptr %.sroa.474.0..sroa_idx.i, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i, i64 22, i1 false), !noalias !12822
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i:                                      ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12823
  %i.cm = load i64, ptr %i.bz, align 8, !range !328, !noalias !12816, !noundef !6
  %.not116.i = icmp eq i64 %i.cm, -1
  br i1 %.not116.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.j:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !12816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.by, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i), !noalias !12823
  %i.cn = load i64, ptr %i.by, align 8, !range !328, !noalias !12816, !noundef !6
  %.not117.i = icmp eq i64 %i.cn, -1
  br i1 %.not117.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !12816
  br i1 %i.ci, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !12806, !noalias !12808 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !12806, !noalias !12808, !nonnull !6
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.ap, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12823
  %i.cs = load i64, ptr %i.bw, align 8, !range !328, !noalias !12816, !noundef !6
  %.not118.i = icmp eq i64 %i.cs, -1
  br i1 %.not118.i, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.ap, %.lr.ph.i
  %.sroa.076.0150.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ct, %bb.ap ] ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.076.0150.i, 1    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.076.0150.i
  %i.cv = load i8, ptr %i.cu, align 1, !range !3092, !noalias !12824, !noundef !6
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = icmp ult i64 %.sroa.076.0150.i, %i.cp
  br i1 %i.cx, label %bb.an, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i, i64 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12824
  unreachable

bb.p:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.q:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !12816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i), !noalias !12823
  %i.cy = load i64, ptr %i.bv, align 8, !range !328, !noalias !12816, !noundef !6
  %.not119.i = icmp eq i64 %i.cy, -1
  br i1 %.not119.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !12816
  br i1 %i.ci, label %._crit_edge154.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !12806, !noalias !12808 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !12806, !noalias !12808, !nonnull !6
  br label %bb.t

._crit_edge154.i:                                 ; preds = %bb.am, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !12816
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12803
  %i.de = load i64, ptr %i.bt, align 8, !range !328, !noalias !12816, !noundef !6 ; 2 uses
  %.not120.i = icmp eq i64 %i.de, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dg = load i16, ptr %i.df, align 8, !noalias !12816 ; 3 uses
  br i1 %.not120.i, label %bb.x, label %bb.w

bb.t:                                             ; preds = %bb.am, %.lr.ph153.i
  %.sroa.078.0151.i = phi i64 [ 0, %.lr.ph153.i ], [ %i.dh, %bb.am ] ; 5 uses
  %i.dh = add nuw nsw i64 %.sroa.078.0151.i, 1    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.078.0151.i
  %i.dj = load i8, ptr %i.di, align 1, !range !3092, !noalias !12827, !noundef !6
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = icmp ult i64 %.sroa.078.0151.i, %i.da
  br i1 %i.dl, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12827
  unreachable

bb.w:                                             ; preds = %._crit_edge154.i
  %.sroa.585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i, i64 22, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12816
  store i64 %i.de, ptr %0, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.dg, ptr %.sroa.487.0..sroa_idx.i, align 8, !alias.scope !12803, !noalias !12822
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.x:                                             ; preds = %._crit_edge154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12816
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !19, !alias.scope !12806, !noalias !12808, !noundef !6
  %.not121.i = icmp eq i64 %i.dn, -1
  br i1 %.not121.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !12816
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.dg), !noalias !12803
  %i.do = load i64, ptr %i.bs, align 8, !range !328, !noalias !12816, !noundef !6 ; 2 uses
  %.not122.i = icmp eq i64 %i.do, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dq = load i16, ptr %i.dp, align 8, !noalias !12816 ; 2 uses
  br i1 %.not122.i, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.ab, %bb.x
  %.sroa.053.0.i = phi i16 [ %i.dq, %bb.ab ], [ %i.dg, %bb.x ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !range !19, !alias.scope !12806, !noalias !12808, !noundef !6
  %.not123.i = icmp eq i64 %i.ds, -1
  br i1 %.not123.i, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i, i64 22, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12816
  store i64 %i.do, ptr %0, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.dq, ptr %.sroa.496.0..sroa_idx.i, align 8, !alias.scope !12803, !noalias !12822
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12816
  br label %bb.z

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !12816
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i), !noalias !12803
  %i.dt = load i64, ptr %i.br, align 8, !range !328, !noalias !12816, !noundef !6 ; 2 uses
  %.not124.i = icmp eq i64 %i.dt, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dv = load i16, ptr %i.du, align 8, !noalias !12816 ; 2 uses
  br i1 %.not124.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.af, %bb.z
  %.sroa.053.1.i = phi i16 [ %i.dv, %bb.af ], [ %.sroa.053.0.i, %bb.z ]
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !19, !alias.scope !12806, !noalias !12808, !noundef !6
  %.not125.i = icmp eq i64 %i.dx, -1
  br i1 %.not125.i, label %bb.ah, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i, i64 22, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !12816
  store i64 %i.dt, ptr %0, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.4105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.dv, ptr %.sroa.4105.0..sroa_idx.i, align 8, !alias.scope !12803, !noalias !12822
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !12816
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !12816
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i), !noalias !12803
  %i.dy = load i64, ptr %i.bq, align 8, !range !328, !noalias !12816, !noundef !6 ; 2 uses
  %.not126.i = icmp eq i64 %i.dy, -1
  br i1 %.not126.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.aj, %bb.ad
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ai:                                            ; preds = %bb.ag
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.4111.0.copyload.i = load i16, ptr %.sroa.4111.0..sroa_idx.i, align 8, !noalias !12816
  %.sroa.5112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  %.sroa.5115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i, i64 22, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12816
  store i64 %i.dy, ptr %0, align 8, !alias.scope !12803, !noalias !12822
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i, ptr %.sroa.4114.0..sroa_idx.i, align 8, !alias.scope !12803, !noalias !12822
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12816
  br label %bb.ah

bb.ak:                                            ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.078.0151.i
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.ak, %bb.t
  %.sroa.320.0.i = phi i64 [ 1, %bb.ak ], [ 0, %bb.t ]
  %.sroa.019.0.i = phi ptr [ %i.dz, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i, i64 noundef %.sroa.320.0.i), !noalias !12823
  %i.ea = load i64, ptr %i.bu, align 8, !range !328, !noalias !12816, !noundef !6
  %.not128.i = icmp eq i64 %i.ea, -1
  br i1 %.not128.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.am:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !12816
  %exitcond161.not.i = icmp eq i64 %i.dh, %.val131.i
  br i1 %exitcond161.not.i, label %._crit_edge154.i, label %bb.t

bb.an:                                            ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.076.0150.i
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.an, %bb.m
  %.sroa.3.0.i = phi i64 [ 1, %bb.an ], [ 0, %bb.m ]
  %.sroa.012.0.i = phi ptr [ %i.eb, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !12816
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i, i64 noundef %.sroa.3.0.i), !noalias !12823
  %i.ec = load i64, ptr %i.bx, align 8, !range !328, !noalias !12816, !noundef !6
  %.not130.i = icmp eq i64 %i.ec, -1
  br i1 %.not130.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !noalias !12822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !12816
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ap:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexbE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !12816
  %exitcond.not.i = icmp eq i64 %i.ct, %.val131.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.i, %bb.k, %bb.p, %bb.r, %bb.w, %bb.aa, %bb.ae, %bb.ah, %bb.ai, %bb.al, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i)
  br label %bb.iq

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12833)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i5)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i6 = load ptr, ptr %i.ed, align 8, !alias.scope !12833, !noalias !12835 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i7 = load i64, ptr %i.ee, align 8, !alias.scope !12833, !noalias !12835 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !12837
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12841
  %i.ef = load i64, ptr %i.bc, align 8, !range !328, !noalias !12837, !noundef !6 ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.ef, -1
  br i1 %.not.i.i8, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.8134.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.8134.0.copyload.i10 = load i16, ptr %.sroa.8134.0..sroa_idx.i9, align 8, !noalias !12842
  %.sroa.11.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i5, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i11, i64 22, i1 false), !noalias !12843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !12837
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i12

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !12837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !12844
  %i.eg = icmp sgt i64 %.val131.i7, -1
  call void @llvm.assume(i1 %i.eg)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i7), !noalias !12848
  %i.eh = load i64, ptr %i.bb, align 8, !range !328, !noalias !12844, !noundef !6 ; 2 uses
  %.not.i.i.i17 = icmp eq i64 %i.eh, -1
  br i1 %.not.i.i.i17, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.8.0..sroa_idx3.i.i18 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i19 = load i16, ptr %.sroa.8.0..sroa_idx3.i.i18, align 8, !noalias !12837
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i5, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i20, i64 22, i1 false), !noalias !12843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12844
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i12

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12844
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i6) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i6, i64 %.val131.i7
  %i.ej = icmp eq i64 %.val131.i7, 0              ; 3 uses
  br i1 %i.ej, label %.loopexit.i27, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %bb.au, %bb.aw
  %.sroa.02.01.i.i.i22 = phi ptr [ %i.el, %bb.aw ], [ %.val.i6, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !12844
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i22, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12848
  %i.ek = load i64, ptr %i.ba, align 8, !range !328, !noalias !12844, !noundef !6 ; 2 uses
  %.not4.i.i.i23 = icmp eq i64 %i.ek, -1
  br i1 %.not4.i.i.i23, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i21
  %.sroa.8.0..sroa_idx4.i.i24 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i25 = load i16, ptr %.sroa.8.0..sroa_idx4.i.i24, align 8, !noalias !12837
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i5, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i26, i64 22, i1 false), !noalias !12843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12844
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i12

bb.aw:                                            ; preds = %.lr.ph.i.i.i21
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i22, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12844
  %i.em = icmp eq ptr %i.el, %i.ei
  br i1 %i.em, label %.loopexit.i27, label %.lr.ph.i.i.i21

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i12: ; preds = %bb.av, %bb.at, %bb.ar
  %.sroa.8134.0.i13 = phi i16 [ %.sroa.8134.0.copyload.i10, %bb.ar ], [ %.sroa.8.i.sroa.0.0.copyload135.i25, %bb.av ], [ %.sroa.8.i.sroa.0.0.copyload.i19, %bb.at ]
  %.sroa.0.0.i14 = phi i64 [ %i.ef, %bb.ar ], [ %i.ek, %bb.av ], [ %i.eh, %bb.at ]
  store i64 %.sroa.0.0.i14, ptr %0, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.474.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i13, ptr %.sroa.474.0..sroa_idx.i15, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.575.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i16, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i5, i64 22, i1 false), !noalias !12849
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i27:                                    ; preds = %bb.aw, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12850
  %i.en = load i64, ptr %i.bm, align 8, !range !328, !noalias !12843, !noundef !6
  %.not116.i28 = icmp eq i64 %i.en, -1
  br i1 %.not116.i28, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ay:                                            ; preds = %.loopexit.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !12843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i7), !noalias !12850
  %i.eo = load i64, ptr %i.bl, align 8, !range !328, !noalias !12843, !noundef !6
  %.not117.i29 = icmp eq i64 %i.eo, -1
  br i1 %.not117.i29, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12843
  br i1 %i.ej, label %._crit_edge.i36, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.ba
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !12833, !noalias !12835 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !12833, !noalias !12835, !nonnull !6
  br label %bb.bb

._crit_edge.i36:                                  ; preds = %bb.ce, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12850
  %i.et = load i64, ptr %i.bj, align 8, !range !328, !noalias !12843, !noundef !6
  %.not118.i37 = icmp eq i64 %i.et, -1
  br i1 %.not118.i37, label %bb.bf, label %bb.be

bb.bb:                                            ; preds = %bb.ce, %.lr.ph.i30
  %.sroa.076.0150.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %i.eu, %bb.ce ] ; 5 uses
  %i.eu = add nuw nsw i64 %.sroa.076.0150.i31, 1  ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i6, i64 %.sroa.076.0150.i31
  %i.ew = load i8, ptr %i.ev, align 1, !range !3092, !noalias !12851, !noundef !6
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = icmp ult i64 %.sroa.076.0150.i31, %i.eq
  br i1 %i.ey, label %bb.cc, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i31, i64 noundef %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12851
  unreachable

bb.be:                                            ; preds = %._crit_edge.i36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bf:                                            ; preds = %._crit_edge.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !12843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i7), !noalias !12850
  %i.ez = load i64, ptr %i.bi, align 8, !range !328, !noalias !12843, !noundef !6
  %.not119.i38 = icmp eq i64 %i.ez, -1
  br i1 %.not119.i38, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !12843
  br i1 %i.ej, label %._crit_edge154.i45, label %.lr.ph153.i39

.lr.ph153.i39:                                    ; preds = %bb.bh
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !12833, !noalias !12835 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !12833, !noalias !12835, !nonnull !6
  br label %bb.bi

._crit_edge154.i45:                               ; preds = %bb.cb, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !12843
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bg, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12830
  %i.ff = load i64, ptr %i.bg, align 8, !range !328, !noalias !12843, !noundef !6 ; 2 uses
  %.not120.i46 = icmp eq i64 %i.ff, -1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.fh = load i16, ptr %i.fg, align 8, !noalias !12843 ; 3 uses
  br i1 %.not120.i46, label %bb.bm, label %bb.bl

bb.bi:                                            ; preds = %bb.cb, %.lr.ph153.i39
  %.sroa.078.0151.i40 = phi i64 [ 0, %.lr.ph153.i39 ], [ %i.fi, %bb.cb ] ; 5 uses
  %i.fi = add nuw nsw i64 %.sroa.078.0151.i40, 1  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i6, i64 %.sroa.078.0151.i40
  %i.fk = load i8, ptr %i.fj, align 1, !range !3092, !noalias !12854, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fm = icmp ult i64 %.sroa.078.0151.i40, %i.fb
  br i1 %i.fm, label %bb.bz, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i40, i64 noundef %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12854
  unreachable

bb.bl:                                            ; preds = %._crit_edge154.i45
  %.sroa.585.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %.sroa.588.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i50, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i49, i64 22, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !12843
  store i64 %i.ff, ptr %0, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.487.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.fh, ptr %.sroa.487.0..sroa_idx.i51, align 8, !alias.scope !12830, !noalias !12849
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bm:                                            ; preds = %._crit_edge154.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !12843
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !19, !alias.scope !12833, !noalias !12835, !noundef !6
  %.not121.i52 = icmp eq i64 %i.fo, -1
  br i1 %.not121.i52, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !12843
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.fh), !noalias !12830
  %i.fp = load i64, ptr %i.bf, align 8, !range !328, !noalias !12843, !noundef !6 ; 2 uses
  %.not122.i53 = icmp eq i64 %i.fp, -1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.fr = load i16, ptr %i.fq, align 8, !noalias !12843 ; 2 uses
  br i1 %.not122.i53, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bq, %bb.bm
  %.sroa.053.0.i59 = phi i16 [ %i.fr, %bb.bq ], [ %i.fh, %bb.bm ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !range !19, !alias.scope !12833, !noalias !12835, !noundef !6
  %.not123.i60 = icmp eq i64 %i.ft, -1
  br i1 %.not123.i60, label %bb.bs, label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.sroa.594.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %.sroa.597.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i57, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i56, i64 22, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !12843
  store i64 %i.fp, ptr %0, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.496.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.fr, ptr %.sroa.496.0..sroa_idx.i58, align 8, !alias.scope !12830, !noalias !12849
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !12843
  br label %bb.bo

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !12843
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i59), !noalias !12830
  %i.fu = load i64, ptr %i.be, align 8, !range !328, !noalias !12843, !noundef !6 ; 2 uses
  %.not124.i61 = icmp eq i64 %i.fu, -1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.fw = load i16, ptr %i.fv, align 8, !noalias !12843 ; 2 uses
  br i1 %.not124.i61, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.bu, %bb.bo
  %.sroa.053.1.i67 = phi i16 [ %i.fw, %bb.bu ], [ %.sroa.053.0.i59, %bb.bo ]
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !range !19, !alias.scope !12833, !noalias !12835, !noundef !6
  %.not125.i68 = icmp eq i64 %i.fy, -1
  br i1 %.not125.i68, label %bb.bw, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %.sroa.5103.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %.sroa.5106.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i65, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i64, i64 22, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !12843
  store i64 %i.fu, ptr %0, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.4105.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.fw, ptr %.sroa.4105.0..sroa_idx.i66, align 8, !alias.scope !12830, !noalias !12849
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !12843
  br label %bb.bs

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !12843
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fx, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i67), !noalias !12830
  %i.fz = load i64, ptr %i.bd, align 8, !range !328, !noalias !12843, !noundef !6 ; 2 uses
  %.not126.i69 = icmp eq i64 %i.fz, -1
  br i1 %.not126.i69, label %bb.by, label %bb.bx

bb.bw:                                            ; preds = %bb.by, %bb.bs
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.bx:                                            ; preds = %bb.bv
  %.sroa.4111.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4111.0.copyload.i71 = load i16, ptr %.sroa.4111.0..sroa_idx.i70, align 8, !noalias !12843
  %.sroa.5112.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %.sroa.5115.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i73, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i72, i64 22, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !12843
  store i64 %i.fz, ptr %0, align 8, !alias.scope !12830, !noalias !12849
  %.sroa.4114.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i71, ptr %.sroa.4114.0..sroa_idx.i74, align 8, !alias.scope !12830, !noalias !12849
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !12843
  br label %bb.bw

bb.bz:                                            ; preds = %bb.bj
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.078.0151.i40
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.bz, %bb.bi
  %.sroa.320.0.i41 = phi i64 [ 4, %bb.bz ], [ 0, %bb.bi ]
  %.sroa.019.0.i42 = phi ptr [ %i.ga, %bb.bz ], [ inttoptr (i64 1 to ptr), %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i42, i64 noundef %.sroa.320.0.i41), !noalias !12850
  %i.gb = load i64, ptr %i.bh, align 8, !range !328, !noalias !12843, !noundef !6
  %.not128.i43 = icmp eq i64 %i.gb, -1
  br i1 %.not128.i43, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.cb:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12843
  %exitcond161.not.i44 = icmp eq i64 %i.fi, %.val131.i7
  br i1 %exitcond161.not.i44, label %._crit_edge154.i45, label %bb.bi

bb.cc:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.sroa.076.0150.i31
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.cc, %bb.bb
  %.sroa.3.0.i32 = phi i64 [ 4, %bb.cc ], [ 0, %bb.bb ]
  %.sroa.012.0.i33 = phi ptr [ %i.gc, %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !12843
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i33, i64 noundef %.sroa.3.0.i32), !noalias !12850
  %i.gd = load i64, ptr %i.bk, align 8, !range !328, !noalias !12843, !noundef !6
  %.not130.i34 = icmp eq i64 %i.gd, -1
  br i1 %.not130.i34, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false), !noalias !12849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12843
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ce:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexlE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12843
  %exitcond.not.i35 = icmp eq i64 %i.eu, %.val131.i7
  br i1 %exitcond.not.i35, label %._crit_edge.i36, label %bb.bb

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i12, %bb.ax, %bb.az, %bb.be, %bb.bg, %bb.bl, %bb.bp, %bb.bt, %bb.bw, %bb.bx, %bb.ca, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i5)
  br label %bb.iq

bb.cf:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12860)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i75)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i76 = load ptr, ptr %i.ge, align 8, !alias.scope !12860, !noalias !12862 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i77 = load i64, ptr %i.gf, align 8, !alias.scope !12860, !noalias !12862 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12864
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12868
  %i.gg = load i64, ptr %i.ap, align 8, !range !328, !noalias !12864, !noundef !6 ; 2 uses
  %.not.i.i78 = icmp eq i64 %i.gg, -1
  br i1 %.not.i.i78, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.8134.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8134.0.copyload.i80 = load i16, ptr %.sroa.8134.0..sroa_idx.i79, align 8, !noalias !12869
  %.sroa.11.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i75, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i81, i64 22, i1 false), !noalias !12870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12864
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i82

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !12871
  %i.gh = icmp sgt i64 %.val131.i77, -1
  call void @llvm.assume(i1 %i.gh)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i77), !noalias !12875
  %i.gi = load i64, ptr %i.ao, align 8, !range !328, !noalias !12871, !noundef !6 ; 2 uses
  %.not.i.i.i87 = icmp eq i64 %i.gi, -1
  br i1 %.not.i.i.i87, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.sroa.8.0..sroa_idx3.i.i88 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i89 = load i16, ptr %.sroa.8.0..sroa_idx3.i.i88, align 8, !noalias !12864
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i75, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i90, i64 22, i1 false), !noalias !12870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12871
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i82

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12871
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i76) ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.val.i76, i64 %.val131.i77
  %i.gk = icmp eq i64 %.val131.i77, 0             ; 3 uses
  br i1 %i.gk, label %.loopexit.i97, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %bb.cj, %bb.cl
  %.sroa.02.01.i.i.i92 = phi ptr [ %i.gm, %bb.cl ], [ %.val.i76, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !12871
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i92, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12875
  %i.gl = load i64, ptr %i.an, align 8, !range !328, !noalias !12871, !noundef !6 ; 2 uses
  %.not4.i.i.i93 = icmp eq i64 %i.gl, -1
  br i1 %.not4.i.i.i93, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i91
  %.sroa.8.0..sroa_idx4.i.i94 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i95 = load i16, ptr %.sroa.8.0..sroa_idx4.i.i94, align 8, !noalias !12864
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i75, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i96, i64 22, i1 false), !noalias !12870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12871
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i82

bb.cl:                                            ; preds = %.lr.ph.i.i.i91
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i92, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12871
  %i.gn = icmp eq ptr %i.gm, %i.gj
  br i1 %i.gn, label %.loopexit.i97, label %.lr.ph.i.i.i91

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i82: ; preds = %bb.ck, %bb.ci, %bb.cg
  %.sroa.8134.0.i83 = phi i16 [ %.sroa.8134.0.copyload.i80, %bb.cg ], [ %.sroa.8.i.sroa.0.0.copyload135.i95, %bb.ck ], [ %.sroa.8.i.sroa.0.0.copyload.i89, %bb.ci ]
  %.sroa.0.0.i84 = phi i64 [ %i.gg, %bb.cg ], [ %i.gl, %bb.ck ], [ %i.gi, %bb.ci ]
  store i64 %.sroa.0.0.i84, ptr %0, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.474.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i83, ptr %.sroa.474.0..sroa_idx.i85, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.575.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i86, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i75, i64 22, i1 false), !noalias !12876
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i97:                                    ; preds = %bb.cl, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12877
  %i.go = load i64, ptr %i.az, align 8, !range !328, !noalias !12870, !noundef !6
  %.not116.i98 = icmp eq i64 %i.go, -1
  br i1 %.not116.i98, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.i97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.cn:                                            ; preds = %.loopexit.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i77), !noalias !12877
  %i.gp = load i64, ptr %i.ay, align 8, !range !328, !noalias !12870, !noundef !6
  %.not117.i99 = icmp eq i64 %i.gp, -1
  br i1 %.not117.i99, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !12870
  br i1 %i.gk, label %._crit_edge.i106, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.cp
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !12860, !noalias !12862 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !12860, !noalias !12862, !nonnull !6
  br label %bb.cq

._crit_edge.i106:                                 ; preds = %bb.dt, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12877
  %i.gu = load i64, ptr %i.aw, align 8, !range !328, !noalias !12870, !noundef !6
  %.not118.i107 = icmp eq i64 %i.gu, -1
  br i1 %.not118.i107, label %bb.cu, label %bb.ct

bb.cq:                                            ; preds = %bb.dt, %.lr.ph.i100
  %.sroa.076.0150.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %i.gv, %bb.dt ] ; 5 uses
  %i.gv = add nuw nsw i64 %.sroa.076.0150.i101, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i76, i64 %.sroa.076.0150.i101
  %i.gx = load i8, ptr %i.gw, align 1, !range !3092, !noalias !12878, !noundef !6
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gz = icmp ult i64 %.sroa.076.0150.i101, %i.gr
  br i1 %i.gz, label %bb.dr, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i101, i64 noundef %i.gr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12878
  unreachable

bb.ct:                                            ; preds = %._crit_edge.i106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.cu:                                            ; preds = %._crit_edge.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !12870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i77), !noalias !12877
  %i.ha = load i64, ptr %i.av, align 8, !range !328, !noalias !12870, !noundef !6
  %.not119.i108 = icmp eq i64 %i.ha, -1
  br i1 %.not119.i108, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !12870
  br i1 %i.gk, label %._crit_edge154.i115, label %.lr.ph153.i109

.lr.ph153.i109:                                   ; preds = %bb.cw
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !12860, !noalias !12862 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !12860, !noalias !12862, !nonnull !6
  br label %bb.cx

._crit_edge154.i115:                              ; preds = %bb.dq, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !12870
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.hf, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12857
  %i.hg = load i64, ptr %i.at, align 8, !range !328, !noalias !12870, !noundef !6 ; 2 uses
  %.not120.i116 = icmp eq i64 %i.hg, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.hi = load i16, ptr %i.hh, align 8, !noalias !12870 ; 3 uses
  br i1 %.not120.i116, label %bb.db, label %bb.da

bb.cx:                                            ; preds = %bb.dq, %.lr.ph153.i109
  %.sroa.078.0151.i110 = phi i64 [ 0, %.lr.ph153.i109 ], [ %i.hj, %bb.dq ] ; 5 uses
  %i.hj = add nuw nsw i64 %.sroa.078.0151.i110, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val.i76, i64 %.sroa.078.0151.i110
  %i.hl = load i8, ptr %i.hk, align 1, !range !3092, !noalias !12881, !noundef !6
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hn = icmp ult i64 %.sroa.078.0151.i110, %i.hc
  br i1 %i.hn, label %bb.do, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i110, i64 noundef %i.hc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12881
  unreachable

bb.da:                                            ; preds = %._crit_edge154.i115
  %.sroa.585.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %.sroa.588.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i120, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i119, i64 22, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !12870
  store i64 %i.hg, ptr %0, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.487.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.hi, ptr %.sroa.487.0..sroa_idx.i121, align 8, !alias.scope !12857, !noalias !12876
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.db:                                            ; preds = %._crit_edge154.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !12870
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !range !19, !alias.scope !12860, !noalias !12862, !noundef !6
  %.not121.i122 = icmp eq i64 %i.hp, -1
  br i1 %.not121.i122, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12870
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.hi), !noalias !12857
  %i.hq = load i64, ptr %i.as, align 8, !range !328, !noalias !12870, !noundef !6 ; 2 uses
  %.not122.i123 = icmp eq i64 %i.hq, -1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.hs = load i16, ptr %i.hr, align 8, !noalias !12870 ; 2 uses
  br i1 %.not122.i123, label %bb.df, label %bb.de

bb.dd:                                            ; preds = %bb.df, %bb.db
  %.sroa.053.0.i129 = phi i16 [ %i.hs, %bb.df ], [ %i.hi, %bb.db ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !range !19, !alias.scope !12860, !noalias !12862, !noundef !6
  %.not123.i130 = icmp eq i64 %i.hu, -1
  br i1 %.not123.i130, label %bb.dh, label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %.sroa.594.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %.sroa.597.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i127, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i126, i64 22, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !12870
  store i64 %i.hq, ptr %0, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.496.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.hs, ptr %.sroa.496.0..sroa_idx.i128, align 8, !alias.scope !12857, !noalias !12876
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.df:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !12870
  br label %bb.dd

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !12870
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ht, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i129), !noalias !12857
  %i.hv = load i64, ptr %i.ar, align 8, !range !328, !noalias !12870, !noundef !6 ; 2 uses
  %.not124.i131 = icmp eq i64 %i.hv, -1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.hx = load i16, ptr %i.hw, align 8, !noalias !12870 ; 2 uses
  br i1 %.not124.i131, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.dd
  %.sroa.053.1.i137 = phi i16 [ %i.hx, %bb.dj ], [ %.sroa.053.0.i129, %bb.dd ]
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !range !19, !alias.scope !12860, !noalias !12862, !noundef !6
  %.not125.i138 = icmp eq i64 %i.hz, -1
  br i1 %.not125.i138, label %bb.dl, label %bb.dk

bb.di:                                            ; preds = %bb.dg
  %.sroa.5103.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %.sroa.5106.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i135, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i134, i64 22, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12870
  store i64 %i.hv, ptr %0, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.4105.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.hx, ptr %.sroa.4105.0..sroa_idx.i136, align 8, !alias.scope !12857, !noalias !12876
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.dj:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !12870
  br label %bb.dh

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !12870
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hy, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i137), !noalias !12857
  %i.ia = load i64, ptr %i.aq, align 8, !range !328, !noalias !12870, !noundef !6 ; 2 uses
  %.not126.i139 = icmp eq i64 %i.ia, -1
  br i1 %.not126.i139, label %bb.dn, label %bb.dm

bb.dl:                                            ; preds = %bb.dn, %bb.dh
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.dm:                                            ; preds = %bb.dk
  %.sroa.4111.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4111.0.copyload.i141 = load i16, ptr %.sroa.4111.0..sroa_idx.i140, align 8, !noalias !12870
  %.sroa.5112.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %.sroa.5115.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i143, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i142, i64 22, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12870
  store i64 %i.ia, ptr %0, align 8, !alias.scope !12857, !noalias !12876
  %.sroa.4114.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i141, ptr %.sroa.4114.0..sroa_idx.i144, align 8, !alias.scope !12857, !noalias !12876
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.dn:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12870
  br label %bb.dl

bb.do:                                            ; preds = %bb.cy
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.078.0151.i110
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.do, %bb.cx
  %.sroa.320.0.i111 = phi i64 [ 8, %bb.do ], [ 0, %bb.cx ]
  %.sroa.019.0.i112 = phi ptr [ %i.ib, %bb.do ], [ inttoptr (i64 1 to ptr), %bb.cx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i112, i64 noundef %.sroa.320.0.i111), !noalias !12877
  %i.ic = load i64, ptr %i.au, align 8, !range !328, !noalias !12870, !noundef !6
  %.not128.i113 = icmp eq i64 %i.ic, -1
  br i1 %.not128.i113, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.dq:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !12870
  %exitcond161.not.i114 = icmp eq i64 %i.hj, %.val131.i77
  br i1 %exitcond161.not.i114, label %._crit_edge154.i115, label %bb.cx

bb.dr:                                            ; preds = %bb.cr
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.sroa.076.0150.i101
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.dr, %bb.cq
  %.sroa.3.0.i102 = phi i64 [ 8, %bb.dr ], [ 0, %bb.cq ]
  %.sroa.012.0.i103 = phi ptr [ %i.id, %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !12870
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i103, i64 noundef %.sroa.3.0.i102), !noalias !12877
  %i.ie = load i64, ptr %i.ax, align 8, !range !328, !noalias !12870, !noundef !6
  %.not130.i104 = icmp eq i64 %i.ie, -1
  br i1 %.not130.i104, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !noalias !12876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12870
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.dt:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexxE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12870
  %exitcond.not.i105 = icmp eq i64 %i.gv, %.val131.i77
  br i1 %exitcond.not.i105, label %._crit_edge.i106, label %bb.cq

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i82, %bb.cm, %bb.co, %bb.ct, %bb.cv, %bb.da, %bb.de, %bb.di, %bb.dl, %bb.dm, %bb.dp, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i75)
  br label %bb.iq

bb.du:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12887)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i145)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i146 = load ptr, ptr %i.if, align 8, !alias.scope !12887, !noalias !12889 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i147 = load i64, ptr %i.ig, align 8, !alias.scope !12887, !noalias !12889 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12891
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12895
  %i.ih = load i64, ptr %i.ac, align 8, !range !328, !noalias !12891, !noundef !6 ; 2 uses
  %.not.i.i148 = icmp eq i64 %i.ih, -1
  br i1 %.not.i.i148, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.sroa.8134.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8134.0.copyload.i150 = load i16, ptr %.sroa.8134.0..sroa_idx.i149, align 8, !noalias !12896
  %.sroa.11.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i145, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i151, i64 22, i1 false), !noalias !12897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12891
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i152

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12898
  %i.ii = icmp sgt i64 %.val131.i147, -1
  call void @llvm.assume(i1 %i.ii)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i147), !noalias !12902
  %i.ij = load i64, ptr %i.ab, align 8, !range !328, !noalias !12898, !noundef !6 ; 2 uses
  %.not.i.i.i157 = icmp eq i64 %i.ij, -1
  br i1 %.not.i.i.i157, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.sroa.8.0..sroa_idx3.i.i158 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i159 = load i16, ptr %.sroa.8.0..sroa_idx3.i.i158, align 8, !noalias !12891
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i145, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i160, i64 22, i1 false), !noalias !12897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12898
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i152

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i146) ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i146, i64 %.val131.i147
  %i.il = icmp eq i64 %.val131.i147, 0            ; 3 uses
  br i1 %i.il, label %.loopexit.i167, label %.lr.ph.i.i.i161

.lr.ph.i.i.i161:                                  ; preds = %bb.dy, %bb.ea
  %.sroa.02.01.i.i.i162 = phi ptr [ %i.in, %bb.ea ], [ %.val.i146, %bb.dy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !12898
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i162, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12902
  %i.im = load i64, ptr %i.aa, align 8, !range !328, !noalias !12898, !noundef !6 ; 2 uses
  %.not4.i.i.i163 = icmp eq i64 %i.im, -1
  br i1 %.not4.i.i.i163, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i.i161
  %.sroa.8.0..sroa_idx4.i.i164 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i165 = load i16, ptr %.sroa.8.0..sroa_idx4.i.i164, align 8, !noalias !12891
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i145, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i166, i64 22, i1 false), !noalias !12897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12898
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i152

bb.ea:                                            ; preds = %.lr.ph.i.i.i161
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i162, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !12898
  %i.io = icmp eq ptr %i.in, %i.ik
  br i1 %i.io, label %.loopexit.i167, label %.lr.ph.i.i.i161

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i152: ; preds = %bb.dz, %bb.dx, %bb.dv
  %.sroa.8134.0.i153 = phi i16 [ %.sroa.8134.0.copyload.i150, %bb.dv ], [ %.sroa.8.i.sroa.0.0.copyload135.i165, %bb.dz ], [ %.sroa.8.i.sroa.0.0.copyload.i159, %bb.dx ]
  %.sroa.0.0.i154 = phi i64 [ %i.ih, %bb.dv ], [ %i.im, %bb.dz ], [ %i.ij, %bb.dx ]
  store i64 %.sroa.0.0.i154, ptr %0, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.474.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i153, ptr %.sroa.474.0..sroa_idx.i155, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.575.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i156, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i145, i64 22, i1 false), !noalias !12903
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i167:                                   ; preds = %bb.ea, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12904
  %i.ip = load i64, ptr %i.am, align 8, !range !328, !noalias !12897, !noundef !6
  %.not116.i168 = icmp eq i64 %i.ip, -1
  br i1 %.not116.i168, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %.loopexit.i167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ec:                                            ; preds = %.loopexit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i147), !noalias !12904
  %i.iq = load i64, ptr %i.al, align 8, !range !328, !noalias !12897, !noundef !6
  %.not117.i169 = icmp eq i64 %i.iq, -1
  br i1 %.not117.i169, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !12897
  br i1 %i.il, label %._crit_edge.i176, label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %bb.ee
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !12887, !noalias !12889 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !12887, !noalias !12889, !nonnull !6
  br label %bb.ef

._crit_edge.i176:                                 ; preds = %bb.fi, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12904
  %i.iv = load i64, ptr %i.aj, align 8, !range !328, !noalias !12897, !noundef !6
  %.not118.i177 = icmp eq i64 %i.iv, -1
  br i1 %.not118.i177, label %bb.ej, label %bb.ei

bb.ef:                                            ; preds = %bb.fi, %.lr.ph.i170
  %.sroa.076.0150.i171 = phi i64 [ 0, %.lr.ph.i170 ], [ %i.iw, %bb.fi ] ; 5 uses
  %i.iw = add nuw nsw i64 %.sroa.076.0150.i171, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i146, i64 %.sroa.076.0150.i171
  %i.iy = load i8, ptr %i.ix, align 1, !range !3092, !noalias !12905, !noundef !6
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ja = icmp ult i64 %.sroa.076.0150.i171, %i.is
  br i1 %i.ja, label %bb.fg, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i171, i64 noundef %i.is, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12905
  unreachable

bb.ei:                                            ; preds = %._crit_edge.i176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ej:                                            ; preds = %._crit_edge.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i147), !noalias !12904
  %i.jb = load i64, ptr %i.ai, align 8, !range !328, !noalias !12897, !noundef !6
  %.not119.i178 = icmp eq i64 %i.jb, -1
  br i1 %.not119.i178, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12897
  br i1 %i.il, label %._crit_edge154.i185, label %.lr.ph153.i179

.lr.ph153.i179:                                   ; preds = %bb.el
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !12887, !noalias !12889 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.jf = load ptr, ptr %i.je, align 8, !alias.scope !12887, !noalias !12889, !nonnull !6
  br label %bb.em

._crit_edge154.i185:                              ; preds = %bb.ff, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12897
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.jg, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12884
  %i.jh = load i64, ptr %i.ag, align 8, !range !328, !noalias !12897, !noundef !6 ; 2 uses
  %.not120.i186 = icmp eq i64 %i.jh, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.jj = load i16, ptr %i.ji, align 8, !noalias !12897 ; 3 uses
  br i1 %.not120.i186, label %bb.eq, label %bb.ep

bb.em:                                            ; preds = %bb.ff, %.lr.ph153.i179
  %.sroa.078.0151.i180 = phi i64 [ 0, %.lr.ph153.i179 ], [ %i.jk, %bb.ff ] ; 5 uses
  %i.jk = add nuw nsw i64 %.sroa.078.0151.i180, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i146, i64 %.sroa.078.0151.i180
  %i.jm = load i8, ptr %i.jl, align 1, !range !3092, !noalias !12908, !noundef !6
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jo = icmp ult i64 %.sroa.078.0151.i180, %i.jd
  br i1 %i.jo, label %bb.fd, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i180, i64 noundef %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12908
  unreachable

bb.ep:                                            ; preds = %._crit_edge154.i185
  %.sroa.585.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.ag, i64 10
  %.sroa.588.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i190, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i189, i64 22, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12897
  store i64 %i.jh, ptr %0, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.487.0..sroa_idx.i191 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.jj, ptr %.sroa.487.0..sroa_idx.i191, align 8, !alias.scope !12884, !noalias !12903
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.eq:                                            ; preds = %._crit_edge154.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12897
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !range !19, !alias.scope !12887, !noalias !12889, !noundef !6
  %.not121.i192 = icmp eq i64 %i.jq, -1
  br i1 %.not121.i192, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !12897
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jp, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.jj), !noalias !12884
  %i.jr = load i64, ptr %i.af, align 8, !range !328, !noalias !12897, !noundef !6 ; 2 uses
  %.not122.i193 = icmp eq i64 %i.jr, -1
  %i.js = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.jt = load i16, ptr %i.js, align 8, !noalias !12897 ; 2 uses
  br i1 %.not122.i193, label %bb.eu, label %bb.et

bb.es:                                            ; preds = %bb.eu, %bb.eq
  %.sroa.053.0.i199 = phi i16 [ %i.jt, %bb.eu ], [ %i.jj, %bb.eq ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !range !19, !alias.scope !12887, !noalias !12889, !noundef !6
  %.not123.i200 = icmp eq i64 %i.jv, -1
  br i1 %.not123.i200, label %bb.ew, label %bb.ev

bb.et:                                            ; preds = %bb.er
  %.sroa.594.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %.sroa.597.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i197, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i196, i64 22, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !12897
  store i64 %i.jr, ptr %0, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.496.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.jt, ptr %.sroa.496.0..sroa_idx.i198, align 8, !alias.scope !12884, !noalias !12903
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !12897
  br label %bb.es

bb.ev:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12897
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ju, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i199), !noalias !12884
  %i.jw = load i64, ptr %i.ae, align 8, !range !328, !noalias !12897, !noundef !6 ; 2 uses
  %.not124.i201 = icmp eq i64 %i.jw, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.jy = load i16, ptr %i.jx, align 8, !noalias !12897 ; 2 uses
  br i1 %.not124.i201, label %bb.ey, label %bb.ex

bb.ew:                                            ; preds = %bb.ey, %bb.es
  %.sroa.053.1.i207 = phi i16 [ %i.jy, %bb.ey ], [ %.sroa.053.0.i199, %bb.es ]
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !range !19, !alias.scope !12887, !noalias !12889, !noundef !6
  %.not125.i208 = icmp eq i64 %i.ka, -1
  br i1 %.not125.i208, label %bb.fa, label %bb.ez

bb.ex:                                            ; preds = %bb.ev
  %.sroa.5103.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %.sroa.5106.0..sroa_idx.i205 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i205, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i204, i64 22, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12897
  store i64 %i.jw, ptr %0, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.4105.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.jy, ptr %.sroa.4105.0..sroa_idx.i206, align 8, !alias.scope !12884, !noalias !12903
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !12897
  br label %bb.ew

bb.ez:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !12897
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jz, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i207), !noalias !12884
  %i.kb = load i64, ptr %i.ad, align 8, !range !328, !noalias !12897, !noundef !6 ; 2 uses
  %.not126.i209 = icmp eq i64 %i.kb, -1
  br i1 %.not126.i209, label %bb.fc, label %bb.fb

bb.fa:                                            ; preds = %bb.fc, %bb.ew
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.fb:                                            ; preds = %bb.ez
  %.sroa.4111.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4111.0.copyload.i211 = load i16, ptr %.sroa.4111.0..sroa_idx.i210, align 8, !noalias !12897
  %.sroa.5112.0..sroa_idx.i212 = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %.sroa.5115.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i213, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i212, i64 22, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !12897
  store i64 %i.kb, ptr %0, align 8, !alias.scope !12884, !noalias !12903
  %.sroa.4114.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i211, ptr %.sroa.4114.0..sroa_idx.i214, align 8, !alias.scope !12884, !noalias !12903
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.fc:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !12897
  br label %bb.fa

bb.fd:                                            ; preds = %bb.en
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %i.jf, i64 %.sroa.078.0151.i180
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.fd, %bb.em
  %.sroa.320.0.i181 = phi i64 [ 12, %bb.fd ], [ 0, %bb.em ]
  %.sroa.019.0.i182 = phi ptr [ %i.kc, %bb.fd ], [ inttoptr (i64 1 to ptr), %bb.em ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i182, i64 noundef %.sroa.320.0.i181), !noalias !12904
  %i.kd = load i64, ptr %i.ah, align 8, !range !328, !noalias !12897, !noundef !6
  %.not128.i183 = icmp eq i64 %i.kd, -1
  br i1 %.not128.i183, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ff:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !12897
  %exitcond161.not.i184 = icmp eq i64 %i.jk, %.val131.i147
  br i1 %exitcond161.not.i184, label %._crit_edge154.i185, label %bb.em

bb.fg:                                            ; preds = %bb.eg
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %i.iu, i64 %.sroa.076.0150.i171
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.fg, %bb.ef
  %.sroa.3.0.i172 = phi i64 [ 12, %bb.fg ], [ 0, %bb.ef ]
  %.sroa.012.0.i173 = phi ptr [ %i.ke, %bb.fg ], [ inttoptr (i64 1 to ptr), %bb.ef ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !12897
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i173, i64 noundef %.sroa.3.0.i172), !noalias !12904
  %i.kf = load i64, ptr %i.ak, align 8, !range !328, !noalias !12897, !noundef !6
  %.not130.i174 = icmp eq i64 %i.kf, -1
  br i1 %.not130.i174, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !12897
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.fi:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexNtNtBb_9data_type5Int96E9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !12897
  %exitcond.not.i175 = icmp eq i64 %i.iw, %.val131.i147
  br i1 %exitcond.not.i175, label %._crit_edge.i176, label %bb.ef

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i152, %bb.eb, %bb.ed, %bb.ei, %bb.ek, %bb.ep, %bb.et, %bb.ex, %bb.fa, %bb.fb, %bb.fe, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i145)
  br label %bb.iq

bb.fj:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12914)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i215)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i216 = load ptr, ptr %i.kg, align 8, !alias.scope !12914, !noalias !12916 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i217 = load i64, ptr %i.kh, align 8, !alias.scope !12914, !noalias !12916 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12918
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12922
  %i.ki = load i64, ptr %i.p, align 8, !range !328, !noalias !12918, !noundef !6 ; 2 uses
  %.not.i.i218 = icmp eq i64 %i.ki, -1
  br i1 %.not.i.i218, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.sroa.8134.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.8134.0.copyload.i220 = load i16, ptr %.sroa.8134.0..sroa_idx.i219, align 8, !noalias !12923
  %.sroa.11.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i215, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i221, i64 22, i1 false), !noalias !12924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12918
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i222

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12925
  %i.kj = icmp sgt i64 %.val131.i217, -1
  call void @llvm.assume(i1 %i.kj)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i217), !noalias !12929
  %i.kk = load i64, ptr %i.o, align 8, !range !328, !noalias !12925, !noundef !6 ; 2 uses
  %.not.i.i.i227 = icmp eq i64 %i.kk, -1
  br i1 %.not.i.i.i227, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.sroa.8.0..sroa_idx3.i.i228 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i229 = load i16, ptr %.sroa.8.0..sroa_idx3.i.i228, align 8, !noalias !12918
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i215, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i230, i64 22, i1 false), !noalias !12924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12925
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i222

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12925
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i216) ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i216, i64 %.val131.i217
  %i.km = icmp eq i64 %.val131.i217, 0            ; 3 uses
  br i1 %i.km, label %.loopexit.i237, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %bb.fn, %bb.fp
  %.sroa.02.01.i.i.i232 = phi ptr [ %i.ko, %bb.fp ], [ %.val.i216, %bb.fn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12925
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i232, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12929
  %i.kn = load i64, ptr %i.n, align 8, !range !328, !noalias !12925, !noundef !6 ; 2 uses
  %.not4.i.i.i233 = icmp eq i64 %i.kn, -1
  br i1 %.not4.i.i.i233, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph.i.i.i231
  %.sroa.8.0..sroa_idx4.i.i234 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i235 = load i16, ptr %.sroa.8.0..sroa_idx4.i.i234, align 8, !noalias !12918
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i215, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i236, i64 22, i1 false), !noalias !12924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12925
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i222

bb.fp:                                            ; preds = %.lr.ph.i.i.i231
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i232, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12925
  %i.kp = icmp eq ptr %i.ko, %i.kl
  br i1 %i.kp, label %.loopexit.i237, label %.lr.ph.i.i.i231

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i222: ; preds = %bb.fo, %bb.fm, %bb.fk
  %.sroa.8134.0.i223 = phi i16 [ %.sroa.8134.0.copyload.i220, %bb.fk ], [ %.sroa.8.i.sroa.0.0.copyload135.i235, %bb.fo ], [ %.sroa.8.i.sroa.0.0.copyload.i229, %bb.fm ]
  %.sroa.0.0.i224 = phi i64 [ %i.ki, %bb.fk ], [ %i.kn, %bb.fo ], [ %i.kk, %bb.fm ]
  store i64 %.sroa.0.0.i224, ptr %0, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.474.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i223, ptr %.sroa.474.0..sroa_idx.i225, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.575.0..sroa_idx.i226 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i226, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i215, i64 22, i1 false), !noalias !12930
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i237:                                   ; preds = %bb.fp, %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12931
  %i.kq = load i64, ptr %i.z, align 8, !range !328, !noalias !12924, !noundef !6
  %.not116.i238 = icmp eq i64 %i.kq, -1
  br i1 %.not116.i238, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.loopexit.i237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.fr:                                            ; preds = %.loopexit.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i217), !noalias !12931
  %i.kr = load i64, ptr %i.y, align 8, !range !328, !noalias !12924, !noundef !6
  %.not117.i239 = icmp eq i64 %i.kr, -1
  br i1 %.not117.i239, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12924
  br i1 %i.km, label %._crit_edge.i246, label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %bb.ft
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !12914, !noalias !12916 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !12914, !noalias !12916, !nonnull !6
  br label %bb.fu

._crit_edge.i246:                                 ; preds = %bb.gx, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12931
  %i.kw = load i64, ptr %i.w, align 8, !range !328, !noalias !12924, !noundef !6
  %.not118.i247 = icmp eq i64 %i.kw, -1
  br i1 %.not118.i247, label %bb.fy, label %bb.fx

bb.fu:                                            ; preds = %bb.gx, %.lr.ph.i240
  %.sroa.076.0150.i241 = phi i64 [ 0, %.lr.ph.i240 ], [ %i.kx, %bb.gx ] ; 5 uses
  %i.kx = add nuw nsw i64 %.sroa.076.0150.i241, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i216, i64 %.sroa.076.0150.i241
  %i.kz = load i8, ptr %i.ky, align 1, !range !3092, !noalias !12932, !noundef !6
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.lb = icmp ult i64 %.sroa.076.0150.i241, %i.kt
  br i1 %i.lb, label %bb.gv, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i241, i64 noundef %i.kt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12932
  unreachable

bb.fx:                                            ; preds = %._crit_edge.i246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.fy:                                            ; preds = %._crit_edge.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i217), !noalias !12931
  %i.lc = load i64, ptr %i.v, align 8, !range !328, !noalias !12924, !noundef !6
  %.not119.i248 = icmp eq i64 %i.lc, -1
  br i1 %.not119.i248, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12924
  br i1 %i.km, label %._crit_edge154.i255, label %.lr.ph153.i249

.lr.ph153.i249:                                   ; preds = %bb.ga
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !12914, !noalias !12916 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lg = load ptr, ptr %i.lf, align 8, !alias.scope !12914, !noalias !12916, !nonnull !6
  br label %bb.gb

._crit_edge154.i255:                              ; preds = %bb.gu, %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12924
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.lh, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12911
  %i.li = load i64, ptr %i.t, align 8, !range !328, !noalias !12924, !noundef !6 ; 2 uses
  %.not120.i256 = icmp eq i64 %i.li, -1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.lk = load i16, ptr %i.lj, align 8, !noalias !12924 ; 3 uses
  br i1 %.not120.i256, label %bb.gf, label %bb.ge

bb.gb:                                            ; preds = %bb.gu, %.lr.ph153.i249
  %.sroa.078.0151.i250 = phi i64 [ 0, %.lr.ph153.i249 ], [ %i.ll, %bb.gu ] ; 5 uses
  %i.ll = add nuw nsw i64 %.sroa.078.0151.i250, 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val.i216, i64 %.sroa.078.0151.i250
  %i.ln = load i8, ptr %i.lm, align 1, !range !3092, !noalias !12935, !noundef !6
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.lp = icmp ult i64 %.sroa.078.0151.i250, %i.le
  br i1 %i.lp, label %bb.gs, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i250, i64 noundef %i.le, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12935
  unreachable

bb.ge:                                            ; preds = %._crit_edge154.i255
  %.sroa.585.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %.sroa.588.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i260, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i259, i64 22, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12924
  store i64 %i.li, ptr %0, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.487.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.lk, ptr %.sroa.487.0..sroa_idx.i261, align 8, !alias.scope !12911, !noalias !12930
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gf:                                            ; preds = %._crit_edge154.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12924
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !range !19, !alias.scope !12914, !noalias !12916, !noundef !6
  %.not121.i262 = icmp eq i64 %i.lr, -1
  br i1 %.not121.i262, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12924
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lq, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.lk), !noalias !12911
  %i.ls = load i64, ptr %i.s, align 8, !range !328, !noalias !12924, !noundef !6 ; 2 uses
  %.not122.i263 = icmp eq i64 %i.ls, -1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.lu = load i16, ptr %i.lt, align 8, !noalias !12924 ; 2 uses
  br i1 %.not122.i263, label %bb.gj, label %bb.gi

bb.gh:                                            ; preds = %bb.gj, %bb.gf
  %.sroa.053.0.i269 = phi i16 [ %i.lu, %bb.gj ], [ %i.lk, %bb.gf ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !range !19, !alias.scope !12914, !noalias !12916, !noundef !6
  %.not123.i270 = icmp eq i64 %i.lw, -1
  br i1 %.not123.i270, label %bb.gl, label %bb.gk

bb.gi:                                            ; preds = %bb.gg
  %.sroa.594.0..sroa_idx.i266 = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %.sroa.597.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i267, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i266, i64 22, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12924
  store i64 %i.ls, ptr %0, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.496.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.lu, ptr %.sroa.496.0..sroa_idx.i268, align 8, !alias.scope !12911, !noalias !12930
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gj:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12924
  br label %bb.gh

bb.gk:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12924
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lv, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i269), !noalias !12911
  %i.lx = load i64, ptr %i.r, align 8, !range !328, !noalias !12924, !noundef !6 ; 2 uses
  %.not124.i271 = icmp eq i64 %i.lx, -1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.lz = load i16, ptr %i.ly, align 8, !noalias !12924 ; 2 uses
  br i1 %.not124.i271, label %bb.gn, label %bb.gm

bb.gl:                                            ; preds = %bb.gn, %bb.gh
  %.sroa.053.1.i277 = phi i16 [ %i.lz, %bb.gn ], [ %.sroa.053.0.i269, %bb.gh ]
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !range !19, !alias.scope !12914, !noalias !12916, !noundef !6
  %.not125.i278 = icmp eq i64 %i.mb, -1
  br i1 %.not125.i278, label %bb.gp, label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %.sroa.5103.0..sroa_idx.i274 = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %.sroa.5106.0..sroa_idx.i275 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i275, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i274, i64 22, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12924
  store i64 %i.lx, ptr %0, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.4105.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.lz, ptr %.sroa.4105.0..sroa_idx.i276, align 8, !alias.scope !12911, !noalias !12930
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gn:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12924
  br label %bb.gl

bb.go:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12924
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ma, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i277), !noalias !12911
  %i.mc = load i64, ptr %i.q, align 8, !range !328, !noalias !12924, !noundef !6 ; 2 uses
  %.not126.i279 = icmp eq i64 %i.mc, -1
  br i1 %.not126.i279, label %bb.gr, label %bb.gq

bb.gp:                                            ; preds = %bb.gr, %bb.gl
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gq:                                            ; preds = %bb.go
  %.sroa.4111.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4111.0.copyload.i281 = load i16, ptr %.sroa.4111.0..sroa_idx.i280, align 8, !noalias !12924
  %.sroa.5112.0..sroa_idx.i282 = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %.sroa.5115.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i283, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i282, i64 22, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12924
  store i64 %i.mc, ptr %0, align 8, !alias.scope !12911, !noalias !12930
  %.sroa.4114.0..sroa_idx.i284 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i281, ptr %.sroa.4114.0..sroa_idx.i284, align 8, !alias.scope !12911, !noalias !12930
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gr:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12924
  br label %bb.gp

bb.gs:                                            ; preds = %bb.gc
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %.sroa.078.0151.i250
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.gs, %bb.gb
  %.sroa.320.0.i251 = phi i64 [ 4, %bb.gs ], [ 0, %bb.gb ]
  %.sroa.019.0.i252 = phi ptr [ %i.md, %bb.gs ], [ inttoptr (i64 1 to ptr), %bb.gb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i252, i64 noundef %.sroa.320.0.i251), !noalias !12931
  %i.me = load i64, ptr %i.u, align 8, !range !328, !noalias !12924, !noundef !6
  %.not128.i253 = icmp eq i64 %i.me, -1
  br i1 %.not128.i253, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gu:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12924
  %exitcond161.not.i254 = icmp eq i64 %i.ll, %.val131.i217
  br i1 %exitcond161.not.i254, label %._crit_edge154.i255, label %bb.gb

bb.gv:                                            ; preds = %bb.fv
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.sroa.076.0150.i241
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.gv, %bb.fu
  %.sroa.3.0.i242 = phi i64 [ 4, %bb.gv ], [ 0, %bb.fu ]
  %.sroa.012.0.i243 = phi ptr [ %i.mf, %bb.gv ], [ inttoptr (i64 1 to ptr), %bb.fu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12924
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i243, i64 noundef %.sroa.3.0.i242), !noalias !12931
  %i.mg = load i64, ptr %i.x, align 8, !range !328, !noalias !12924, !noundef !6
  %.not130.i244 = icmp eq i64 %i.mg, -1
  br i1 %.not130.i244, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !12930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12924
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.gx:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexfE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12924
  %exitcond.not.i245 = icmp eq i64 %i.kx, %.val131.i217
  br i1 %exitcond.not.i245, label %._crit_edge.i246, label %bb.fu

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i222, %bb.fq, %bb.fs, %bb.fx, %bb.fz, %bb.ge, %bb.gi, %bb.gm, %bb.gp, %bb.gq, %bb.gt, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i215)
  br label %bb.iq

bb.gy:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12941)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.5.i285)
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i286 = load ptr, ptr %i.mh, align 8, !alias.scope !12941, !noalias !12943 ; 5 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val131.i287 = load i64, ptr %i.mi, align 8, !alias.scope !12941, !noalias !12943 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12945
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 1, i16 noundef 0), !noalias !12949
  %i.mj = load i64, ptr %i.c, align 8, !range !328, !noalias !12945, !noundef !6 ; 2 uses
  %.not.i.i288 = icmp eq i64 %i.mj, -1
  br i1 %.not.i.i288, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %.sroa.8134.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8134.0.copyload.i290 = load i16, ptr %.sroa.8134.0..sroa_idx.i289, align 8, !noalias !12950
  %.sroa.11.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i285, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.11.0..sroa_idx.i291, i64 22, i1 false), !noalias !12951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12945
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i292

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12952
  %i.mk = icmp sgt i64 %.val131.i287, -1
  call void @llvm.assume(i1 %i.mk)
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 2, i64 noundef %.val131.i287), !noalias !12956
  %i.ml = load i64, ptr %i.b, align 8, !range !328, !noalias !12952, !noundef !6 ; 2 uses
  %.not.i.i.i297 = icmp eq i64 %i.ml, -1
  br i1 %.not.i.i.i297, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %.sroa.8.0..sroa_idx3.i.i298 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.i.sroa.0.0.copyload.i299 = load i16, ptr %.sroa.8.0..sroa_idx3.i.i298, align 8, !noalias !12945
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i285, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx3.i.sroa_idx.i300, i64 22, i1 false), !noalias !12951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12952
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i292

bb.hc:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12952
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i286) ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i286, i64 %.val131.i287
  %i.mn = icmp eq i64 %.val131.i287, 0            ; 3 uses
  br i1 %i.mn, label %.loopexit.i307, label %.lr.ph.i.i.i301

.lr.ph.i.i.i301:                                  ; preds = %bb.hc, %bb.he
  %.sroa.02.01.i.i.i302 = phi ptr [ %i.mp, %bb.he ], [ %.val.i286, %bb.hc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12952
  call void @_RINvXso_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftbNtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %.sroa.02.01.i.i.i302, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !noalias !12956
  %i.mo = load i64, ptr %i.a, align 8, !range !328, !noalias !12952, !noundef !6 ; 2 uses
  %.not4.i.i.i303 = icmp eq i64 %i.mo, -1
  br i1 %.not4.i.i.i303, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i.i.i301
  %.sroa.8.0..sroa_idx4.i.i304 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.i.sroa.0.0.copyload135.i305 = load i16, ptr %.sroa.8.0..sroa_idx4.i.i304, align 8, !noalias !12945
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i306 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i285, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx4.i.sroa_idx.i306, i64 22, i1 false), !noalias !12951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12952
  br label %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i292

bb.he:                                            ; preds = %.lr.ph.i.i.i301
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i302, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12952
  %i.mq = icmp eq ptr %i.mp, %i.mm
  br i1 %i.mq, label %.loopexit.i307, label %.lr.ph.i.i.i301

_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i292: ; preds = %bb.hd, %bb.hb, %bb.gz
  %.sroa.8134.0.i293 = phi i16 [ %.sroa.8134.0.copyload.i290, %bb.gz ], [ %.sroa.8.i.sroa.0.0.copyload135.i305, %bb.hd ], [ %.sroa.8.i.sroa.0.0.copyload.i299, %bb.hb ]
  %.sroa.0.0.i294 = phi i64 [ %i.mj, %bb.gz ], [ %i.mo, %bb.hd ], [ %i.ml, %bb.hb ]
  store i64 %.sroa.0.0.i294, ptr %0, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.474.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.8134.0.i293, ptr %.sroa.474.0..sroa_idx.i295, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.575.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.575.0..sroa_idx.i296, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.8.i.sroa.5.i285, i64 22, i1 false), !noalias !12957
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

.loopexit.i307:                                   ; preds = %bb.he, %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 2, i16 noundef 1), !noalias !12958
  %i.mr = load i64, ptr %i.m, align 8, !range !328, !noalias !12951, !noundef !6
  %.not116.i308 = icmp eq i64 %i.mr, -1
  br i1 %.not116.i308, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.loopexit.i307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hg:                                            ; preds = %.loopexit.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i287), !noalias !12958
  %i.ms = load i64, ptr %i.l, align 8, !range !328, !noalias !12951, !noundef !6
  %.not117.i309 = icmp eq i64 %i.ms, -1
  br i1 %.not117.i309, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12951
  br i1 %i.mn, label %._crit_edge.i316, label %.lr.ph.i310

.lr.ph.i310:                                      ; preds = %bb.hi
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !12941, !noalias !12943 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !12941, !noalias !12943, !nonnull !6
  br label %bb.hj

._crit_edge.i316:                                 ; preds = %bb.im, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE17write_field_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 9, i16 noundef 3, i16 noundef 2), !noalias !12958
  %i.mx = load i64, ptr %i.j, align 8, !range !328, !noalias !12951, !noundef !6
  %.not118.i317 = icmp eq i64 %i.mx, -1
  br i1 %.not118.i317, label %bb.hn, label %bb.hm

bb.hj:                                            ; preds = %bb.im, %.lr.ph.i310
  %.sroa.076.0150.i311 = phi i64 [ 0, %.lr.ph.i310 ], [ %i.my, %bb.im ] ; 5 uses
  %i.my = add nuw nsw i64 %.sroa.076.0150.i311, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i286, i64 %.sroa.076.0150.i311
  %i.na = load i8, ptr %i.mz, align 1, !range !3092, !noalias !12959, !noundef !6
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.nc = icmp ult i64 %.sroa.076.0150.i311, %i.mu
  br i1 %i.nc, label %bb.ik, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.076.0150.i311, i64 noundef %i.mu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24, !noalias !12959
  unreachable

bb.hm:                                            ; preds = %._crit_edge.i316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hn:                                            ; preds = %._crit_edge.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE16write_list_beginCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 8, i64 noundef %.val131.i287), !noalias !12958
  %i.nd = load i64, ptr %i.i, align 8, !range !328, !noalias !12951, !noundef !6
  %.not119.i318 = icmp eq i64 %i.nd, -1
  br i1 %.not119.i318, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12951
  br i1 %i.mn, label %._crit_edge154.i325, label %.lr.ph153.i319

.lr.ph153.i319:                                   ; preds = %bb.hp
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.nf = load i64, ptr %i.ne, align 8, !alias.scope !12941, !noalias !12943 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !12941, !noalias !12943, !nonnull !6
  br label %bb.hq

._crit_edge154.i325:                              ; preds = %bb.ij, %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12951
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_RINvXs2W_NtCs7Ez7UXBn1VF_7parquet5basicNtB7_13BoundaryOrderNtNtB9_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ni, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !12938
  %i.nj = load i64, ptr %i.g, align 8, !range !328, !noalias !12951, !noundef !6 ; 2 uses
  %.not120.i326 = icmp eq i64 %i.nj, -1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nl = load i16, ptr %i.nk, align 8, !noalias !12951 ; 3 uses
  br i1 %.not120.i326, label %bb.hu, label %bb.ht

bb.hq:                                            ; preds = %bb.ij, %.lr.ph153.i319
  %.sroa.078.0151.i320 = phi i64 [ 0, %.lr.ph153.i319 ], [ %i.nm, %bb.ij ] ; 5 uses
  %i.nm = add nuw nsw i64 %.sroa.078.0151.i320, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.val.i286, i64 %.sroa.078.0151.i320
  %i.no = load i8, ptr %i.nn, align 1, !range !3092, !noalias !12962, !noundef !6
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.nq = icmp ult i64 %.sroa.078.0151.i320, %i.nf
  br i1 %i.nq, label %bb.ih, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 9223372036854775807) %.sroa.078.0151.i320, i64 noundef %i.nf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !12962
  unreachable

bb.ht:                                            ; preds = %._crit_edge154.i325
  %.sroa.585.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %.sroa.588.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.588.0..sroa_idx.i330, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.585.0..sroa_idx.i329, i64 22, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12951
  store i64 %i.nj, ptr %0, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.487.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.nl, ptr %.sroa.487.0..sroa_idx.i331, align 8, !alias.scope !12938, !noalias !12957
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hu:                                            ; preds = %._crit_edge154.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12951
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !range !19, !alias.scope !12941, !noalias !12943, !noundef !6
  %.not121.i332 = icmp eq i64 %i.ns, -1
  br i1 %.not121.i332, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12951
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nr, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 5, i16 noundef %i.nl), !noalias !12938
  %i.nt = load i64, ptr %i.f, align 8, !range !328, !noalias !12951, !noundef !6 ; 2 uses
  %.not122.i333 = icmp eq i64 %i.nt, -1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.nv = load i16, ptr %i.nu, align 8, !noalias !12951 ; 2 uses
  br i1 %.not122.i333, label %bb.hy, label %bb.hx

bb.hw:                                            ; preds = %bb.hy, %bb.hu
  %.sroa.053.0.i339 = phi i16 [ %i.nv, %bb.hy ], [ %i.nl, %bb.hu ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !range !19, !alias.scope !12941, !noalias !12943, !noundef !6
  %.not123.i340 = icmp eq i64 %i.nx, -1
  br i1 %.not123.i340, label %bb.ia, label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.sroa.594.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.sroa.597.0..sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.597.0..sroa_idx.i337, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.594.0..sroa_idx.i336, i64 22, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12951
  store i64 %i.nt, ptr %0, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.496.0..sroa_idx.i338 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.nv, ptr %.sroa.496.0..sroa_idx.i338, align 8, !alias.scope !12938, !noalias !12957
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.hy:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12951
  br label %bb.hw

bb.hz:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12951
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nw, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 6, i16 noundef %.sroa.053.0.i339), !noalias !12938
  %i.ny = load i64, ptr %i.e, align 8, !range !328, !noalias !12951, !noundef !6 ; 2 uses
  %.not124.i341 = icmp eq i64 %i.ny, -1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.oa = load i16, ptr %i.nz, align 8, !noalias !12951 ; 2 uses
  br i1 %.not124.i341, label %bb.ic, label %bb.ib

bb.ia:                                            ; preds = %bb.ic, %bb.hw
  %.sroa.053.1.i347 = phi i16 [ %i.oa, %bb.ic ], [ %.sroa.053.0.i339, %bb.hw ]
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !range !19, !alias.scope !12941, !noalias !12943, !noundef !6
  %.not125.i348 = icmp eq i64 %i.oc, -1
  br i1 %.not125.i348, label %bb.ie, label %bb.id

bb.ib:                                            ; preds = %bb.hz
  %.sroa.5103.0..sroa_idx.i344 = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.5106.0..sroa_idx.i345 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5106.0..sroa_idx.i345, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5103.0..sroa_idx.i344, i64 22, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12951
  store i64 %i.ny, ptr %0, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.4105.0..sroa_idx.i346 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.oa, ptr %.sroa.4105.0..sroa_idx.i346, align 8, !alias.scope !12938, !noalias !12957
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ic:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12951
  br label %bb.ia

bb.id:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12951
  call void @_RINvXsB_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecxENtB6_16WriteThriftField18write_thrift_fieldQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ob, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 7, i16 noundef %.sroa.053.1.i347), !noalias !12938
  %i.od = load i64, ptr %i.d, align 8, !range !328, !noalias !12951, !noundef !6 ; 2 uses
  %.not126.i349 = icmp eq i64 %i.od, -1
  br i1 %.not126.i349, label %bb.ig, label %bb.if

bb.ie:                                            ; preds = %bb.ig, %bb.ia
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE10write_byteCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.if:                                            ; preds = %bb.id
  %.sroa.4111.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4111.0.copyload.i351 = load i16, ptr %.sroa.4111.0..sroa_idx.i350, align 8, !noalias !12951
  %.sroa.5112.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.5115.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5115.0..sroa_idx.i353, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5112.0..sroa_idx.i352, i64 22, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12951
  store i64 %i.od, ptr %0, align 8, !alias.scope !12938, !noalias !12957
  %.sroa.4114.0..sroa_idx.i354 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.4111.0.copyload.i351, ptr %.sroa.4114.0..sroa_idx.i354, align 8, !alias.scope !12938, !noalias !12957
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ig:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12951
  br label %bb.ie

bb.ih:                                            ; preds = %bb.hr
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.sroa.078.0151.i320
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.ih, %bb.hq
  %.sroa.320.0.i321 = phi i64 [ 8, %bb.ih ], [ 0, %bb.hq ]
  %.sroa.019.0.i322 = phi ptr [ %i.oe, %bb.ih ], [ inttoptr (i64 1 to ptr), %bb.hq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i322, i64 noundef %.sroa.320.0.i321), !noalias !12958
  %i.of = load i64, ptr %i.h, align 8, !range !328, !noalias !12951, !noundef !6
  %.not128.i323 = icmp eq i64 %i.of, -1
  br i1 %.not128.i323, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ij:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9max_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12951
  %exitcond161.not.i324 = icmp eq i64 %i.nm, %.val131.i287
  br i1 %exitcond161.not.i324, label %._crit_edge154.i325, label %bb.hq

bb.ik:                                            ; preds = %bb.hk
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %.sroa.076.0150.i311
  br label %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i

_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.ik, %bb.hj
  %.sroa.3.0.i312 = phi i64 [ 8, %bb.ik ], [ 0, %bb.hj ]
  %.sroa.012.0.i313 = phi ptr [ %i.og, %bb.ik ], [ inttoptr (i64 1 to ptr), %bb.hj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12951
  call void @_RNvMsm_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEE11write_bytesCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i313, i64 noundef %.sroa.3.0.i312), !noalias !12958
  %i.oh = load i64, ptr %i.k, align 8, !range !328, !noalias !12951, !noundef !6
  %.not130.i314 = icmp eq i64 %i.oh, -1
  br i1 %.not130.i314, label %bb.im, label %bb.il

bb.il:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !12957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12951
  br label %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.im:                                            ; preds = %_RNvMs0_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB5_20PrimitiveColumnIndexdE9min_valueCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12951
  %exitcond.not.i315 = icmp eq i64 %i.my, %.val131.i287
  br i1 %exitcond.not.i315, label %._crit_edge.i316, label %bb.hj

_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXsn_NtCs7Ez7UXBn1VF_7parquet14parquet_thriftINtNtCscdodAO9FK5_5alloc3vec3VecbENtB6_11WriteThrift12write_thriftQQINtNtNtB8_4file6writer12TrackedWriteQIBL_hEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i292, %bb.hf, %bb.hh, %bb.hm, %bb.ho, %bb.ht, %bb.hx, %bb.ib, %bb.ie, %bb.if, %bb.ii, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.5.i285)
  br label %bb.iq

bb.in:                                            ; preds = %bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_RINvXs5_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexNtB6_20ByteArrayColumnIndexNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.oi, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.iq

bb.io:                                            ; preds = %bb.a
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_RINvXs5_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexNtB6_20ByteArrayColumnIndexNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.oj, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %bb.iq

bb.ip:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, i64 noundef 27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ok = load i64, ptr %i.ca, align 8, !range !190, !noundef !6
  %i.ol = trunc nuw i64 %i.ok to i1
  %i.om = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.on = load i64, ptr %i.om, align 8, !range !12965, !noundef !6 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  br i1 %i.ol, label %bb.ir, label %bb.is, !prof !8

bb.iq:                                            ; preds = %bb.is, %bb.io, %bb.in, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexdENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexfENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexNtNtBc_9data_type5Int96ENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexxENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexlENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs2_NtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_indexINtB6_20PrimitiveColumnIndexbENtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server.exit
  ret void

bb.ir:                                            ; preds = %bb.ip
  %i.op = load i64, ptr %i.oo, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.on, i64 %i.op) #24
  unreachable

bb.is:                                            ; preds = %bb.ip
  %i.oq = load ptr, ptr %i.oo, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.or = icmp samesign ugt i64 %i.on, 26
  tail call void @llvm.assume(i1 %i.or)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
end_hunk_0
