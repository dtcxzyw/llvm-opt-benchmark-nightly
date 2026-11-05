Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.13?download=true
inline.NumInlined: 222
inline.NumDeleted: 102
begin_hunk_0_@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format18parse_chunk_header:bb.a
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = trunc i64 %i.d to i32
  store i32 %i.f, ptr %i.b, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  store ptr %4, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.l, align 8
  call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB13_4skip4SkipINtNtNtB17_5slice4iter4ItermEENCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0EEB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 4611686018427387904) %5)
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !274, !noundef !4 ; 3 uses
  %i.n = icmp ult i64 %i.m, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !274, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.r = shl nuw nsw i64 %5, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull readonly align 4 %4, i64 %i.r, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8, !alias.scope !274
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i64 [ %.pre.i, %bb.d ], [ %i.m, %bb.c ]
  %i.t = add i64 %i.s, %5
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !274
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit, %bb.b
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3)
  %i.u = load i64, ptr %i.c, align 8, !alias.scope !275, !noundef !4 ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.v)
  %.not.i1 = icmp eq i64 %3, 0
  br i1 %.not.i1, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !275, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %.pre.i2 = load i64, ptr %i.c, align 8, !alias.scope !275
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i2, %bb.f ], [ %i.u, %bb.e ]
  %i.aa = add i64 %i.z, %3
  store i64 %i.aa, ptr %i.c, align 8, !alias.scope !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants20is_stable_chunk_size(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, i64 8) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, align 8, !noundef !4
  %i.l = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, i64 8) acquire, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit2, label %bb.c, !prof !12

bb.c:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit2

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit2: ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit, %bb.c
  %i.n = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants21MINIMUM_CHUNK_DIVISOR, align 8, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit2
  %i.p = udiv i64 %i.k, %i.n                      ; 2 uses
  %i.q = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, i64 8) acquire, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit3, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit3

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit3: ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE, align 8, !noundef !4
  %i.t = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, i64 8) acquire, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4, label %bb.f, !prof !12

bb.f:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4: ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit3, %bb.f
  %i.v = shl i64 %i.p, 1
  %.not = icmp ult i64 %0, %i.v
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit2
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #26
  unreachable

bb.h:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4
  %i.w = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants24MAXIMUM_CHUNK_MULTIPLIER, align 8, !noundef !4
  %i.x = mul i64 %i.w, %i.s
  %i.y = sub i64 %i.x, %i.p
  %i.z = icmp ult i64 %0, %i.y
  br label %bb.i

bb.i:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4, %bb.h
  %.sroa.0.0 = phi i1 [ %i.z, %bb.h ], [ false, %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockjE5force0ECs31YAwBA1AlL_19xet_core_structures.exit4 ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants26next_stable_chunk_boundary(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants26next_stable_chunk_boundary0EBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.c = call i64 @llvm.usub.sat.i64(i64 %2, i64 2) ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.02.09 = phi i64 [ %i.e, %bb.f ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.02.09, 1          ; 5 uses
  %i.f = icmp samesign ult i64 %i.e, %2
  br i1 %i.f, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.g, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ 1, %bb.g ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.02.09, 2          ; 3 uses
  %i.l = icmp samesign ult i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.02.09
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = sub i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 3 uses
  %i.r = call noundef zeroext i1 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants20is_stable_chunk_size(i64 noundef %i.o)
  br i1 %i.r, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.s = icmp samesign ult i64 %i.e, %i.c
  br i1 %i.s, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  %i.t = sub i64 %i.q, %i.j
  %i.u = call noundef zeroext i1 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants20is_stable_chunk_size(i64 noundef %i.t)
  br i1 %i.u, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard9constants29hash_is_global_dedup_eligible(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard9constants36MDB_SHARD_GLOBAL_DEDUP_CHUNK_MODULUS, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockyE5force0ECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard9constants36MDB_SHARD_GLOBAL_DEDUP_CHUNK_MODULUS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard9constants36MDB_SHARD_GLOBAL_DEDUP_CHUNK_MODULUS, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockyE5force0ECs31YAwBA1AlL_19xet_core_structures.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockyE5force0ECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard9constants36MDB_SHARD_GLOBAL_DEDUP_CHUNK_MODULUS, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockyE5force0ECs31YAwBA1AlL_19xet_core_structures.exit
  %i.g = urem i64 %.sroa.3.0.copyload, %i.e
  %i.h = icmp eq i64 %i.g, 0
  ret i1 %i.h

bb.d:                                             ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockyE5force0ECs31YAwBA1AlL_19xet_core_structures.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13raw_xorb_data10test_utils15raw_xorb_to_vec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.m = icmp samesign uge i64 %i.i, %i.e
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.s, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.0.03 = phi ptr [ %i.ag, %bb.f ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.y)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph
  %i.z = load i64, ptr %i.o, align 8, !alias.scope !278, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.ab = load ptr, ptr %i.n, align 8, !alias.scope !278, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.w, i64 %i.y, i1 false)
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !278
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %.noexc
  %i.ae = phi i64 [ %.pre.i, %bb.d ], [ %i.z, %.noexc ]
  %i.af = add i64 %i.ae, %i.y
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !278
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 32 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB2_16XorbObjectInfoV0NtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsP_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_7default7Default7defaultCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.i, ptr noundef nonnull align 1 dereferenceable(7) @45, i64 7, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #24
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
