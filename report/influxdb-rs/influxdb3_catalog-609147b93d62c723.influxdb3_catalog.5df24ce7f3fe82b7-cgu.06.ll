Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.06?download=true
inline.NumInlined: 4463
inline.NumDeleted: 2366
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_:bb.a
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !10219
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.g unwind label %bb.e, !noalias !10219

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %_RNvXs9_NtNtCs844E4pPEVZX_17influxdb3_catalog6format6recordNtB5_6RecordNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !10219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10219
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10225
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 768614336404564651) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !10225
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !10225, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !10225, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !10225
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !10225
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !10225, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10225
  store i64 %i.i, ptr %0, align 8, !alias.scope !10224
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !10224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !10224
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.p = mul nuw nsw i64 %i.e, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !noalias !10224
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !10224
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v312GenerationOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10230
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10230
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !10230, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !10230, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !10230
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !10230
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !10230, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10230
  store i64 %i.i, ptr %0, align 8, !alias.scope !10229
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !10229
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !10229
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v312GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.p = mul nuw nsw i64 %i.e, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !10229
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !10229
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v312GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v312GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.17.i = alloca [16 x i8], align 8         ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10255
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 104811045873349726) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 88), !noalias !10255
  %i.j = load i64, ptr %i.d, align 8, !range !17, !noalias !10255, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !26, !noalias !10255, !noundef !4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !10255
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #32, !noalias !10255
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !10255, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10255
  store i64 %i.m, ptr %i.e, align 8, !noalias !10255
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !10255
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8, !noalias !10255
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.012.062.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ab, %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 16 uses
  %.sroa.7.061.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.060.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.z, %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.z = add i64 %.sroa.10.060.i, -1              ; 2 uses
  %i.aa = icmp eq ptr %.sroa.012.062.i, %i.t
  br i1 %i.aa, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 88
  %i.ac = add nuw nsw i64 %.sroa.7.061.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10257)
  %i.ad = load i64, ptr %.sroa.012.062.i, align 8, !range !12, !alias.scope !10258, !noundef !4
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !10258, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !10258, !noundef !4
  %i.aj = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !10259
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.p

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10261
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10262, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10262, !noundef !4 ; 2 uses
  %i.ap = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !10261
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !noalias !10261
  store i64 %i.ao, ptr %i.v, align 8, !noalias !10261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10261
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10262, !nonnull !4, !noundef !4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 48 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10262, !noundef !4
  %i.av = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !10261
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.as, ptr %i.b, align 8, !noalias !10261
  store i64 %i.au, ptr %i.w, align 8, !noalias !10261
  %2 = load <2 x i64>, ptr %i.at, align 8, !alias.scope !10262
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 64
  %3 = load i64, ptr %i.ax, align 8, !alias.scope !10262, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10263)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10264, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.ay, align 8, !alias.scope !10264, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10265
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.bb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10261

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.bc = load i64, ptr %i.a, align 8, !range !17, !noalias !10265, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = load i64, ptr %i.x, align 8, !range !26, !noalias !10265, !noundef !4 ; 3 uses
  br i1 %i.bd, label %bb.j, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, !prof !5

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bf = load i64, ptr %i.y, align 8, !noalias !10265
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bf) #32
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10261

.noexc3.i.i.i:                                    ; preds = %bb.j
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.bg = load ptr, ptr %i.y, align 8, !noalias !10265, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = icmp ule i64 %i.bb, %i.be
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10265
  %.not.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %i.bb, i1 false), !noalias !10266
  br label %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.j
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  %i.bi = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !10267
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.m:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.n, !noalias !10261

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !10261
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.m, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !10268)
  call void @llvm.experimental.noalias.scope.decl(metadata !10269)
  %i.bl = load ptr, ptr %i.c, align 8, !alias.scope !10270, !noalias !10261, !nonnull !4, !noundef !4
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !10271
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.s unwind label %bb.n, !noalias !10261

