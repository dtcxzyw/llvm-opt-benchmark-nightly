Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.0?download=true
inline.NumInlined: 230
inline.NumDeleted: 34
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix17AbbreviationErrorE7map_errNtB1w_14ParseErrorKindNcNtB2e_15AbbreviationStd0EBN_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix23QuotedAbbreviationErrorE7map_errNtB1w_17AbbreviationErrorNcNtB2k_6Quoted0EBN_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 3)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = tail call { i1, i8 } @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError6Quoted0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_23QuotedAbbreviationErrorEE9call_onceBc_(i8 %i.d) #14 ; 2 uses
  %i.f = extractvalue { i1, i8 } %i.e, 0
  %i.g = extractvalue { i1, i8 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = zext i1 %i.f to i8
  store i8 %i.i, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.j, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix25UnquotedAbbreviationErrorE7map_errNtB1w_17AbbreviationErrorNcNtB2m_8Unquoted0EBN_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 3)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = tail call { i1, i8 } @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError8Unquoted0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_25UnquotedAbbreviationErrorEE9call_onceBc_(i8 %i.d) #14 ; 2 uses
  %i.f = extractvalue { i1, i8 } %i.e, 0
  %i.g = extractvalue { i1, i8 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = zext i1 %i.f to i8
  store i8 %i.i, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.j, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtBK_13FromUtf8ErrorE7map_errNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorNCNvMs_B1P_NtB1P_14ParsedTimeZone28parse_time_zone_designations0EB1V_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorECsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.c, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBK_9RuleErrorE7map_errNtBK_14ParseErrorKindNcNtB1O_4Rule0EBO_(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 4
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = tail call i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind4Rule0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_9RuleErrorEE9call_onceBc_(i32 %.sroa.0.0.copyload) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %i.d, ptr %i.e, align 1
  store i8 -1, ptr %0, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBK_13DateTimeErrorE7map_errNtBK_9RuleErrorNcNtB1W_11DateTimeEnd0EBO_(i64 %0) unnamed_addr #0 {
bb.a:
  %.sroa.2 = alloca [7 x i8], align 4             ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i24 ; 2 uses
  %i.a = and i64 %0, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 255
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError11DateTimeEnd0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_13DateTimeErrorEE9call_onceBc_(i24 %.sroa.2.0.extract.trunc) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.36.0.extract.shift = lshr i64 %0, 32
  %.sroa.36.0.extract.trunc = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  store i24 %.sroa.2.0.extract.trunc, ptr %.sroa.2, align 4
  %.sroa.2.3..sroa_idx19 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 3
  store i32 %.sroa.36.0.extract.trunc, ptr %.sroa.2.3..sroa_idx19, align 1
  %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.1..sroa.3.0.copyload = load i32, ptr %.sroa.2, align 4
  %i.d = and i64 %0, -1099511627776
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ %i.c, %bb.b ], [ %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.1..sroa.3.0.copyload, %bb.c ]
  %.sroa.49.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.49.sroa.0.0
  %.sroa.08.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %i.a
  ret i64 %.sroa.08.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBK_13DateTimeErrorE7map_errNtBK_9RuleErrorNcNtB1W_13DateTimeStart0EBO_(i64 %0) unnamed_addr #0 {
bb.a:
  %.sroa.2 = alloca [7 x i8], align 4             ; 3 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i24 ; 2 uses
  %i.a = and i64 %0, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 255
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError13DateTimeStart0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_13DateTimeErrorEE9call_onceBc_(i24 %.sroa.2.0.extract.trunc) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.36.0.extract.shift = lshr i64 %0, 32
  %.sroa.36.0.extract.trunc = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  store i24 %.sroa.2.0.extract.trunc, ptr %.sroa.2, align 4
  %.sroa.2.3..sroa_idx19 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 3
  store i32 %.sroa.36.0.extract.trunc, ptr %.sroa.2.3..sroa_idx19, align 1
  %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.1..sroa.3.0.copyload = load i32, ptr %.sroa.2, align 4
  %i.d = and i64 %0, -1099511627776
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ %i.c, %bb.b ], [ %.sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.0..sroa.2.1..sroa.3.0.copyload, %bb.c ]
  %.sroa.49.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %i.d, %bb.c ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.49.sroa.0.0
  %.sroa.08.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, %i.a
  ret i64 %.sroa.08.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBK_10ParseErrorE7map_errNtNtNtBM_4tzif6parser11FooterErrorNcNtB1U_14InvalidPosixTz0EBO_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = tail call i32 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterError14InvalidPosixTz0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtBc_5posix10ParseErrorEE9call_onceBe_(i32 %.sroa.0.0.copyload) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %i.d, ptr %i.e, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 0, -254) i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBM_5posix11OffsetErrorE7map_errNtB1v_14ParseErrorKindNcNtB22_9OffsetDst0EBO_(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.34.0.extract.shift = lshr i64 %0, 16
  %.sroa.34.0.extract.trunc = trunc i64 %.sroa.34.0.extract.shift to i8
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  %i.b = tail call i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetDst0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11OffsetErrorEE9call_onceBc_(i8 %.sroa.23.0.extract.trunc, i8 %.sroa.34.0.extract.trunc) #14 ; 2 uses
  %.sroa.215.0.extract.shift = lshr i32 %i.b, 24
  %i.c = zext nneg i32 %.sroa.215.0.extract.shift to i64
  %i.d = shl i32 %i.b, 8
  %i.e = zext i32 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i64 %0, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %.sroa.48.0 = phi i64 [ %i.c, %bb.b ], [ %.sroa.5.0.extract.shift, %bb.c ]
  %.sroa.37.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ]
  %.sroa.48.0.insert.shift = shl nuw i64 %.sroa.48.0, 32
  %.sroa.37.0.insert.insert = or disjoint i64 %.sroa.48.0.insert.shift, %.sroa.37.sroa.0.0
  %.sroa.06.0.insert.insert = or i64 %.sroa.37.0.insert.insert, %.sroa.06.0
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 0, -254) i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBM_5posix11OffsetErrorE7map_errNtB1v_14ParseErrorKindNcNtB22_9OffsetStd0EBO_(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.34.0.extract.shift = lshr i64 %0, 16
  %.sroa.34.0.extract.trunc = trunc i64 %.sroa.34.0.extract.shift to i8
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  %i.b = tail call i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetStd0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11OffsetErrorEE9call_onceBc_(i8 %.sroa.23.0.extract.trunc, i8 %.sroa.34.0.extract.trunc) #14 ; 2 uses
  %.sroa.215.0.extract.shift = lshr i32 %i.b, 24
  %i.c = zext nneg i32 %.sroa.215.0.extract.shift to i64
  %i.d = shl i32 %i.b, 8
  %i.e = zext i32 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = lshr i64 %0, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %.sroa.48.0 = phi i64 [ %i.c, %bb.b ], [ %.sroa.5.0.extract.shift, %bb.c ]
  %.sroa.37.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ]
  %.sroa.48.0.insert.shift = shl nuw i64 %.sroa.48.0, 32
  %.sroa.37.0.insert.insert = or disjoint i64 %.sroa.48.0.insert.shift, %.sroa.37.sroa.0.0
  %.sroa.06.0.insert.insert = or i64 %.sroa.37.0.insert.insert, %.sroa.06.0
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_6bounds10RangeErrorE7map_errNtNtNtBM_4tzif6parser18LocalTimeTypeErrorNCNvMs_B24_NtB24_14ParsedTimeZone22parse_local_time_types0EBO_(i64 %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.33.0.extract.shift = lshr i64 %0, 32
  %.sroa.33.0.extract.trunc = trunc nuw i64 %.sroa.33.0.extract.shift to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  %.sroa.35.0 = phi i32 [ %.val, %bb.b ], [ %.sroa.33.0.extract.trunc, %bb.c ]
  %i.b = insertvalue { i32, i32 } poison, i32 %.sroa.04.0, 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %.sroa.35.0, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i1, i8 } @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayNtNtBO_6bounds10RangeErrorE7map_errNtNtNtBO_2tz5posix12WeekdayErrorNCNvMs5_B29_NtB29_6Parser13parse_weekdays_0EBO_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %.not = icmp ne i32 %i.a, 254                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser13parse_weekdays_0Bb_(i32 %0) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i32 %0, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.39.0 = phi i8 [ %i.b, %bb.b ], [ %.sroa.2.0.extract.trunc, %bb.c ]
  %i.c = insertvalue { i1, i8 } poison, i1 %.not, 0
  %i.d = insertvalue { i1, i8 } %i.c, i8 %.sroa.39.0, 1
  ret { i1, i8 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix23QuotedAbbreviationErrorNCNvMs5_B1o_NtB1o_6Parser25parse_quoted_abbreviation0EB1s_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser25parse_quoted_abbreviation0Bb_(ptr nonnull align 8 %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix25UnquotedAbbreviationErrorNCNvMs5_B1o_NtB1o_6Parser27parse_unquoted_abbreviation0EB1s_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser27parse_unquoted_abbreviation0Bb_(ptr nonnull align 8 %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser6HeaderRShENtBL_11HeaderErrorE7map_errNtBL_14ParseErrorKindNcNtB26_8Header320EBR_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 8), (64, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = tail call i64 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header320INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11HeaderErrorEE9call_onceBe_(i8 %i.d, i8 %i.f) #14
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser6HeaderRShENtBL_11HeaderErrorE7map_errNtBL_14ParseErrorKindNcNtB26_8Header640EBR_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 8), (64, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = tail call i64 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header640INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11HeaderErrorEE9call_onceBe_(i8 %i.d, i8 %i.f) #14
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i1, i8 } @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultaNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix10MonthErrorNCNvMs5_B1u_NtB1u_6Parser11parse_month0EB1y_(i1 zeroext %0, i8 %1) unnamed_addr #0 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser11parse_month0Bb_(i8 %1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.a, %bb.b ], [ %1, %bb.a ]
  %i.b = insertvalue { i1, i8 } poison, i1 %0, 0
end_hunk_0
begin_hunk_1_@_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorE7map_errNtBL_15JulianLeapErrorNcNtB1I_5Parse0EBP_:bb.a
  %i.d = shl nuw nsw i64 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.36.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0.extract.shift = and i64 %0, -4294967296
  %.sroa.36.0.insert.insert = or disjoint i64 %.sroa.05.0, %.sroa.4.0.extract.shift
  %.sroa.05.0.insert.insert = or i64 %.sroa.36.0.insert.insert, %.sroa.36.0
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 0, -4294901760) i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorE7map_errNtBL_16WeekOfMonthErrorNcNtB1I_5Parse0EBP_(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  %i.b = tail call i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix16WeekOfMonthError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %.sroa.23.0.extract.trunc) #14
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.36.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0.extract.shift = and i64 %0, -4294967296
  %.sroa.36.0.insert.insert = or disjoint i64 %.sroa.05.0, %.sroa.4.0.extract.shift
  %.sroa.05.0.insert.insert = or i64 %.sroa.36.0.insert.insert, %.sroa.36.0
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 0, -4294901760) i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorE7map_errNtBL_17JulianNoLeapErrorNcNtB1I_5Parse0EBP_(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  %i.b = tail call i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %.sroa.23.0.extract.trunc) #14
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.36.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0.extract.shift = and i64 %0, -4294967296
  %.sroa.36.0.insert.insert = or disjoint i64 %.sroa.05.0, %.sroa.4.0.extract.shift
  %.sroa.05.0.insert.insert = or i64 %.sroa.36.0.insert.insert, %.sroa.36.0
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorNCNvMs5_B1u_NtB1u_6Parser21parse_hour_ianav3plus0EB1y_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0.extract.shift = lshr i32 %0, 8
  %.sroa.22.0.extract.trunc = trunc i32 %.sroa.22.0.extract.shift to i8
  %i.b = tail call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser21parse_hour_ianav3plus0Bb_(i8 %.sroa.22.0.extract.trunc) #14
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.35.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.33.0.extract.shift = and i32 %0, -65536
  %.sroa.35.0.insert.insert = or disjoint i32 %.sroa.04.0, %.sroa.33.0.extract.shift
  %.sroa.04.0.insert.insert = or i32 %.sroa.35.0.insert.insert, %.sroa.35.0
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorNCNvMs5_B1u_NtB1u_6Parser32parse_posix_julian_day_with_leap0EB1y_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0.extract.shift = lshr i32 %0, 8
  %.sroa.22.0.extract.trunc = trunc i32 %.sroa.22.0.extract.shift to i8
  %i.b = tail call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser32parse_posix_julian_day_with_leap0Bb_(i8 %.sroa.22.0.extract.trunc) #14
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.35.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.33.0.extract.shift = and i32 %0, -65536
  %.sroa.35.0.insert.insert = or disjoint i32 %.sroa.04.0, %.sroa.33.0.extract.shift
  %.sroa.04.0.insert.insert = or i32 %.sroa.35.0.insert.insert, %.sroa.35.0
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorNCNvMs5_B1u_NtB1u_6Parser30parse_posix_julian_day_no_leap0EB1y_(i32 %0) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0.extract.shift = lshr i32 %0, 8
  %.sroa.22.0.extract.trunc = trunc i32 %.sroa.22.0.extract.shift to i8
  %i.b = tail call i8 @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser30parse_posix_julian_day_no_leap0Bb_(i8 %.sroa.22.0.extract.trunc) #14
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.35.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.33.0.extract.shift = and i32 %0, -65536
  %.sroa.35.0.insert.insert = or disjoint i32 %.sroa.04.0, %.sroa.33.0.extract.shift
  %.sroa.04.0.insert.insert = or i32 %.sroa.35.0.insert.insert, %.sroa.35.0
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_len0Bd_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %1, i64 %i.a) #14
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens0_0Bd_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %1, i64 %i.a) #14
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens1_0Bd_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %1, i64 %i.a) #14
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens2_0Bd_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %1, i64 %i.a) #14
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens_0Bd_(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %1, i64 %i.a) #14
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNCNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone12parse_footer0Bc_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %i.a, 10
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNCNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone16parse_indicators0Bc_(ptr nofree readnone captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = call zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EINtB7_9PartialEqReE2eqBI_(ptr nonnull align 8 %i.a, ptr align 8 %i.b) #14
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterError14InvalidPosixTz0Bb_(i32 returned %0) unnamed_addr #2 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 2, 16776963) i64 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header320Bb_(i8 %0, i8 %1) unnamed_addr #2 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 2
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i64 3, 16776964) i64 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header640Bb_(i8 %0, i8 %1) unnamed_addr #2 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %1 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 3
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE2okBL_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  %i.b = trunc i16 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i32 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaR3IayqLkK5_9jiff_core9timestamp9TimestampNtNtBL_6bounds10RangeErrorE6expectBL_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = load i16, ptr %0, align 8
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i32, ptr %i.d, align 2
  store i32 %i.e, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @2, ptr align 8 %3) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  ret { i64, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBN_6bounds10RangeErrorE6expectBN_(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 16
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @2, ptr align 8 %3) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.33.0.extract.shift = lshr i64 %0, 32
  %.sroa.33.0.extract.trunc = trunc nuw i64 %.sroa.33.0.extract.shift to i32
  ret i32 %.sroa.33.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i48 0, -65534) i48 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE2okBN_(i48 %0) unnamed_addr #2 {
