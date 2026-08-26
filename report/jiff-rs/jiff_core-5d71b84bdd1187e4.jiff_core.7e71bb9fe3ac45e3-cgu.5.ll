Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.5?download=true
begin_hunk_0_@_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser27parse_unquoted_abbreviation0Bb_:bb.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser30parse_posix_julian_day_no_leap0Bb_(i8 %0) unnamed_addr #4 {
bb.a:
  ret i8 -1
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser31parse_number_with_upto_n_digits0Bb_(ptr nofree readonly align 4 captures(none) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %1, i32 %i.a) #14
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser32parse_posix_julian_day_with_leap0Bb_(i8 %0) unnamed_addr #4 {
bb.a:
  ret i8 -1
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser34parse_number_with_exactly_n_digits0Bb_(ptr nofree readonly align 4 captures(none) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %1, i32 %i.a) #14
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix10MonthError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11MinuteError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11SecondError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix12WeekdayError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14HourPosixError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 3, 16712192) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationDst0B9_(i1 zeroext %0, i8 %1) unnamed_addr #4 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.shift = select i1 %0, i32 256, i32 0
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, 3
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 4, 16712192) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationStd0B9_(i1 zeroext %0, i8 %1) unnamed_addr #4 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.shift = select i1 %0, i32 256, i32 0
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, 4
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind4Rule0B9_(i32 returned %0) unnamed_addr #4 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 11, 16777216) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetDst0B9_(i8 %0, i8 %1) unnamed_addr #4 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %0 to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, 11
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 12, 16777216) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetStd0B9_(i8 %0, i8 %1) unnamed_addr #4 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %0 to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, 12
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix16WeekOfMonthError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i1, i8 } @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError6Quoted0B9_(i8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i1, i8 } { i1 false, i8 poison }, i8 %0, 1
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i1, i8 } @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError8Unquoted0B9_(i8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %0, 1
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapError5Parse0B9_(i8 returned %0) unnamed_addr #4 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 0, -255) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError11DateTimeEnd0B9_(i24 %0) unnamed_addr #4 {
bb.a:
  %.sroa.2.0.insert.ext = zext i24 %0 to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 8
  ret i32 %.sroa.2.0.insert.shift
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 1, -254) i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError13DateTimeStart0B9_(i24 %0) unnamed_addr #4 {
bb.a:
  %.sroa.2.0.insert.ext = zext i24 %0 to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, 1
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias nonnull align 8 %0, ptr align 8 %1, i16 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = tail call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstE6as_refBN_(ptr nonnull align 8 %i.f) #14
  %i.h = tail call align 8 ptr @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstENtNtNtB7_3ops9try_trait3Try6branchBR_(ptr align 8 %i.g) #14 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBQ_(ptr nonnull sret([32 x i8]) align 8 %0) #14
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  call fastcc void @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DayTime11to_datetime(ptr noalias align 4 %i.e, ptr nonnull align 4 %i.j, i16 %2, i32 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = load i32, ptr %i.n, align 8
  call fastcc void @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DayTime11to_datetime(ptr noalias align 4 %i.d, ptr nonnull align 4 %i.m, i16 %2, i32 %i.o)
  %i.p = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.e) #14
  %i.q = call i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date5monthB6_(i32 %i.p) #14
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.2.0..sroa_idx.a, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.e) #14
  %i.t = call i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3dayB6_(i32 %i.s) #14
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.v = call i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4timeB6_(ptr nonnull align 4 %i.e) #14
  store i64 %i.v, ptr %i.c, align 8
  %i.w = call zeroext i1 @_RNvXs8_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_4TimeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB9_(ptr nonnull align 4 %i.c, ptr nonnull align 4 @2) #14
  br i1 %i.w, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.k, align 8
  %i.y = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset7secondsB6_(i32 %i.x) #14
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nonnull sret([12 x i8]) align 4 %i.b, ptr nonnull align 4 %i.d, i32 %i.y) #14
  %i.z = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.b) #14
  %i.aa = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.z) #14
  %.not = icmp eq i16 %2, %i.aa
  br i1 %.not, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3newB6_(i16 %2, i8 12, i8 31) #14
  %i.ac = call i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_(i48 %i.ab, ptr nonnull @6, i64 34, ptr nonnull align 8 @7) #14
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime10from_partsB6_(ptr nonnull sret([12 x i8]) align 4 %i.a, i32 %i.ac, i64 16671994596215295) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.d

