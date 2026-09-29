Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.03?download=true
inline.NumInlined: 6659
inline.NumDeleted: 2067
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata13SortingColumnENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.e = load i64, ptr %i.b, align 8, !noundef !77 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14051)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14052
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !14052
  %i.f = load i64, ptr %i.a, align 8, !range !91, !noalias !14052, !noundef !77
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !175, !noalias !14052, !noundef !77 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !14052
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24, !noalias !14052
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !14052, !nonnull !77, !noundef !77 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14052
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata13SortingColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.p = and i64 %i.e, 2305843009213693951
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = and i64 %i.s, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 4 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.d, i64 %i.w
  %i.y = sub i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !alias.scope !14051, !noalias !14053
  %wide.load2 = load <2 x i64>, ptr %i.aa, align 4, !alias.scope !14051, !noalias !14053
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> %wide.load, ptr %i.ab, align 4, !noalias !14052
  store <2 x i64> %wide.load2, ptr %i.ac, align 4, !noalias !14052
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %.lr.ph.i.preheader5, label %vector.body, !llvm.loop !14049

.lr.ph.i.preheader5:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.020.029.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.x, %vector.body ]
  %.sroa.7.028.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.027.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %bb.c
  %.sroa.020.029.i = phi ptr [ %i.ah, %bb.c ], [ %.sroa.020.029.i.ph, %.lr.ph.i.preheader5 ] ; 3 uses
  %.sroa.7.028.i = phi i64 [ %i.ag, %bb.c ], [ %.sroa.7.028.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %.sroa.10.027.i = phi i64 [ %i.af, %bb.c ], [ %.sroa.10.027.i.ph, %.lr.ph.i.preheader5 ]
  %i.ae = icmp eq ptr %.sroa.020.029.i, %i.n
  br i1 %i.ae, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata13SortingColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = add i64 %.sroa.10.027.i, -1             ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.028.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  %.val19.i = load i64, ptr %.sroa.020.029.i, align 4, !alias.scope !14051, !noalias !14053
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.7.028.i
  store i64 %.val19.i, ptr %i.ai, align 4, !noalias !14052
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata13SortingColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph.i, !llvm.loop !14050

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata13SortingColumnNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !14051
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14051
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14051
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata17PageEncodingStatsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !77, !noundef !77 ; 4 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !77 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14060
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !noalias !14060
  %i.f = load i64, ptr %i.a, align 8, !range !91, !noalias !14060, !noundef !77
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !175, !noalias !14060, !noundef !77 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !14060
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24, !noalias !14060
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !14060, !nonnull !77, !noundef !77 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14060
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.p = and i64 %i.e, 2305843009213693951
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = and i64 %i.s, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 4 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.d, i64 %i.w
  %i.y = sub i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !alias.scope !14059, !noalias !14061
  %wide.load2 = load <2 x i64>, ptr %i.aa, align 4, !alias.scope !14059, !noalias !14061
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> %wide.load, ptr %i.ab, align 4, !noalias !14060
  store <2 x i64> %wide.load2, ptr %i.ac, align 4, !noalias !14060
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %.lr.ph.i.preheader5, label %vector.body, !llvm.loop !14057

.lr.ph.i.preheader5:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.020.029.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.x, %vector.body ]
  %.sroa.7.028.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.027.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.y, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %bb.c
  %.sroa.020.029.i = phi ptr [ %i.ah, %bb.c ], [ %.sroa.020.029.i.ph, %.lr.ph.i.preheader5 ] ; 3 uses
  %.sroa.7.028.i = phi i64 [ %i.ag, %bb.c ], [ %.sroa.7.028.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %.sroa.10.027.i = phi i64 [ %i.af, %bb.c ], [ %.sroa.10.027.i.ph, %.lr.ph.i.preheader5 ]
  %i.ae = icmp eq ptr %.sroa.020.029.i, %i.n
  br i1 %i.ae, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = add i64 %.sroa.10.027.i, -1             ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.7.028.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  %.val19.i = load i64, ptr %.sroa.020.029.i, align 4, !alias.scope !14059, !noalias !14061
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.7.028.i
  store i64 %.val19.i, ptr %i.ai, align 4, !noalias !14060
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph.i, !llvm.loop !14058

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata17PageEncodingStatsNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !14059
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14059
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14059
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.sroa.4.i22.i.sroa.8.i.i = alloca [12 x i8], align 4 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.5.sroa.4.i.i.sroa.8.i.i = alloca [12 x i8], align 4 ; 4 uses
  %.sroa.36.sroa.14.sroa.11.i.i = alloca i8, align 1 ; 11 uses
  %.sroa.60.sroa.0.sroa.14.i.i = alloca i8, align 1 ; 10 uses
  %.sroa.87.i.i = alloca i8, align 1              ; 8 uses
  %.sroa.90.i.i = alloca [12 x i8], align 4       ; 5 uses
  %.sroa.104.i.i = alloca i8, align 1             ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [128 x i8], align 8               ; 33 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.15103.i = alloca [128 x i8], align 8     ; 4 uses
  %.sroa.16104.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.17105.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.21109.i = alloca [24 x i8], align 8      ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !77, !noundef !77 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !noundef !77 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14174
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef range(i64 0, 22171567396285519) %i.t, i1 noundef zeroext false, i64 noundef 8, i64 noundef 416), !noalias !14174
  %i.u = load i64, ptr %i.o, align 8, !range !91, !noalias !14174, !noundef !77
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !175, !noalias !14174, !noundef !77 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br i1 %i.v, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !79

bb.b:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.y, align 8, !noalias !14174
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #24, !noalias !14174
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.a
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !14174, !nonnull !77, !noundef !77 ; 2 uses
  %i.ab = icmp ule i64 %i.t, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14174
  store i64 %i.x, ptr %i.p, align 8, !noalias !14174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !14174
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !noalias !14174
  %i.ae = getelementptr inbounds nuw [416 x i8], ptr %i.s, i64 %i.t
  %i.af = icmp eq i64 %i.x, 0
  br i1 %i.af, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.613.8..sroa_idx.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.8..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.sroa.4.i22.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %.sroa.5.sroa.4.i22.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.613.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.sroa.4.i.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.5.sroa.4.i.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.36.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %.sroa.36.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 45
  %.sroa.36.0..sroa_idx.sroa_idx.sroa_idx153.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 46
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.52.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %.sroa.60.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.60.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 59
  %.sroa.60.0..sroa_idx.sroa_idx91.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 73
  %.sroa.84.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 74
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 75
  %.sroa.90.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %.sroa.9086.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.92.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %.sroa.94.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.sroa.96.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %.sroa.98.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %.sroa.100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 121
  %.sroa.102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 122
  %.sroa.104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 123
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.cx, %.lr.ph.i
  %.sroa.013.0213.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.au, %bb.cx ] ; 149 uses
  %.sroa.7.0212.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %bb.cx ] ; 3 uses
  %.sroa.10.0211.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.as, %bb.cx ]
  %i.as = add i64 %.sroa.10.0211.i, -1            ; 2 uses
  %i.at = icmp eq ptr %.sroa.013.0213.i, %i.ae
  br i1 %i.at, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 416
  %i.av = add nuw nsw i64 %.sroa.7.0212.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14175
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 352 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !14175, !nonnull !77, !noundef !77
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8, !noalias !14175
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.l, %.body.i.i, %bb.g
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %.pn.pn.pn.pn.i.i, %bb.l ], [ %.pn.pn.pn.pn.i.i, %.body.i.i ]
  %i.ba = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !14176
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.f, label %bb.cz

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.cz unwind label %bb.cw, !noalias !14175

bb.g:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.aw, align 8, !noalias !14175, !nonnull !77, !noundef !77 ; 3 uses
  store ptr %i.bd, ptr %i.n, align 8, !noalias !14175
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 408
  %.val.i.i = load i32, ptr %i.be, align 8, !noalias !14175, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14175
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 224 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !80, !noalias !14175, !noundef !77
  %.not.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14175
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.k unwind label %bb.g, !noalias !14175

bb.j:                                             ; preds = %bb.h
  store i64 -1, ptr %i.m, align 8, !noalias !14175
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14175
  br label %bb.n

.body.i.i:                                        ; preds = %.body46.i.i, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.m
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %.body46.i.i ], [ %i.bj, %bb.m ], [ %i.jl, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.lj, %bb.ay ], [ %i.lj, %bb.ax ] ; 2 uses
  %i.bh = load i64, ptr %i.m, align 8, !range !80, !alias.scope !14177, !noalias !14175, !noundef !77
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.cw, !noalias !14175