bb.a:
  %i.a = and i48 %0, -65535
  %.sroa.03.0.insert.insert = xor i48 %i.a, 1
  ret i48 %.sroa.03.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil4date4DateNtNtBN_6bounds10RangeErrorE6expectBN_(i48 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.23.0.extract.shift = lshr i48 %0, 16
  %.sroa.23.0.extract.trunc = trunc nuw i48 %.sroa.23.0.extract.shift to i32 ; 2 uses
  %i.b = trunc i48 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %.sroa.23.0.extract.trunc, ptr %i.a, align 4
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @2, ptr align 8 %3) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 %.sroa.23.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE2okCsaR3IayqLkK5_9jiff_core(i1 zeroext %0, i8 %1) unnamed_addr #2 {
bb.a:
  %. = select i1 %0, i8 undef, i8 %1
  %.sroa.04.0 = xor i1 %0, true
  %i.a = insertvalue { i1, i8 } poison, i1 %.sroa.04.0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %., 1
  ret { i1, i8 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsaR3IayqLkK5_9jiff_core(i1 zeroext %0, i8 returned %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @3, ptr align 8 %4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i8 %1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_6Header5parse(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, i64 range(i64 4, 9) %1, ptr %2, i64 %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %.off = add nsw i64 %1, -5
  %switch = icmp ult i64 %.off, 3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %3, 44
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = tail call { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr nonnull @7, i64 24) #14 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.r, ptr %i.s, ptr nonnull align 8 @8) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr %2, i64 %3, i64 4, ptr nonnull align 8 @9) #14
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8
  store ptr %i.t, ptr %i.o, align 8, !captures !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRShINtB7_9PartialEqRAhj4_E2neCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.o, ptr nonnull align 8 @11) #14
  br i1 %i.ab, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.b
  store i8 8, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ac, align 8
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr %i.y, i64 %i.aa, i64 1, ptr nonnull align 8 @12) #14
  %i.ad = load ptr, ptr %i.m, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr %i.ah, i64 %i.aj, i64 15, ptr nonnull align 8 @13) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.an = load i64, ptr %i.am, align 8
  call void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsaR3IayqLkK5_9jiff_core(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr %i.al, i64 %i.an, i64 4, ptr nonnull align 8 @14) #14
  %i.ao = load ptr, ptr %i.k, align 8
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = load i8, ptr %0, align 4
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.l
    i8 9, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @76, i64 21)
  br i1 %i.g, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @77, i64 21)
  br i1 %i.h, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @78, i64 28)
  br i1 %i.i, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @79, i64 28)
  br i1 %i.j, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @80, i64 78)
  br i1 %i.k, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.l = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @81, i64 28)
  br i1 %i.l, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.m = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @82, i64 34)
  br i1 %i.m, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.x