bb.i:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, i64 %2, i32 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstE7is_noneBN_(ptr nonnull align 8 %i.h) #14
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.d, ptr nonnull align 8 %i.f, i32 0) #14
  %i.j = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.d) #14
  %i.k = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.j) #14
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.a, ptr align 8 %1, i16 %i.k)
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoE6filterNCNvMs0_BK_NtBK_8TimeZone14to_offset_info0EBO_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 4 %i.d) #14
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoE3mapNtBM_10OffsetInfoNCNvMs0_BK_NtBK_8TimeZone14to_offset_infos_0EBO_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #14
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10OffsetInfoE14unwrap_or_elseNCNvMs0_NtBK_5posixNtB1O_8TimeZone14to_offset_infos0_0EBM_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr align 8 %1, ptr nonnull align 8 @8) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i32, ptr %i.l, align 8
  call void @_RNvXsC_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %1) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone15next_transition(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1, i64 %2, i32 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %.sroa.313 = alloca [28 x i8], align 4          ; 2 uses
  %.sroa.07 = alloca [24 x i8], align 8           ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 3 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.02 = alloca [12 x i8], align 8           ; 2 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 2 uses
  %i.n = alloca [12 x i8], align 4                ; 3 uses
  %i.o = alloca [12 x i8], align 4                ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %3, ptr %i.u, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.s, ptr nonnull align 8 %i.t, i32 0) #14
  %i.v = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.w = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.v) #14
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.p, ptr align 8 %1, i16 %i.w)
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p) #14
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.ab = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.z, ptr nonnull align 4 %i.aa) #14, !noalias !4 ; 2 uses
  %..i = select i1 %i.ab, ptr %i.z, ptr %i.aa
  %.2.i = select i1 %i.ab, ptr %i.aa, ptr %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %..i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %.2.i, i64 12, i1 false)
  %i.ac = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.o) #14
  br i1 %i.ac, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.n) #14
  br i1 %i.ad, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.af = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.ae) #14
  %i.ag = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 520890127) #14
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.aj = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.ai) #14
  %i.ak = add i16 %i.aj, 1
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.i, ptr align 8 %1, i16 %i.ak)
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i) #14
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.an, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.aq = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.ap) #14, !noalias !7
  %..i23 = select i1 %i.aq, ptr %i.ao, ptr %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i
  %..i23.sink = phi ptr [ %..i23, %bb.i ], [ %i.o, %bb.c ], [ %i.n, %bb.d ]
  %.sink = phi ptr [ %i.k, %bb.i ], [ %i.r, %bb.c ], [ %i.r, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.02, ptr noundef nonnull align 4 dereferenceable(12) %..i23.sink, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.02, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime12to_timestampB6_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 4 %i.m, i32 0) #14
  call void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE2okBL_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #14
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f) #14
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.p, %bb.l, %bb.h, %bb.g, %bb.b
  ret void

