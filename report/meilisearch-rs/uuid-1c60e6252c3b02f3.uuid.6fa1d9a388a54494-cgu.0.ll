Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-1c60e6252c3b02f3.uuid.6fa1d9a388a54494-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4uuid4Uuid11as_u64_pair17h65e6419e6b29057dE:bb.a
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = trunc i128 %i.a to i64
  %i.e = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.f = insertvalue { i64, i64 } %i.e, i64 %i.d, 1
  ret { i64, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i56 0, -254) i56 @_ZN4uuid4Uuid11get_node_id17h3d95100f6b8870ffE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread [
    i8 6, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
    i8 1, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
  ]

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = zext i32 %i.i to i48
  %i.k = shl nuw i48 %i.j, 16
  %.sroa.2.0.insert.ext = zext i8 %i.g to i48
  %.sroa.2.0.insert.shift = shl nuw nsw i48 %.sroa.2.0.insert.ext, 8
  %.sroa.04.0.insert.ext = zext i8 %i.e to i48
  %.sroa.2.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.shift, %.sroa.04.0.insert.ext
  %.sroa.04.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %i.k
  br label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit.thread: ; preds = %bb.a, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
  %.sroa.3.sroa.0.0 = phi i48 [ %.sroa.04.0.insert.insert, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.a ]
  %.sroa.3.0.insert.ext = zext i48 %.sroa.3.sroa.0.0 to i56
  %.sroa.3.0.insert.shift = shl nuw i56 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i56
  %.sroa.0.0.insert.insert = or disjoint i56 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i56 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 0, 4) i8 @_ZN4uuid4Uuid11get_variant17h58307e5e9ab258d5E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i8 %i.b, -64
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i8 %i.b, -32
  %spec.select = select i1 %i.e, i8 2, i8 3
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i8 0, 17) i8 @_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4                          ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i128, ptr %0, align 1
  %i.d = icmp eq i128 %.sroa.0.0.copyload.i.i, 0
  %spec.select = select i1 %i.d, i8 0, i8 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i2 = load i128, ptr %0, align 1
  %i.e = icmp eq i128 %.sroa.0.0.copyload.i.i2, -1
  %spec.select1 = select i1 %i.e, i8 15, i8 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i8 [ %spec.select, %bb.b ], [ 16, %bb.a ], [ %i.c, %bb.c ], [ %spec.select1, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid11to_bytes_le17h83c41f019fdc72f7E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 1
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid12to_fields_le17h59a72c0e39968116E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 1 %1) unnamed_addr #9 personality ptr @rust_eh_personality {
"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h09104b2b5f6744ddE.exit":
  %i.a = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load <2 x i16>, ptr %i.b, align 1
  store i32 %i.a, ptr %0, align 8
  store <2 x i16> %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid4Uuid13encode_buffer17hb6fec52691e69c93E(ptr nofree writeonly sret([45 x i8]) align 1 captures(none) initializes((0, 45)) %0) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %0, i8 0, i64 45, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid13get_timestamp17h6ae1faac96e620f3E(ptr nofree writeonly sret([48 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %select.unfold [
    i8 6, label %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit
    i8 1, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 15
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 48
  %i.k = or disjoint i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.p, %i.t
  %i.v = load i8, ptr %1, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = or i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.ar, %i.au
  %i.aw = add nsw i64 %i.am, -122192928000000000  ; 2 uses
  %i.ax = udiv i64 %i.aw, 10000000
  %i.ay = urem i64 %i.aw, 10000000
  br label %select.unfold.sink.split

_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit: ; preds = %bb.a
  %2 = load i8, ptr %1, align 1
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 52
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 44
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 36
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1
  %i.az = zext i8 %16 to i64
  %i.ba = shl nuw nsw i64 %i.az, 28
  %17 = or disjoint i64 %14, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 20
  %18 = or disjoint i64 %17, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 12
  %19 = or disjoint i64 %18, %i.bi
  %i.bj = and i8 %i.b, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %20 = or disjoint i64 %19, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %21 = or i64 %20, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bt, %i.bw
  %i.by = add nsw i64 %21, -122192928000000000    ; 2 uses
  %i.bz = udiv i64 %i.by, 10000000
  %i.ca = urem i64 %i.by, 10000000
  br label %select.unfold.sink.split

bb.c:                                             ; preds = %bb.a
  %22 = load i8, ptr %1, align 1
  %i.cb = zext i8 %22 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 40
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %24 = load i32, ptr %23, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %i.ch = zext i32 %25 to i64
  %op.rdx = or disjoint i64 %i.cg, %i.ch
  %op.rdx26 = or disjoint i64 %op.rdx, %i.cc      ; 2 uses
  %i.ci = udiv i64 %op.rdx26, 1000
  %i.cj = urem i64 %op.rdx26, 1000
  br label %select.unfold.sink.split

select.unfold.sink.split:                         ; preds = %bb.b, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit, %bb.c
  %.sink25 = phi i64 [ %i.ay, %bb.b ], [ %i.ca, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ %i.cj, %bb.c ]
  %.sink24 = phi i32 [ 100, %bb.b ], [ 100, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 1000000, %bb.c ]
  %.sink21.shrunk = phi i16 [ %i.av, %bb.b ], [ %i.bx, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.c ]
  %.sink20 = phi i64 [ %i.ax, %bb.b ], [ %i.bz, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ %i.ci, %bb.c ]
  %.sink18 = phi i8 [ 14, %bb.b ], [ 14, %_ZN4uuid4Uuid11get_version17hd50c1e9898922f9cE.exit ], [ 0, %bb.c ]
  %i.ck = trunc nuw nsw i64 %.sink25 to i32
  %i.cl = mul nuw nsw i32 %.sink24, %i.ck
  %.sink21 = zext i16 %.sink21.shrunk to i128
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sink21, ptr %i.cm, align 16
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink20, ptr %.sroa.28.0..sroa_idx, align 16
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cl, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sink18, ptr %.sroa.410.0..sroa_idx, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.a
  %.sink = phi i128 [ 0, %bb.a ], [ 1, %select.unfold.sink.split ]
  store i128 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 16) i64 @_ZN4uuid4Uuid15get_version_num17he755d3ec9e2972ebE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 4
  %i.d = zext nneg i8 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4uuid4Uuid6is_max17hc193afdec0efc545E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 1
  %i.a = icmp eq i128 %.sroa.0.0.copyload.i, -1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4uuid4Uuid6is_nil17hd41694f1a16c8c0fE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 1
  %i.a = icmp eq i128 %.sroa.0.0.copyload.i, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i128 @_ZN4uuid4Uuid7as_u12817h73fb31d821d6b7f8E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load i128, ptr %0, align 1
  %i.a = tail call i128 @llvm.bswap.i128(i128 %.sroa.0.0.copyload)
  ret i128 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid9as_fields17h5c49ff3f469843bdE(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 1 %1) unnamed_addr #9 personality ptr @rust_eh_personality {
"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h09104b2b5f6744ddE.exit":
  %2 = load i8, ptr %1, align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %19 = load i8, ptr %i.a, align 1
  %20 = zext i8 %19 to i16
  %21 = shl nuw i16 %20, 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i16
  %25 = or disjoint i16 %21, %24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = load i8, ptr %i.b, align 1
  %27 = zext i8 %26 to i16
  %28 = shl nuw i16 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i16
  %32 = or disjoint i16 %28, %31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %25, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %32, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h2662b006ae31b65fE(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nofree nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = add i64 %i.g, -46
  %or.cond105 = icmp ult i64 %i.h, -45
  br i1 %or.cond105, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.23.0..sroa_idx, align 8
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 1 %i.i, i64 %i.g)
  %i.j = load i64, ptr %i.e, align 8
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %0, align 8
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i8, ptr %i.p, align 8               ; 5 uses
  %i.r = load ptr, ptr %1, align 8                ; 20 uses
  %i.s = load i64, ptr %i.f, align 8              ; 11 uses
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.u = icmp eq i8 %i.q, 3
  br i1 %i.u, label %bb.p, label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.r, align 1
  %i.w = icmp eq i8 %i.v, 123
  br i1 %i.w, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.r, i64 %i.s
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 125
  br i1 %i.aa, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  switch i8 %i.q, label %bb.q [
    i8 0, label %bb.j
    i8 3, label %bb.j
  ]

.thread195:                                       ; preds = %bb.ah, %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.ar, %bb.ar
  %.sink = phi i64 [ -9, %bb.ar ], [ -9, %bb.ar ], [ -3, %bb.i ], [ -3, %bb.i ]
  %.sroa.06.0 = phi i64 [ 9, %bb.ar ], [ 9, %bb.ar ], [ 1, %bb.i ], [ 1, %bb.i ] ; 9 uses
  %.sroa.8.0 = phi i8 [ 4, %bb.ar ], [ 4, %bb.ar ], [ 3, %bb.i ], [ 3, %bb.i ] ; 2 uses
  %i.ab = add i64 %i.s, %.sink                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp ugt i64 %.sroa.06.0, %i.ab
  br i1 %.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i.i.i = icmp ult i64 %.sroa.06.0, %i.s
  br i1 %.not5.i.i.i, label %bb.m, label %.split.i.i.i

bb.l:                                             ; preds = %.thread195, %bb.m, %.split.i.i.i
  %.sroa.06.0190201 = phi i64 [ 0, %.thread195 ], [ %.sroa.06.0, %bb.m ], [ %.sroa.06.0, %.split.i.i.i ] ; 8 uses
  %.sroa.4.0192200 = phi i64 [ %i.s, %.thread195 ], [ %i.ab, %bb.m ], [ %i.ab, %.split.i.i.i ] ; 7 uses
  %.sroa.8.0194199 = phi i8 [ %i.q, %.thread195 ], [ %.sroa.8.0, %bb.m ], [ %.sroa.8.0, %.split.i.i.i ]
  %i.ac = icmp eq i64 %.sroa.4.0192200, 0
  br i1 %i.ac, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i", label %bb.n

.split.i.i.i:                                     ; preds = %bb.k
  %i.ad = icmp eq i64 %.sroa.06.0, %i.s
  br i1 %i.ad, label %bb.l, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i"

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.06.0
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp sgt i8 %i.af, -65
  br i1 %i.ag, label %bb.l, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i"

bb.n:                                             ; preds = %bb.l
  %.not6.i.i.i = icmp ult i64 %.sroa.4.0192200, %i.s
  br i1 %.not6.i.i.i, label %bb.o, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.n
  %i.ah = icmp ne i64 %.sroa.4.0192200, %i.s
  %.not.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i", label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h2180a820a6d13b23E.exit"

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.4.0192200
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp slt i8 %i.aj, -64
  %.not.old.i.i = icmp eq ptr %i.r, null
  %or.cond6.i.i = select i1 %i.ak, i1 true, i1 %.not.old.i.i
  br i1 %or.cond6.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i", label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h2180a820a6d13b23E.exit"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i": ; preds = %bb.l
  %.not.old.old.i.i = icmp eq ptr %i.r, null
  br i1 %.not.old.old.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i", label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h2180a820a6d13b23E.exit"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.thread.i.i": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i", %bb.o, %.split7.i.i.i, %bb.m, %.split.i.i.i, %bb.j
  %.sroa.4.0193 = phi i64 [ 0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i" ], [ %.sroa.4.0192200, %bb.o ], [ %.sroa.4.0192200, %.split7.i.i.i ], [ %i.ab, %bb.m ], [ %i.ab, %.split.i.i.i ], [ %i.ab, %bb.j ]
  %.sroa.06.0191 = phi i64 [ %.sroa.06.0190201, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i" ], [ %.sroa.06.0190201, %bb.o ], [ %.sroa.06.0190201, %.split7.i.i.i ], [ %.sroa.06.0, %bb.m ], [ %.sroa.06.0, %.split.i.i.i ], [ %.sroa.06.0, %bb.j ]
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr align 1 %i.r, i64 %i.s, i64 %.sroa.06.0191, i64 %.sroa.4.0193, ptr nonnull align 8 @41) #25
  unreachable

"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h2180a820a6d13b23E.exit": ; preds = %.split7.i.i.i, %bb.o, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hedc4de8303200402E.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.06.0190201
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.4.0192200
  store ptr %i.al, ptr %i.a, align 8
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.am, ptr %.sroa.2134.0..sroa_idx, align 8
  %.sroa.3135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.3135.0..sroa_idx, align 8
  br label %.outer

bb.p:                                             ; preds = %bb.f
  %.not104 = icmp eq i64 %i.s, 0
  br i1 %.not104, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.i, %bb.f
  %i.an = icmp ugt i64 %i.s, 8
  br i1 %i.an, label %bb.ai, label %bb.ah

bb.r:                                             ; preds = %bb.p
  %i.ao = load i8, ptr %i.r, align 1
  %i.ap = icmp eq i8 %i.ao, 123
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 6 uses
  br i1 %i.ap, label %bb.t, label %bb.af

bb.s:                                             ; preds = %bb.p
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 0, i64 0, ptr nonnull align 8 @37) #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ar = icmp samesign eq i64 %i.o, 0
  br i1 %i.ar, label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hd8781e1ea1faae0cE.exit.thread", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 3 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hd8781e1ea1faae0cE.exit.thread202", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = icmp eq i64 %i.o, 1
  br i1 %i.av, label %bb.x, label %bb.w

"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hd8781e1ea1faae0cE.exit.thread202": ; preds = %bb.u
  %i.aw = zext nneg i8 %i.at to i32
  %i.ax = call i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h8bd542db65ddcd5bE"(ptr nonnull %i.as, ptr nonnull %i.m)
  br label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h40854dbeab8f76b0E.exit108"

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 -2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = and i8 %i.az, 31
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = icmp slt i8 %i.az, -64
  br i1 %i.bc, label %bb.y, label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17hd8781e1ea1faae0cE.exit"

bb.x:                                             ; preds = %bb.v
  call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17hd59bff297b3b8e9bE(ptr nonnull align 8 @6) #27
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bd = icmp eq i64 %i.o, 2
  br i1 %i.bd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds i8, ptr %i.aq, i64 -3 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 3 uses
  %i.bg = and i8 %i.bf, 15
  %i.bh = zext nneg i8 %i.bg to i32
end_hunk_0
begin_hunk_1_@"_ZN4uuid7non_nil95_$LT$impl$u20$core..cmp..PartialOrd$LT$uuid..non_nil..NonNilUuid$GT$$u20$for$u20$uuid..Uuid$GT$11partial_cmp17hf950dac662c8c4a2E":loadbb
  br i1 %i.h, label %loadbb1, label %res_block

res_block:                                        ; preds = %loadbb1, %loadbb
  %phi.src1 = phi i64 [ %i.f, %loadbb ], [ %i.o, %loadbb1 ]
  %phi.src2 = phi i64 [ %i.g, %loadbb ], [ %i.p, %loadbb1 ]
  %i.i = icmp ult i64 %phi.src1, %phi.src2
  %i.j = select i1 %i.i, i32 -1, i32 1
  br label %endblock

loadbb1:                                          ; preds = %loadbb
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.k, align 1
  %i.n = load i64, ptr %i.l, align 8
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)  ; 2 uses
  %i.p = tail call i64 @llvm.bswap.i64(i64 %i.n)  ; 2 uses
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb1
  %phi.res = phi i32 [ 0, %loadbb1 ], [ %i.j, %res_block ]
  %i.r = tail call range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  ret i8 %i.r
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid93_$LT$impl$u20$core..convert..From$LT$uuid..Uuid$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17h24dd02b28ea04df2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h537773684db19152E"(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 16, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hd348eb437a0117abE.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 %i.e, i64 %i.g, ptr nonnull align 8 @84) #25
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hd348eb437a0117abE.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @"_ZN4uuid9timestamp105_$LT$impl$u20$core..convert..From$LT$uuid..timestamp..Timestamp$GT$$u20$for$u20$std..time..SystemTime$GT$4from17h03e1ddb189d5a949E"(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ult i32 %i.d, 1000000000
  br i1 %i.e, label %_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i32 %i.d, 1000000000
  %i.g = urem i32 %i.d, 1000000000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = add i64 %i.b, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.c, label %_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @10, i64 25, ptr nonnull align 8 @12) #25
  unreachable

_ZN4core4time8Duration3new17h87c832a0ae28fde9E.exit: ; preds = %bb.b, %bb.a
  %.sroa.3.0.i = phi i32 [ %i.d, %bb.a ], [ %i.g, %bb.b ]
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.k = tail call { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64 0, i32 0, i64 %.sroa.0.0.i, i32 %.sroa.3.0.i)
  ret { i64, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i16 } @_ZN4uuid9timestamp26decode_gregorian_timestamp17he744b4d744ed507aE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 48
  %i.j = or disjoint i64 %i.e, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 40
  %i.o = or disjoint i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 32
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = load i8, ptr %0, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 24
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 16
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = or disjoint i64 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = or i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i16
  %i.aq = shl nuw nsw i16 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = or disjoint i16 %i.aq, %i.at
  %i.av = insertvalue { i64, i16 } poison, i64 %i.al, 0
  %i.aw = insertvalue { i64, i16 } %i.av, i16 %i.au, 1
  ret { i64, i16 } %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid9timestamp26encode_gregorian_timestamp17h480f277356366f07E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i16 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = lshr i64 %1, 48
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = lshr i64 %1, 24
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 16
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 8
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %1 to i8
  %i.s = lshr i64 %1, 40
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.a to i8
  %i.v = lshr i64 %1, 56
  %i.w = trunc nuw i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 16
  %i.z = trunc i64 %i.b to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1
  store i8 %i.m, ptr %0, align 1
  store i8 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 1
  store i8 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 1
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx.i, align 1
  store i8 %i.z, ptr %.sroa.8.0..sroa_idx.i, align 1
  store i8 %i.f, ptr %.sroa.9.0..sroa_idx.i, align 1
  store i8 %i.g, ptr %.sroa.10.0..sroa_idx.i, align 1
  store <4 x i8> %i.aa, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.16.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 281474976710656) i64 @_ZN4uuid9timestamp28decode_unix_timestamp_millis17h22deb0cdfb3c30cdE(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %1 = load i8, ptr %0, align 1
  %i.a = zext i8 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i32, ptr %2, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.g = zext i32 %4 to i64
  %op.rdx = or disjoint i64 %i.f, %i.g
  %op.rdx1 = or disjoint i64 %op.rdx, %i.b
  ret i64 %op.rdx1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid9timestamp28encode_unix_timestamp_millis17h96bdc9d2b4aad7bbE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readonly align 1 captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %i.g = lshr i64 %1, 40
  %i.h = trunc i64 %i.g to i8
  %i.i = lshr i64 %1, 32
  %i.j = trunc i64 %i.i to i8
  %i.k = lshr i64 %1, 24
  %i.l = trunc i64 %i.k to i8
  %i.m = trunc i64 %i.a to i8
  %i.n = lshr i64 %1, 8
  %i.o = trunc i64 %i.n to i8
  %i.p = trunc i64 %1 to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load <4 x i8>, ptr %2, align 1
  %i.r = and <4 x i8> %i.q, <i8 15, i8 -1, i8 63, i8 -1>
  %i.s = or disjoint <4 x i8> %i.r, <i8 112, i8 0, i8 -128, i8 0>
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.t = load <4 x i8>, ptr %i.b, align 1
  store i8 %i.h, ptr %0, align 1
  store i8 %i.j, ptr %.sroa.2.0..sroa_idx.i, align 1
  store i8 %i.l, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i8 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx.i, align 1
  store <4 x i8> %i.s, ptr %.sroa.7.0..sroa_idx.i, align 1
  store <4 x i8> %i.t, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.d, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.f, ptr %.sroa.16.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i16 } @_ZN4uuid9timestamp33decode_sorted_gregorian_timestamp17h931ef397040cbd61E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #10 {
bb.a:
  %1 = load i8, ptr %0, align 1
  %2 = zext i8 %1 to i64
  %3 = shl nuw nsw i64 %2, 52
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 44
  %8 = or disjoint i64 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 36
  %13 = or disjoint i64 %8, %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %15 = load i8, ptr %14, align 1
  %i.a = zext i8 %15 to i64
  %i.b = shl nuw nsw i64 %i.a, 28
  %16 = or disjoint i64 %13, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 20
  %i.g = or disjoint i64 %16, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 12
  %i.l = or disjoint i64 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 8
  %i.r = or disjoint i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = or i64 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i16
  %i.aa = shl nuw nsw i16 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  %i.af = insertvalue { i64, i16 } poison, i64 %i.v, 0
  %i.ag = insertvalue { i64, i16 } %i.af, i16 %i.ae, 1
  ret { i64, i16 } %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid9timestamp33encode_sorted_gregorian_timestamp17h13a77624747fd3d1E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i16 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 28
  %i.b = lshr i64 %1, 12
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = lshr i64 %1, 52
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 44
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 36
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %i.a to i8
  %i.s = lshr i64 %1, 20
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.b to i8
  %i.v = lshr i64 %1, 8
  %i.w = trunc i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 96
  %i.z = trunc i64 %1 to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1
  store i8 %i.m, ptr %0, align 1
  store i8 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 1
  store i8 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 1
  store i8 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 1
  store i8 %i.t, ptr %.sroa.5.0..sroa_idx.i, align 1
  store i8 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 1
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx.i, align 1
  store i8 %i.z, ptr %.sroa.8.0..sroa_idx.i, align 1
  store i8 %i.f, ptr %.sroa.9.0..sroa_idx.i, align 1
  store i8 %i.g, ptr %.sroa.10.0..sroa_idx.i, align 1
  store <4 x i8> %i.aa, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.16.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN4uuid9timestamp3now17hf7f200d9c8ea1640E() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 @50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h5d6fa6a6435e196bE.exit"

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.h, ptr %i.i, align 8
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr nonnull align 1 @51, i64 86, ptr nonnull align 1 %i.a, ptr nonnull align 8 @13, ptr nonnull align 8 @53) #25
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h5d6fa6a6435e196bE.exit": ; preds = %bb.a
  %i.j = insertvalue { i64, i32 } poison, i64 %i.f, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i16 } @_ZN4uuid9timestamp9Timestamp10to_rfc412217ha21962b4b8448287E(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i64 %i.b, 10000000
  %i.f = add i64 %i.e, 122192928000000000
  %i.g = udiv i32 %i.d, 100
  %i.h = zext nneg i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = load i128, ptr %0, align 16
  %i.k = trunc i128 %i.j to i16
  %i.l = and i16 %i.k, 16383
  %i.m = insertvalue { i64, i16 } poison, i64 %i.i, 0
  %i.n = insertvalue { i64, i16 } %i.m, i16 %i.l, 1
  ret { i64, i16 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid9timestamp9Timestamp12from_rfc412217hbc7a92cb42fa4706E(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 29)) %0, i64 %1, i16 %2) unnamed_addr #11 {