bb.j:                                             ; preds = %bb.a
  %i.n = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.n, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext nneg i8 %i.p to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.r = zext nneg i8 %i.p to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.r
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.s = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load3, i64 %switch.ext)
  br i1 %i.s, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.k

bb.k:                                             ; preds = %switch.lookup
  %i.t = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.u = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @83, i64 39)
  br i1 %i.u, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.v = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @84, i64 44)
  br i1 %i.v, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.z

bb.n:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = tail call zeroext i1 @_RNvXsl_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_11FooterErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.w, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.ac, %bb.ab, %switch.lookup4, %bb.aa, %bb.m, %bb.l, %bb.i, %bb.h, %bb.v, %bb.u, %bb.t, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.k, %switch.lookup, %bb.j, %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.shrunk = phi i1 [ true, %switch.lookup ], [ %i.x, %bb.n ], [ true, %bb.c ], [ %i.z, %bb.o ], [ true, %bb.d ], [ %i.ab, %bb.p ], [ true, %bb.e ], [ %i.ad, %bb.q ], [ true, %bb.f ], [ true, %bb.g ], [ %i.ai, %bb.v ], [ %i.ak, %bb.w ], [ true, %bb.h ], [ %i.as, %bb.x ], [ true, %bb.m ], [ true, %bb.i ], [ %i.au, %bb.y ], [ true, %bb.l ], [ %i.t, %bb.k ], [ true, %bb.j ], [ %i.ag, %bb.t ], [ %i.ah, %bb.u ], [ %i.bd, %bb.ac ], [ %i.bc, %bb.ab ], [ true, %bb.aa ], [ true, %switch.lookup4 ]
  ret i1 %.sroa.0.0.shrunk

