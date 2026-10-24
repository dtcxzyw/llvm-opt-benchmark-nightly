Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.4?download=true
inline.NumInlined: 133
inline.NumDeleted: 10
begin_hunk_0_@_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core:bb.a
bb.b:                                             ; preds = %bb.a
  ret i64 %1

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define nonnull align 8 ptr @_RNvMNtCsaR3IayqLkK5_9jiff_core2tzNtB2_10Transition12abbreviation(ptr nofree readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core2tzNtB2_10Transition16into_offset_info(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCsaR3IayqLkK5_9jiff_core2tzNtB2_10Transition3dst(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i32 @_RNvMNtCsaR3IayqLkK5_9jiff_core2tzNtB2_10Transition6offset(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i32 } @_RNvMNtCsaR3IayqLkK5_9jiff_core2tzNtB2_10Transition9timestamp(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = insertvalue { i64, i32 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i32 } %i.d, i32 %i.c, 1
  ret { i64, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceINtB2_8SmallStrKj6_EE4heapB4_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceINtB2_8SmallStrKj6_EE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif13LocalTimeTypeE4heapB4_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 4 %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif13LocalTimeTypeE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif14TransitionInfoE4heapB4_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif14TransitionInfoE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif8DateTimeE4heapB4_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif8DateTimeE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif9TimestampE4heapB4_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMNtCsaR3IayqLkK5_9jiff_core4utilINtB2_16MaybeStaticSliceNtNtNtB4_2tz4tzif9TimestampE8as_sliceB4_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset10from_hoursB6_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = sext i8 %0 to i32
  %i.b = mul nsw i32 %i.a, 3600                   ; 2 uses
  %narrow = add nsw i32 %i.b, 93599
  %or.cond.i.i.i = icmp ult i32 %narrow, 187199
  br i1 %or.cond.i.i.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12from_secondsB6_.exit, label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i

_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19) ; 2 uses
  %.sroa.214.0.extract.shift.i = lshr i32 %i.c, 16
  %i.d = shl i32 %i.c, 16
  %i.e = zext i32 %i.d to i64
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12from_secondsB6_.exit

_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12from_secondsB6_.exit: ; preds = %bb.a, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i
  %.sroa.4.0.in.i = phi i32 [ %.sroa.214.0.extract.shift.i, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i ], [ %i.b, %bb.a ]
  %.sroa.3.0.i = phi i64 [ %i.e, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread.i ], [ 0, %bb.a ]
  %.sroa.4.0.i = zext i32 %.sroa.4.0.in.i to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.i, 32
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.3.0.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.3.0.insert.insert.i, %.sroa.0.0.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset11checked_addB6_(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %0, i32 %1) #16 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  %2 = extractvalue { i32, i32 } %i.a, 1          ; 2 uses
  %3 = add i32 %2, 93599
  %or.cond.i.i.i = icmp ult i32 %3, 187199
  %or.cond = select i1 %i.c, i1 %or.cond.i.i.i, i1 false
  br i1 %or.cond, label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit, label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19

_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.d = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.d, 16
  %i.e = shl i32 %i.d, 16
  %i.f = zext i32 %i.e to i64
  br label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit

_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit: ; preds = %bb.a, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19 ], [ %2, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.f, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19 ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds11checked_add.exit.thread19 ], [ 0, %bb.a ]
  %.sroa.4.0 = zext i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset11to_datetimeB6_(ptr sret([12 x i8]) align 4 %0, i32 %1, i64 %2, i32 %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %3, ptr %i.d, align 8
  %i.e = tail call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %2, i32 %3) #16
  %i.f = call i32 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp17subsec_nanosecondB4_(ptr nonnull align 8 %i.c) #16 ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = add nsw i64 %i.g, 378683424000
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = udiv i64 %i.i, 86400
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = urem i64 %i.i, 86400                     ; 2 uses
  %i.m = trunc nuw nsw i64 %i.l to i32            ; 2 uses
  %i.n = icmp slt i32 %i.f, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.sroa.07.0 = phi i32 [ %i.t, %bb.e ], [ 86399, %bb.d ], [ %i.m, %bb.a ]
  %.sroa.04.0 = phi i32 [ %i.k, %bb.e ], [ %i.s, %bb.d ], [ %i.k, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.f, %bb.a ]
  %i.o = add i32 %.sroa.04.0, -4382910
  %i.p = call i64 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3newB9_(i32 %i.o) #16 ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.l, 0
  %i.r = add nsw i32 %i.f, 1000000000             ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %i.k, -1
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.m, -1
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.u = call { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr nonnull @7, i64 27) #16 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.v, ptr %i.w, ptr nonnull align 8 @8) #19
  unreachable

bb.g:                                             ; preds = %bb.b
  %.sroa.3.0.extract.shift = lshr i64 %i.p, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.x = call i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7to_dateB9_(i32 %.sroa.3.0.extract.trunc) #16
  %i.y = call i64 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond3newB9_(i32 %.sroa.07.0) #16 ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = call { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr nonnull @5, i64 30) #16 ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.ab, ptr %i.ac, ptr nonnull align 8 @6) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %.sroa.327.0.extract.shift = lshr i64 %i.y, 32
  %.sroa.327.0.extract.trunc = trunc nuw i64 %.sroa.327.0.extract.shift to i32
  store i32 %.sroa.327.0.extract.trunc, ptr %i.a, align 4
  %i.ad = call i64 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_(ptr nonnull align 4 %i.a) #16
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time22with_subsec_nanosecondB6_(ptr nonnull sret([12 x i8]) align 4 %i.b, i64 %i.ad, i32 %.sroa.0.0) #16
  %i.ae = load i16, ptr %i.b, align 4
  %i.af = trunc i16 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = call { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr nonnull @2, i64 28) #16 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.ah, ptr %i.ai, ptr nonnull align 8 @4) #19
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.020.0.copyload = load i64, ptr %i.aj, align 4
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime10from_partsB6_(ptr sret([12 x i8]) align 4 %0, i32 %i.x, i64 %.sroa.020.0.copyload) #16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12from_secondsB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %1 = add i32 %0, 93599
  %or.cond.i.i = icmp ult i32 %1, 187199
  br i1 %or.cond.i.i, label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit, label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread

_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.a, 16
  %i.b = shl i32 %i.a, 16
  %i.c = zext i32 %i.b to i64
  br label %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit

_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit: ; preds = %bb.a, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread ], [ %0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs18_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_18OffsetTotalSeconds6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.4.0 = zext i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12to_timestampB6_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 2)) %0, i32 %1, ptr align 4 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr align 4 %2) #16
  %i.b = tail call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date17to_unix_epoch_dayB6_(i32 %i.a) #16
  %i.c = tail call i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3dayB9_(i32 %i.b) #16
  %i.d = sext i32 %i.c to i64
  %i.e = mul nsw i64 %i.d, 86400
  %i.f = tail call i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4timeB6_(ptr align 4 %2) #16
  %i.g = tail call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time9to_secondB6_(i64 %i.f) #16
  %i.h = tail call i32 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond6secondB9_(i32 %i.g) #16
  %i.i = sext i32 %i.h to i64
  %i.j = tail call i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4timeB6_(ptr align 4 %2) #16
  %i.k = tail call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time17subsec_nanosecondB6_(i64 %i.j) #16 ; 3 uses
  %i.l = sext i32 %1 to i64
  %i.m = sub nsw i64 %i.e, %i.l
  %i.n = add nsw i64 %i.m, %i.i                   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  %i.p = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false    ; 2 uses
  %i.q = zext i1 %or.cond to i64
  %.sroa.03.0 = add nsw i64 %i.n, %i.q            ; 2 uses
  %i.r = add nsw i64 %.sroa.03.0, 377705023201
  %or.cond.i.i = icmp ult i64 %i.r, 631107230402
  br i1 %or.cond.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_16UnixEpochSecondsE3newB4_() #16
  %i.s = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 27)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %i.s, ptr %i.t, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = add i32 %i.k, -1000000000
  %.sroa.09.0 = select i1 %or.cond, i32 %i.u, i32 %i.k
  %i.v = tail call { i64, i32 } @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp13new_uncheckedB4_(i64 %.sroa.03.0, i32 %.sroa.09.0) #16 ; 2 uses
  %i.w = extractvalue { i64, i32 } %i.v, 0
  %i.x = extractvalue { i64, i32 } %i.v, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.x, ptr %i.z, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i16 [ 0, %bb.c ], [ 1, %bb.b ]
  store i16 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset5untilB6_(i32 %0, i32 %1) unnamed_addr #4 {