bb.m:                                             ; preds = %bb.as, %bb.ae
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 360
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !noalias !14175
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 344
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !noalias !14175
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 376
  %i.bp = load <2 x i64>, ptr %i.bo, align 8, !noalias !14175
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 392
  %i.br = load i64, ptr %i.bq, align 8, !noalias !14175, !noundef !77
  %i.bs = load i64, ptr %.sroa.013.0213.i, align 8, !range !91, !noalias !14175, !noundef !77
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !14175, !noundef !77
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.5.0.i.i = phi i64 [ %i.bv, %bb.o ], [ undef, %bb.n ]
  %.sroa.0.0.i12.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !91, !noalias !14175, !noundef !77
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !14175, !noundef !77
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.52.0.i.i = phi i64 [ %i.ca, %bb.q ], [ undef, %bb.p ]
  %.sroa.01.0.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14175
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 96
  %i.cc = load i64, ptr %i.cb, align 8, !range !97, !noalias !14175, !noundef !77 ; 3 uses
  %.not23.i.i = icmp eq i64 %i.cc, -1
  br i1 %.not23.i.i, label %bb.be, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.sroa.14.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.60.sroa.0.sroa.14.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.87.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.90.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.104.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !14178)
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
  %i.cf = load i8, ptr %i.ce, align 4, !range !178, !alias.scope !14179, !noalias !14180, !noundef !77
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.ch = load i8, ptr %i.cg, align 1, !range !178, !alias.scope !14179, !noalias !14180, !noundef !77
  %i.ci = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14179, !noalias !14180, !noundef !77 ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !14179, !noalias !14180
  %.sroa.5.0.i.i.i.i = select i1 %i.cj, i64 %i.cl, i64 undef
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.cn = load i64, ptr %i.cm, align 8, !range !91, !alias.scope !14179, !noalias !14180, !noundef !77 ; 2 uses
  %i.co = trunc nuw i64 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !14179, !noalias !14180
  %.sroa.54.0.i.i.i.i = select i1 %i.co, i64 %i.cq, i64 undef
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.cs = load i8, ptr %i.cr, align 8, !range !118, !alias.scope !14179, !noalias !14180, !noundef !77
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 137
  %i.cu = load i8, ptr %i.ct, align 1, !range !118, !alias.scope !14179, !noalias !14180, !noundef !77
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 138
  %i.cw = load i8, ptr %i.cv, align 2, !range !118, !alias.scope !14179, !noalias !14180, !noundef !77
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 139
  %i.cy = load i8, ptr %i.cx, align 1, !range !118, !alias.scope !14179, !noalias !14180, !noundef !77
  br label %bb.bg

bb.u:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.da = load i32, ptr %i.cz, align 8, !range !14181, !alias.scope !14182, !noalias !14183, !noundef !77 ; 2 uses
  %i.db = trunc nuw i32 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !14182, !noalias !14183
  %.sroa.5.0.i1.i.i.i = select i1 %i.db, i32 %i.dd, i32 undef ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.df = load i32, ptr %i.de, align 8, !range !14181, !alias.scope !14182, !noalias !14183, !noundef !77 ; 2 uses
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !14182, !noalias !14183
  %.sroa.52.0.i.i.i.i = select i1 %i.dg, i32 %i.di, i32 undef
  %i.dj = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14182, !noalias !14183, !noundef !77 ; 2 uses
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !14182, !noalias !14183
  %.sroa.54.0.i2.i.i.i = select i1 %i.dk, i64 %i.dm, i64 undef
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.do = load i64, ptr %i.dn, align 8, !range !91, !alias.scope !14182, !noalias !14183, !noundef !77 ; 2 uses
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !14182, !noalias !14183
  %.sroa.56.0.i.i.i.i = select i1 %i.dp, i64 %i.dr, i64 undef
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.dt = load i16, ptr %i.ds, align 8, !alias.scope !14182, !noalias !14183
  %i.du = zext i16 %i.dt to i24
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 154
  %i.dw = load i8, ptr %i.dv, align 2, !range !118, !alias.scope !14182, !noalias !14183, !noundef !77
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.dy = load i8, ptr %i.dx, align 1, !range !118, !alias.scope !14182, !noalias !14183, !noundef !77
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc184.i.i = trunc nuw nsw i32 %i.da to i8
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc168.i.i = trunc i32 %.sroa.5.0.i1.i.i.i to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift173.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 8
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc174.i.i = trunc i32 %.sroa.36.sroa.14.sroa.11.0.extract.shift173.i.i to i8
  store i8 %.sroa.36.sroa.14.sroa.11.0.extract.trunc174.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !alias.scope !14178, !noalias !14175
  %.sroa.36.sroa.14.sroa.16.0.extract.shift179.i.i = lshr i32 %.sroa.5.0.i1.i.i.i, 16
  %.sroa.36.sroa.14.sroa.16.0.extract.trunc180.i.i = trunc nuw i32 %.sroa.36.sroa.14.sroa.16.0.extract.shift179.i.i to i16
  %.sroa.60.sroa.0.sroa.0.2.insert.ext122.i.i = zext nneg i8 %i.dw to i24
  %.sroa.60.sroa.0.sroa.0.2.insert.shift123.i.i = shl nuw nsw i24 %.sroa.60.sroa.0.sroa.0.2.insert.ext122.i.i, 16
  %.sroa.60.sroa.0.sroa.0.2.insert.insert125.i.i = or disjoint i24 %.sroa.60.sroa.0.sroa.0.2.insert.shift123.i.i, %i.du
  br label %bb.bg

bb.v:                                             ; preds = %bb.s
  %i.dz = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14184, !noalias !14185, !noundef !77 ; 2 uses
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !14184, !noalias !14185
  %.sroa.5.0.i3.i.i.i = select i1 %i.ea, i64 %i.ec, i64 undef
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.ee = load i64, ptr %i.ed, align 8, !range !91, !alias.scope !14184, !noalias !14185, !noundef !77 ; 2 uses
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !14184, !noalias !14185
  %.sroa.52.0.i4.i.i.i = select i1 %i.ef, i64 %i.eh, i64 undef
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !noalias !14175 ; 4 uses
  %.sroa_idx144.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.ek = load i8, ptr %.sroa_idx144.i.i, align 4, !noalias !14175
  %.sroa_idx144.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.el = load i8, ptr %.sroa_idx144.sroa_idx.i.i, align 1, !noalias !14175
  %.sroa_idx144.sroa_idx158.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %i.em = load i16, ptr %.sroa_idx144.sroa_idx158.i.i, align 2, !noalias !14175
  %i.en = load i64, ptr %i.ei, align 8, !range !91, !alias.scope !14184, !noalias !14185, !noundef !77
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !14184, !noalias !14185
  %.sroa.54.0.i5.i.i.i = select i1 %i.eo, i64 %i.eq, i64 undef ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152 ; 2 uses
  %i.es = load i24, ptr %i.er, align 8, !noalias !14175
  %.sroa_idx95.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.et = load i8, ptr %.sroa_idx95.i.i, align 1, !noalias !14175
  %.sroa_idx97.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %i.eu = load i32, ptr %.sroa_idx97.i.i, align 4, !noalias !14175
  %i.ev = load i64, ptr %i.er, align 8, !range !91, !alias.scope !14184, !noalias !14185, !noundef !77
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !14184, !noalias !14185
  %.sroa.56.0.i6.i.i.i = select i1 %i.ew, i64 %i.ey, i64 undef
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.fa = load <2 x i8>, ptr %i.ez, align 8, !alias.scope !14184, !noalias !14185
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.fc = load i8, ptr %i.fb, align 2, !range !118, !alias.scope !14184, !noalias !14185, !noundef !77
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.fe = load i8, ptr %i.fd, align 1, !range !118, !alias.scope !14184, !noalias !14185, !noundef !77
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc181.i.i = trunc i32 %i.ej to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift187.i.i = lshr i32 %i.ej, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc188.i.i = trunc i32 %.sroa.36.sroa.0.sroa.11.0.extract.shift187.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift199.i.i = lshr i32 %i.ej, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc200.i.i = trunc i32 %.sroa.36.sroa.0.sroa.12.0.extract.shift199.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift211.i.i = lshr i32 %i.ej, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc212.i.i = trunc nuw i32 %.sroa.36.sroa.0.sroa.13.0.extract.shift211.i.i to i8
  store i8 %i.el, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !noalias !14175
  %.sroa.52.sroa.0.0.extract.trunc133.i.i = trunc i64 %.sroa.54.0.i5.i.i.i to i32
  %.sroa.52.sroa.10.0.extract.shift138.i.i = lshr i64 %.sroa.54.0.i5.i.i.i, 32
  %.sroa.52.sroa.10.0.extract.trunc139.i.i = trunc nuw i64 %.sroa.52.sroa.10.0.extract.shift138.i.i to i32
  store i8 %i.et, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !noalias !14175
  br label %bb.bg