bb.o:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = tail call zeroext i1 @_RNvXsm_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.y, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.p:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ab = tail call zeroext i1 @_RNvXsm_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.aa, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.q:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = tail call zeroext i1 @_RNvXsm_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_11HeaderErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.ac, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.r:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ag = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @98, i64 145)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.u:                                             ; preds = %bb.r
  %i.ah = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @99, i64 127)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.v:                                             ; preds = %bb.r
  %i.ai = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @100, i64 125)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.w:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = tail call zeroext i1 @_RNvXsj_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_14IndicatorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.aj, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.x:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = load i32, ptr %i.al, align 4
  store i32 %i.am, ptr %i.e, align 4
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 4 %i.e) #14
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 4 @86) #14
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 @87) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ap = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj62_Kj3_ECsaR3IayqLkK5_9jiff_core(ptr nonnull @88, ptr nonnull align 8 %i.d) #14 ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  %i.as = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %1, ptr %i.aq, ptr %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.y:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = tail call zeroext i1 @_RNvXsh_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_23TimeZoneDesignatorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nonnull %i.at, ptr align 8 %1)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.z:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %.not.i = icmp eq i8 %i.aw, -1
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.ax, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %switch.lookup4

switch.lookup4:                                   ; preds = %bb.aa
  %i.ay = load i8, ptr %i.av, align 1             ; 2 uses
  %i.az = zext nneg i8 %i.ay to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.az
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext7 = zext i8 %switch.load6 to i64
  %i.ba = zext nneg i8 %i.ay to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.ba
  %switch.load9 = load ptr, ptr %switch.gep8, align 8
  %i.bb = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load9, i64 %switch.ext7)
  br i1 %i.bb, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.ab