_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !10272, !noalias !10273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10261
  %i.bp = ptrtoint ptr %i.am to i64
  br label %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !10258, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 32
  %.sroa.11.32.copyload.i = load i64, ptr %i.bs, align 8, !alias.scope !10274
  %.sroa.13.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.012.062.i, i64 40
  %.sroa.13.32.copyload.i = load ptr, ptr %.sroa.13.32..sroa_idx.i, align 8, !alias.scope !10274
  br label %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %bb.p, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
  %.sroa.14.0.i = phi i64 [ undef, %bb.p ], [ %3, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.0.i = phi ptr [ %.sroa.13.32.copyload.i, %bb.p ], [ %i.as, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.11.0.i = phi i64 [ %.sroa.11.32.copyload.i, %bb.p ], [ %i.ao, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.9.0.i = phi i64 [ %i.br, %bb.p ], [ %i.bp, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.715.0.i = phi i64 [ %i.ai, %bb.p ], [ %i.bb, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.514.0.i = phi ptr [ %i.ag, %bb.p ], [ %i.bg, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.013.0.i = phi i64 [ -1, %bb.p ], [ %i.be, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %i.bt = phi <2 x i64> [ undef, %bb.p ], [ %2, %_RNvXs1T_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %i.bu = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %.sroa.7.061.i ; 9 uses
  %.sroa.1242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1242.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.i, i64 16, i1 false), !noalias !10255
  store i64 %.sroa.013.0.i, ptr %i.bu, align 8, !noalias !10255
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sroa.514.0.i, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.sroa.715.0.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %.sroa.9.0.i, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i64 %.sroa.11.0.i, ptr %.sroa.737.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %.sroa.13.0.i, ptr %.sroa.838.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store <2 x i64> %i.bt, ptr %.sroa.939.0..sroa_idx.i, align 8, !noalias !10255
  %.sroa.1040.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store i64 %.sroa.14.0.i, ptr %.sroa.1040.0..sroa_idx.i, align 8, !noalias !10255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  %i.bv = icmp eq i64 %i.z, 0
  br i1 %i.bv, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.c

bb.r:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !10255
  unreachable

bb.s:                                             ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  store i64 %.sroa.7.061.i, ptr %i.s, align 8, !noalias !10255
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.e) #33
          to label %bb.t unwind label %bb.r, !noalias !10255

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %lpad.loopexit.split-lp39

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v313NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit: ; preds = %bb.c, %_RNvXs1J_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_13NodeCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  store i64 %i.i, ptr %i.s, align 8, !noalias !10255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !10254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10255
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v314TokenCatalogOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [104 x i8], align 8               ; 15 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = load i64, ptr %i.t, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10335
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef range(i64 0, 88686269585142076) %i.w, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104), !noalias !10335
  %i.x = load i64, ptr %i.q, align 8, !range !17, !noalias !10335, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !26, !noalias !10335, !noundef !4 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.y, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !10335
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #32, !noalias !10336
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !10335, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp ule i64 %i.w, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10335
  store i64 %i.aa, ptr %i.s, align 8, !noalias !10335
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !noalias !10335
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !noalias !10335
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.v, i64 %i.w
  %i.ai = icmp eq i64 %i.aa, 0
  br i1 %i.ai, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v314TokenCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %.sroa.929.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.1030.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs4X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.014.0126.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.bh, %_RNvXs4X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 29 uses
  %.sroa.7.0123.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bi, %_RNvXs4X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.0122.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.bf, %_RNvXs4X_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.bf = add i64 %.sroa.10.0122.i, -1            ; 2 uses
  %i.bg = icmp eq ptr %.sroa.014.0126.i, %i.ah
  br i1 %i.bg, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v314TokenCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.d

.loopexit.split-lp32.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.o, %bb.m
  %lpad.loopexit.split-lp263 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp32.i

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 104
  %i.bi = add nuw nsw i64 %.sroa.7.0123.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10338)
  %i.bj = load i64, ptr %.sroa.014.0126.i, align 8, !range !21, !alias.scope !10339, !noundef !4 ; 2 uses
  switch i64 %i.bj, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.l
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.x
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10341
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !10342, !nonnull !4, !noundef !4 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 72 ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !10342
  %i.bp = load i64, ptr %i.bn, align 8, !alias.scope !10342, !noundef !4
  %i.bq = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !noalias !10343
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.bm, ptr %i.p, align 8, !noalias !10341
  store i64 %i.bp, ptr %i.bc, align 8, !noalias !10341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10344)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.014.0126.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !10345, !nonnull !4, !noundef !4
  %i.bv = load i64, ptr %i.bs, align 8, !alias.scope !10345, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10346
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.bv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp37.i.loopexit.split-lp.loopexit.split-lp, !noalias !10343

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.bw = load i64, ptr %i.o, align 8, !range !17, !noalias !10346, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = load i64, ptr %i.bd, align 8, !range !26, !noalias !10346, !noundef !4 ; 3 uses
  br i1 %i.bx, label %bb.g, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, !prof !5

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.bz = load i64, ptr %i.be, align 8, !noalias !10346
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.by, i64 %i.bz) #32
          to label %.noexc2.i.i.i unwind label %.loopexit.split-lp37.i.loopexit.split-lp.loopexit.split-lp, !noalias !10343

.noexc2.i.i.i:                                    ; preds = %bb.g
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.ca = load ptr, ptr %i.be, align 8, !noalias !10346, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = icmp ule i64 %i.bv, %i.by
  tail call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10346
  %.not.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXs52_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_23CreateAdminTokenDetailsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %i.bu, i64 range(i64 0, -9223372036854775808) %i.bv, i1 false), !noalias !10347
  br label %_RNvXs52_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v3NtB6_23CreateAdminTokenDetailsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.trap()
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38DeleteOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10685
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10685
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !10685, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !10685, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !10685
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !10685
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !10685, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10685
  store i64 %i.i, ptr %0, align 8, !alias.scope !10684
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !10684
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !10684
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !10684
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !10684
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v38NodeModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v412GenerationOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10690
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !10690
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !10690, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !10690, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !10690
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !10690
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !10690, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10690
  store i64 %i.i, ptr %0, align 8, !alias.scope !10689
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !10689
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !10689
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v412GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.p = mul nuw nsw i64 %i.e, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !10689
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !10689
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v412GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v412GenerationOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.1020.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.17.i = alloca [16 x i8], align 8         ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10717
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 64051194700380388) %i.m, i1 noundef zeroext false, i64 noundef 8, i64 noundef 144), !noalias !10717
  %i.n = load i64, ptr %i.h, align 8, !range !17, !noalias !10717, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !26, !noalias !10717, !noundef !4 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.o, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.r, align 8, !noalias !10717
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #32, !noalias !10718
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.t = load ptr, ptr %i.r, align 8, !noalias !10717, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp ule i64 %i.m, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10717
  store i64 %i.q, ptr %i.i, align 8, !noalias !10717
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.t, ptr %i.v, align 8, !noalias !10717
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.w, align 8, !noalias !10717
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.l, i64 %i.m
  %i.y = icmp eq i64 %i.q, 0
  br i1 %i.y, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.i.sroa.8.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.aa, %.lr.ph.i
  %.sroa.012.097.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.ah, %bb.aa ] ; 18 uses
  %.sroa.7.095.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.aa ] ; 3 uses
  %.sroa.10.094.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.af, %bb.aa ]
  %i.af = add i64 %.sroa.10.094.i, -1             ; 2 uses
  %i.ag = icmp eq ptr %.sroa.012.097.i, %i.x
  br i1 %i.ag, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 144
  %i.ai = add nuw nsw i64 %.sroa.7.095.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1020.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10720)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.aj = load i64, ptr %.sroa.012.097.i, align 8, !range !12, !alias.scope !10721, !noundef !4
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !10721, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10721, !noundef !4
  %i.ap = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !10722
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10724
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10725, !nonnull !4, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 80
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10725, !noundef !4 ; 2 uses
  %i.av = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !10726
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.as, ptr %i.g, align 8, !noalias !10724
  store i64 %i.au, ptr %i.z, align 8, !noalias !10724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10724
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !10725, !nonnull !4, !noundef !4 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 96 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10725, !noundef !4
  %i.bb = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !10726
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.ay, ptr %i.f, align 8, !noalias !10724
  store i64 %i.ba, ptr %i.aa, align 8, !noalias !10724
  %2 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !10725
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 112
  %3 = load i64, ptr %i.bd, align 8, !alias.scope !10725, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10728)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !10729, !nonnull !4, !noundef !4
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !10729, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10731
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.bh, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10726

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.bi = load i64, ptr %i.a, align 8, !range !17, !noalias !10731, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = load i64, ptr %i.ab, align 8, !range !26, !noalias !10731, !noundef !4 ; 4 uses
  br i1 %i.bj, label %bb.j, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, !prof !5

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bl = load i64, ptr %i.ac, align 8, !noalias !10731
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bl) #32
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !10726