bb.l:                                             ; preds = %bb.j
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = load i32, ptr %i.av, align 8
  store i64 %i.au, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %i.aw, ptr %i.ax, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.d, ptr nonnull align 8 %i.h, i32 0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone19previous_transition:bb.a
  %i.i = alloca [32 x i8], align 8                ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 3 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.02 = alloca [12 x i8], align 8           ; 2 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 2 uses
  %i.n = alloca [12 x i8], align 4                ; 3 uses
  %i.o = alloca [12 x i8], align 4                ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 3 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %3, ptr %i.u, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.s, ptr nonnull align 8 %i.t, i32 0) #14
  %i.v = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.w = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.v) #14
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.p, ptr align 8 %1, i16 %i.w)
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p) #14
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.ab = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.z, ptr nonnull align 4 %i.aa) #14, !noalias !10 ; 2 uses
  %..i = select i1 %i.ab, ptr %i.z, ptr %i.aa
  %.2.i = select i1 %i.ab, ptr %i.aa, ptr %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %..i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %.2.i, i64 12, i1 false)
  %i.ac = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2gtB8_(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.n) #14
  br i1 %i.ac, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2gtB8_(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.o) #14
  br i1 %i.ad, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.af = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.ae) #14
  %i.ag = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 16898289) #14
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.s) #14
  %i.aj = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.ai) #14
  %i.ak = add i16 %i.aj, -1
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.i, ptr align 8 %1, i16 %i.ak)
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i) #14
  %i.al = load ptr, ptr %i.j, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.an, align 4
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.aq = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.ap) #14, !noalias !13
  %.2.i24 = select i1 %i.aq, ptr %i.ap, ptr %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.i
  %.2.i24.sink = phi ptr [ %.2.i24, %bb.i ], [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %.sink = phi ptr [ %i.k, %bb.i ], [ %i.r, %bb.c ], [ %i.r, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.02, ptr noundef nonnull align 4 dereferenceable(12) %.2.i24.sink, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.02, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime12to_timestampB6_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 4 %i.m, i32 0) #14
  call void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE2okBL_(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e) #14
  call void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f) #14
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.p, %bb.l, %bb.h, %bb.g, %bb.b
  ret void

bb.l:                                             ; preds = %bb.j
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #14
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = load i32, ptr %i.av, align 8
  store i64 %i.au, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %i.aw, ptr %i.ax, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.d, ptr nonnull align 8 %i.h, i32 0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 3 uses
  %i.ba = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.az) #14
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.a) #14
  br i1 %i.bb, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bc = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ay, ptr nonnull align 4 %i.a) #14
  br i1 %i.bc, label %.split, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27

.split:                                           ; preds = %bb.o
  %i.bd = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.a, ptr nonnull align 4 %i.az) #14
  br i1 %i.bd, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit: ; preds = %bb.n
  %i.be = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.a, ptr nonnull align 4 %i.ay) #14
  br i1 %i.be, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27: ; preds = %bb.o, %.split, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bg = load i32, ptr %i.bf, align 8
  call void @_RNvXsC_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1) #14
  br label %bb.p

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread: ; preds = %bb.n, %.split, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bh = getelementptr i8, ptr %.val, i64 40
  %.val.val = load i32, ptr %i.bh, align 8
  call void @_RNvXsC_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %.val) #14
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27
  %.sink29 = phi ptr [ %i.c, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread ], [ %i.b, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27 ]
  %.sroa.3.0 = phi i32 [ %.val.val, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread ], [ %i.bg, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27 ]
  %.sroa.6.0 = phi i8 [ 1, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread ], [ 0, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread27 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(24) %.sink29, i64 24, i1 false)
  %i.bi = load i64, ptr %i.h, align 8
  %i.bj = load i32, ptr %i.ax, align 8
  %.sroa.313.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.313, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.313.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, i64 24, i1 false)
  store i64 %i.bi, ptr %0, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bj, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.313.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.313, i64 28, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.3.0, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone22to_ambiguous_timestamp(ptr sret([24 x i8]) align 4 %0, ptr align 8 %1, ptr align 4 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 2 uses
  %i.c = alloca [12 x i8], align 4                ; 2 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 2 uses
  %i.h = alloca [12 x i8], align 4                ; 2 uses
  %i.i = alloca [12 x i8], align 4                ; 2 uses
  %i.j = alloca [12 x i8], align 4                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [12 x i8], align 4                ; 3 uses
  %i.n = tail call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr align 4 %2) #14
  %i.o = tail call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.n) #14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i32, ptr %i.p, align 8              ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = tail call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstE6as_refBN_(ptr nonnull align 8 %i.r) #14, !noalias !16
  %i.t = tail call align 8 ptr @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstENtNtNtB7_3ops9try_trait3Try6branchBR_(ptr align 8 %i.s) #14, !noalias !16 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit, label %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit.thread

