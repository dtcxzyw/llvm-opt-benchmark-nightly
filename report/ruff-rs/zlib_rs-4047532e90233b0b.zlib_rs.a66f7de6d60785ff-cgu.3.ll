Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-4047532e90233b0b.zlib_rs.a66f7de6d60785ff-cgu.3?download=true
inline.NumInlined: 42
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuthE6as_ptrB4_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuthE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw14from_raw_partshECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 %i.c, ptr nonnull align 8 @7)
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuthE8is_emptyB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE12as_mut_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw18from_raw_parts_muttECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 %i.c, ptr nonnull align 8 @6)
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE18from_raw_parts_mutB4_(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE3lenB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden ptr @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE6as_ptrB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB2_12WeakSliceMuttE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw14from_raw_partstECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 %i.c, ptr nonnull align 8 @7)
  ret { ptr, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window10filled_mutB6_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw18from_raw_parts_muthECsehVNULHUZqJ_7zlib_rs(ptr %.val, i64 %i.b, ptr nonnull align 8 @9)
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window14from_raw_parts(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = and i64 %2, 63
  %i.b = shl i64 2, %i.a
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window19copy_and_initialize(ptr nofree readonly align 8 captures(none) %0, i64 %1, i64 %2, ptr nofree readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw18from_raw_parts_muthECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 %i.c, ptr nonnull align 8 @6) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call { ptr, i64 } @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE9index_mutCsehVNULHUZqJ_7zlib_rs(i64 %1, i64 %2, ptr %i.e, i64 %i.f, ptr nonnull align 8 @10)
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = sub i64 %2, %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %3, i64 %i.i, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden ptr @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window6as_ptr(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window6filledB6_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw14from_raw_partshECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 %i.c, ptr nonnull align 8 @11)
  ret { ptr, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 2, 1) i64 @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate6windowNtB2_6Window8capacity(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 63
  %i.d = shl i64 2, %i.c
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7inflate9bitreaderNtB2_9BitReader3new(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12as_ptr_rangeCsehVNULHUZqJ_7zlib_rs(ptr %1, i64 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E12as_mut_sliceB6_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw18from_raw_parts_muttECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 65536, ptr nonnull align 8 @14)
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden ptr @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E6as_ptrB6_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E8as_sliceB6_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call { ptr, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice3raw14from_raw_partstECsehVNULHUZqJ_7zlib_rs(ptr %i.a, i64 65536, ptr nonnull align 8 @15)
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden ptr @_RNvMs_NtCsehVNULHUZqJ_7zlib_rs10weak_sliceINtB4_12WeakArrayMuttKj10000_E8from_ptrB6_(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #1 {
bb.a:
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine13crc32_combine(i32 %0, i32 %1, i64 %2) unnamed_addr #9 {
bb.a:
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i
  %.sroa.0.011.i = phi i64 [ %i.b, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i ], [ %2, %bb.a ] ; 2 uses
  %.sroa.03.010.i = phi i32 [ %i.c, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i ], [ 3, %bb.a ] ; 2 uses
  %.sroa.05.09.i = phi i32 [ %.sroa.05.1.i, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i ], [ -2147483648, %bb.a ] ; 2 uses
  %i.a = and i64 %.sroa.0.011.i, 1
  %.not7.i = icmp eq i64 %i.a, 0
  br i1 %.not7.i, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i, label %bb.b

_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.05.1.i = phi i32 [ %.sroa.05.09.i, %.lr.ph.i ], [ %i.l, %bb.e ] ; 2 uses
  %i.b = lshr i64 %.sroa.0.011.i, 1               ; 2 uses
  %i.c = add nuw nsw i32 %.sroa.03.010.i, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = and i32 %.sroa.03.010.i, 31
  %i.e = zext nneg i32 %i.d to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @16, i64 %i.e
  %i.f = load i32, ptr %3, align 4                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.07.1.i.i, %bb.d ] ; 2 uses
  %.sroa.04.0.i.i = phi i32 [ -2147483648, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.05.09.i, %bb.b ], [ %.sroa.09.0.i.i, %bb.d ] ; 3 uses
  %i.g = and i32 %.sroa.04.0.i.i, %i.f
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.07.1.i.i = phi i32 [ %i.l, %bb.e ], [ %.sroa.07.0.i.i, %bb.c ]
  %i.h = lshr i32 %.sroa.04.0.i.i, 1
  %i.i = and i32 %.sroa.0.0.i.i, 1
  %.not10.i.i = icmp eq i32 %i.i, 0
  %i.j = lshr i32 %.sroa.0.0.i.i, 1               ; 2 uses
  %i.k = xor i32 %i.j, -306674912
  %.sroa.09.0.i.i = select i1 %.not10.i.i, i32 %i.j, i32 %i.k
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = xor i32 %.sroa.0.0.i.i, %.sroa.07.0.i.i  ; 2 uses
  %i.m = add i32 %.sroa.04.0.i.i, -1
  %i.n = and i32 %i.m, %i.f
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i, label %bb.d

_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit: ; preds = %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i32 [ -2147483648, %bb.a ], [ %.sroa.05.1.i, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit
  %.sroa.07.0.i = phi i32 [ 0, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit ], [ %.sroa.07.1.i, %bb.g ] ; 2 uses
  %.sroa.04.0.i = phi i32 [ -2147483648, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit ], [ %i.q, %bb.g ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %0, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp.exit ], [ %.sroa.09.0.i, %bb.g ] ; 3 uses
  %i.p = and i32 %.sroa.04.0.i, %.sroa.05.0.lcssa.i
  %.not.i1 = icmp eq i32 %i.p, 0
  br i1 %.not.i1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.07.1.i = phi i32 [ %i.u, %bb.h ], [ %.sroa.07.0.i, %bb.f ]
  %i.q = lshr i32 %.sroa.04.0.i, 1
  %i.r = and i32 %.sroa.0.0.i, 1
  %.not10.i = icmp eq i32 %i.r, 0
  %i.s = lshr i32 %.sroa.0.0.i, 1                 ; 2 uses
  %i.t = xor i32 %i.s, -306674912
  %.sroa.09.0.i = select i1 %.not10.i, i32 %i.s, i32 %i.t
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.u = xor i32 %.sroa.0.0.i, %.sroa.07.0.i      ; 2 uses
  %i.v = add i32 %.sroa.04.0.i, -1
  %i.w = and i32 %i.v, %.sroa.05.0.lcssa.i
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit, label %bb.g

_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit: ; preds = %bb.h
  %i.y = xor i32 %i.u, %1
  ret i32 %i.y
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine7x2nmodp(i64 %0, i32 %1) unnamed_addr #9 {
bb.a:
  %.not8 = icmp eq i64 %0, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit, %bb.a
  %.sroa.05.0.lcssa = phi i32 [ -2147483648, %bb.a ], [ %.sroa.05.1, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit ]
  ret i32 %.sroa.05.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit
  %.sroa.0.011 = phi i64 [ %i.b, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit ], [ %0, %bb.a ] ; 2 uses
  %.sroa.03.010 = phi i32 [ %i.c, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.09 = phi i32 [ %.sroa.05.1, %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit ], [ -2147483648, %bb.a ] ; 2 uses
  %i.a = and i64 %.sroa.0.011, 1
  %.not7 = icmp eq i64 %i.a, 0
  br i1 %.not7, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit, label %bb.b

_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit: ; preds = %bb.e, %.lr.ph
  %.sroa.05.1 = phi i32 [ %.sroa.05.09, %.lr.ph ], [ %i.l, %bb.e ] ; 2 uses
  %i.b = lshr i64 %.sroa.0.011, 1                 ; 2 uses
  %i.c = add i32 %.sroa.03.010, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i32 %.sroa.03.010, 31
  %i.e = zext nneg i32 %i.d to i64
  %2 = getelementptr inbounds nuw [4 x i8], ptr @16, i64 %i.e
  %i.f = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.i = phi i32 [ 0, %bb.b ], [ %.sroa.07.1.i, %bb.d ] ; 2 uses
  %.sroa.04.0.i = phi i32 [ -2147483648, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.05.09, %bb.b ], [ %.sroa.09.0.i, %bb.d ] ; 3 uses
  %i.g = and i32 %.sroa.04.0.i, %i.f
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.07.1.i = phi i32 [ %i.l, %bb.e ], [ %.sroa.07.0.i, %bb.c ]
  %i.h = lshr i32 %.sroa.04.0.i, 1
  %i.i = and i32 %.sroa.0.0.i, 1
  %.not10.i = icmp eq i32 %i.i, 0
  %i.j = lshr i32 %.sroa.0.0.i, 1                 ; 2 uses
  %i.k = xor i32 %i.j, -306674912
  %.sroa.09.0.i = select i1 %.not10.i, i32 %i.j, i32 %i.k
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = xor i32 %.sroa.0.0.i, %.sroa.07.0.i      ; 2 uses
  %i.m = add i32 %.sroa.04.0.i, -1
  %i.n = and i32 %i.m, %i.f
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp.exit, label %bb.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define i32 @_RNvNtNtCsehVNULHUZqJ_7zlib_rs5crc327combine8multmodp(i32 %0, i32 %1) unnamed_addr #9 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.07.0 = phi i32 [ 0, %bb.a ], [ %.sroa.07.1, %bb.c ] ; 2 uses
  %.sroa.04.0 = phi i32 [ -2147483648, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %1, %bb.a ], [ %.sroa.09.0, %bb.c ] ; 3 uses
  %i.a = and i32 %.sroa.04.0, %0
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.1 = phi i32 [ %i.f, %bb.d ], [ %.sroa.07.0, %bb.b ]
  %i.b = lshr i32 %.sroa.04.0, 1
  %i.c = and i32 %.sroa.0.0, 1
  %.not10 = icmp eq i32 %i.c, 0
  %i.d = lshr i32 %.sroa.0.0, 1                   ; 2 uses
  %i.e = xor i32 %i.d, -306674912
  %.sroa.09.0 = select i1 %.not10, i32 %i.d, i32 %i.e
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.f = xor i32 %.sroa.0.0, %.sroa.07.0          ; 2 uses
  %i.g = add i32 %.sroa.04.0, -1
  %i.h = and i32 %i.g, %0
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  ret i32 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx18__mm256_loadu_si256CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload = load <4 x i64>, ptr %1, align 1
  store <4 x i64> %.sroa.0.0.copyload, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx20__mm256_setzero_si256CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0) unnamed_addr #11 {
bb.a:
  store <4 x i64> zeroinitializer, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_castsi256_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 2 uses
  %i.b = alloca [32 x i8], align 32               ; 2 uses
  %i.c = load <4 x i64>, ptr %1, align 32
  store <4 x i64> %i.c, ptr %i.a, align 32
  call void @_RNvMs1T_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m256i8as_i64x4CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([32 x i8]) align 32 %i.b, ptr nonnull align 32 %i.a)
  %i.d = load <4 x i64>, ptr %i.b, align 32
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.e, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x863avx22__mm256_zextsi128_si256CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.c, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i64x2CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.d = load <2 x i64>, ptr %i.b, align 16
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.e, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse212__mm_or_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = load <2 x i64>, ptr %2, align 16
  %i.c = or <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_add_epi32CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  %i.d = alloca [16 x i8], align 16               ; 2 uses
  %i.e = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.e, ptr %i.c, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i32x4CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c)
  %i.f = load <4 x i32>, ptr %i.d, align 16
  %i.g = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %i.g, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i32x4CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.h = load <4 x i32>, ptr %i.b, align 16
  %i.i = add <4 x i32> %i.h, %i.f
  store <4 x i32> %i.i, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_and_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = load <2 x i64>, ptr %2, align 16
  %i.c = and <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse213__mm_xor_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readonly align 16 captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = load <2 x i64>, ptr %2, align 16
  %i.c = xor <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_load_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse216__mm_storeu_si128CsehVNULHUZqJ_7zlib_rs(ptr %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load <2 x i64>, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> %i.b, ptr %i.a, align 16
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr15write_unalignedNtNtNtB4_9core_arch3x867___m128iECsehVNULHUZqJ_7zlib_rs(ptr %0, ptr nonnull align 16 %i.a, ptr nonnull align 8 @18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi128_si32CsehVNULHUZqJ_7zlib_rs(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = load <2 x i64>, ptr %0, align 16
  store <2 x i64> %i.c, ptr %i.a, align 16
  call void @_RNvMs1K_NtNtCs4NRVxsYgnAr_4core9core_arch3x86NtB6_7___m128i8as_i32x4CsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull align 16 %i.a)
  %i.d = load i32, ptr %i.b, align 16
  ret i32 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_cvtsi32_si128CsehVNULHUZqJ_7zlib_rs(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i32 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMsf_NtNtCs4NRVxsYgnAr_4core9core_arch4simdINtB5_4SimdlKj4_E3newCsehVNULHUZqJ_7zlib_rs(ptr nonnull sret([16 x i8]) align 16 %i.a, i32 %1, i32 0, i32 0, i32 0)
end_hunk_0
