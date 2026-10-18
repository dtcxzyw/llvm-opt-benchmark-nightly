Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-1c60e6252c3b02f3.uuid.6fa1d9a388a54494-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4uuid7builder7Builder10from_bytes17h906dc3a0e50decbbE:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4uuid7builder7Builder10from_slice17heaaff87daf41f594E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.319.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @46)
  %.sroa.3.4.copyload = load i32, ptr %i.a, align 4
  %.sroa.68.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.68.4.copyload = load i64, ptr %.sroa.68.4..sroa_idx, align 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.7.sroa.0.0.copyload = load i32, ptr %.sroa.7.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.4.copyload, ptr %i.c, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.68.4.copyload, ptr %.sroa.225.0..sroa_idx, align 8
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.326.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder11from_fields17h3d12a1b7d4e38df5E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = trunc nuw i32 %i.a to i8
  %i.c = lshr i32 %1, 16
  %i.d = trunc i32 %i.c to i8
  %i.e = lshr i32 %1, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = trunc i32 %1 to i8
  %i.h = lshr i16 %2, 8
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = trunc i16 %2 to i8
  %i.k = lshr i16 %3, 8
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = trunc i16 %3 to i8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <8 x i8>, ptr %4, align 1
  store i8 %i.b, ptr %0, align 1
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx, align 1
  store i8 %i.f, ptr %.sroa.3.0..sroa_idx, align 1
  store i8 %i.g, ptr %.sroa.4.0..sroa_idx, align 1
  store i8 %i.i, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %i.j, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 %i.l, ptr %.sroa.7.0..sroa_idx, align 1
  store i8 %i.m, ptr %.sroa.8.0..sroa_idx, align 1
  store <8 x i8> %i.n, ptr %.sroa.9.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @_ZN4uuid7builder7Builder11set_variant17hb13e948af2b37513E(ptr nofree returned align 1 captures(ret: address, provenance) %0, i8 %1) unnamed_addr #9 {
bb.a:
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.28.0.copyload = load i8, ptr %.sroa.28.0..sroa_idx, align 1 ; 4 uses
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = and i8 %.sroa.28.0.copyload, 127
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.d:                                             ; preds = %bb.a
  %i.b = and i8 %.sroa.28.0.copyload, 63
  %i.c = or disjoint i8 %i.b, -128
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.e:                                             ; preds = %bb.a
  %i.d = and i8 %.sroa.28.0.copyload, 31
  %i.e = or disjoint i8 %i.d, -64
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

bb.f:                                             ; preds = %bb.a
  %i.f = or i8 %.sroa.28.0.copyload, -32
  br label %_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit

_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.a, %bb.c ], [ %i.c, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ]
  store i8 %.sroa.0.0.i, ptr %.sroa.28.0..sroa_idx, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @_ZN4uuid7builder7Builder11set_version17h58aa47bb28d2a073E(ptr nofree returned align 1 captures(ret: address, provenance) %0, i8 %1) unnamed_addr #9 {
bb.a:
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.sroa.27.0.copyload = load i8, ptr %.sroa.27.0..sroa_idx, align 1
  %i.a = and i8 %.sroa.27.0.copyload, 15
  %i.b = shl i8 %1, 4
  %i.c = or disjoint i8 %i.a, %i.b
  store i8 %i.c, ptr %.sroa.27.0..sroa_idx, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4uuid7builder7Builder12from_u128_le17hd6922ccdbfb45116E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #11 {
