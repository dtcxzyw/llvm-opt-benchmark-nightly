Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.141?download=true
begin_hunk_0_@_RINvXNvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_by1__NtB8_9DirectionNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_u64NtNtCs3cfoFdbzKJ1_12erased_serde5error5ErrorECsl8OoimOLbh_6qdrant:bb.a
  ], !prof !76

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  store i8 1, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs2_NtCs3cfoFdbzKJ1_12erased_serde5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_by1__NtB8_9DirectionNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1d_7Visitor9visit_u64NtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  switch i64 %1, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ], !prof !76

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  store i8 1, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5ErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @79, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.f, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs1_NtCs7qyR1EixLKx_12jsonwebtoken3jwkNtB9_13KeyOperationsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_20KeyOperationsVisitorNtB13_7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  switch i64 %2, label %bb.j [
    i64 4, label %bb.b
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 9, label %bb.g
    i64 10, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = icmp ne i32 %i.b, 1852270963
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %i.g = xor i32 %i.f, 1769104758
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i16, ptr %i.h, align 1
  %i.j = zext i16 %i.i to i32
  %i.k = xor i32 %i.j, 31078
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.n, label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 1
  %i.q = xor i32 %i.p, 1919118949
  %i.r = getelementptr i8, ptr %1, i64 3
  %i.s = load i32, ptr %i.r, align 1
  %i.t = xor i32 %i.s, 1953528178
  %i.u = or i32 %i.q, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %1, align 1
  %i.z = xor i32 %i.y, 1919116644
  %i.aa = getelementptr i8, ptr %1, i64 3
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = xor i32 %i.ab, 1953528178
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %1, align 1
  %i.ai = xor i32 %i.ah, 1885434487
  %i.aj = getelementptr i8, ptr %1, i64 3
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = xor i32 %i.ak, 2036681584
  %i.am = or i32 %i.ai, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.aq = load i64, ptr %1, align 1
  %i.ar = xor i64 %i.aq, 7299051184918589045
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.au, 121
  %i.aw = or i64 %i.ar, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %1, align 1
  %i.bb = xor i64 %i.ba, 7299039180333671780
  %i.bc = getelementptr i8, ptr %1, i64 8
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.be, 121
  %i.bg = or i64 %i.bb, %i.bf
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.bk = load i64, ptr %1, align 1
  %i.bl = xor i64 %i.bk, 7584736281694987620
  %i.bm = getelementptr i8, ptr %1, i64 8
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = zext i16 %i.bn to i64
  %i.bp = xor i64 %i.bo, 29556
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.h, %bb.f, %bb.b, %bb.a, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bu = load i64, ptr %i.a, align 8, !range !67, !noundef !6
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !74, !noundef !6 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l, !prof !75

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.by, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.bz) #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.cb = icmp ule i64 %2, %i.bx
  tail call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.12.sroa.0.0 = phi ptr [ undef, %bb.i ], [ undef, %bb.h ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ca, %bb.m ], [ %i.ca, %bb.l ]
  %.sroa.12.sroa.4.0 = phi i64 [ undef, %bb.i ], [ undef, %bb.h ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ %2, %bb.m ], [ 0, %bb.l ]
  %.sroa.0.0 = phi i64 [ -9223372036854775801, %bb.i ], [ -9223372036854775802, %bb.h ], [ -9223372036854775808, %bb.b ], [ -9223372036854775807, %bb.c ], [ -9223372036854775806, %bb.d ], [ -9223372036854775805, %bb.e ], [ -9223372036854775804, %bb.f ], [ -9223372036854775803, %bb.g ], [ %i.bx, %bb.m ], [ %i.bx, %bb.l ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.12.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.sroa.0.0, ptr %.sroa.12.0..sroa_idx2, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.sroa.4.0, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx2.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs_NtCs7qyR1EixLKx_12jsonwebtoken3jwkNtB8_12PublicKeyUseNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_19PublicKeyUseVisitorNtB11_7Visitor9visit_strNtNtCs8O45qwFIwQX_10serde_json5error5ErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %cond = icmp eq i64 %2, 3
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = xor i16 %i.b, 26995
  %i.d = getelementptr i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = xor i16 %i.f, 103
  %i.h = or i16 %i.c, %i.g
  %i.i = icmp ne i16 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %1, align 1
  %i.m = xor i16 %i.l, 28261
  %i.n = getelementptr i8, ptr %1, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i16
  %i.q = xor i16 %i.p, 99
  %i.r = or i16 %i.m, %i.q
  %i.s = icmp ne i16 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.v = load i64, ptr %i.a, align 8, !range !67, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !74, !noundef !6 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ac = icmp ule i64 %2, %i.y
  tail call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b
  %.sroa.6.sroa.0.0 = phi ptr [ undef, %bb.c ], [ undef, %bb.b ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ]
  %.sroa.6.sroa.4.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %2, %bb.g ], [ 0, %bb.f ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775808, %bb.b ], [ %i.y, %bb.g ], [ %i.y, %bb.f ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.4.0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks3_1__NtBb_20EllipticCurveKeyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks3_1__NtB3J_20EllipticCurveKeyTypeNtB1Z_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks5_1__NtBb_13EllipticCurveNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1b_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsN_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks5_1__NtB3J_13EllipticCurveNtB1Z_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.b = load i8, ptr %i.a, align 8, !range !77, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !align !13, !noundef !6 ; 5 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.l

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.j, label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.d) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.k, label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.j, align 1
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.sink18 = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.i, %bb.f ], [ %i.f, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink18, ptr %i.k, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.l, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.m, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.n, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.g, %bb.i, %bb.j, %bb.k, %bb.h
  %.sink20 = phi i8 [ 1, %bb.h ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %bb.b ]
  store i8 %.sink20, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks9_1__NtBb_10RSAKeyTypeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB18_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks9_1__NtB3J_10RSAKeyTypeNtB1Z_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks_1__NtBb_12KeyAlgorithmNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB19_7Visitor10visit_enumINtNtNtNtCs5pRimKDHYSy_5serde7private2de7content16EnumDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  call void @_RINvXsB_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB6_16EnumDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs7qyR1EixLKx_12jsonwebtoken3jwks_1__NtB3G_12KeyAlgorithmNtB1W_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !78, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 17 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
    i8 14, label %bb.q
    i8 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.aj

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not62 = icmp eq ptr %i.f, null
  br i1 %.not62, label %bb.s, label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.g = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not61 = icmp eq ptr %i.g, null
  br i1 %.not61, label %bb.u, label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.h = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not60 = icmp eq ptr %i.h, null
  br i1 %.not60, label %bb.v, label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.i = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not59 = icmp eq ptr %i.i, null
  br i1 %.not59, label %bb.w, label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.j = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not58 = icmp eq ptr %i.j, null
  br i1 %.not58, label %bb.x, label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.k = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.y, label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.l = call noundef align 8 ptr @_RNvXsC_NtNtNtCs5pRimKDHYSy_5serde7private2de7contentINtB5_19VariantDeserializerNtNtCs8O45qwFIwQX_10serde_json5error5ErrorENtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 2 uses
  %.not56 = icmp eq ptr %i.l, null
end_hunk_0