.noexc9.i.i.i:                                    ; preds = %bb.j
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.bm = load ptr, ptr %i.ac, align 8, !noalias !10731, !nonnull !4, !noundef !4 ; 3 uses
  %i.bn = icmp ule i64 %i.bh, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10731
  store i64 %i.bk, ptr %i.e, align 8, !alias.scope !10732, !noalias !10724
  store ptr %i.bm, ptr %i.ad, align 8, !alias.scope !10732, !noalias !10724
  store i64 0, ptr %i.ae, align 8, !alias.scope !10732, !noalias !10724
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bh, i1 false), !noalias !10733
  store i64 %i.bh, ptr %i.ae, align 8, !alias.scope !10732, !noalias !10724
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_.exit.i.i.i

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB1f_.exit.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %i.bo = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !10734
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB1f_.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.w, !noalias !10735

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.j
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB1f_.exit.i.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_.exit.i.i.i: ; preds = %bb.k, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10724
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 24 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !12, !alias.scope !10725, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.br, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10724
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.r unwind label %bb.q, !noalias !10735

bb.o:                                             ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_.exit.i.i.i
  store i64 -1, ptr %i.d, align 8, !noalias !10724
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 48 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !12, !alias.scope !10725, !noundef !4
  %.not6.i.i.i = icmp eq i64 %i.bt, -1
  br i1 %.not6.i.i.i, label %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i, label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.q
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.q ], [ %i.bv, %bb.u ], [ %i.bv, %bb.t ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB1f_.exit.i.i.i unwind label %bb.w, !noalias !10735

bb.q:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !10724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10724
  br label %bb.p

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10724
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.v unwind label %bb.t, !noalias !10735

bb.t:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load i64, ptr %i.d, align 8, !range !12, !alias.scope !10736, !noalias !10724, !noundef !4
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i unwind label %bb.w, !noalias !10735

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.b, align 8, !noalias !10724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !10737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10724
  br label %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i

bb.w:                                             ; preds = %bb.x, %bb.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, %bb.m
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !10735
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB1f_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10738)
  call void @llvm.experimental.noalias.scope.decl(metadata !10739)
  %i.bz = load ptr, ptr %i.g, align 8, !alias.scope !10740, !noalias !10724, !nonnull !4, !noundef !4
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !10741
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.ac unwind label %bb.w, !noalias !10735

