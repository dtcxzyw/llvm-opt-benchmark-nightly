Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.06?download=true
inline.NumInlined: 219
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer13write_uleb128Cs8GyQQEoxZtT_7convert:bb.a
  store i8 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %.lcssa, ptr %i.ak, align 1
  %i.al = call { ptr, i64 } @_RNvMNtNtCsi68uqYEhoRA_5gimli6leb1285writeNtB2_6Leb1285bytes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(11) %i.a) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 1      ; 4 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef range(i64 0, -9223372036854775808) %i.am), !noalias !609
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !610, !noalias !609, !noundef !5 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = extractvalue { ptr, i64 } %i.al, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !610, !noalias !609, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.aq, i64 range(i64 0, -9223372036854775808) %i.am, i1 false)
  %.pre.i.i = load i64, ptr %i.an, align 8, !alias.scope !610, !noalias !609
  br label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer5writeCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.j, %bb.k
  %i.au = phi i64 [ %.pre.i.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.av = add i64 %i.au, %i.am
  store i64 %i.av, ptr %i.an, align 8, !alias.scope !610, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65285) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  switch i8 %3, label %bb.b [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.insert.ext31 = zext i8 %3 to i64
  %.sroa.4.0.insert.shift32 = shl nuw nsw i64 %.sroa.4.0.insert.ext31, 8
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift32, 4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.not42 = icmp ult i64 %2, 256
  br i1 %.not42, label %bb.j, label %bb.m

bb.d:                                             ; preds = %bb.a
  %.not41 = icmp ult i64 %2, 65536
  br i1 %.not41, label %bb.n, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %2, 16777215
  br i1 %i.j, label %bb.m, label %bb.q

bb.f:                                             ; preds = %bb.a
  %.not = icmp ult i64 %2, 4294967296
  br i1 %.not, label %bb.u, label %bb.m

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !625
  store i64 0, ptr %i.h, align 8, !noalias !625
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i8, ptr %i.k, align 8, !range !8, !alias.scope !625, !noundef !5
  %i.l = trunc nuw i8 %.val.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !626
  %i.m = tail call i64 @llvm.bswap.i64(i64 %2)
  %storemerge.i.i = select i1 %i.l, i64 %i.m, i64 %2
  store i64 %storemerge.i.i, ptr %i.g, align 8, !noalias !626
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.h, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10), !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !626
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.n, align 8, !alias.scope !625 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.o, align 8, !alias.scope !625, !noundef !5 ; 3 uses
  %i.p = icmp sgt i64 %.val3.i, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp ugt i64 %1, %.val3.i
  br i1 %i.q, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = sub nuw nsw i64 %.val3.i, %1
  %i.s = icmp samesign ult i64 %i.r, 8
  br i1 %i.s, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.t, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !625
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i.i = phi i64 [ 255, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !625
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.u = trunc nuw i64 %2 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val48 = load ptr, ptr %i.v, align 8           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val49 = load i64, ptr %i.w, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.u, ptr %i.f, align 1
  %i.x = icmp sgt i64 %.val49, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp ugt i64 %1, %.val49
  br i1 %i.y, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %.val49, %1
  br i1 %i.z, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val48, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.aa, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i.i50 = phi i64 [ 255, %bb.l ], [ 0, %bb.j ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.030.0.insert.insert, %bb.b ], [ %.sroa.0.0.i.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u64_atCs8GyQQEoxZtT_7convert.exit ], [ %.sroa.0.0.i.i50, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_u8_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.c ], [ %.sroa.0.0.i.i55, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.d ], [ %.sroa.0.1, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.e ], [ %.sroa.0.0.i.i62, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit ], [ 3, %bb.f ]
  ret i64 %.sroa.0.0

bb.n:                                             ; preds = %bb.d
  %i.ab = trunc nuw i64 %2 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !627
  store i16 0, ptr %i.e, align 2, !noalias !627
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i51 = load i8, ptr %i.ac, align 8, !range !8, !alias.scope !627, !noundef !5
  %i.ad = trunc nuw i8 %.val.i51 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !628
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %storemerge.i.i52 = select i1 %i.ad, i16 %i.ae, i16 %i.ab
  store i16 %storemerge.i.i52, ptr %i.d, align 2, !noalias !628
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.e, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !628
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i53 = load ptr, ptr %i.af, align 8, !alias.scope !627 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i54 = load i64, ptr %i.ag, align 8, !alias.scope !627, !noundef !5 ; 3 uses
  %i.ah = icmp sgt i64 %.val3.i54, -1
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ugt i64 %1, %.val3.i54
  br i1 %i.ai, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = sub nuw nsw i64 %.val3.i54, %1
  %i.ak = icmp samesign ult i64 %i.aj, 2
  br i1 %i.ak, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i53) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i53, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.al, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !627
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u16_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i.i55 = phi i64 [ 255, %bb.p ], [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !627
  br label %bb.m

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43 = load i8, ptr %i.am, align 8, !range !8, !noundef !5
  %i.an = trunc nuw i8 %.val43 to i1              ; 2 uses
  %i.ao = trunc nuw nsw i64 %2 to i32             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !629
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %storemerge.i = select i1 %i.an, i32 %i.ap, i32 %i.ao
  store i32 %storemerge.i, ptr %i.c, align 4, !noalias !629
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !629
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val45 = load i64, ptr %i.aq, align 8, !noundef !5 ; 4 uses
  %i.ar = icmp sgt i64 %.val45, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ugt i64 %1, %.val45                ; 2 uses
  br i1 %i.an, label %bb.s, label %4

4:                                                ; preds = %bb.q
  br i1 %i.as, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %bb.r

bb.r:                                             ; preds = %4
  %i.at = sub nuw nsw i64 %.val45, %1
  %i.au = icmp samesign ult i64 %i.at, 3
  br i1 %i.au, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split

bb.s:                                             ; preds = %bb.q
  br i1 %i.as, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aw = sub nuw nsw i64 %.val45, %1
  %i.ax = icmp samesign ult i64 %i.aw, 3
  br i1 %i.ax, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit, label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split: ; preds = %bb.t, %bb.r
  %.sink72 = phi ptr [ %i.i, %bb.r ], [ %i.av, %bb.t ]
  %.val44.sink73.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val44.sink73 = load ptr, ptr %.val44.sink73.in, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.val44.sink73, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.ay, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink72, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  br label %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit

_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit: ; preds = %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split, %bb.t, %bb.s, %bb.r, %4
  %.sroa.0.1 = phi i64 [ 1, %bb.r ], [ 0, %bb.s ], [ 0, %4 ], [ 1, %bb.t ], [ 255, %_RNvXs_NtNtCsi68uqYEhoRA_5gimli5write10endian_vecINtB4_9EndianVecNtNtB8_9endianity13RunTimeEndianENtNtB6_6writer6Writer8write_atCs8GyQQEoxZtT_7convert.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.m

bb.u:                                             ; preds = %bb.f
  %i.az = trunc nuw i64 %2 to i32                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !630
  store i32 0, ptr %i.b, align 4, !noalias !630
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i58 = load i8, ptr %i.ba, align 8, !range !8, !alias.scope !630, !noundef !5
  %i.bb = trunc nuw i8 %.val.i58 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %storemerge.i.i59 = select i1 %i.bb, i32 %i.bc, i32 %i.az
  store i32 %storemerge.i.i59, ptr %i.a, align 4, !noalias !631
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i60 = load ptr, ptr %i.bd, align 8, !alias.scope !630 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i61 = load i64, ptr %i.be, align 8, !alias.scope !630, !noundef !5 ; 3 uses
  %i.bf = icmp sgt i64 %.val3.i61, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ugt i64 %1, %.val3.i61
  br i1 %i.bg, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = sub nuw nsw i64 %.val3.i61, %1
  %i.bi = icmp samesign ult i64 %i.bh, 4
  br i1 %i.bi, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i60) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i60, i64 %1
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.bj, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !630
  br label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit

_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer12write_u32_atCs8GyQQEoxZtT_7convert.exit: ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i.i62 = phi i64 [ 255, %bb.w ], [ 0, %bb.u ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !630
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65285) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer15write_offset_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef range(i8 0, 25) %3, i8 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %4)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer20write_initial_lengthCs8GyQQEoxZtT_7convert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i8 noundef range(i8 4, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = icmp eq i8 %2, 8
  br i1 %i.c, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.c
  %.val = phi i64 [ %.val.pre, %._crit_edge ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = icmp sgt i64 %.val, -1
  call void @llvm.assume(i1 %i.d)
  %i.e = call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer11write_udataCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i8 noundef %2) ; 2 uses
  %i.f = and i64 %i.e, 255
  %.not = icmp eq i64 %i.f, 255
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !641
  store i32 0, ptr %i.b, align 4, !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !642
  store i32 -1, ptr %i.a, align 4, !noalias !642
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 4), !noalias !643
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !644, !noalias !643, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.b, align 4, !noalias !641
  store i32 %i.m, ptr %i.l, align 1
  %.pre.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !644, !noalias !643
  %i.n = add i64 %.pre.i.i.i, 4                   ; 2 uses
  store i64 %i.n, ptr %i.g, align 8, !alias.scope !644, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.e, ptr %i.o, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val, ptr %i.p, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 65285) i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer23write_initial_length_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef range(i8 4, 9) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer14write_udata_atCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer8write_u8Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1), !noalias !650
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !651, !noalias !650, !noundef !5 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !651, !noalias !650, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 %1, ptr %i.f, align 1
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !651, !noalias !650
  %i.g = add i64 %.pre.i.i, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !651, !noalias !650
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer9write_u16Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  %i.e = tail call i16 @llvm.bswap.i16(i16 %1)
  %storemerge.i = select i1 %i.d, i16 %i.e, i16 %1
  store i16 %storemerge.i, ptr %i.a, align 2, !noalias !659
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2), !noalias !660
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !661, !noalias !660, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !661, !noalias !660, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = load i16, ptr %i.b, align 2
  store i16 %i.l, ptr %i.k, align 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !661, !noalias !660
  %i.m = add i64 %.pre.i.i, 2
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !661, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 255
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCsi68uqYEhoRA_5gimli5write10endian_vec9EndianVecNtNtB9_9endianity13RunTimeEndianENtNtB7_6writer6Writer9write_u32Cs8GyQQEoxZtT_7convert(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !669
  %i.e = tail call i32 @llvm.bswap.i32(i32 %1)
  %storemerge.i = select i1 %i.d, i32 %i.e, i32 %1
  store i32 %storemerge.i, ptr %i.a, align 4, !noalias !669
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !669
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4), !noalias !670
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !671, !noalias !670, !noundef !5 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !671, !noalias !670, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = load i32, ptr %i.b, align 4
  store i32 %i.l, ptr %i.k, align 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !671, !noalias !670
  %i.m = add i64 %.pre.i.i, 4
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !671, !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