_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit.thread: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call fastcc void @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DayTime11to_datetime(ptr noalias align 4 %i.a, ptr nonnull align 4 %i.v, i16 %i.o, i32 0), !noalias !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  call fastcc void @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DayTime11to_datetime(ptr noalias align 4 %.sroa.3.0..sroa_idx.i, ptr nonnull align 4 %i.w, i16 %i.o, i32 0)
  store ptr %i.t, ptr %i.k, align 8, !alias.scope !16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit: ; preds = %bb.a
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBQ_(ptr nonnull sret([32 x i8]) align 8 %i.k) #14
  %.pr = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit.thread, %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %.val = load ptr, ptr %i.l, align 8
  %i.x = getelementptr i8, ptr %.val, i64 40
  %.val.val = load i32, ptr %i.x, align 8         ; 9 uses
  %i.y = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset5untilB6_(i32 %i.q, i32 %.val.val) #14 ; 6 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, label %bb.d

bb.c:                                             ; preds = %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.q, ptr %i.aa, align 4
  store i32 0, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.b) #14
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.y, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 10 uses
  br i1 %i.ab, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.ae = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %i.ad) #14
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.e) #14
  br i1 %i.af, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ag = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %i.e) #14
  br i1 %i.ag, label %.split, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

.split:                                           ; preds = %bb.g
  %i.ah = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.e, ptr nonnull align 4 %i.ad) #14
  br i1 %i.ah, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit: ; preds = %bb.f
  %i.ai = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.e, ptr nonnull align 4 %i.ac) #14
  br i1 %i.ai, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.aj = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %i.ad) #14
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.d) #14
  br i1 %i.ak, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

bb.j:                                             ; preds = %bb.h
  %i.al = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %i.d) #14
  br i1 %i.al, label %.split15, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13

.split15:                                         ; preds = %bb.j
  %i.am = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.d, ptr nonnull align 4 %i.ad) #14
  br i1 %i.am, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7: ; preds = %bb.i
  %i.an = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %i.d, ptr nonnull align 4 %i.ac) #14
  br i1 %i.an, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread: ; preds = %bb.f, %.split, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nonnull sret([12 x i8]) align 4 %i.h, ptr nonnull align 4 %i.ac, i32 %i.y) #14
  %i.ao = sub nsw i32 0, %i.y
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nonnull sret([12 x i8]) align 4 %i.g, ptr nonnull align 4 %i.ad, i32 %i.ao) #14
  %i.ap = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ac, ptr nonnull align 4 %2) #14
  br i1 %i.ap, label %bb.l, label %bb.k

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10: ; preds = %bb.i, %bb.g, %.split15, %.split, %bb.m, %bb.n, %bb.p, %bb.o, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7, %bb.k, %bb.l, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit, %bb.b, %bb.q
  %.sroa.10.0 = phi i32 [ %i.q, %bb.b ], [ %i.q, %bb.n ], [ %.val.val, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7 ], [ %.val.val, %bb.q ], [ %i.q, %bb.o ], [ %i.q, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit ], [ %.val.val, %bb.k ], [ %i.q, %bb.l ], [ %.val.val, %bb.m ], [ %i.q, %bb.p ], [ %.val.val, %.split15 ], [ %i.q, %.split ], [ %i.q, %bb.g ], [ %.val.val, %bb.i ]
  %.sroa.02.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7 ], [ 1, %bb.q ], [ 2, %bb.o ], [ 0, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit ], [ 0, %bb.k ], [ 1, %bb.l ], [ %spec.select, %bb.m ], [ 0, %bb.p ], [ 0, %.split15 ], [ 0, %.split ], [ 0, %bb.g ], [ 0, %bb.i ]
  %.sroa.19.0 = phi i32 [ undef, %bb.b ], [ undef, %bb.n ], [ undef, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7 ], [ %i.q, %bb.q ], [ %.val.val, %bb.o ], [ undef, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit ], [ undef, %bb.k ], [ %.val.val, %bb.l ], [ %spec.select5, %bb.m ], [ undef, %bb.p ], [ undef, %.split15 ], [ undef, %.split ], [ undef, %bb.g ], [ undef, %bb.i ]
  store i32 %.sroa.02.0, ptr %i.f, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.c) #14
  br label %bb.r