bb.a:
  store i128 %1, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder12with_variant17hc2bf44d0c216e115E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) %0, ptr nofree align 1 captures(none) %1, i8 %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 4 uses
  switch i8 %2, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, 127
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 63
  %i.e = or disjoint i8 %i.d, -128
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = and i8 %i.b, 31
  %i.g = or disjoint i8 %i.f, -64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.h = or i8 %i.b, -32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  store i8 %.sroa.0.0, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder12with_version17h438e954e56f9fee4E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree align 1 captures(none) %1, i8 %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  %i.d = shl i8 %2, 4
  %i.e = or disjoint i8 %i.c, %i.d
  store i8 %i.e, ptr %i.a, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder13from_bytes_le17ha13e1f9042b66c40E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 1
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4uuid7builder7Builder13from_slice_le17h634e61cf74164090E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq i64 %2, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.667.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h349328e3014a3616E"(ptr nonnull align 1 %i.a, i64 16, ptr align 1 %1, i64 16, ptr nonnull align 8 @47)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.913.0.copyload.i = load i32, ptr %.sroa.913.0..sroa_idx.i, align 4
  %i.c = zext i32 %.sroa.913.0.copyload.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %.sroa.1317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %3 = load <4 x i8>, ptr %.sroa.59.0..sroa_idx.i, align 4
  %4 = shufflevector <4 x i8> %3, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %5 = bitcast <4 x i8> %4 to i32
  %.sroa.9.sroa.0.0.insert.ext = zext i32 %5 to i64
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %i.d, %.sroa.9.sroa.0.0.insert.ext
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load <4 x i8>, ptr %i.a, align 4
  %i.g = shufflevector <4 x i8> %i.f, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <4 x i8>, ptr %.sroa.1317.0..sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <4 x i8> %i.g, ptr %i.e, align 4
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.583.0..sroa_idx, align 8
  store <4 x i8> %i.h, ptr %.sroa.684.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.c ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder14from_fields_le17ha1d89cede62792b0E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i32 %1, i16 %2, i16 %3, ptr nofree readonly align 1 captures(none) %4) unnamed_addr #9 {
bb.a:
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.a = load <8 x i8>, ptr %4, align 1
  store i32 %1, ptr %0, align 1
  store i16 %2, ptr %.sroa.2.0..sroa_idx, align 1
  store i16 %3, ptr %.sroa.3.0..sroa_idx, align 1
  store <8 x i8> %i.a, ptr %.sroa.4.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder14from_md5_bytes17h8e502b3cec812486E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %.sroa.4.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.211.0.copyload = load i8, ptr %.sroa.211.0..sroa_idx, align 1
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.312.0.copyload = load i8, ptr %.sroa.312.0..sroa_idx, align 1
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load i8, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx, i64 7, i1 false)
  %i.a = and i8 %.sroa.413.0.copyload, 63
  %i.b = or disjoint i8 %i.a, -128
  %i.c = and i8 %.sroa.211.0.copyload, 15
  %i.d = or disjoint i8 %i.c, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx1, align 1
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.312.0.copyload, ptr %.sroa.4.0..sroa_idx3, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx, align 1
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder15from_sha1_bytes17h73920106202ed3f6E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %.sroa.4.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.211.0.copyload = load i8, ptr %.sroa.211.0..sroa_idx, align 1
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.312.0.copyload = load i8, ptr %.sroa.312.0..sroa_idx, align 1
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load i8, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx, i64 7, i1 false)
  %i.a = and i8 %.sroa.413.0.copyload, 63
  %i.b = or disjoint i8 %i.a, -128
  %i.c = and i8 %.sroa.211.0.copyload, 15
  %i.d = or disjoint i8 %i.c, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx1, align 1
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.312.0.copyload, ptr %.sroa.4.0..sroa_idx3, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx, align 1
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder17from_custom_bytes17h81b0100e1d2759e3E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %.sroa.4.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.28.0.copyload = load i8, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.39.0.copyload = load i8, ptr %.sroa.39.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  %i.a = and i8 %.sroa.4.0.copyload, 63
  %i.b = or disjoint i8 %i.a, -128
  %i.c = and i8 %.sroa.28.0.copyload, 15
  %i.d = or disjoint i8 %i.c, -128
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx1, align 1
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.39.0.copyload, ptr %.sroa.4.0..sroa_idx3, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx, align 1
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder17from_random_bytes17h4c5ec870ca889fa3E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  %.sroa.4.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.211.0.copyload = load i8, ptr %.sroa.211.0..sroa_idx, align 1
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.312.0.copyload = load i8, ptr %.sroa.312.0..sroa_idx, align 1
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.413.0.copyload = load i8, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.514.0..sroa_idx, i64 7, i1 false)
  %i.a = and i8 %.sroa.413.0.copyload, 63
  %i.b = or disjoint i8 %i.a, -128
  %i.c = and i8 %.sroa.211.0.copyload, 15
  %i.d = or disjoint i8 %i.c, 64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  %.sroa.2.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.d, ptr %.sroa.2.0..sroa_idx1, align 1
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.312.0.copyload, ptr %.sroa.4.0..sroa_idx3, align 1
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx3.sroa_idx, align 1
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.3, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder22from_rfc4122_timestamp17h2aec18ee89db2523E(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, i64 %1, i16 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #9 {
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
end_hunk_0