_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.v, %bb.p
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.v ], [ -1, %bb.p ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 120
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 136
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !10725, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !alias.scope !10742, !noalias !10718
  %.sroa.0.i.sroa.6.24.copyload.i = load i64, ptr %i.d, align 8, !noalias !10743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.8.24..sroa_idx.i, i64 16, i1 false), !noalias !10744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !10744
  br label %bb.aa

bb.y:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !10721, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.097.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !10742, !noalias !10718
  br label %bb.aa

bb.z:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i
  %.sroa.18.0.i = phi i64 [ undef, %bb.y ], [ %i.ce, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.14.0.i = phi i64 [ undef, %bb.y ], [ %3, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.0.i = phi ptr [ undef, %bb.y ], [ %i.ay, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.12.0.i = phi i64 [ undef, %bb.y ], [ %i.au, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.11.0.i = phi ptr [ undef, %bb.y ], [ %i.as, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.9.0.i = phi i64 [ undef, %bb.y ], [ %.sroa.0.0.i.i.i, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.718.0.i = phi i64 [ %i.cg, %bb.y ], [ %.sroa.0.i.sroa.6.24.copyload.i, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.6.0.i = phi i64 [ %i.ao, %bb.y ], [ %i.bh, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.515.0.i = phi ptr [ %i.am, %bb.y ], [ %i.bm, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.013.0.i = phi i64 [ -1, %bb.y ], [ %i.bk, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  %i.ci = phi <2 x i64> [ undef, %bb.y ], [ %2, %_RNvXs2B_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_15RegisterNodeLogNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr %i.t, i64 %.sroa.7.095.i ; 14 uses
  %.sroa.755.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.755.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !10718
  %.sroa.957.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.957.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1020.i, i64 16, i1 false), !noalias !10718
  %.sroa.1664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1664.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17.i, i64 16, i1 false), !noalias !10718
  store i64 %.sroa.013.0.i, ptr %i.cj, align 8, !noalias !10718
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.sroa.515.0.i, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %.sroa.718.0.i, ptr %.sroa.654.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store i64 %.sroa.9.0.i, ptr %.sroa.856.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1058.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store ptr %.sroa.11.0.i, ptr %.sroa.1058.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store i64 %.sroa.12.0.i, ptr %.sroa.1159.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  store ptr %.sroa.13.0.i, ptr %.sroa.1260.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  store <2 x i64> %i.ci, ptr %.sroa.1361.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  store i64 %.sroa.14.0.i, ptr %.sroa.1462.0..sroa_idx.i, align 8, !noalias !10718
  %.sroa.1765.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  store i64 %.sroa.18.0.i, ptr %.sroa.1765.0..sroa_idx.i, align 8, !noalias !10718
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1020.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  %i.ck = icmp eq i64 %i.af, 0
  br i1 %i.ck, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.c

bb.ab:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !10718
  unreachable

bb.ac:                                            ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i
  store i64 %.sroa.7.095.i, ptr %i.w, align 8, !noalias !10717
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #33
          to label %bb.ad unwind label %bb.ab, !noalias !10718

bb.ad:                                            ; preds = %bb.ac
  resume { ptr, i32 } %.pn.pn.i.i.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413NodeCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit: ; preds = %bb.c, %bb.aa, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  store i64 %i.m, ptr %i.w, align 8, !noalias !10717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10717
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413StorageModeOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10749
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10749
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !10749, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !10749, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !10749
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !10749
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !10749, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10749
  store i64 %i.i, ptr %0, align 8, !alias.scope !10748
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !10748
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !10748
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413StorageModeOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !10748
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !10748
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413StorageModeOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v413StorageModeOpNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalEBT_.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v414TokenCatalogOpENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 16 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = load i64, ptr %i.p, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10797
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, 96076792050570582) %i.s, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96), !noalias !10797
  %i.t = load i64, ptr %i.m, align 8, !range !17, !noalias !10797, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !26, !noalias !10797, !noundef !4 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.u, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.x, align 8, !noalias !10797
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #32, !noalias !10798
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.a
  %i.z = load ptr, ptr %i.x, align 8, !noalias !10797, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp ule i64 %i.s, %i.w
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10797
  store i64 %i.w, ptr %i.o, align 8, !noalias !10797
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !10797
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !noalias !10797
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.r, i64 %i.s
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v414TokenCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %.sroa.813.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %.sroa.1015.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs6g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.014.0107.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.ax, %_RNvXs6g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 22 uses
  %.sroa.7.0104.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %_RNvXs6g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.0103.i = phi i64 [ %i.w, %.lr.ph.i ], [ %i.av, %_RNvXs6g_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB6_14TokenCatalogOpNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i ]
  %i.av = add i64 %.sroa.10.0103.i, -1            ; 2 uses
  %i.aw = icmp eq ptr %.sroa.014.0107.i, %i.ad
  br i1 %i.aw, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v414TokenCatalogOpNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBR_.exit, label %bb.d

.loopexit.split-lp27.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.p, %bb.n
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp27.i

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 96
  %i.ay = add nuw nsw i64 %.sroa.7.0104.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10800)
  %i.az = load i64, ptr %.sroa.014.0107.i, align 8, !range !21, !alias.scope !10801, !noundef !4 ; 3 uses
  %i.ba = add nsw i64 %i.az, -2
  %i.bb = icmp samesign ugt i64 %i.az, 1
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 3
  switch i64 %i.bc, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.m
    i64 2, label %bb.p
    i64 3, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10803
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10804, !nonnull !4, !noundef !4 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.014.0107.i, i64 72 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !10804
  %i.bi = load i64, ptr %i.bg, align 8, !alias.scope !10804, !noundef !4
  %i.bj = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !10805
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %bb.g

end_hunk_1