bb.ab:                                            ; preds = %switch.lookup4
  %i.bc = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ac:                                            ; preds = %bb.z
  %i.bd = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @85, i64 81)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvXs4_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14ParseErrorKindE4from(i64 returned %0) unnamed_addr #6 {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 1, 16776962) i64 @_RNvXs5_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11HeaderErrorE4from(i8 %0, i8 %1) unnamed_addr #6 {
bb.a:
  %.sroa.34.0.insert.ext = zext i8 %1 to i64
  %.sroa.34.0.insert.shift = shl nuw nsw i64 %.sroa.34.0.insert.ext, 16
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.23.0.insert.insert = or disjoint i64 %.sroa.34.0.insert.shift, %.sroa.23.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.insert, 1
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, 1099511627521) i64 @_RNvXs6_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FooterErrorE4from(i32 %0) unnamed_addr #6 {
bb.a:
  %.sroa.26.0.insert.ext = zext i32 %0 to i64
  %.sroa.26.0.insert.shift = shl nuw nsw i64 %.sroa.26.0.insert.ext, 8
  ret i64 %.sroa.26.0.insert.shift
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 4, 65285) i64 @_RNvXs7_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_30InconsistentPosixTimeZoneErrorE4from(i8 %0) unnamed_addr #6 {
bb.a:
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, 4
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 5, 65286) i64 @_RNvXs8_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14IndicatorErrorE4from(i8 %0) unnamed_addr #6 {
bb.a:
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, 5
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6, -4294967289) i64 @_RNvXs9_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_18LocalTimeTypeErrorE4from(i32 %0) unnamed_addr #6 {
bb.a:
  %.sroa.3.0.insert.ext = zext i32 %0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, 6
  ret i64 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 7, 65288) i64 @_RNvXsa_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_12SplitAtErrorE4from(i8 %0) unnamed_addr #6 {