bb.a:
  %i.a = sub i32 %1, %0
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset7secondsB6_(i32 returned %0) unnamed_addr #4 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMs0_NtCsaR3IayqLkK5_9jiff_core2tzNtB5_3Dst6is_dst(i1 returned zeroext %0) unnamed_addr #6 {
bb.a:
  ret i1 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMs0_NtCsaR3IayqLkK5_9jiff_core2tzNtB5_3Dst6is_std(i1 zeroext %0) unnamed_addr #6 {
bb.a:
  %.sroa.0.0 = xor i1 %0, true
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i1, i8 } @_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRhE6copiedCsaR3IayqLkK5_9jiff_core(ptr nofree readonly captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %.not = icmp ne ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.a, %bb.b ], [ undef, %bb.a ]
  %i.b = insertvalue { i1, i8 } poison, i1 %.not, 0
  %i.c = insertvalue { i1, i8 } %i.b, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs1o_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_11ChunksExacthE9remainderCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj1e_E18array_capacity_maxB7_() unnamed_addr #4 {
bb.a:
  ret i64 30
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_E11new_or_heapB7_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 1)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.i.i = alloca i48, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.a = icmp ugt i64 %2, 6
  br i1 %i.a, label %bb.c, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.i.i, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr readonly align 1 %1, i64 %2, i1 false)
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload.pre.i.i = load i48, ptr %.sroa.0.i.i, align 8
  %i.b = zext i48 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload.pre.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %.split.i.i
  %.sroa.0.0..sroa.0.0..sroa.06.0.copyload.i.i = phi i64 [ %i.b, %.lr.ph.preheader.i.i ], [ 0, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.c = shl nuw nsw i64 %2, 48
  %i.d = or disjoint i64 %.sroa.0.0..sroa.0.0..sroa.06.0.copyload.i.i, %i.c
  %.sroa.27.0.extract.trunc.i = trunc nuw nsw i64 %i.d to i56
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i56 %.sroa.27.0.extract.trunc.i, ptr %.sroa.4.0..sroa_idx, align 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EE14unwrap_or_elseNCNvMs2_BL_BI_11new_or_heap0EBN_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.e = tail call { ptr, i64 } @_RNvXs3_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxeEINtNtCs3oUPovFnLWP_4core7convert4FromReE4fromCsaR3IayqLkK5_9jiff_core(ptr %1, i64 %2) #16 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store i8 2, ptr %0, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EE14unwrap_or_elseNCNvMs2_BL_BI_11new_or_heap0EBN_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EE14unwrap_or_elseNCNvMs2_BL_BI_11new_or_heap0EBN_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_E3newB7_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 1), (8, 24)) %0, ptr %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca i48, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.a = icmp ugt i64 %2, 6
  br i1 %i.a, label %bb.c, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.i.i, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr readonly align 1 %1, i64 %2, i1 false)
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload.pre.i.i = load i48, ptr %.sroa.0.i.i, align 8
  %i.b = zext i48 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.06.0.copyload.pre.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %.split.i.i
  %.sroa.0.0..sroa.0.0..sroa.06.0.copyload.i.i = phi i64 [ %i.b, %.lr.ph.preheader.i.i ], [ 0, %.split.i.i ]
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeE5indexB14_:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 4 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeE9index_mutB14_(i64 %0, ptr nofree readnone align 4 captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif14TransitionInfoE5indexB14_(i64 %0, ptr nofree readnone captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif14TransitionInfoE9index_mutB14_(i64 %0, ptr nofree readnone captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTimeE9index_mutB14_(i64 %0, ptr nofree readnone align 8 captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9TimestampE5indexB14_(i64 %0, ptr nofree readnone align 8 captures(ret: address, provenance) %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %0
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %0, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNvXs0_NtNtCs3oUPovFnLWP_4core5slice5indexjINtB5_10SliceIndexShE3getCsaR3IayqLkK5_9jiff_core(i64 %0, ptr nofree readnone captures(ret: address, provenance) %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.sroa.0.0 = select i1 %i.a, ptr %i.b, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvXs0_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetNtNtNtCs3oUPovFnLWP_4core3ops5arith3Neg3negB9_(i32 %0) unnamed_addr #4 {
bb.a:
  %i.a = sub i32 0, %0
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter11ChunksExacthENtB5_8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvXs1q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh18split_at_uncheckedCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.g, i64 %i.d, i64 %i.f, ptr nonnull align 8 @11) #16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.a, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.32.0.copyload.i = load i64, ptr %.sroa.32.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %i.b, align 8, !captures !4
  store i64 %.sroa.5.0.copyload.i, ptr %i.c, align 8
  br label %_RNvXs1q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit

_RNvXs1q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %.sroa.32.0.copyload.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core2tzNtB5_3DstINtNtCs3oUPovFnLWP_4core7convert4FrombE4from(i1 returned zeroext %0) unnamed_addr #6 {
bb.a:
  ret i1 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceINtB5_8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8
  %i.a = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define range(i32 -93599, 93600) i32 @_RNvXs1_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add(i32 %0, i32 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 4 uses
  %i.b = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %0, i32 %1) #16 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = trunc i32 %i.c to i1
  %2 = extractvalue { i32, i32 } %i.b, 1          ; 2 uses
  %3 = add i32 %2, 93599
  %or.cond.i.i.i.i = icmp ult i32 %3, 187199
  %or.cond.i = select i1 %i.d, i1 %or.cond.i.i.i.i, i1 false
  br i1 %or.cond.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.e = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19) ; 2 uses
  %.sroa.214.0.extract.shift.i = lshr i32 %i.e, 16
  %i.f = trunc i32 %i.e to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.f, ptr %i.a, align 2
  %.sroa.3.2..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.2.extract.trunc.i = trunc nuw i32 %.sroa.214.0.extract.shift.i to i16
  store i16 %.sroa.3.2.extract.trunc.i, ptr %.sroa.3.2..sroa_idx.i, align 2
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @1, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @0, ptr nonnull align 8 @9) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit: ; preds = %bb.a
  ret i32 %2
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8 %1, ptr nonnull @23, i64 4, ptr nonnull %i.a, ptr nonnull align 8 @22)
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsaR3IayqLkK5_9jiff_core.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @21, i64 4)
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsaR3IayqLkK5_9jiff_core.exit

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs1q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh18split_at_uncheckedCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.f, i64 %i.c, i64 %i.e, ptr nonnull align 8 @11) #16
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.4.0.copyload, ptr %0, align 8, !captures !4
  store i64 %.sroa.5.0.copyload, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.sroa.32.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.01.0.copyload, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 4 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith9AddAssignlE10add_assignB9_(ptr nofree align 4 captures(none) %0, i32 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = load i32, ptr %0, align 4
  %i.c = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %i.b, i32 %1) #16 ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = trunc i32 %i.d to i1
  %2 = extractvalue { i32, i32 } %i.c, 1          ; 2 uses
  %3 = add i32 %2, 93599
  %or.cond.i.i.i.i.i = icmp ult i32 %3, 187199
  %or.cond.i.i = select i1 %i.e, i1 %or.cond.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %_RNvXs1_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.f = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.f, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @1, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @0, ptr nonnull align 8 @9) #19
  unreachable