bb.w:                                             ; preds = %bb.s
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.fg = load i32, ptr %i.ff, align 8, !range !14181, !alias.scope !14186, !noalias !14187, !noundef !77
  %i.fh = trunc nuw i32 %i.fg to i1
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %.sroa.5.i.i.sroa.0.0.copyload.i.i = load i8, ptr %i.fi, align 4, !noalias !14188
  %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %.sroa.5.i.i.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.5.i.i.sroa.4.0..sroa_idx.i.i, align 1, !noalias !14188
  %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %.sroa.5.i.i.sroa.5.0.copyload.i.i = load i16, ptr %.sroa.5.i.i.sroa.5.0..sroa_idx.i.i, align 2, !noalias !14188
  %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %.sroa.5.i.i.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !14188
  %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %.sroa.5.i.i.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.5.i.i.sroa.7.0..sroa_idx.i.i, align 4, !noalias !14188
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.i.i.sroa.7.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.7.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.6.0.i.i = phi i32 [ %.sroa.5.i.i.sroa.6.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.5.0.i.i = phi i16 [ %.sroa.5.i.i.sroa.5.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.4.0.i.i = phi i8 [ %.sroa.5.i.i.sroa.4.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.5.i.i.sroa.0.0.i.i = phi i8 [ %.sroa.5.i.i.sroa.0.0.copyload.i.i, %bb.x ], [ undef, %bb.w ]
  %.sroa.0.0.i.i.i.i = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.fk = load i32, ptr %i.fj, align 8, !range !14181, !alias.scope !14186, !noalias !14187, !noundef !77
  %i.fl = trunc nuw i32 %i.fk to i1
  br i1 %i.fl, label %bb.z, label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %.sroa.52.i.i.sroa.0.0.copyload.i.i = load i32, ptr %i.fm, align 4, !noalias !14188
  %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %.sroa.52.i.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.52.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14188
  br label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.52.i.i.sroa.4.0.i.i = phi i64 [ %.sroa.52.i.i.sroa.4.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.52.i.i.sroa.0.0.i.i = phi i32 [ %.sroa.52.i.i.sroa.0.0.copyload.i.i, %bb.z ], [ undef, %bb.y ]
  %.sroa.01.0.i.i.i.i = phi i32 [ 1, %bb.z ], [ 0, %bb.y ]
  %i.fn = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14186, !noalias !14187, !noundef !77 ; 2 uses
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !14186, !noalias !14187
  %.sroa.54.0.i7.i.i.i = select i1 %i.fo, i64 %i.fq, i64 undef
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.fs = load i64, ptr %i.fr, align 8, !range !91, !alias.scope !14186, !noalias !14187, !noundef !77 ; 2 uses
  %i.ft = trunc nuw i64 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !14186, !noalias !14187
  %.sroa.56.0.i8.i.i.i = select i1 %i.ft, i64 %i.fv, i64 undef
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.fx = load <2 x i8>, ptr %i.fw, align 8, !alias.scope !14186, !noalias !14187
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.fz = load i8, ptr %i.fy, align 2, !range !118, !alias.scope !14186, !noalias !14187, !noundef !77
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.gb = load i8, ptr %i.ga, align 1, !range !118, !alias.scope !14186, !noalias !14187, !noundef !77
  store i8 %.sroa.5.i.i.sroa.4.0.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !noalias !14175
  %.sroa.60.sroa.0.sroa.0.0.extract.trunc.i.i = trunc nuw nsw i32 %.sroa.01.0.i.i.i.i to i24
  store i8 0, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !14178, !noalias !14175
  br label %bb.bg

bb.aa:                                            ; preds = %bb.s
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.gd = load i32, ptr %i.gc, align 8, !range !14181, !alias.scope !14189, !noalias !14190, !noundef !77 ; 2 uses
  %i.ge = trunc nuw i32 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.gg = load i32, ptr %i.gf, align 4, !alias.scope !14189, !noalias !14190
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.gi = load i32, ptr %i.gh, align 8, !range !14181, !alias.scope !14189, !noalias !14190, !noundef !77 ; 2 uses
  %i.gj = trunc nuw i32 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 148
  %i.gl = load i32, ptr %i.gk, align 4, !alias.scope !14189, !noalias !14190
  %i.gm = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14189, !noalias !14190, !noundef !77 ; 2 uses
  %i.gn = trunc nuw i64 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !14189, !noalias !14190
  %.sroa.54.0.i11.i.i.i = select i1 %i.gn, i64 %i.gp, i64 undef
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.gr = load i64, ptr %i.gq, align 8, !range !91, !alias.scope !14189, !noalias !14190, !noundef !77 ; 2 uses
  %i.gs = trunc nuw i64 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !14189, !noalias !14190
  %.sroa.56.0.i12.i.i.i = select i1 %i.gs, i64 %i.gu, i64 undef
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  %i.gw = load i16, ptr %i.gv, align 8, !alias.scope !14189, !noalias !14190
  %i.gx = zext i16 %i.gw to i24
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 154
  %i.gz = load i8, ptr %i.gy, align 2, !range !118, !alias.scope !14189, !noalias !14190, !noundef !77
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.hb = load i8, ptr %i.ha, align 1, !range !118, !alias.scope !14189, !noalias !14190, !noundef !77
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc182.i.i = trunc nuw nsw i32 %i.gd to i8
  %i.hc = select i1 %i.ge, i32 %i.gg, i32 undef   ; 3 uses
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc167.i.i = trunc i32 %i.hc to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift171.i.i = lshr i32 %i.hc, 8
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc172.i.i = trunc i32 %.sroa.36.sroa.14.sroa.11.0.extract.shift171.i.i to i8
  store i8 %.sroa.36.sroa.14.sroa.11.0.extract.trunc172.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !alias.scope !14178, !noalias !14175
  %.sroa.36.sroa.14.sroa.16.0.extract.shift177.i.i = lshr i32 %i.hc, 16
  %.sroa.36.sroa.14.sroa.16.0.extract.trunc178.i.i = trunc nuw i32 %.sroa.36.sroa.14.sroa.16.0.extract.shift177.i.i to i16
  %2 = select i1 %i.gj, i32 %i.gl, i32 undef
  %.sroa.60.sroa.0.sroa.0.2.insert.ext.i.i = zext nneg i8 %i.gz to i24
  %.sroa.60.sroa.0.sroa.0.2.insert.shift.i.i = shl nuw nsw i24 %.sroa.60.sroa.0.sroa.0.2.insert.ext.i.i, 16
  %.sroa.60.sroa.0.sroa.0.2.insert.insert.i.i = or disjoint i24 %.sroa.60.sroa.0.sroa.0.2.insert.shift.i.i, %i.gx
  br label %bb.bg

bb.ab:                                            ; preds = %bb.s
  %i.hd = load i64, ptr %i.cd, align 8, !range !91, !alias.scope !14191, !noalias !14192, !noundef !77 ; 2 uses
  %i.he = trunc nuw i64 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !14191, !noalias !14192
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.hi = load i64, ptr %i.hh, align 8, !range !91, !alias.scope !14191, !noalias !14192, !noundef !77 ; 2 uses
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !14191, !noalias !14192
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !noalias !14175 ; 4 uses
  %.sroa_idx142.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 140
  %i.ho = load i8, ptr %.sroa_idx142.i.i, align 4, !noalias !14175
  %.sroa_idx142.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 141
  %i.hp = load i8, ptr %.sroa_idx142.sroa_idx.i.i, align 1, !noalias !14175
  %.sroa_idx142.sroa_idx155.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 142
  %i.hq = load i16, ptr %.sroa_idx142.sroa_idx155.i.i, align 2, !noalias !14175
  %i.hr = load i64, ptr %i.hm, align 8, !range !91, !alias.scope !14191, !noalias !14192, !noundef !77
  %i.hs = trunc nuw i64 %i.hr to i1
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !14191, !noalias !14192
  %.sroa.54.0.i15.i.i.i = select i1 %i.hs, i64 %i.hu, i64 undef ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152 ; 2 uses
  %i.hw = load i24, ptr %i.hv, align 8, !noalias !14175
  %.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 155
  %i.hx = load i8, ptr %.sroa_idx.i.i, align 1, !noalias !14175
  %.sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 156
  %i.hy = load i32, ptr %.sroa_idx93.i.i, align 4, !noalias !14175
  %i.hz = load i64, ptr %i.hv, align 8, !range !91, !alias.scope !14191, !noalias !14192, !noundef !77
  %i.ia = trunc nuw i64 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !14191, !noalias !14192
  %.sroa.56.0.i16.i.i.i = select i1 %i.ia, i64 %i.ic, i64 undef
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.ie = load <2 x i8>, ptr %i.id, align 8, !alias.scope !14191, !noalias !14192
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 170
  %i.ig = load i8, ptr %i.if, align 2, !range !118, !alias.scope !14191, !noalias !14192, !noundef !77
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 171
  %i.ii = load i8, ptr %i.ih, align 1, !range !118, !alias.scope !14191, !noalias !14192, !noundef !77
  %i.ij = select i1 %i.he, i64 %i.hg, i64 undef
  %i.ik = select i1 %i.hj, i64 %i.hl, i64 undef
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %i.hn to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift.i.i = lshr i32 %i.hn, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc.i.i = trunc i32 %.sroa.36.sroa.0.sroa.11.0.extract.shift.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift.i.i = lshr i32 %i.hn, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc.i.i = trunc i32 %.sroa.36.sroa.0.sroa.12.0.extract.shift.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift.i.i = lshr i32 %i.hn, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc.i.i = trunc nuw i32 %.sroa.36.sroa.0.sroa.13.0.extract.shift.i.i to i8
  store i8 %i.hp, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !noalias !14175
  %.sroa.52.sroa.0.0.extract.trunc132.i.i = trunc i64 %.sroa.54.0.i15.i.i.i to i32
  %.sroa.52.sroa.10.0.extract.shift136.i.i = lshr i64 %.sroa.54.0.i15.i.i.i, 32
  %.sroa.52.sroa.10.0.extract.trunc137.i.i = trunc nuw i64 %.sroa.52.sroa.10.0.extract.shift136.i.i to i32
  store i8 %i.hx, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !noalias !14175
  br label %bb.bg

bb.ac:                                            ; preds = %bb.s
  %i.il = load i64, ptr %i.cd, align 8, !range !91, !noalias !14193, !noundef !77
  %i.im = trunc nuw i64 %i.il to i1               ; 2 uses
  br i1 %i.im, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14193
  %i.io = load ptr, ptr %i.in, align 8, !noalias !14194, !noundef !77 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !14195, !nonnull !77, !noundef !77
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !14194, !noundef !77
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.iu = load i64, ptr %i.it, align 8, !noalias !14194, !noundef !77
  invoke void %i.ip(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.iq, ptr noundef %i.is, i64 noundef %i.iu)
          to label %.noexc42.i.i unwind label %bb.m, !noalias !14175, !inline_history !14096

.noexc42.i.i:                                     ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !14194
  br label %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc42.i.i, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc42.i.i ], [ null, %bb.ad ]
  %.sroa.4.8.copyload.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !14193
  %.sroa.613.8.copyload.i.i.i.i = load i64, ptr %.sroa.613.8..sroa_idx.i.i.i.i, align 8, !noalias !14193
  %.sroa.7.8.copyload.i.i.i.i = load ptr, ptr %.sroa.7.8..sroa_idx.i.i.i.i, align 8, !noalias !14193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14193
  br label %bb.af

bb.af:                                            ; preds = %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, %bb.ac
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.7.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi i64 [ %.sroa.613.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.4.8.copyload.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.6.0.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ac ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi i64 [ 1, %_RNvXsL_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_9ByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.ac ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.iw = load i64, ptr %i.iv, align 8, !range !91, !noalias !14193, !noundef !77
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14193
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !14196, !noundef !77 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i6.i.i.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ja = load ptr, ptr %i.iz, align 8, !noalias !14197, !nonnull !77, !noundef !77
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 176
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !14196, !noundef !77
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.jf = load i64, ptr %i.je, align 8, !noalias !14196, !noundef !77
  invoke void %i.ja(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.jb, ptr noundef %i.jd, i64 noundef %i.jf)
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !14198, !inline_history !14099

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  %.sroa.0.0.copyload.i7.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !14196
  %i.jg = ptrtoint ptr %.sroa.0.0.copyload.i7.i.i.i.i to i64
  br label %bb.al

bb.ai:                                            ; preds = %bb.al, %bb.af
  %.sroa.5.sroa.4.i.i.sroa.7.0.i.i = phi i8 [ %.sroa.5.sroa.4.i.i.sroa.7.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.4.i.i.sroa.6.0.i.i = phi i8 [ %.sroa.5.sroa.4.i.i.sroa.6.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.4.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i, %bb.al ], [ undef, %bb.af ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.i8.i.i.i.i, %bb.al ], [ undef, %bb.af ] ; 3 uses
  %.sroa.0.0.i17.i.i.i = phi i32 [ 1, %bb.al ], [ 0, %bb.af ]
  %i.jh = phi <2 x i8> [ %i.jp, %bb.al ], [ undef, %bb.af ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 184
  %i.jj = load i64, ptr %i.ji, align 8, !range !91, !noalias !14193, !noundef !77
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.am, label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = icmp ne ptr %.sroa.6.0.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.im, i1 %i.jm, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.ak, label %.body.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i.i.i, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !14199, !nonnull !77, !noundef !77
  invoke void %i.jo(ptr noundef %.sroa.10.0.i.i.i.i, ptr noundef %.sroa.8.0.i.i.i.i, i64 noundef %.sroa.9.0.i.i.i.i)
          to label %.body.i.i unwind label %bb.ap, !noalias !14198, !inline_history !4

bb.al:                                            ; preds = %.noexc.i.i.i.i, %bb.ag
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.jg, %.noexc.i.i.i.i ], [ 0, %bb.ag ]
  %.sroa.5.sroa.4.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8, !noalias !14188
  %i.jp = load <2 x i8>, ptr %.sroa.5.sroa.4.i.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14188
  %.sroa.5.sroa.4.i.i.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i.i.sroa.6.0..sroa_idx.i.i, align 2, !noalias !14188
  %.sroa.5.sroa.4.i.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i.i.sroa.7.0..sroa_idx.i.i, align 1, !noalias !14188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !14188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14193
  br label %bb.ai

bb.am:                                            ; preds = %bb.ai
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 192
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !14193, !noundef !77
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.sroa.52.0.i18.i.i.i = phi i64 [ %i.jr, %bb.am ], [ undef, %bb.ai ]
  %.sroa.01.0.i19.i.i.i = phi i64 [ 1, %bb.am ], [ 0, %bb.ai ]
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 200
  %i.jt = load i64, ptr %i.js, align 8, !range !91, !noalias !14193, !noundef !77
  %i.ju = trunc nuw i64 %i.jt to i1
  br i1 %i.ju, label %bb.ao, label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 208
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !14193, !noundef !77
  br label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.ap:                                            ; preds = %bb.ak
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !14198
  unreachable

_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.54.0.i20.i.i.i = phi i64 [ %i.jw, %bb.ao ], [ undef, %bb.an ]
  %.sroa.03.0.i.i.i.i = phi i64 [ 1, %bb.ao ], [ 0, %bb.an ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 216
  %i.jz = load i8, ptr %i.jy, align 8, !range !118, !noalias !14193, !noundef !77
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 217
  %i.kb = load i8, ptr %i.ka, align 1, !range !118, !noalias !14193, !noundef !77
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 218
  %i.kd = load i8, ptr %i.kc, align 2, !range !118, !noalias !14193, !noundef !77
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 219
  %i.kf = load i8, ptr %i.ke, align 1, !range !118, !noalias !14193, !noundef !77
  %i.kg = ptrtoint ptr %.sroa.6.0.i.i.i.i to i64
  %i.kh = ptrtoint ptr %.sroa.8.0.i.i.i.i to i64
  %i.ki = ptrtoint ptr %.sroa.10.0.i.i.i.i to i64 ; 7 uses
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc186.i.i = trunc i64 %i.ki to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift197242.i.i = lshr i64 %i.ki, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc198.i.i = trunc i64 %.sroa.36.sroa.0.sroa.11.0.extract.shift197242.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift209243.i.i = lshr i64 %i.ki, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc210.i.i = trunc i64 %.sroa.36.sroa.0.sroa.12.0.extract.shift209243.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift221244.i.i = lshr i64 %i.ki, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc222.i.i = trunc i64 %.sroa.36.sroa.0.sroa.13.0.extract.shift221244.i.i to i8
  %.sroa.36.sroa.14.0.extract.shift147.i.i = lshr i64 %i.ki, 32
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc166.i.i = trunc i64 %.sroa.36.sroa.14.0.extract.shift147.i.i to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift169245.i.i = lshr i64 %i.ki, 40
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc170.i.i = trunc i64 %.sroa.36.sroa.14.sroa.11.0.extract.shift169245.i.i to i8
  store i8 %.sroa.36.sroa.14.sroa.11.0.extract.trunc170.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !alias.scope !14178, !noalias !14175
  %sum.shift246.i.i = lshr i64 %i.ki, 48
  %.sroa.36.sroa.14.sroa.16.0.extract.trunc176.i.i = trunc nuw i64 %sum.shift246.i.i to i16
  %.sroa.60.sroa.0.sroa.0.0.extract.trunc105.i.i = trunc i64 %.sroa.5.sroa.0.0.i.i.i.i to i24
  %.sroa.60.sroa.0.sroa.14.0.extract.shift110248.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 24
  %.sroa.60.sroa.0.sroa.14.0.extract.trunc111.i.i = trunc i64 %.sroa.60.sroa.0.sroa.14.0.extract.shift110248.i.i to i8
  store i8 %.sroa.60.sroa.0.sroa.14.0.extract.trunc111.i.i, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !14178, !noalias !14175
  %.sroa.60.sroa.19.0.extract.shift102.i.i = lshr i64 %.sroa.5.sroa.0.0.i.i.i.i, 32
  %.sroa.60.sroa.19.0.extract.trunc103.i.i = trunc nuw i64 %.sroa.60.sroa.19.0.extract.shift102.i.i to i32
  store i8 %.sroa.5.sroa.4.i.i.sroa.7.0.i.i, ptr %.sroa.87.i.i, align 1, !noalias !14175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.90.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i.i.sroa.8.i.i, i64 12, i1 false), !noalias !14175
  br label %bb.bg

bb.aq:                                            ; preds = %bb.s
  %i.kj = load i64, ptr %i.cd, align 8, !range !91, !noalias !14200, !noundef !77
  %i.kk = trunc nuw i64 %i.kj to i1               ; 2 uses
  br i1 %i.kk, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14200
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !14201, !noundef !77 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !14202, !nonnull !77, !noundef !77
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 136
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 120
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !14201, !noundef !77
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 128
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !14201, !noundef !77
  invoke void %i.kn(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.ko, ptr noundef %i.kq, i64 noundef %i.ks)
          to label %.noexc43.i.i unwind label %bb.m, !noalias !14175, !inline_history !14096

.noexc43.i.i:                                     ; preds = %bb.as
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !14203
  br label %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc43.i.i, %bb.ar
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc43.i.i ], [ null, %bb.ar ]
  %.sroa.4.8.copyload.i42.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !14200
  %.sroa.613.8.copyload.i44.i.i.i = load i64, ptr %.sroa.613.8..sroa_idx.i43.i.i.i, align 8, !noalias !14200
  %.sroa.7.8.copyload.i46.i.i.i = load ptr, ptr %.sroa.7.8..sroa_idx.i45.i.i.i, align 8, !noalias !14200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14200
  br label %bb.at

bb.at:                                            ; preds = %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i, %bb.aq
  %.sroa.10.0.i23.i.i.i = phi ptr [ %.sroa.7.8.copyload.i46.i.i.i, %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.aq ] ; 2 uses
  %.sroa.9.0.i24.i.i.i = phi i64 [ %.sroa.613.8.copyload.i44.i.i.i, %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.aq ] ; 2 uses
  %.sroa.8.0.i25.i.i.i = phi ptr [ %.sroa.4.8.copyload.i42.i.i.i, %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.aq ] ; 2 uses
  %.sroa.6.0.i26.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.aq ] ; 3 uses
  %.sroa.0.016.i27.i.i.i = phi i64 [ 1, %_RNvXsN_NtCs7Ez7UXBn1VF_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.aq ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 144
  %i.ku = load i64, ptr %i.kt, align 8, !range !91, !noalias !14200, !noundef !77
  %i.kv = trunc nuw i64 %i.ku to i1
  br i1 %i.kv, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14200
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !14204, !noundef !77 ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i6.i.i.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !14205, !nonnull !77, !noundef !77
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 176
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 160
  %i.lb = load ptr, ptr %i.la, align 8, !noalias !14204, !noundef !77
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 168
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !14204, !noundef !77
  invoke void %i.ky(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 8 %i.kz, ptr noundef %i.lb, i64 noundef %i.ld)
          to label %.noexc.i41.i.i.i unwind label %bb.ax, !noalias !14206, !inline_history !14120

.noexc.i41.i.i.i:                                 ; preds = %bb.av
  %.sroa.0.0.copyload.i.i7.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !14207
  %i.le = ptrtoint ptr %.sroa.0.0.copyload.i.i7.i.i.i.i to i64
  br label %bb.az

bb.aw:                                            ; preds = %bb.az, %bb.at
  %.sroa.5.sroa.4.i22.i.sroa.6.0.i.i = phi i8 [ %.sroa.5.sroa.4.i22.i.sroa.6.0.copyload.i.i, %bb.az ], [ undef, %bb.at ]
  %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i = phi i64 [ %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i, %bb.az ], [ undef, %bb.at ]
  %.sroa.5.sroa.4.i22.i.sroa.7.0.i.i = phi i8 [ %.sroa.5.sroa.4.i22.i.sroa.7.0.copyload.i.i, %bb.az ], [ undef, %bb.at ]
  %.sroa.5.sroa.0.0.i28.i.i.i = phi i64 [ %.sroa.0.0.i.i8.i.i.i.i, %bb.az ], [ undef, %bb.at ] ; 3 uses
  %.sroa.0.0.i29.i.i.i = phi i32 [ 1, %bb.az ], [ 0, %bb.at ]
  %i.lf = phi <2 x i8> [ %i.ln, %bb.az ], [ undef, %bb.at ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 184
  %i.lh = load i64, ptr %i.lg, align 8, !range !91, !noalias !14200, !noundef !77
  %i.li = trunc nuw i64 %i.lh to i1
  br i1 %i.li, label %bb.ba, label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = icmp ne ptr %.sroa.6.0.i26.i.i.i, null
  %or.cond.not.i40.i.i.i = select i1 %i.kk, i1 %i.lk, i1 false
  br i1 %or.cond.not.i40.i.i.i, label %bb.ay, label %.body.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i26.i.i.i, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !14208, !nonnull !77, !noundef !77
  invoke void %i.lm(ptr noundef %.sroa.10.0.i23.i.i.i, ptr noundef %.sroa.8.0.i25.i.i.i, i64 noundef %.sroa.9.0.i24.i.i.i)
          to label %.body.i.i unwind label %bb.bd, !noalias !14206, !inline_history !3

bb.az:                                            ; preds = %.noexc.i41.i.i.i, %bb.au
  %.sroa.0.0.i.i8.i.i.i.i = phi i64 [ %i.le, %.noexc.i41.i.i.i ], [ 0, %bb.au ]
  %.sroa.5.sroa.4.i22.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !noalias !14188
  %i.ln = load <2 x i8>, ptr %.sroa.5.sroa.4.i22.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14188
  %.sroa.5.sroa.4.i22.i.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i22.i.sroa.6.0..sroa_idx.i.i, align 2, !noalias !14188
  %.sroa.5.sroa.4.i22.i.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.4.i22.i.sroa.7.0..sroa_idx.i.i, align 1, !noalias !14188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.0..sroa_idx.i.i, i64 12, i1 false), !noalias !14188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14200
  br label %bb.aw

bb.ba:                                            ; preds = %bb.aw
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 192
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !14200, !noundef !77
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.sroa.52.0.i30.i.i.i = phi i64 [ %i.lp, %bb.ba ], [ undef, %bb.aw ]
  %.sroa.01.0.i31.i.i.i = phi i64 [ 1, %bb.ba ], [ 0, %bb.aw ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 200
  %i.lr = load i64, ptr %i.lq, align 8, !range !91, !noalias !14200, !noundef !77
  %i.ls = trunc nuw i64 %i.lr to i1
  br i1 %i.ls, label %bb.bc, label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 208
  %i.lu = load i64, ptr %i.lt, align 8, !noalias !14200, !noundef !77
  br label %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

bb.bd:                                            ; preds = %bb.ay
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !14206
  unreachable

_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.sroa.54.0.i32.i.i.i = phi i64 [ %i.lu, %bb.bc ], [ undef, %bb.bb ]
  %.sroa.03.0.i33.i.i.i = phi i64 [ 1, %bb.bc ], [ 0, %bb.bb ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 216
  %i.lx = load i8, ptr %i.lw, align 8, !range !118, !noalias !14200, !noundef !77
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 217
  %i.lz = load i8, ptr %i.ly, align 1, !range !118, !noalias !14200, !noundef !77
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 218
  %i.mb = load i8, ptr %i.ma, align 2, !range !118, !noalias !14200, !noundef !77
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 219
  %i.md = load i8, ptr %i.mc, align 1, !range !118, !noalias !14200, !noundef !77
  %i.me = ptrtoint ptr %.sroa.6.0.i26.i.i.i to i64
  %i.mf = ptrtoint ptr %.sroa.8.0.i25.i.i.i to i64
  %i.mg = ptrtoint ptr %.sroa.10.0.i23.i.i.i to i64 ; 7 uses
  %.sroa.36.sroa.0.sroa.0.0.extract.trunc185.i.i = trunc i64 %i.mg to i8
  %.sroa.36.sroa.0.sroa.11.0.extract.shift195236.i.i = lshr i64 %i.mg, 8
  %.sroa.36.sroa.0.sroa.11.0.extract.trunc196.i.i = trunc i64 %.sroa.36.sroa.0.sroa.11.0.extract.shift195236.i.i to i8
  %.sroa.36.sroa.0.sroa.12.0.extract.shift207237.i.i = lshr i64 %i.mg, 16
  %.sroa.36.sroa.0.sroa.12.0.extract.trunc208.i.i = trunc i64 %.sroa.36.sroa.0.sroa.12.0.extract.shift207237.i.i to i8
  %.sroa.36.sroa.0.sroa.13.0.extract.shift219238.i.i = lshr i64 %i.mg, 24
  %.sroa.36.sroa.0.sroa.13.0.extract.trunc220.i.i = trunc i64 %.sroa.36.sroa.0.sroa.13.0.extract.shift219238.i.i to i8
  %.sroa.36.sroa.14.0.extract.shift.i.i = lshr i64 %i.mg, 32
  %.sroa.36.sroa.14.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.36.sroa.14.0.extract.shift.i.i to i8
  %.sroa.36.sroa.14.sroa.11.0.extract.shift239.i.i = lshr i64 %i.mg, 40
  %.sroa.36.sroa.14.sroa.11.0.extract.trunc.i.i = trunc i64 %.sroa.36.sroa.14.sroa.11.0.extract.shift239.i.i to i8
  store i8 %.sroa.36.sroa.14.sroa.11.0.extract.trunc.i.i, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !alias.scope !14178, !noalias !14175
  %sum.shift.i.i = lshr i64 %i.mg, 48
  %.sroa.36.sroa.14.sroa.16.0.extract.trunc.i.i = trunc nuw i64 %sum.shift.i.i to i16
  %.sroa.60.sroa.0.sroa.0.0.extract.trunc104.i.i = trunc i64 %.sroa.5.sroa.0.0.i28.i.i.i to i24
  %.sroa.60.sroa.0.sroa.14.0.extract.shift108241.i.i = lshr i64 %.sroa.5.sroa.0.0.i28.i.i.i, 24
  %.sroa.60.sroa.0.sroa.14.0.extract.trunc109.i.i = trunc i64 %.sroa.60.sroa.0.sroa.14.0.extract.shift108241.i.i to i8
  store i8 %.sroa.60.sroa.0.sroa.14.0.extract.trunc109.i.i, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !alias.scope !14178, !noalias !14175
  %.sroa.60.sroa.19.0.extract.shift.i.i = lshr i64 %.sroa.5.sroa.0.0.i28.i.i.i, 32
  %.sroa.60.sroa.19.0.extract.trunc.i.i = trunc nuw i64 %.sroa.60.sroa.19.0.extract.shift.i.i to i32
  store i8 %.sroa.5.sroa.4.i22.i.sroa.7.0.i.i, ptr %.sroa.87.i.i, align 1, !noalias !14175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.90.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.sroa.4.i22.i.sroa.8.i.i, i64 12, i1 false), !noalias !14175
  br label %bb.bg

bb.be:                                            ; preds = %bb.r
  store i64 -1, ptr %i.l, align 8, !noalias !14175
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 400
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !14175, !align !83, !noundef !77 ; 10 uses
  %.not24.i.i = icmp eq ptr %i.mi, null
  br i1 %.not24.i.i, label %bb.bo, label %bb.bh

bb.bg:                                            ; preds = %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %bb.ab, %bb.aa, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %bb.v, %bb.u, %bb.t
  %.sroa.36.sroa.0.sroa.13.0.i.i = phi i8 [ %i.cy, %bb.t ], [ 0, %bb.u ], [ %.sroa.36.sroa.0.sroa.13.0.extract.trunc212.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.36.sroa.0.sroa.13.0.extract.trunc.i.i, %bb.ab ], [ %.sroa.36.sroa.0.sroa.13.0.extract.trunc222.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.0.sroa.13.0.extract.trunc220.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.36.sroa.0.sroa.12.0.i.i = phi i8 [ %i.cw, %bb.t ], [ 0, %bb.u ], [ %.sroa.36.sroa.0.sroa.12.0.extract.trunc200.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.36.sroa.0.sroa.12.0.extract.trunc.i.i, %bb.ab ], [ %.sroa.36.sroa.0.sroa.12.0.extract.trunc210.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.0.sroa.12.0.extract.trunc208.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.36.sroa.0.sroa.11.0.i.i = phi i8 [ %i.cu, %bb.t ], [ 0, %bb.u ], [ %.sroa.36.sroa.0.sroa.11.0.extract.trunc188.i.i, %bb.v ], [ 0, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ 0, %bb.aa ], [ %.sroa.36.sroa.0.sroa.11.0.extract.trunc.i.i, %bb.ab ], [ %.sroa.36.sroa.0.sroa.11.0.extract.trunc198.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.0.sroa.11.0.extract.trunc196.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.36.sroa.0.sroa.0.0.i.i = phi i8 [ %i.cs, %bb.t ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc184.i.i, %bb.u ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc181.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc182.i.i, %bb.aa ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc.i.i, %bb.ab ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc186.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.0.sroa.0.0.extract.trunc185.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.36.sroa.14.sroa.16.0.i.i = phi i16 [ undef, %bb.t ], [ %.sroa.36.sroa.14.sroa.16.0.extract.trunc180.i.i, %bb.u ], [ %i.em, %bb.v ], [ %.sroa.5.i.i.sroa.5.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.14.sroa.16.0.extract.trunc178.i.i, %bb.aa ], [ %i.hq, %bb.ab ], [ %.sroa.36.sroa.14.sroa.16.0.extract.trunc176.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.14.sroa.16.0.extract.trunc.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.36.sroa.14.sroa.0.0.i.i = phi i8 [ %i.cf, %bb.t ], [ %.sroa.36.sroa.14.sroa.0.0.extract.trunc168.i.i, %bb.u ], [ %i.ek, %bb.v ], [ %.sroa.5.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.14.sroa.0.0.extract.trunc167.i.i, %bb.aa ], [ %i.ho, %bb.ab ], [ %.sroa.36.sroa.14.sroa.0.0.extract.trunc166.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.36.sroa.14.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.52.sroa.10.0.i.i = phi i32 [ undef, %bb.t ], [ %.sroa.52.0.i.i.i.i, %bb.u ], [ %.sroa.52.sroa.10.0.extract.trunc139.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.7.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %2, %bb.aa ], [ %.sroa.52.sroa.10.0.extract.trunc137.i.i, %bb.ab ], [ 0, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ 0, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.52.sroa.0.0.i.i = phi i32 [ undef, %bb.t ], [ %i.df, %bb.u ], [ %.sroa.52.sroa.0.0.extract.trunc133.i.i, %bb.v ], [ %.sroa.5.i.i.sroa.6.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.gi, %bb.aa ], [ %.sroa.52.sroa.0.0.extract.trunc132.i.i, %bb.ab ], [ %.sroa.0.0.i17.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.0.0.i29.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.60.sroa.0.sroa.0.0.i.i = phi i24 [ undef, %bb.t ], [ %.sroa.60.sroa.0.sroa.0.2.insert.insert125.i.i, %bb.u ], [ %i.es, %bb.v ], [ %.sroa.60.sroa.0.sroa.0.0.extract.trunc.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.60.sroa.0.sroa.0.2.insert.insert.i.i, %bb.aa ], [ %i.hw, %bb.ab ], [ %.sroa.60.sroa.0.sroa.0.0.extract.trunc105.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.60.sroa.0.sroa.0.0.extract.trunc104.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.60.sroa.19.0.i.i = phi i32 [ undef, %bb.t ], [ undef, %bb.u ], [ %i.eu, %bb.v ], [ %.sroa.52.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ %i.hy, %bb.ab ], [ %.sroa.60.sroa.19.0.extract.trunc103.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.60.sroa.19.0.extract.trunc.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.102.0.i.i = phi i8 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.kd, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.mb, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.100.0.i.i = phi i8 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.kb, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.lz, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.98.0.i.i = phi i8 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %i.jz, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.lx, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.96.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.54.0.i20.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.54.0.i32.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.94.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.03.0.i.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.03.0.i33.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.92.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.52.0.i18.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.52.0.i30.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.9086.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.01.0.i19.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.01.0.i31.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.84.0.i.i = phi i8 [ undef, %bb.t ], [ undef, %bb.u ], [ %i.fc, %bb.v ], [ %i.fz, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ %i.ig, %bb.ab ], [ %.sroa.5.sroa.4.i.i.sroa.6.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.5.sroa.4.i22.i.sroa.6.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.74.0.i.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ %.sroa.56.0.i6.i.i.i, %bb.v ], [ %.sroa.52.i.i.sroa.4.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ %.sroa.56.0.i16.i.i.i, %bb.ab ], [ %.sroa.5.sroa.4.i.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.5.sroa.4.i22.i.sroa.0.0.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.28.0.i.i = phi i64 [ %.sroa.54.0.i.i.i.i, %bb.t ], [ %.sroa.56.0.i.i.i.i, %bb.u ], [ %.sroa.52.0.i4.i.i.i, %bb.v ], [ %.sroa.56.0.i8.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.56.0.i12.i.i.i, %bb.aa ], [ %i.ik, %bb.ab ], [ %.sroa.9.0.i.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.9.0.i24.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.20.0.i.i = phi i64 [ %i.cn, %bb.t ], [ %i.do, %bb.u ], [ %i.ee, %bb.v ], [ %i.fs, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.gr, %bb.aa ], [ %i.hi, %bb.ab ], [ %i.kh, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.mf, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.12.0.i.i = phi i64 [ %.sroa.5.0.i.i.i.i, %bb.t ], [ %.sroa.54.0.i2.i.i.i, %bb.u ], [ %.sroa.5.0.i3.i.i.i, %bb.v ], [ %.sroa.54.0.i7.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.54.0.i11.i.i.i, %bb.aa ], [ %i.ij, %bb.ab ], [ %i.kg, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.me, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.4.0.i.i = phi i64 [ %i.ci, %bb.t ], [ %i.dj, %bb.u ], [ %i.dz, %bb.v ], [ %i.fn, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.gm, %bb.aa ], [ %i.hd, %bb.ab ], [ %.sroa.0.016.i.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.0.016.i27.i.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sink145.i.sroa.phi.i.i = phi ptr [ %.sroa.36.sroa.14.sroa.11.i.i, %bb.t ], [ %.sroa.60.sroa.0.sroa.14.i.i, %bb.u ], [ %.sroa.87.i.i, %bb.v ], [ %.sroa.87.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.60.sroa.0.sroa.14.i.i, %bb.aa ], [ %.sroa.87.i.i, %bb.ab ], [ %.sroa.104.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %.sroa.104.i.i, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sink144.i.i.i = phi i8 [ %i.ch, %bb.t ], [ %i.dy, %bb.u ], [ %i.fe, %bb.v ], [ %i.gb, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.hb, %bb.aa ], [ %i.ii, %bb.ab ], [ %i.kf, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.md, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %i.mj = phi <2 x i8> [ undef, %bb.t ], [ undef, %bb.u ], [ %i.fa, %bb.v ], [ %i.fx, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ undef, %bb.aa ], [ %i.ie, %bb.ab ], [ %i.jh, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ], [ %i.lf, %_RNvXs9_NtNtCs7Ez7UXBn1VF_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ] ; 2 uses
  store i8 %.sink144.i.i.i, ptr %.sink145.i.sroa.phi.i.i, align 1, !alias.scope !14178, !noalias !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i22.i.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i.sroa.8.i.i)
  store i64 %i.cc, ptr %i.l, align 8, !noalias !14175
  store i64 %.sroa.4.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.20.0.i.i, ptr %.sroa.20.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.28.0.i.i, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !noalias !14175
  %.sroa.36.sroa.0.sroa.13.0.insert.ext.i.i = zext i8 %.sroa.36.sroa.0.sroa.13.0.i.i to i32
  %.sroa.36.sroa.0.sroa.13.0.insert.shift.i.i = shl nuw i32 %.sroa.36.sroa.0.sroa.13.0.insert.ext.i.i, 24
  %.sroa.36.sroa.0.sroa.12.0.insert.ext.i.i = zext i8 %.sroa.36.sroa.0.sroa.12.0.i.i to i32
  %.sroa.36.sroa.0.sroa.12.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.36.sroa.0.sroa.12.0.insert.ext.i.i, 16
  %.sroa.36.sroa.0.sroa.12.0.insert.insert.i.i = or disjoint i32 %.sroa.36.sroa.0.sroa.12.0.insert.shift.i.i, %.sroa.36.sroa.0.sroa.13.0.insert.shift.i.i
  %.sroa.36.sroa.0.sroa.11.0.insert.ext.i.i = zext i8 %.sroa.36.sroa.0.sroa.11.0.i.i to i32
  %.sroa.36.sroa.0.sroa.11.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.36.sroa.0.sroa.11.0.insert.ext.i.i, 8
  %.sroa.36.sroa.0.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.36.sroa.0.sroa.12.0.insert.insert.i.i, %.sroa.36.sroa.0.sroa.11.0.insert.shift.i.i
  %.sroa.36.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.36.sroa.0.sroa.0.0.i.i to i32
  %.sroa.36.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.36.sroa.0.sroa.11.0.insert.insert.i.i, %.sroa.36.sroa.0.sroa.0.0.insert.ext.i.i
  %.sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.0..sroa.36.sroa.14.sroa.11.i.0..sroa.36.sroa.14.sroa.11.0..sroa.36.sroa.14.sroa.11.0..sroa.36.sroa.14.sroa.11.1..sroa.36.sroa.14.4..sroa.36.0.copyload141150.i.i = load i8, ptr %.sroa.36.sroa.14.sroa.11.i.i, align 1, !noalias !14175
  store i32 %.sroa.36.sroa.0.sroa.0.0.insert.insert.i.i, ptr %.sroa.36.0..sroa_idx.i.i, align 8, !noalias !14175
  store i8 %.sroa.36.sroa.14.sroa.0.0.i.i, ptr %.sroa.36.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !14175
  store i8 %.sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.i.0..sroa.36.sroa.14.sroa.11.i.0..sroa.36.sroa.14.sroa.11.i.0..sroa.36.sroa.14.sroa.11.0..sroa.36.sroa.14.sroa.11.0..sroa.36.sroa.14.sroa.11.1..sroa.36.sroa.14.4..sroa.36.0.copyload141150.i.i, ptr %.sroa.36.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 1, !noalias !14175
  store i16 %.sroa.36.sroa.14.sroa.16.0.i.i, ptr %.sroa.36.0..sroa_idx.sroa_idx.sroa_idx153.i.i, align 2, !noalias !14175
  store i32 %.sroa.52.sroa.0.0.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !14175
  store i32 %.sroa.52.sroa.10.0.i.i, ptr %.sroa.52.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !14175
  %.sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.0..sroa.60.sroa.0.sroa.14.i.0..sroa.60.sroa.0.sroa.14.0..sroa.60.sroa.0.sroa.14.0..sroa.60.sroa.0.sroa.14.3..sroa.60.sroa.0.3..sroa.60.0.copyload88.i.i = load i8, ptr %.sroa.60.sroa.0.sroa.14.i.i, align 1, !noalias !14175
  store i24 %.sroa.60.sroa.0.sroa.0.0.i.i, ptr %.sroa.60.0..sroa_idx.i.i, align 8, !noalias !14175
  store i8 %.sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.i.0..sroa.60.sroa.0.sroa.14.i.0..sroa.60.sroa.0.sroa.14.i.0..sroa.60.sroa.0.sroa.14.0..sroa.60.sroa.0.sroa.14.0..sroa.60.sroa.0.sroa.14.3..sroa.60.sroa.0.3..sroa.60.0.copyload88.i.i, ptr %.sroa.60.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !14175
  store i32 %.sroa.60.sroa.19.0.i.i, ptr %.sroa.60.0..sroa_idx.sroa_idx91.i.i, align 4, !noalias !14175
  store i64 %.sroa.74.0.i.i, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !14175
  %i.mk = extractelement <2 x i8> %i.mj, i64 0
  store i8 %i.mk, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !noalias !14175
  %i.ml = extractelement <2 x i8> %i.mj, i64 1
  store i8 %i.ml, ptr %.sroa.81.0..sroa_idx.i.i, align 1, !noalias !14175
  store i8 %.sroa.84.0.i.i, ptr %.sroa.84.0..sroa_idx.i.i, align 2, !noalias !14175
  %.sroa.87.i.i.0..sroa.87.i.i.0..sroa.87.i.i.0..sroa.87.i.0..sroa.87.i.0..sroa.87.0..sroa.87.0..sroa.87.0.copyload.i.i = load i8, ptr %.sroa.87.i.i, align 1, !noalias !14175
  store i8 %.sroa.87.i.i.0..sroa.87.i.i.0..sroa.87.i.i.0..sroa.87.i.0..sroa.87.i.0..sroa.87.0..sroa.87.0..sroa.87.0.copyload.i.i, ptr %.sroa.87.0..sroa_idx.i.i, align 1, !noalias !14175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.90.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.90.i.i, i64 12, i1 false), !noalias !14175
  store i64 %.sroa.9086.0.i.i, ptr %.sroa.9086.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.92.0.i.i, ptr %.sroa.92.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.94.0.i.i, ptr %.sroa.94.0..sroa_idx.i.i, align 8, !noalias !14175
  store i64 %.sroa.96.0.i.i, ptr %.sroa.96.0..sroa_idx.i.i, align 8, !noalias !14175
  store i8 %.sroa.98.0.i.i, ptr %.sroa.98.0..sroa_idx.i.i, align 8, !noalias !14175
  store i8 %.sroa.100.0.i.i, ptr %.sroa.100.0..sroa_idx.i.i, align 1, !noalias !14175
  store i8 %.sroa.102.0.i.i, ptr %.sroa.102.0..sroa_idx.i.i, align 2, !noalias !14175
  %.sroa.104.i.i.0..sroa.104.i.i.0..sroa.104.i.i.0..sroa.104.i.0..sroa.104.i.0..sroa.104.0..sroa.104.0..sroa.104.0.copyload.i.i = load i8, ptr %.sroa.104.i.i, align 1, !noalias !14175
  store i8 %.sroa.104.i.i.0..sroa.104.i.i.0..sroa.104.i.i.0..sroa.104.i.0..sroa.104.i.0..sroa.104.0..sroa.104.0..sroa.104.0.copyload.i.i, ptr %.sroa.104.0..sroa_idx.i.i, align 1, !noalias !14175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.14.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.60.sroa.0.sroa.14.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.87.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.90.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.104.i.i)
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bf
  %i.mm = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsE13new_uninit_inCsbakdBCgU4AF_16influxdb3_server()
          to label %.noexc45.i.i unwind label %bb.bp, !noalias !14175 ; 11 uses

.noexc45.i.i:                                     ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !14209)
  call void @llvm.experimental.noalias.scope.decl(metadata !14210)
  %i.mn = load i64, ptr %i.mi, align 8, !range !81, !alias.scope !14211, !noalias !14212, !noundef !77 ; 3 uses
  %.not.i.i.i44.i.i = icmp eq i64 %i.mn, 2
  br i1 %.not.i.i.i44.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.noexc45.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  %i.mp = load <2 x double>, ptr %i.mo, align 8, !alias.scope !14211, !noalias !14212
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 64
  %i.mr = load <2 x double>, ptr %i.mq, align 8, !alias.scope !14211, !noalias !14212
  %i.ms = trunc i64 %i.mn to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mu = load <2 x double>, ptr %i.mt, align 8, !alias.scope !14211, !noalias !14212
  %i.mv = insertelement <2 x i1> poison, i1 %i.ms, i64 0
  %i.mw = shufflevector <2 x i1> %i.mv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.mx = select <2 x i1> %i.mw, <2 x double> %i.mu, <2 x double> undef
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mz = load i64, ptr %i.my, align 8, !range !91, !alias.scope !14211, !noalias !14212, !noundef !77 ; 2 uses
  %i.na = trunc nuw i64 %i.mz to i1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.nc = load <2 x double>, ptr %i.nb, align 8, !alias.scope !14211, !noalias !14212
  %i.nd = insertelement <2 x i1> poison, i1 %i.na, i64 0
  %i.ne = shufflevector <2 x i1> %i.nd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.nf = select <2 x i1> %i.ne, <2 x double> %i.nc, <2 x double> undef
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.noexc45.i.i
  %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.mz, %bb.bi ], [ undef, %.noexc45.i.i ]
  %i.ng = phi <2 x double> [ %i.mx, %bb.bi ], [ undef, %.noexc45.i.i ]
  %i.nh = phi <2 x double> [ %i.nf, %bb.bi ], [ undef, %.noexc45.i.i ]
  %i.ni = phi <2 x double> [ %i.mp, %bb.bi ], [ undef, %.noexc45.i.i ]
  %i.nj = phi <2 x double> [ %i.mr, %bb.bi ], [ undef, %.noexc45.i.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mi, i64 80
  %i.nl = load i64, ptr %i.nk, align 8, !range !80, !alias.scope !14211, !noalias !14212, !noundef !77
  %.not16.i.i.i.i.i = icmp eq i64 %i.nl, -1
  br i1 %.not16.i.i.i.i.i, label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !14213)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mi, i64 96
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mi, i64 88
  %i.no = load ptr, ptr %i.nn, align 8, !alias.scope !14214, !noalias !14215, !nonnull !77, !noundef !77
  %i.np = load i64, ptr %i.nm, align 8, !alias.scope !14214, !noalias !14215, !noundef !77 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14216
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %i.np, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.i, !noalias !14175

.noexc.i.i.i:                                     ; preds = %bb.bk
  %i.nq = load i64, ptr %i.d, align 8, !range !91, !noalias !14216, !noundef !77
  %i.nr = trunc nuw i64 %i.nq to i1
  %i.ns = load i64, ptr %i.ak, align 8, !range !175, !noalias !14216, !noundef !77 ; 4 uses
  br i1 %i.nr, label %bb.bl, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i, !prof !79

bb.bl:                                            ; preds = %.noexc.i.i.i
  %i.nt = load i64, ptr %i.al, align 8, !noalias !14216
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ns, i64 %i.nt) #24
          to label %.noexc1.i.i.i unwind label %.loopexit.split-lp.i, !noalias !14175

.noexc1.i.i.i:                                    ; preds = %bb.bl
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.nu = load ptr, ptr %i.al, align 8, !noalias !14216, !nonnull !77, !noundef !77 ; 3 uses
  %i.nv = icmp ule i64 %i.np, %i.ns
  call void @llvm.assume(i1 %i.nv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14216
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.np, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i
  %i.nw = shl nuw nsw i64 %i.np, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr nonnull readonly align 4 %i.no, i64 %i.nw, i1 false), !noalias !14217
  br label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i

.loopexit.i:                                      ; preds = %bb.bk
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp.i:                             ; preds = %bb.bl
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mm, i64 noundef 104, i64 noundef 8) #21, !noalias !14175
  br label %.body46.i.i

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.bm, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i, %bb.bj
  %.sroa.55.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %bb.bj ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i ], [ %i.np, %bb.bm ]
  %.sroa.55.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %bb.bj ], [ %i.nu, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i ], [ %i.nu, %bb.bm ]
  %.sroa.03.0.i.i.i.i.i = phi i64 [ -1, %bb.bj ], [ %i.ns, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i ], [ %i.ns, %bb.bm ]
  store i64 %i.mn, ptr %i.mm, align 8, !noalias !14218
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store <2 x double> %i.ng, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store i64 %.sroa.5.sroa.0.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store <2 x double> %i.nh, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  store <2 x double> %i.ni, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 64
  store <2 x double> %i.nj, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 80
  store i64 %.sroa.03.0.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 88
  store ptr %.sroa.55.sroa.0.0.i.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 96
  store i64 %.sroa.55.sroa.4.0.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !14218
  br label %bb.bo

bb.bo:                                            ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.bf
  %storemerge.i.i = phi ptr [ null, %bb.bf ], [ %i.mm, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs7Ez7UXBn1VF_7parquet10geospatial10statistics20GeospatialStatisticsENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsbakdBCgU4AF_16influxdb3_server.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14175
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 296
  %i.ny = load i64, ptr %i.nx, align 8, !range !94, !noalias !14175, !noundef !77 ; 2 uses
  %.not25.i.i = icmp eq i64 %i.ny, -2
  br i1 %.not25.i.i, label %bb.bv, label %bb.bq

.body46.i.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata24ParquetPageEncodingStatsEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.bp, %bb.bn
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata24ParquetPageEncodingStatsEECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %i.nz, %bb.bp ], [ %lpad.phi.i, %bb.bn ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7Ez7UXBn1VF_7parquet4file10statistics10StatisticsEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(128) %i.l) #19
          to label %.body.i.i unwind label %bb.cw, !noalias !14175

bb.bp:                                            ; preds = %bb.bh
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !14219)
  call void @llvm.experimental.noalias.scope.decl(metadata !14220)
  %i.oa = icmp eq i64 %i.ny, -1
  br i1 %i.oa, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.5.0..sroa_idx225.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 304
  %.sroa.5.0.copyload226.i.i = load ptr, ptr %.sroa.5.0..sroa_idx225.i.i, align 8, !alias.scope !14221, !noalias !14175
  %.sroa.6.0..sroa_idx227.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 312
  %.sroa.6.0.copyload228.i.i = load i64, ptr %.sroa.6.0..sroa_idx227.i.i, align 8, !alias.scope !14221, !noalias !14175
  br label %_RNvXsA_NtNtCs7Ez7UXBn1VF_7parquet4file8metadataNtB5_24ParquetPageEncodingStatsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 312
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.013.0213.i, i64 304
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !14223, !noalias !14224, !nonnull !77, !noundef !77 ; 4 uses
  %i.oe = load i64, ptr %i.ob, align 8, !alias.scope !14223, !noalias !14224, !noundef !77 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14226
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 1152921504606846976) %i.oe, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc50.i.i unwind label %.loopexit139.i, !noalias !14175

.noexc50.i.i:                                     ; preds = %bb.bs
  %i.of = load i64, ptr %i.c, align 8, !range !91, !noalias !14226, !noundef !77
  %i.og = trunc nuw i64 %i.of to i1
  %i.oh = load i64, ptr %i.am, align 8, !range !175, !noalias !14226, !noundef !77 ; 8 uses
  br i1 %i.og, label %bb.bt, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i, !prof !79

bb.bt:                                            ; preds = %.noexc50.i.i
  %i.oi = load i64, ptr %i.an, align 8, !noalias !14226
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.oh, i64 %i.oi) #24
end_hunk_0