bb.a:
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, 7
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 8, 65289) i64 @_RNvXsb_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_23TimeZoneDesignatorErrorE4from(i8 %0) unnamed_addr #6 {
bb.a:
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, 8
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 9, 65290) i64 @_RNvXsc_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_19TransitionTypeErrorE4from(i8 %0) unnamed_addr #6 {
bb.a:
  %.sroa.23.0.insert.ext = zext i8 %0 to i64
  %.sroa.23.0.insert.shift = shl nuw nsw i64 %.sroa.23.0.insert.ext, 8
  %.sroa.02.0.insert.insert = or disjoint i64 %.sroa.23.0.insert.shift, 9
  ret i64 %.sroa.02.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsd_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_19TransitionTypeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_12SplitAtErrorE4from(i8 returned %0) unnamed_addr #6 {
bb.a:
  ret i8 %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXse_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_19TransitionTypeErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %.not = icmp eq i8 %i.a, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.b, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.f = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load2, i64 %switch.ext)
  br i1 %i.f, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @85, i64 81)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.c, %switch.lookup, %bb.b, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ true, %bb.b ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsf_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_18LocalTimeTypeErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = load i32, ptr %0, align 4
  store i32 %i.f, ptr %i.e, align 4
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 4 %i.e) #14
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 4 @86) #14
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 @87) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.i = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj62_Kj3_ECsaR3IayqLkK5_9jiff_core(ptr nonnull @88, ptr nonnull align 8 %i.d) #14 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %1, ptr %i.j, ptr %i.k) #14
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsg_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_23TimeZoneDesignatorErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_12SplitAtErrorE4from(i8 returned %0) unnamed_addr #6 {
bb.a:
  ret i8 %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsh_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_23TimeZoneDesignatorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = add i8 %i.a, -8
  %i.c = icmp ugt i8 %i.a, 7
  %narrow = select i1 %i.c, i8 %i.b, i8 5
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @89, i64 61)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @90, i64 64)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @91, i64 63)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @92, i64 44)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @93, i64 54)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.i, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.h
  %i.j = load i8, ptr %0, align 1                 ; 2 uses
  %i.k = zext nneg i8 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = zext nneg i8 %i.j to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.l
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.m = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load2, i64 %switch.ext)
  br i1 %i.m, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.i

bb.i:                                             ; preds = %switch.lookup
  %i.n = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.i, %switch.lookup, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.n, %bb.i ], [ true, %bb.h ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsi_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_14IndicatorErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_12SplitAtErrorE4from(i8 returned %0) unnamed_addr #6 {
bb.a:
  ret i8 %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsj_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_14IndicatorErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = add i8 %i.a, -8
  %i.c = icmp ugt i8 %i.a, 7
  %narrow = select i1 %i.c, i8 %i.b, i8 3
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @94, i64 81)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @95, i64 58)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @96, i64 114)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.g, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.f
  %i.h = load i8, ptr %0, align 1                 ; 2 uses
  %i.i = zext nneg i8 %i.h to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.j = zext nneg i8 %i.h to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.j
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.k = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load2, i64 %switch.ext)
  br i1 %i.k, label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.l = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

end_hunk_2
begin_hunk_3_@_RNvXsn_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_9CountKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
bb.h:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @121, i64 11)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readonly captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @122, i64 20)
  br i1 %i.a, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXso_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_12SplitAtErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.20, i64 %i.d
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.e = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull %switch.load3, i64 %switch.ext)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.f = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @131, i64 42)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i16 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionaENtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17OptionalSignErrorENtNtNtB7_3ops9try_trait3Try6branchB1e_(i16 returned %0) unnamed_addr #2 {
bb.a:
  ret i16 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4278190334) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.06.0.insert.insert = and i64 %0, -4278190335
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i32 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DayNtBM_9DateErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i32 returned %0) unnamed_addr #2 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBM_14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 4
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 1
  store i8 -1, ptr %0, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_9RuleErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 returned %0) unnamed_addr #2 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtNtNtBO_4tzif6parser11FooterErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 5)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -254) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  %.sroa.04.014 = select i1 %i.a, i64 1099511627521, i64 -255
  %.sroa.04.0.insert.insert = and i64 %.sroa.04.014, %0
  ret i64 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtNtBO_4tzif6parser18LocalTimeTypeErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i32 %0, i32 %1) unnamed_addr #2 {