_RNvXs1_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddlE3add.exit: ; preds = %bb.a
  store i32 %2, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i40 @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj4_E8try_intoCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i40 @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1) #16
  ret i40 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj8_E8try_intoCsaR3IayqLkK5_9jiff_core(ptr sret([9 x i8]) align 1 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj8_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr sret([9 x i8]) align 1 %0, ptr %1, i64 %2) #16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs3oUPovFnLWP_4core4iter5rangejNtB5_4Step18backward_uncheckedCsaR3IayqLkK5_9jiff_core(i64 %i.c, i64 1) #16 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs3oUPovFnLWP_4core4iter5rangejNtB5_4Step17forward_uncheckedCsaR3IayqLkK5_9jiff_core(i64 %i.b, i64 1) #16
  store i64 %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define range(i32 -93599, 93600) i32 @_RNvXs3_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetINtNtNtCs3oUPovFnLWP_4core3ops5arith3SublE3sub(i32 %0, i32 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 4 uses
  %i.b = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %0, i32 %1) #16 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = trunc i32 %i.c to i1
  %2 = extractvalue { i32, i32 } %i.b, 1          ; 2 uses
  %3 = add i32 %2, 93599
  %or.cond.i.i.i.i = icmp ult i32 %3, 187199
  %or.cond.i = select i1 %i.d, i1 %or.cond.i.i.i.i, i1 false
  br i1 %or.cond.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() #16
  %i.e = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 19) ; 2 uses
  %.sroa.214.0.extract.shift.i = lshr i32 %i.e, 16
  %i.f = trunc i32 %i.e to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.f, ptr %i.a, align 2
  %.sroa.3.2..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.2.extract.trunc.i = trunc nuw i32 %.sroa.214.0.extract.shift.i to i16
  store i16 %.sroa.3.2.extract.trunc.i, ptr %.sroa.3.2..sroa_idx.i, align 2
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @1, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @0, ptr nonnull align 8 @12) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6unwrapBN_.exit: ; preds = %bb.a
  ret i32 %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstENtNtB7_5clone5Clone5cloneBQ_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 1)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = load i8, ptr %1, align 8
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsT_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_3DstNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB9_(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneENtNtB7_5clone5Clone5cloneBQ_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 1)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = load i8, ptr %1, align 8
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsO_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB9_(ptr nonnull sret([80 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaR3IayqLkK5_9jiff_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs3oUPovFnLWP_4core4iter5rangejNtB5_4Step17forward_uncheckedCsaR3IayqLkK5_9jiff_core(i64 %i.b, i64 1) #16
  store i64 %i.e, ptr %0, align 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaR3IayqLkK5_9jiff_core.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.b, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs5_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_EINtNtCs3oUPovFnLWP_4core7convert4FromINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEE4fromB7_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 1), (8, 24)) %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  store i8 2, ptr %0, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) #16
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsaR3IayqLkK5_9jiff_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs3oUPovFnLWP_4core4iter5rangejNtB5_4Step18backward_uncheckedCsaR3IayqLkK5_9jiff_core(i64 %i.c, i64 1) #16 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsaR3IayqLkK5_9jiff_core.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %0, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1
  ret { ptr, i64 } %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %0, i64 %2, i64 %2, ptr align 8 %3) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs5_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = load i32, ptr %0, align 4                ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  %spec.select = select i1 %i.g, ptr @13, ptr inttoptr (i64 1 to ptr)
  %.lobit = lshr i32 %i.f, 31
  %spec.select11 = zext nneg i32 %.lobit to i64
  store ptr %spec.select, ptr %i.e, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select11, ptr %i.h, align 8
  %i.i = sdiv i32 %i.f, 3600
  %i.j = trunc i32 %i.i to i8
  %i.k = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa12unsigned_absCsaR3IayqLkK5_9jiff_core(i8 %i.j) #16
  store i8 %i.k, ptr %i.d, align 1
  %i.l = load i32, ptr %0, align 4
  %i.m = sdiv i32 %i.l, 60
  %i.n = srem i32 %i.m, 60
  %i.o = trunc nsw i32 %i.n to i8
  %i.p = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa12unsigned_absCsaR3IayqLkK5_9jiff_core(i8 %i.o) #16
  store i8 %i.p, ptr %i.c, align 1
  %i.q = load i32, ptr %0, align 4
  %i.r = srem i32 %i.q, 60
  %i.s = trunc nsw i32 %i.r to i8
  %i.t = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa12unsigned_absCsaR3IayqLkK5_9jiff_core(i8 %i.s) #16
  store i8 %i.t, ptr %i.b, align 1
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.25.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.v, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.27.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.w, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.29.0..sroa_idx, align 8
  %i.x = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj1b_Kj4_ECsaR3IayqLkK5_9jiff_core(ptr nonnull @14, ptr nonnull align 8 %i.a) #16 ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.x, 0
  %i.z = extractvalue { ptr, ptr } %i.x, 1
  %i.aa = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %1, ptr %i.y, ptr %i.z) #16
  ret i1 %i.aa
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs6_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  br label %_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_E6as_strB7_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