bb.k:                                             ; preds = %bb.l, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread
  %i.aq = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.g, ptr nonnull align 4 %2) #14
  br i1 %i.aq, label %bb.m, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

bb.l:                                             ; preds = %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread
  %i.ar = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %2, ptr nonnull align 4 %i.h) #14
  br i1 %i.ar, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.as = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %2, ptr nonnull align 4 %i.ad) #14 ; 2 uses
  %spec.select = select i1 %i.as, i32 2, i32 0
  %spec.select5 = select i1 %i.as, i32 %i.q, i32 undef
  br label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13: ; preds = %bb.j, %.split15, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nonnull sret([12 x i8]) align 4 %i.j, ptr nonnull align 4 %i.ac, i32 %i.y) #14
  %i.at = call range(i32 -2147483647, -2147483648) i32 @llvm.ssub.sat.i32(i32 0, i32 range(i32 1, 0) %i.y)
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nonnull sret([12 x i8]) align 4 %i.i, ptr nonnull align 4 %i.ad, i32 %i.at) #14
  %i.au = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.j, ptr nonnull align 4 %2) #14
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13
  %i.av = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2leB8_(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %2) #14
  br i1 %i.av, label %bb.p, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

bb.o:                                             ; preds = %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit7.thread13
  %i.aw = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %2, ptr nonnull align 4 %i.ac) #14
  br i1 %i.aw, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.ax = call zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core5civil8datetime8DateTimeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr nonnull align 4 %2, ptr nonnull align 4 %i.i) #14
  br i1 %i.ax, label %bb.q, label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

bb.q:                                             ; preds = %bb.p
  br label %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10

bb.r:                                             ; preds = %_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo6in_dst.exit.thread10, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr align 8 %0, i64 %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstE7is_noneBN_(ptr nonnull align 8 %i.f) #14
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.c, ptr nonnull align 8 %i.d, i32 0) #14
  %i.h = call i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nonnull align 4 %i.c) #14
  %i.i = call i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %i.h) #14
  call fastcc void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone12dst_info_utc(ptr noalias align 8 %i.a, ptr align 8 %0, i16 %i.i)
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoE6filterNCNvMs0_BK_NtBK_8TimeZone9to_offset0EBO_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 4 %i.c) #14
  %i.j = call { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DstInfoE3mapNtNtBM_6offset6OffsetNCNvMs0_BK_NtBK_8TimeZone9to_offsets_0EBO_(ptr nonnull align 8 %i.b) #14 ; 2 uses
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = extractvalue { i32, i32 } %i.j, 1
  %i.m = call i32 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetE14unwrap_or_elseNCNvMs0_NtBM_5posixNtB1S_8TimeZone9to_offsets0_0EBO_(i32 %i.k, i32 %i.l, ptr align 8 %0, ptr nonnull align 8 @9) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i32, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.o, %bb.c ], [ %i.m, %bb.b ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DayTime11to_datetime(ptr noalias nonnull align 4 %0, ptr nofree readonly align 4 captures(none) %1, i16 %2, i32 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = load i8, ptr %1, align 4
  switch i8 %i.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_3Day7to_date.exit
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = tail call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leapB6_(i16 %2, i16 %i.k) #14
  %i.m = tail call i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_(i48 %i.l, ptr nonnull @13, i64 34, ptr nonnull align 8 @14) #14
  br label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_3Day7to_date.exit.thread

end_hunk_1