bb.a:
  %. = and i32 %0, 1
  %i.a = insertvalue { i32, i32 } poison, i32 %., 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayNtNtNtBQ_2tz5posix12WeekdayErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i1 zeroext %0, i8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i1, i8 } poison, i1 %0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %1, 1
  ret { i1, i8 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %.sink3.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink3 = load i64, ptr %.sink3.in, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink3, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterErrorENtNtNtB7_3ops9try_trait3Try6branchBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 12)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 8
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  store i64 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14IndicatorErrorENtNtNtB7_3ops9try_trait3Try6branchBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser19TransitionTypeErrorENtNtNtB7_3ops9try_trait3Try6branchBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorENtNtNtB7_3ops9try_trait3Try6branchBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultReNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix23QuotedAbbreviationErrorENtNtNtB7_3ops9try_trait3Try6branchBS_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultReNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix25UnquotedAbbreviationErrorENtNtNtB7_3ops9try_trait3Try6branchBS_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultReNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorENtNtNtB7_3ops9try_trait3Try6branchBU_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_3
begin_hunk_4_@_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultjNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11HeaderErrorENtNtNtB7_3ops9try_trait3Try6branchBT_:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultjNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorENtNtNtB7_3ops9try_trait3Try6branchBT_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 1)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix10MonthErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11MinuteErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11SecondErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix12WeekdayErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14HourPosixErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix16WeekOfMonthErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, -4294902014) i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64 %0) unnamed_addr #2 {
bb.a:
  %.sroa.05.0.insert.insert = and i64 %0, -4294902015
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 0, -254) i32 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i32 %0) unnamed_addr #2 {
bb.a:
  %.sroa.04.0.insert.insert = and i32 %0, -255
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 0, -254) i32 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i32 %0) unnamed_addr #2 {
bb.a:
  %.sroa.04.0.insert.insert = and i32 %0, -255
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i32 0, -254) i32 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i32 %0) unnamed_addr #2 {
bb.a:
  %.sroa.04.0.insert.insert = and i32 %0, -255
  ret i32 %.sroa.04.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaR3IayqLkK5_9jiff_core(i1 returned zeroext %0) unnamed_addr #2 {
bb.a:
  ret i1 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser30InconsistentPosixTimeZoneErrorENtNtNtB7_3ops9try_trait3Try6branchBT_(i8 returned %0) unnamed_addr #2 {
