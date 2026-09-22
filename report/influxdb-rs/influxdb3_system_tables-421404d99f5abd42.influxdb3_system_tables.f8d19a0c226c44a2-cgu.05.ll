Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_system_tables-421404d99f5abd42.influxdb3_system_tables.f8d19a0c226c44a2-cgu.05?download=true
inline.NumInlined: 1820
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsh4GC5dvIChH_27influxdb3_processing_engine14PluginFileInfoE8grow_oneCslmsipRFvlgQ_23influxdb3_system_tables:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !8132
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !8132
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !8132, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !8132, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !8132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8132
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !8132, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8132
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !8132
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !8132
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !30
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #32
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #32
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !30
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  br i1 %2, label %bb.g, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #32
  br label %bb.h

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @35, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCslmsipRFvlgQ_23influxdb3_system_tables, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8135)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !8135, !noundef !3
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = load i128, ptr %i.l, align 16, !noalias !8135, !noundef !3 ; 5 uses
  %i.n = trunc i128 %i.m to i32
  %i.o = icmp ult i32 %i.n, 13
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i128 %i.m, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = lshr i128 %i.m, 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8135, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !8135, !noundef !3
  %i.w = and i64 %i.q, 4294967295                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %2 = trunc nuw nsw i128 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !8135, !noundef !3
  %i.ab = trunc i128 %i.m to i64
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  br label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = trunc i128 %i.m to i64
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr i8, ptr %i.l, i64 4
  br label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCslmsipRFvlgQ_23influxdb3_system_tables.exit

_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %i.ag, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE13with_capacityCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i64 %1, 4                            ; 4 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
  %.not.i = icmp ugt i64 %i.a, 9223372036854775792
  %or.cond.i = or i1 %i.b, %.not.i
  br i1 %or.cond.i, label %bb.e, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !8138
  %i.d = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !8138 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.d to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 16, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.a) #33
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.d, %bb.b
  %.sroa.10.0 = phi i64 [ %i.f, %bb.d ], [ 16, %bb.b ]
  %.sroa.4.0 = phi i64 [ %1, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.g = inttoptr i64 %.sroa.10.0 to ptr
  %i.h = icmp samesign ule i64 %1, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %1, ptr %.sroa.53.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.j, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 8192, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE17flush_in_progressCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB5_13MutableBufferINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4fromCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %i.p, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.n, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.q, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !8159
  %i.r = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !8159 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #33
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #31
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.ah, %bb.j ], [ %i.ah, %bb.i ], [ %i.am, %bb.m ], [ %i.am, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.r, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.n, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !8160)
  %i.x = icmp ult i64 %i.n, 4294967295
  br i1 %i.x, label %bb.f, label %.invoke.i, !prof !29