bb.a:
  %i.a = add i64 %1, -122192928000000000          ; 2 uses
  %i.b = udiv i64 %i.a, 10000000
  %i.c = urem i64 %i.a, 10000000
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 100
  %i.f = zext i16 %2 to i128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.h, align 8
  store i128 %i.f, ptr %0, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 14, ptr %i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i16 } @_ZN4uuid9timestamp9Timestamp12to_gregorian17hfb8ecd42a1502357E(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = mul i64 %i.b, 10000000
  %i.f = add i64 %i.e, 122192928000000000
  %i.g = udiv i32 %i.d, 100
  %i.h = zext nneg i32 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = load i128, ptr %0, align 16
  %i.k = trunc i128 %i.j to i16
  %i.l = and i16 %i.k, 16383
  %i.m = insertvalue { i64, i16 } poison, i64 %i.i, 0
  %i.n = insertvalue { i64, i16 } %i.m, i16 %i.l, 1
  ret { i64, i16 } %i.n
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef i32 @_ZN4uuid9timestamp9Timestamp13to_unix_nanos17h11b8d47721151986E(ptr nofree readnone align 16 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  store ptr @55, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr nonnull align 8 %i.a, ptr nonnull align 8 @56) #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid9timestamp9Timestamp14from_gregorian17h0c76320db199c51eE(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 29)) %0, i64 %1, i16 %2) unnamed_addr #11 {
bb.a:
  %i.a = add i64 %1, -122192928000000000          ; 2 uses
  %i.b = udiv i64 %i.a, 10000000
  %i.c = urem i64 %i.a, 10000000
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 100
  %i.f = zext i16 %2 to i128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.e, ptr %i.h, align 8
  store i128 %i.f, ptr %0, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 14, ptr %i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid9timestamp9Timestamp14from_unix_time17h0c4f5368cbe7b769E(ptr nofree writeonly sret([32 x i8]) align 16 captures(none) initializes((0, 29)) %0, i64 %1, i32 %2, i128 %3, i8 %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h7d335ce1a8513054E":bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %i.b, 1
  store i64 %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..Timestamp$u20$as$u20$core..convert..TryFrom$LT$std..time..SystemTime$GT$$GT$8try_from17h4453ea84765c43d5E"(ptr nofree writeonly sret([48 x i8]) align 16 captures(none) initializes((0, 8), (16, 32)) %0, i64 %1, i32 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b, i64 0, i32 0)
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit", label %bb.b

"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit": ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.f, align 8
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @85 to i64), ptr %.sroa.318.0..sroa_idx, align 16
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 54, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 0, ptr %i.k, align 16
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.222.0..sroa_idx, align 16
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %.sroa.424.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit"
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hb23de9ef405e195cE.exit" ]
  store i64 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$20offset_from_unsigned17h8bd542db65ddcd5bE"(ptr, ptr) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64, i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hbe5e3233d5ba0df1E"(i64, i64, ptr align 1, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #17

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr align 4, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #17

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr align 8, i1 zeroext, ptr align 8) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9d31ff021d90655fE"(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d336a5866d2c9c3E"(ptr align 8) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64, i64, ptr align 8) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr align 1, i64, i64, i64, ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr align 1, i64, ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr align 8) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr align 1, i64, ptr align 1, ptr align 8, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr align 1, i64, ptr align 1, i64, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr sret([24 x i8]) align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64, i32, i64, i32) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr align 8, ptr align 8) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8, ptr align 1, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17hf281101eab850e54E(ptr sret([16 x i8]) align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h88c9f66bad4ec0aeE(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hb8e13184f7a475e0E"(ptr sret([48 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_ZN4core3fmt2rt8Argument11new_display17h3354ce3e83e129c7E(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr align 8, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf4fb6bd6ba18bf21E"(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h537773684db19152E"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64, i64, ptr align 8) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0a1302bc724a5ce4E"(ptr align 8, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_ZN4core3str11validations15next_code_point17h41e07acfe5d3561eE(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr sret([24 x i8]) align 8, ptr align 8, i64, i32) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!4 = !{}
!5 = !{ptr @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h1720e3c1cb5a137cE"}
!6 = distinct !{!6, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!7 = distinct !{!7, !6, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!8 = !{!7}
!9 = distinct !{!9, !"_ZN4uuid3fmt13format_simple17h17ae80b5dc609eb1E"}
!10 = distinct !{!10, !9, !"_ZN4uuid3fmt13format_simple17h17ae80b5dc609eb1E: argument 0"}
!11 = !{!10}
!12 = distinct !{!12, !"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17hed8d4879c4ff10deE"}
!13 = distinct !{!13, !12, !"_ZN4core3str21_$LT$impl$u20$str$GT$12char_indices17hed8d4879c4ff10deE: argument 0"}
!14 = !{!13}
!15 = distinct !{!15, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E"}
!16 = distinct !{!16, !15, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !"_ZN4uuid6parser9parse_urn17hf83726bb033384cbE"}
!19 = distinct !{!19, !18, !"_ZN4uuid6parser9parse_urn17hf83726bb033384cbE: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!22 = distinct !{!22, !21, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!23 = !{!22}
!24 = distinct !{!24, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E"}
!25 = distinct !{!25, !24, !"_ZN4uuid6parser12parse_braced17h8eee123177b88602E: argument 0"}
!26 = !{!25}
!27 = distinct !{!27, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E"}
!28 = distinct !{!28, !27, !"_ZN4uuid7non_nil10NonNilUuid3get17hf8c47513844e2809E: argument 0"}
!29 = !{!28}
end_hunk_2