bb.a:
  ret i8 %0
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXsp_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_13U32UsizeErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayjECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 @132) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.c = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj38_Kj1_ECsaR3IayqLkK5_9jiff_core(ptr nonnull @133, ptr nonnull align 8 %i.b) #14 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %1, ptr %i.d, ptr %i.e) #14
  ret i1 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix23QuotedAbbreviationErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 2)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix25UnquotedAbbreviationErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBP_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 2)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8TimeZoneNtNtBM_6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1v_EE13from_residualBQ_(ptr nofree writeonly sret([232 x i8]) align 8 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8TimeZoneNtNtBM_6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_14ParseErrorKindEE13from_residualBQ_(ptr nofree writeonly sret([232 x i8]) align 8 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8TimeZoneNtNtBM_6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_30InconsistentPosixTimeZoneErrorEE13from_residualBQ_(ptr nofree writeonly sret([232 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_11MinuteErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsy_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9TimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11MinuteErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_11SecondErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsA_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9TimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11SecondErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_13HourIanaErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsw_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9TimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13HourIanaErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14HourPosixErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsx_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9TimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14HourPosixErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_17OptionalSignErrorEE13from_residualBQ_(i1 zeroext %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsz_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9TimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17OptionalSignErrorE4from(i1 zeroext %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i32 255, 16777216) i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DayNtBM_9DateErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_15JulianLeapErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i16 @_RNvXsj_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9DateErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_15JulianLeapErrorE4from(i8 %0)
  %.sroa.2.0.insert.ext = zext i16 %i.a to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, 255
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i32 255, 16777216) i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DayNtBM_9DateErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_17JulianNoLeapErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i16 @_RNvXsk_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9DateErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17JulianNoLeapErrorE4from(i8 %0)
  %.sroa.2.0.insert.ext = zext i16 %i.a to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, 255
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i32 255, 16777216) i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DayNtBM_9DateErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_19WeekdayOfMonthErrorEE13from_residualBQ_(i8 %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i16 @_RNvXsl_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_9DateErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_19WeekdayOfMonthErrorE4from(i8 %0, i8 %1)
  %.sroa.2.0.insert.ext = zext i16 %i.a to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, 255
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 5)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs8_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14ParseErrorKindE4from(i32 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %i.a, ptr %i.b, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBM_9RuleErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBQ_(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((0, 5)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  store i8 -1, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 255, 4294967296) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_13DateTimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_9DateErrorEE13from_residualBQ_(i16 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i24 @_RNvXsg_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_13DateTimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9DateErrorE4from(i16 %0)
  %.sroa.2.0.insert.ext = zext i24 %i.a to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 255
  ret i64 %.sroa.03.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 255, 4294967296) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_13DateTimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_9TimeErrorEE13from_residualBQ_(i8 %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i24 @_RNvXsh_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_13DateTimeErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9TimeErrorE4from(i8 %0, i8 %1)
  %.sroa.2.0.insert.ext = zext i24 %i.a to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 255
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBQ_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 5)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) initializes((0, 5)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_RNvXs8_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_10ParseErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14ParseErrorKindE4from(i32 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %i.a, ptr %i.b, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix11OffsetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_11MinuteErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsb_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_11OffsetErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11MinuteErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix11OffsetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_11SecondErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsd_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_11OffsetErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11SecondErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix11OffsetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_14HourPosixErrorEE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsa_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_11OffsetErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14HourPosixErrorE4from(i8 %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i64 1, 16776962) i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix11OffsetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1x_17OptionalSignErrorEE13from_residualBQ_(i1 zeroext %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i8, i8 } @_RNvXsc_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_11OffsetErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17OptionalSignErrorE4from(i1 zeroext %0) ; 2 uses
  %i.b = extractvalue { i8, i8 } %i.a, 0
  %i.c = extractvalue { i8, i8 } %i.a, 1
  %.sroa.3.0.insert.ext = zext i8 %i.c to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %i.b to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, 1
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayNtNtNtBQ_2tz5posix12WeekdayErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1A_EE13from_residualBQ_(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %0, 1
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_11HeaderErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, i8 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #3 {
bb.a:
  %.sroa.34.0.insert.ext.i = zext i8 %2 to i64
  %.sroa.34.0.insert.shift.i = shl nuw nsw i64 %.sroa.34.0.insert.ext.i, 16
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.23.0.insert.insert.i = or disjoint i64 %.sroa.34.0.insert.shift.i, %.sroa.23.0.insert.shift.i
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.insert.i, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_12SplitAtErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_18LocalTimeTypeErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.3.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %.sroa.03.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0.insert.insert.i, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBN_EE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 12)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14IndicatorErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_12SplitAtErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser19TransitionTypeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_12SplitAtErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBN_EE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultRShNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser23TimeZoneDesignatorErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBP_12SplitAtErrorEE13from_residualBV_(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 9)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZonejENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1z_EE13from_residualBR_(ptr nofree writeonly sret([88 x i8]) align 8 captures(none) initializes((0, 5)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %1, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1Q_EE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_11FooterErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.26.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.26.0.insert.shift.i = shl nuw nsw i64 %.sroa.26.0.insert.ext.i, 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.26.0.insert.shift.i, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_11HeaderErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, i8 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #3 {
bb.a:
  %.sroa.34.0.insert.ext.i = zext i8 %2 to i64
  %.sroa.34.0.insert.shift.i = shl nuw nsw i64 %.sroa.34.0.insert.ext.i, 16
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.23.0.insert.insert.i = or disjoint i64 %.sroa.34.0.insert.shift.i, %.sroa.23.0.insert.shift.i
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.insert.i, 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_12SplitAtErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_14IndicatorErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_14ParseErrorKindEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_19TransitionTypeErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.insert.insert.i, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParsedTimeZoneRShENtBN_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBN_23TimeZoneDesignatorErrorEE13from_residualBT_(ptr nofree writeonly sret([248 x i8]) align 8 captures(none) initializes((0, 16)) %0, i8 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %.sroa.23.0.insert.ext.i = zext i8 %1 to i64
  %.sroa.23.0.insert.shift.i = shl nuw nsw i64 %.sroa.23.0.insert.ext.i, 8
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.23.0.insert.shift.i, 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