.invoke.i:                                        ; preds = %bb.f, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit
  %i.y = phi ptr [ @39, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit ], [ @41, %bb.f ]
  %i.z = phi ptr [ @40, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit ], [ @42, %bb.f ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.y, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #33
          to label %.cont.i unwind label %bb.l, !noalias !8161

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCslmsipRFvlgQ_23influxdb3_system_tables.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !8160, !noalias !8162, !noundef !3 ; 5 uses
  %i.ac = icmp ult i64 %i.ab, 384307168202282326
  call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i64 %i.ab, 4294967295
  br i1 %i.ad, label %bb.g, label %.invoke.i, !prof !29

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8160
  call void @llvm.experimental.noalias.scope.decl(metadata !8163)
  call void @llvm.experimental.noalias.scope.decl(metadata !8164)
  %i.af = load i64, ptr %i.ae, align 8, !range !8, !alias.scope !8165, !noalias !8166, !noundef !3
  %i.ag = icmp eq i64 %i.ab, %i.af
  br i1 %i.ag, label %bb.h, label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferE8grow_oneCs6OdVU8oGBWI_10arrow_data(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCslmsipRFvlgQ_23influxdb3_system_tables.exit unwind label %bb.i, !noalias !8166

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8167)
  call void @llvm.experimental.noalias.scope.decl(metadata !8168)
  call void @llvm.experimental.noalias.scope.decl(metadata !8169)
  %i.ai = load ptr, ptr %i.a, align 8, !alias.scope !8170, !noalias !8171, !nonnull !3, !noundef !3
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !8172
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.k, !noalias !8162

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !8162
  unreachable

bb.l:                                             ; preds = %.invoke.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !8173
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n, !noalias !8160

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !8160
  unreachable

_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !8165, !noalias !8166, !nonnull !3, !noundef !3
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.at = add nuw nsw i64 %i.ab, 1
  store i64 %i.at, ptr %i.aa, align 8, !alias.scope !8165, !noalias !8166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCslmsipRFvlgQ_23influxdb3_system_tables.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE6finishCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  tail call fastcc void @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE17flush_in_progressCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.c unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.g, %bb.f, %bb.h, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.j, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutable6BufferEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %bb.k unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCsb9J5XDRPpZo_9hashbrown3rawINtB5_8RawTablejE5clearCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs5_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferoEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecoEE4fromCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8186)
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !8186, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !8187
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 26, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer4null10NullBufferEECslmsipRFvlgQ_23influxdb3_system_tables.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef readonly align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.g = load i128, ptr %i.f, align 16, !noundef !3 ; 6 uses
  %i.h = trunc i128 %i.g to i32
  %i.i = icmp ult i32 %i.h, 13
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i128 %i.g, 64                       ; 2 uses
  %i.k = trunc i128 %i.j to i32
  %i.l = lshr i128 %i.g, 96                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc i64 %i.n to i32
  %i.q = icmp ult i32 %i.k, %i.p
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = trunc i128 %i.g to i64
  %i.s = and i64 %i.r, 15
  %i.t = getelementptr i8, ptr %i.f, i64 4
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %2 = trunc nuw nsw i128 %i.l to i64             ; 3 uses
  %i.u = trunc i128 %i.g to i64
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %2                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %.not = icmp ugt i64 %i.w, %i.y
  br i1 %.not, label %bb.h, label %bb.i, !prof !6

bb.g:                                             ; preds = %bb.d
  %i.z = trunc nuw i128 %i.j to i64
  %i.aa = and i64 %i.z, 4294967295                ; 3 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.n
  br i1 %i.ab, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.w, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #33
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %2
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %3 = trunc nuw nsw i128 %i.l to i64             ; 3 uses
  %i.ak = trunc i128 %i.g to i64
  %i.al = and i64 %i.ak, 4294967295               ; 2 uses
  %i.am = add nuw nsw i64 %i.al, %3               ; 2 uses
  %.not12 = icmp ugt i64 %i.am, %i.aj
  br i1 %.not12, label %bb.l, label %bb.m, !prof !6

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #33
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.am, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %3
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.e
  %.sroa.4.0 = phi i64 [ %i.s, %bb.e ], [ %i.al, %bb.m ], [ %i.v, %bb.i ]
  %.sroa.0.0 = phi ptr [ %i.t, %bb.e ], [ %i.ap, %bb.m ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.aq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ar = insertvalue { ptr, i64 } %i.aq, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array10byte_array16GenericByteArrayINtNtBy_5types17GenericStringTypelEENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @95, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @96, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBy_5types14StringViewTypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @97, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types10UInt64TypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types19TimestampSecondTypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @99, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types22DurationNanosecondTypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @100, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types23TimestampNanosecondTypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @101, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBy_5types9Int64TypeENtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @102, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs6ePPILGZvJ2_11arrow_array5array13boolean_array12BooleanArrayNtB2_3Any7type_idCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables11last_cachesNtB5_15LastCachesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !8190
  %i.f = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !8190 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables11last_cachesNtBL_15LastCachesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0E3newBN_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables11last_cachesNtBJ_15LastCachesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0EBL_(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables11last_cachesNtBL_15LastCachesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0E3newBN_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1116, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables6tablesNtB5_11TablesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !8193
  %i.f = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !8193 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables6tablesNtBL_11TablesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0E3newBN_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables6tablesNtBJ_11TablesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0EBL_(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables6tablesNtBL_11TablesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0E3newBN_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1117, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables7queriesNtB5_12QueriesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 %2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !8196
  %i.f = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !8196 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCNvXs0_NtCslmsipRFvlgQ_23influxdb3_system_tables7queriesNtBL_12QueriesTableNtNtCs6yljrSBYifA_17iox_system_tables13system_tables14IoxSystemTable4scan0E3newBN_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
end_hunk_0
