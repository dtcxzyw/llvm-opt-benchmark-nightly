Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.10?download=true
inline.NumInlined: 1358
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationss9_1__NtB5_16FoldingRangeKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssA_1__NtB5_14CodeActionKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !1449, !noundef !3
  %i.e = xor i64 %i.d, -9223372036854775808
  switch i64 %i.e, label %bb.m [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.b, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.b, align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %i.b, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775805, ptr %i.b, align 8
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  store i64 -9223372036854775804, ptr %i.b, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %i.b, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  store i64 -9223372036854775802, ptr %i.b, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  store i64 -9223372036854775801, ptr %i.b, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  store i64 -9223372036854775800, ptr %i.b, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %i.b, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  store i64 -9223372036854775798, ptr %i.b, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @_RNvXs0_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @_RNvXsY_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsNtNtCscdodAO9FK5_5alloc6string6StringINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_14CodeActionKindE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1453
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  %i.j = load i64, ptr %i.a, align 8, !range !625, !noalias !1453, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !1435, !noalias !1453, !noundef !3 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.o, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i, !prof !6

bb.o:                                             ; preds = %.noexc
  %i.o = load i64, ptr %i.n, align 8, !noalias !1453
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #32
          to label %.noexc3 unwind label %bb.q

.noexc3:                                          ; preds = %bb.o
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %.noexc
  %i.p = load ptr, ptr %i.n, align 8, !noalias !1453, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp samesign ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1453
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.g, i64 range(i64 0, -9223372036854775808) %i.i, i1 false), !noalias !1458
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %bb.p, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i
  store i8 3, ptr %0, align 8, !alias.scope !1450, !noalias !1459
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1450, !noalias !1459
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1450, !noalias !1459
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1450, !noalias !1459
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.s ], [ %i.r, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.u:                                             ; preds = %bb.q
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssB_1__NtB5_14CodeActionKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBW_5impls13StringVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !412, !noundef !3
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RNvXsZ_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsNtB5_14CodeActionKindINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssC_1__NtB5_13CodeActionTagNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1425, !noundef !3
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %2 = zext i32 %i.d to i64
  %3 = select i1 %i.b, i64 %2, i64 1
  store i8 2, ptr %0, align 8, !alias.scope !1460
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1460
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1460
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssD_1__NtB5_13CodeActionTagNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %i.i = icmp ne i32 %i.h, 1
  %. = zext i1 %i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %., ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssF_1__NtB5_10TraceValueNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtBW_5impls13StringVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !412, !noundef !3
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RNvXs17_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsNtB6_10TraceValueINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssG_1__NtB5_10MarkupKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !1426, !noundef !3
  %i.e = xor i64 %i.d, -9223372036854775808
  switch i64 %i.e, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @_RNvXs0_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @_RNvXs1c_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsNtNtCscdodAO9FK5_5alloc6string6StringINtNtCs4NRVxsYgnAr_4core7convert4FromNtB6_10MarkupKindE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1466
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.j = load i64, ptr %i.a, align 8, !range !625, !noalias !1466, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !1435, !noalias !1466, !noundef !3 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.f, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i, !prof !6

bb.f:                                             ; preds = %.noexc
  %i.o = load i64, ptr %i.n, align 8, !noalias !1466
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #32
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.f
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %.noexc
  %i.p = load ptr, ptr %i.n, align 8, !noalias !1466, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp samesign ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1466
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.g, i64 range(i64 0, -9223372036854775808) %i.i, i1 false), !noalias !1471
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.c) #34
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjNt1Wzngcv_9ty_server.exit.i.i
  store i8 3, ptr %0, align 8, !alias.scope !1463, !noalias !1472
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1463, !noalias !1472
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1463, !noalias !1472
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1463, !noalias !1472
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssH_1__NtB5_10MarkupKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsD_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !412, !noundef !3
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssa_1__NtB5_10SymbolKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server:bb.a
    i32 0, label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 18, label %bb.s
    i32 19, label %bb.t
    i32 20, label %bb.u
    i32 21, label %bb.v
    i32 22, label %bb.w
    i32 23, label %bb.x
    i32 24, label %bb.y
    i32 25, label %bb.z
    i32 26, label %bb.aa
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.k:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.o:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.p:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.q:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.r:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.s:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.t:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.u:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.v:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.w:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.x:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.y:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.z:                                             ; preds = %bb.a
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

bb.aa:                                            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit

_RNvXsq_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_10SymbolKindE4from.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.sroa.02.0.i = phi i64 [ %i.d, %bb.aa ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ], [ 19, %bb.s ], [ 20, %bb.t ], [ 21, %bb.u ], [ 22, %bb.v ], [ 23, %bb.w ], [ 24, %bb.x ], [ 25, %bb.y ], [ 26, %bb.z ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1498
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1498
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1498
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssb_1__NtB5_10SymbolKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeINtNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtNtCsjjJOMqlcxxG_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCscvBHLZPbXnS_10serde_json5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyNtNvXs16_NtB28_5implsmNtB28_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %switch.tableidx.i = add i32 %i.h, -1
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %switch.tableidx.i, i32 26)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select.i, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssb_1__NtB5_10SymbolKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %switch.tableidx.i = add i32 %i.h, -1
  %spec.select.i = call i32 @llvm.umin.i32(i32 %switch.tableidx.i, i32 26)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select.i, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssc_1__NtB5_9SymbolTagNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1425, !noundef !3
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %2 = zext i32 %i.d to i64
  %3 = select i1 %i.b, i64 %2, i64 1
  store i8 2, ptr %0, align 8, !alias.scope !1501
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1501
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1501
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssd_1__NtB5_9SymbolTagNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %i.i = icmp ne i32 %i.h, 1
  %. = zext i1 %i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %., ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssi_1__NtB5_13InlayHintKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !721, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1504
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1504
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1504
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssk_1__NtB5_11MessageTypeNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1507, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.f ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1508
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1508
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1508
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssm_1__NtB5_20TextDocumentSyncKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1483, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ], [ 0, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1511
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1511
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1511
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssq_1__NtB5_18CompletionItemKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1514, !noundef !3
  switch i32 %i.a, label %default.unreachable [
    i32 0, label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 18, label %bb.s
    i32 19, label %bb.t
    i32 20, label %bb.u
    i32 21, label %bb.v
    i32 22, label %bb.w
    i32 23, label %bb.x
    i32 24, label %bb.y
    i32 25, label %bb.z
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.k:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.o:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.p:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.q:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.r:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.s:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.t:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.u:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.v:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.w:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.x:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.y:                                             ; preds = %bb.a
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

bb.z:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit

_RNvXsO_NtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsmINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18CompletionItemKindE4from.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.02.0.i = phi i64 [ %i.d, %bb.z ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ], [ 19, %bb.s ], [ 20, %bb.t ], [ 21, %bb.u ], [ 22, %bb.v ], [ 23, %bb.w ], [ 24, %bb.x ], [ 25, %bb.y ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1515
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1515
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1515
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssr_1__NtB5_18CompletionItemKindNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %switch.tableidx.i = add i32 %i.h, -1
  %spec.select.i = call i32 @llvm.umin.i32(i32 %switch.tableidx.i, i32 25)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select.i, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsss_1__NtB5_17CompletionItemTagNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1425, !noundef !3
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %2 = zext i32 %i.d to i64
  %3 = select i1 %i.b, i64 %2, i64 1
  store i8 2, ptr %0, align 8, !alias.scope !1518
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1518
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1518
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationsst_1__NtB5_17CompletionItemTagNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 2 uses
  %i.i = icmp ne i32 %i.h, 1
  %. = zext i1 %i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %., ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssu_1__NtB5_16InsertTextFormatNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !721, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1521
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1521
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1521
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssw_1__NtB5_14InsertTextModeNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !721, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1524
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1524
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1524
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssx_1__NtB5_14InsertTextModeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBW_5implsmNtBW_11Deserialize11deserialize16PrimitiveVisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !1425, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !3 ; 3 uses
  %switch.selectcmp = icmp eq i32 %i.h, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  %switch.selectcmp1 = icmp eq i32 %i.h, 1
  %switch.select2 = select i1 %switch.selectcmp1, i32 0, i32 %switch.select
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %switch.select2, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerationssy_1__NtB5_21DocumentHighlightKindNtNtCs6nZeqdiIoCH_10serde_core3ser9Serialize9serializeNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !1483, !noundef !3
  switch i32 %i.a, label %default.unreachable3 [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.d, %bb.d ], [ 2, %bb.b ], [ 3, %bb.c ], [ 1, %bb.a ]
  store i8 2, ptr %0, align 8, !alias.scope !1527
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1527
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1527
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCsh7jLiOpeRCu_8ordermap5serdeINtNtB7_3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBW_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_mapINtNtCs5e9M2GLoJMY_8indexmap5serde15IndexMapVisitorINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB2M_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !412, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.59.0..sroa_idx, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}
end_hunk_1
