Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.13?download=true
inline.NumInlined: 256
inline.NumDeleted: 82
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [24 x i8] c"crates/jiff/src/span.rs\00", align 1
@1 = private unnamed_addr constant [96 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"_\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"_\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@4 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@6 = private unnamed_addr constant [35 x i8] c"crates/jiff/src/signed_duration.rs\00", align 1
@7 = private unnamed_addr constant [41 x i8] c"assertion failed: fraction <= 999_999_999", align 1
@8 = private unnamed_addr constant [28 x i8] c"crates/jiff/src/fmt/util.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\1B\00\00\00\00\00\00\00\95\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [41 x i8] c"assertion failed: self.fraction.is_none()", align 1
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\1B\00\00\00\00\00\00\00N\00\00\00\09\00\00\00" }>, align 8
@12 = private unnamed_addr constant [37 x i8] c"overflow when adding signed durations", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\22\00\00\00\00\00\00\009\0A\00\00\1F\00\00\00" }>, align 8
@14 = private unnamed_addr constant [32 x i8] c"value for hours is out of bounds", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00\22\03\00\00\1F\00\00\00" }>, align 8
@16 = private unnamed_addr constant [34 x i8] c"value for minutes is out of bounds", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\000\03\00\00#\00\00\00" }>, align 8
@18 = private unnamed_addr constant [34 x i8] c"value for seconds is out of bounds", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00>\03\00\00#\00\00\00" }>, align 8
@20 = private unnamed_addr constant [39 x i8] c"value for milliseconds is out of bounds", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00M\03\00\00\0E\00\00\00" }>, align 8
@22 = private unnamed_addr constant [39 x i8] c"value for microseconds is out of bounds", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00\\\03\00\00\0E\00\00\00" }>, align 8
@24 = private unnamed_addr constant [30 x i8] c"crates/jiff/src/util/parse.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"\1D\00\00\00\00\00\00\00\CE\00\00\00\0F\00\00\00" }>, align 8
@26 = private unnamed_addr constant [73 x i8] c"failed to interpret datetime in UTC in order to convert it to a timestamp", align 1
@27 = private unnamed_addr constant [5 x i8] c"years", align 1
@28 = private unnamed_addr constant [6 x i8] c"months", align 1
@29 = private unnamed_addr constant [5 x i8] c"weeks", align 1
@30 = private unnamed_addr constant [4 x i8] c"days", align 1
@31 = private unnamed_addr constant [5 x i8] c"hours", align 1
@32 = private unnamed_addr constant [7 x i8] c"minutes", align 1
@33 = private unnamed_addr constant [7 x i8] c"seconds", align 1
@34 = private unnamed_addr constant [12 x i8] c"milliseconds", align 1
@35 = private unnamed_addr constant [12 x i8] c"microseconds", align 1
@36 = private unnamed_addr constant [11 x i8] c"nanoseconds", align 1
@37 = private unnamed_addr constant [76 x i8] c"Gfailed to convert rounded nanoseconds to span for largest unit set to '\C0\01'\00", align 1
@38 = private unnamed_addr constant [62 x i8] c"cannot convert negative span to unsigned `std::time::Duration`", align 1
@39 = private unnamed_addr constant [105 x i8] c"failed to convert span to duration without relative datetime (must use `jiff::Span::to_duration` instead)", align 1
@40 = private unnamed_addr constant [68 x i8] c"?failed to get span between datetimes with largest unit set to '\C0\01'\00", align 1
@41 = private unnamed_addr constant [74 x i8] c"Efailed to get span between zoned datetimes with largest unit set to '\C0\01'\00", align 1
@42 = private unnamed_addr constant [36 x i8] c"error with `largest` rounding option", align 1
@43 = private unnamed_addr constant [45 x i8] c"error with largest unit in span to be rounded", align 1
@44 = private unnamed_addr constant [37 x i8] c"error with `smallest` rounding option", align 1
@45 = private unnamed_addr constant [62 x i8] c"could not compute normalized relative span from civil datetime", align 1
@46 = private unnamed_addr constant [83 x i8] c"could not compute normalized relative span when all days are assumed to be 24 hours", align 1
@47 = private unnamed_addr constant [62 x i8] c"could not compute normalized relative span from zoned datetime", align 1
@_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal24DEFAULT_DATETIME_PRINTER = external hidden global { { i8, { i8, [1 x i8] }, i8 } }
@_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal23DEFAULT_DATETIME_PARSER = external global { i8, i8, { {} } }
@48 = private unnamed_addr constant [26 x i8] c"ConvertDateTimeToTimestamp", align 1
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff4span4UnitNtB6_5Debug3fmtBA_ }>, align 8
@50 = private unnamed_addr constant [18 x i8] c"ConvertNanoseconds", align 1
@51 = private unnamed_addr constant [4 x i8] c"unit", align 1
@52 = private unnamed_addr constant [15 x i8] c"ConvertNegative", align 1
@53 = private unnamed_addr constant [27 x i8] c"ConvertSpanToSignedDuration", align 1
@54 = private unnamed_addr constant [26 x i8] c"FailedSpanBetweenDateTimes", align 1
@55 = private unnamed_addr constant [31 x i8] c"FailedSpanBetweenZonedDateTimes", align 1
@56 = private unnamed_addr constant [13 x i8] c"OptionLargest", align 1
@57 = private unnamed_addr constant [19 x i8] c"OptionLargestInSpan", align 1
@58 = private unnamed_addr constant [14 x i8] c"OptionSmallest", align 1
@59 = private unnamed_addr constant [15 x i8] c"ToDurationCivil", align 1
@60 = private unnamed_addr constant [24 x i8] c"ToDurationDaysAre24Hours", align 1
@61 = private unnamed_addr constant [15 x i8] c"ToDurationZoned", align 1
@switch.table._RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.37 = private unnamed_addr constant [10 x ptr] [ptr @36, ptr @35, ptr @34, ptr @33, ptr @32, ptr @31, ptr @30, ptr @29, ptr @28, ptr @27], align 8
@switch.table._RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.38 = private unnamed_addr constant [10 x i8] c"\0B\0C\0C\07\07\05\04\05\06\05", align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 8), (60, 61)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, -175307617
  %or.cond = icmp ult i64 %i.a, -350615233
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i8 @_RNvXsY_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23
  %i.c = zext nneg i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 8
  %i.e = or disjoint i64 %i.d, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = shl nsw i64 %2, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.insert.insert.i = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = trunc i64 %.sroa.3.0.insert.insert.i to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %.sroa.417.0.extract.shift = lshr i64 %.sroa.3.0.insert.insert.i, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.417.0.extract.trunc)
  store ptr %i.h, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %.sroa.619.0.extract.shift = lshr i64 %.sroa.3.0.insert.insert.i, 32 ; 2 uses
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.58.0.copyload = load i16, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.711.sroa.0.0.copyload = load i16, ptr %.sroa.711.0..sroa_idx, align 2 ; 2 uses
  %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.711.sroa.4.0.copyload = load i8, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx, align 4 ; 2 uses
  %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.i = icmp slt i64 %.sroa.3.0.insert.insert.i, 0
  %i.j = sub i32 0, %.sroa.619.0.extract.trunc
  %.sroa.013.0 = select i1 %i.i, i32 %i.j, i32 %.sroa.619.0.extract.trunc
  %i.k = icmp eq i64 %.sroa.619.0.extract.shift, 0 ; 2 uses
  %i.l = and i16 %.sroa.58.0.copyload, -33
  %masksel = select i1 %i.k, i16 0, i16 32
  %.sroa.015.0 = or disjoint i16 %i.l, %masksel
  %.sroa.0.0.copyload20 = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload22 = load i64, ptr %.sroa.5.0..sroa_idx21, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload24 = load i64, ptr %.sroa.6.0..sroa_idx23, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload26 = load i64, ptr %.sroa.7.0..sroa_idx25, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload28 = load i64, ptr %.sroa.8.0..sroa_idx27, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload30 = load i32, ptr %.sroa.9.0..sroa_idx29, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload32 = load i32, ptr %.sroa.10.0..sroa_idx31, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload34 = load i32, ptr %.sroa.11.0..sroa_idx33, align 8 ; 2 uses
  %i.m = ashr i64 %.sroa.3.0.insert.insert.i, 32  ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ne i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i16 %.sroa.711.sroa.0.0.copyload, 0
  %i.q = icmp eq i32 %.sroa.9.0.copyload30, 0
  %or.cond.i = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp eq i32 %.sroa.10.0.copyload32, 0
  %or.cond5.i = select i1 %or.cond.i, i1 %i.r, i1 false
  %i.s = icmp eq i32 %.sroa.11.0.copyload34, 0
  %or.cond8.i = select i1 %or.cond5.i, i1 %i.s, i1 false
  %or.cond11.i = and i1 %i.k, %or.cond8.i
  %i.t = icmp eq i64 %.sroa.0.0.copyload20, 0
  %or.cond13.i = select i1 %or.cond11.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.5.0.copyload22, 0
  %or.cond16.i = select i1 %or.cond13.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.6.0.copyload24, 0
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.v, i1 false
  %i.w = icmp eq i64 %.sroa.7.0.copyload26, 0
  %or.cond22.i = select i1 %or.cond19.i, i1 %i.w, i1 false
  %i.x = icmp eq i64 %.sroa.8.0.copyload28, 0
  %or.cond4.i = select i1 %or.cond22.i, i1 %i.x, i1 false
  br i1 %or.cond4.i, label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %.sroa.027.0.in.i = icmp eq i8 %.sroa.711.sroa.4.0.copyload, 0
  %spec.select.i = zext i1 %i.o to i8
  %spec.select = select i1 %.sroa.027.0.in.i, i8 %spec.select.i, i8 %.sroa.711.sroa.4.0.copyload
  br label %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit

_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit: ; preds = %.thread.i, %bb.e, %bb.g
  %.sroa.0.0.i = phi i8 [ %spec.select, %.thread.i ], [ -1, %bb.e ], [ 0, %bb.g ]
  %.sroa.1545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1545.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx, i64 3, i1 false)
  store i64 %.sroa.0.0.copyload20, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload22, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload24, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.copyload26, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload28, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.9.0.copyload30, ptr %.sroa.839.0..sroa_idx, align 8
  %.sroa.940.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.10.0.copyload32, ptr %.sroa.940.0..sroa_idx, align 4
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.11.0.copyload34, ptr %.sroa.1041.0..sroa_idx, align 8
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.013.0, ptr %.sroa.1142.0..sroa_idx, align 4
  %.sroa.1243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %.sroa.015.0, ptr %.sroa.1243.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %.sroa.711.sroa.0.0.copyload, ptr %.sroa.13.0..sroa_idx, align 2
  br label %bb.h

bb.h:                                             ; preds = %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit, %bb.d
  %.sroa.0.0.i.sink = phi i8 [ %.sroa.0.0.i, %_RNvNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB7_4Span6resign3imp.exit ], [ -2, %bb.d ]
  %.sroa.1444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sroa.0.0.i.sink, ptr %.sroa.1444.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !33, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !33, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !33, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.09.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !36, !noalias !33, !nonnull !4, !noundef !4
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !37
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.c, !noalias !33

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.h, %i.e
  br i1 %i.n, label %.body.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.110.i.i ; 2 uses
  %i.p = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !40, !noalias !33, !nonnull !4, !noundef !4
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !41
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i unwind label %bb.e, !noalias !33

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.p, %i.e
  br i1 %i.t, label %.body.i, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !33
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i, %bb.c
  %i.v = icmp eq i64 %i.c, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.w = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !42
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i, %bb.a
  %i.x = icmp eq i64 %i.c, 0
  br i1 %i.x, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i
  %i.y = mul nuw i64 %i.c, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !43
  br label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.m

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtNtB9_6string6StringINtNtB9_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEEB2c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !64, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !64, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !64, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i
  %.sroa.0.08.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.08.i.i ; 5 uses
  %i.h = add nuw nsw i64 %.sroa.0.08.i.i, 1       ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.b, !noalias !64

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !65, !noalias !64 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.j, label %.body.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !66, !noalias !64, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !67
  br label %.body.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !65, !noalias !64 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !66, !noalias !64, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !68
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBH_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp eq i64 %i.h, %i.e
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameEBI_.exit.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %.body.i, label %.lr.ph

.body.i.i:                                        ; preds = %bb.c, %bb.b
  %i.q = icmp eq i64 %i.h, %i.e
  br i1 %i.q, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i15 = phi i64 [ %i.o, %bb.f ], [ %i.h, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i15
end_hunk_0
begin_hunk_1_@_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add:bb.a

bb.k:                                             ; preds = %bb.i
  %i.t = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1, i64 0)
  %i.u = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1, i32 0)
  %.not = icmp eq i64 %i.t, %i.u
  br i1 %.not, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp slt i64 %.sroa.016.1, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i64 %.sroa.016.1, -1
  %i.x = add nsw i32 %.sroa.02.1, 1000000000
  br label %bb.d

bb.n:                                             ; preds = %bb.l
  %i.y = add nsw i64 %.sroa.016.1, 1
  %i.z = add nsw i32 %.sroa.02.1, -1000000000
  br label %bb.d

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.d
  %.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 1, %bb.d ], [ 0, %bb.f ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits12set_fraction(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %1, 1000000000
  br i1 %i.a, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.c = load i8, ptr %i.b, align 2, !range !11, !noundef !4 ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 -1, label %bb.d
    i8 5, label %bb.d
    i8 4, label %bb.d
    i8 3, label %bb.d
    i8 2, label %bb.d
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i32 1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !12, !noundef !4
  %i.g = icmp ne i32 %1, 0
  %i.h = zext i1 %i.g to i8
  %.sroa.02.0 = or i8 %i.f, %i.h
  store i8 %.sroa.02.0, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.44.0.insert.ext = zext nneg i8 %i.c to i16
  %.sroa.44.0.insert.shift = shl nuw nsw i16 %.sroa.44.0.insert.ext, 8
  %.sroa.03.0.insert.insert = or disjoint i16 %.sroa.44.0.insert.shift, 17
  %i.i = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %.sroa.03.0.insert.insert) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.3.0 = phi ptr [ %i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits15to_span_general(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 45 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [64 x i8], align 8                ; 11 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [64 x i8], align 8                ; 11 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.22447 = alloca [3 x i8], align 1         ; 2 uses
  %.sroa.21 = alloca [3 x i8], align 1            ; 2 uses
  %.sroa.22 = alloca [3 x i8], align 1            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 90
  %.val = load i8, ptr %i.l, align 2, !range !11, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 91
  %.val301 = load i8, ptr %i.m, align 1, !range !11, !noundef !4
  %.not.i = icmp eq i8 %.val, -1
  %.not7.i = icmp eq i8 %.val301, -1
  %or.cond.i = or i1 %.not.i, %.not7.i
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 11) #23, !noalias !300
  store ptr %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.o, align 4
  br label %bb.et

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 58 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.d, i8 0, i64 61, i1 false)
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 7 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load i8, ptr %i.ab, align 8, !range !12, !alias.scope !301, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.af = load i8, ptr %i.ae, align 1, !range !13, !alias.scope !301, !noundef !4 ; 2 uses
  %i.ag = icmp slt i64 %i.z, 0
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !6

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp slt i64 %i.z, 0
  br i1 %i.ah, label %bb.f, label %bb.h, !prof !6

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i298 = phi i8 [ %i.af, %bb.d ], [ 0, %bb.e ]
  %i.ai = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 9, i64 noundef %i.z, i8 noundef %.sroa.01.0.i298) #23, !noalias !301
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300

bb.g:                                             ; preds = %bb.d
  %i.aj = icmp eq i8 %i.af, -1
  %i.ak = sub nsw i64 0, %i.z
  %spec.select.i299 = select i1 %i.aj, i64 %i.ak, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.018.0.i295 = phi i64 [ %i.z, %bb.e ], [ %spec.select.i299, %bb.g ]
  %i.al = inttoptr i64 %.sroa.018.0.i295 to ptr
  %i.am = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.al, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300: ; preds = %bb.f, %bb.h
  %.merged.i296 = phi { i64, ptr } [ %i.ai, %bb.f ], [ %i.am, %bb.h ] ; 2 uses
  %i.an = extractvalue { i64, ptr } %.merged.i296, 0
  %i.ao = extractvalue { i64, ptr } %.merged.i296, 1 ; 2 uses
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647
  %.sroa.713.sroa.4.0.copyload.i = phi i8 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %.sroa.0.0.i.i649, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647 ] ; 3 uses
  %.sroa.713.sroa.0.0.copyload.i = phi i16 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %.sroa.012.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647 ] ; 6 uses
  %.sroa.510.0.copyload.i = phi i16 [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits17get_min_max_units.exit ], [ %masksel.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 7 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.aa, label %bb.u

bb.j:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300
  store ptr %i.ao, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.at, align 4
  br label %bb.et

bb.k:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit300
  %i.au = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.av = add i64 %i.au, -19999
  %or.cond.i308 = icmp ult i64 %i.av, -39997
  br i1 %or.cond.i308, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call noundef i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !302
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ba = trunc nsw i64 %i.au to i32
  %i.bb = shl nsw i32 %i.ba, 16
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.insert.insert.i.i = phi i32 [ %i.bb, %bb.m ], [ %i.az, %bb.l ] ; 5 uses
  %i.bc = trunc i32 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.bc, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread, label %bb.n

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.416.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.416.0.extract.trunc.i = trunc i32 %.sroa.416.0.extract.shift.i to i8
  %i.bd = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.416.0.extract.trunc.i), !noalias !302
  %i.be = ptrtoint ptr %i.bd to i64
  br label %bb.p

bb.n:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.517.0.extract.shift.i = lshr i32 %.sroa.3.0.insert.insert.i.i, 16 ; 2 uses
  %.sroa.517.0.extract.trunc.i = trunc nuw i32 %.sroa.517.0.extract.shift.i to i16 ; 2 uses
  %.sroa.79.0.copyload.i = load i32, ptr %i.p, align 4 ; 3 uses
  %i.bf = icmp slt i32 %.sroa.3.0.insert.insert.i.i, 0 ; 2 uses
  %i.bg = sub i16 0, %.sroa.517.0.extract.trunc.i
  %.sroa.012.0.i = select i1 %i.bf, i16 %i.bg, i16 %.sroa.517.0.extract.trunc.i ; 2 uses
  %.not = icmp eq i32 %.sroa.517.0.extract.shift.i, 0 ; 2 uses
  %masksel.i = select i1 %.not, i16 0, i16 512    ; 2 uses
  %brmerge = or i1 %i.bf, %.not
  %.sroa.3.0.insert.insert.i.i.lobit = ashr i32 %.sroa.3.0.insert.insert.i.i, 31
  %.mux = trunc nsw i32 %.sroa.3.0.insert.insert.i.i.lobit to i8
  br i1 %brmerge, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = and i32 %.sroa.79.0.copyload.i, 255
  %.not655 = icmp eq i32 %2, 0
  br i1 %.not655, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit: ; preds = %bb.o
  %i.bh = trunc i32 %.sroa.79.0.copyload.i to i8  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, -2
  br i1 %i.bi, label %bb.p, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647

bb.p:                                             ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit
  %.sroa.0402.0516 = phi i64 [ %i.be, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread ], [ 0, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit ] ; 2 uses
  %i.bj = inttoptr i64 %.sroa.0402.0516 to ptr    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bj, ptr %i.c, align 8
  %i.bk = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB2_5ErrorNtB6_9IntoError10into_error(i16 2316)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bm = icmp eq i64 %.sroa.0402.0516, 0
  br i1 %i.bm, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !303
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.s, label %common.resume

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.ai, %bb.aj, %bb.ak, %bb.q, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dc, %bb.ai ], [ %i.bl, %bb.q ], [ %i.bl, %bb.s ], [ %i.bl, %bb.r ], [ %i.dc, %bb.ak ], [ %i.dc, %bb.aj ], [ %i.ew, %bb.bd ], [ %i.ew, %bb.bc ], [ %i.ew, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit: ; preds = %bb.p
  %i.bq = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.bj, ptr noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.bq, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.br, align 4
  br label %bb.et

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit.thread647: ; preds = %bb.n, %bb.o, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit
  %.sroa.0.0.i.i649 = phi i8 [ %i.bh, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_yearsxEB7_.exit ], [ %.mux, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.22.60.extract.shift = lshr i32 %.sroa.79.0.copyload.i, 8
  %.sroa.22.60.extract.trunc = trunc nuw i32 %.sroa.22.60.extract.shift to i24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store i16 %masksel.i, ptr %i.q, align 8
  store i16 %.sroa.012.0.i, ptr %i.r, align 2
  store i8 %.sroa.0.0.i.i649, ptr %i.p, align 4
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 61
  store i24 %.sroa.22.60.extract.trunc, ptr %.sroa.8.0..sroa_idx16, align 1
  br label %bb.i

bb.u:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bt = load i8, ptr %i.bs, align 8, !range !12, !alias.scope !304, !noundef !4
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.bw = load i8, ptr %i.bv, align 1, !range !13, !alias.scope !304, !noundef !4 ; 2 uses
  %i.bx = icmp slt i64 %i.ar, 0
  br i1 %i.bx, label %bb.x, label %bb.y, !prof !6

bb.w:                                             ; preds = %bb.u
  %i.by = icmp slt i64 %i.ar, 0
  br i1 %i.by, label %bb.x, label %bb.z, !prof !6

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.01.0.i292 = phi i8 [ %i.bw, %bb.v ], [ 0, %bb.w ]
  %i.bz = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 8, i64 noundef %i.ar, i8 noundef %.sroa.01.0.i292) #23, !noalias !304
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit294

bb.y:                                             ; preds = %bb.v
  %i.ca = icmp eq i8 %i.bw, -1
  %i.cb = sub nsw i64 0, %i.ar
  %spec.select.i293 = select i1 %i.ca, i64 %i.cb, i64 %i.ar
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.018.0.i289 = phi i64 [ %i.ar, %bb.w ], [ %spec.select.i293, %bb.y ]
  %i.cc = inttoptr i64 %.sroa.018.0.i289 to ptr
  %i.cd = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.cc, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit294

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit294: ; preds = %bb.x, %bb.z
  %.merged.i290 = phi { i64, ptr } [ %i.bz, %bb.x ], [ %i.cd, %bb.z ] ; 2 uses
  %i.ce = extractvalue { i64, ptr } %.merged.i290, 0
  %i.cf = extractvalue { i64, ptr } %.merged.i290, 1 ; 2 uses
  %i.cg = trunc nuw i64 %i.ce to i1
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530
  %.sroa.9.0.copyload33.i379622 = phi i32 [ 0, %bb.i ], [ %.sroa.015.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530 ] ; 4 uses
  %.sroa.714.sroa.4.0.copyload.i = phi i8 [ %.sroa.713.sroa.4.0.copyload.i, %bb.i ], [ %.sroa.0.0.i.i327532, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530 ] ; 3 uses
  %.sroa.511.0.copyload.i = phi i16 [ %.sroa.510.0.copyload.i, %bb.i ], [ %.sroa.017.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !4 ; 7 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %bb.am

bb.ab:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit294
  store ptr %i.cf, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.ck, align 4
  br label %bb.et

bb.ac:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit294
  %i.cl = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.cm = add i64 %i.cl, -239977
  %or.cond.i310 = icmp ult i64 %i.cm, -479953
  br i1 %or.cond.i310, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cn = tail call noundef i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !305
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = or disjoint i64 %i.cp, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cr = shl nsw i64 %i.cl, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.ae, %bb.ad
  %.sroa.3.0.insert.insert.i.i311 = phi i64 [ %i.cr, %bb.ae ], [ %i.cq, %bb.ad ] ; 5 uses
  %i.cs = trunc i64 %.sroa.3.0.insert.insert.i.i311 to i1
  br i1 %i.cs, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.621.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i311, 32 ; 2 uses
  %.sroa.621.0.extract.trunc.i = trunc nuw i64 %.sroa.621.0.extract.shift.i to i32 ; 2 uses
  %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 61 ; 2 uses
  %i.ct = icmp slt i64 %.sroa.3.0.insert.insert.i.i311, 0
  %i.cu = sub i32 0, %.sroa.621.0.extract.trunc.i
  %.sroa.015.0.i = select i1 %i.ct, i32 %i.cu, i32 %.sroa.621.0.extract.trunc.i ; 2 uses
  %i.cv = icmp eq i64 %.sroa.621.0.extract.shift.i, 0 ; 2 uses
  %masksel.i312 = select i1 %i.cv, i16 0, i16 256
  %.sroa.017.0.i = or disjoint i16 %.sroa.510.0.copyload.i, %masksel.i312 ; 2 uses
  %i.cw = ashr i64 %.sroa.3.0.insert.insert.i.i311, 32 ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = icmp ne i64 %i.cw, 0                    ; 2 uses
  %.not650 = xor i1 %i.cy, true
  %i.cz = icmp eq i16 %.sroa.713.sroa.0.0.copyload.i, 0
  %or.cond.i.i = and i1 %i.cv, %i.cz
  %or.cond651 = select i1 %.not650, i1 %or.cond.i.i, i1 false
  br i1 %or.cond651, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530, label %.thread.i.i322

.thread.i.i322:                                   ; preds = %bb.ag
  %.sroa.027.0.in.i.i323 = icmp eq i8 %.sroa.713.sroa.4.0.copyload.i, 0
  %spec.select.i.i324 = zext i1 %i.cy to i8
  %spec.select652.a = select i1 %.sroa.027.0.in.i.i323, i8 %spec.select.i.i324, i8 %.sroa.713.sroa.4.0.copyload.i
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530

bb.ah:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.419.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i311, 8
  %.sroa.419.0.extract.trunc.i = trunc i64 %.sroa.419.0.extract.shift.i to i8
  %i.da = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.419.0.extract.trunc.i), !noalias !305 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.da, ptr %i.b, align 8
  %i.db = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB2_5ErrorNtB6_9IntoError10into_error(i16 2060)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit330 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dd = icmp eq ptr %i.da, null
  br i1 %i.dd, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !306
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %common.resume

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #23
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit330: ; preds = %bb.ah
  %i.dh = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.da, ptr noundef %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.dh, ptr %0, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.di, align 4
  br label %bb.et

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10try_monthsxEB7_.exit.thread530: ; preds = %.thread.i.i322, %bb.af, %bb.ag
  %.sroa.0.0.i.i327532 = phi i8 [ %spec.select652.a, %.thread.i.i322 ], [ -1, %bb.af ], [ 0, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.713.sroa.5.0..sroa.713.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.22, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store i32 %.sroa.015.0.i, ptr %i.s, align 8
  store i32 0, ptr %i.t, align 4
  store i32 0, ptr %i.u, align 8
  store i32 0, ptr %i.v, align 4
  store i16 %.sroa.017.0.i, ptr %i.q, align 8
  store i16 %.sroa.713.sroa.0.0.copyload.i, ptr %i.r, align 2
  store i8 %.sroa.0.0.i.i327532, ptr %i.p, align 4
  br label %bb.aa

bb.am:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dk = load i8, ptr %i.dj, align 8, !range !12, !alias.scope !307, !noundef !4
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.dn = load i8, ptr %i.dm, align 1, !range !13, !alias.scope !307, !noundef !4 ; 2 uses
  %i.do = icmp slt i64 %i.ci, 0
  br i1 %i.do, label %bb.ap, label %bb.aq, !prof !6

bb.ao:                                            ; preds = %bb.am
  %i.dp = icmp slt i64 %i.ci, 0
  br i1 %i.dp, label %bb.ap, label %bb.ar, !prof !6

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.01.0.i286 = phi i8 [ %i.dn, %bb.an ], [ 0, %bb.ao ]
  %i.dq = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 7, i64 noundef %i.ci, i8 noundef %.sroa.01.0.i286) #23, !noalias !307
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit288

bb.aq:                                            ; preds = %bb.an
  %i.dr = icmp eq i8 %i.dn, -1
  %i.ds = sub nsw i64 0, %i.ci
  %spec.select.i287 = select i1 %i.dr, i64 %i.ds, i64 %i.ci
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.018.0.i283 = phi i64 [ %i.ci, %bb.ao ], [ %spec.select.i287, %bb.aq ]
  %i.dt = inttoptr i64 %.sroa.018.0.i283 to ptr
  %i.du = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.dt, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit288

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit288: ; preds = %bb.ap, %bb.ar
  %.merged.i284 = phi { i64, ptr } [ %i.dq, %bb.ap ], [ %i.du, %bb.ar ] ; 2 uses
  %i.dv = extractvalue { i64, ptr } %.merged.i284, 0
  %i.dw = extractvalue { i64, ptr } %.merged.i284, 1 ; 2 uses
  %i.dx = trunc nuw i64 %i.dv to i1
  br i1 %i.dx, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aa, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546
  %.sroa.10.0.copyload35.i = phi i32 [ 0, %bb.aa ], [ %.sroa.016.0.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546 ] ; 2 uses
  %.sroa.714.sroa.4.0.copyload.i364 = phi i8 [ %.sroa.714.sroa.4.0.copyload.i, %bb.aa ], [ %.sroa.0.0.i.i349548, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546 ] ; 2 uses
  %.sroa.511.0.copyload.i360 = phi i16 [ %.sroa.511.0.copyload.i, %bb.aa ], [ %.sroa.018.0.i335, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546 ]
  %.sroa.58.0.copyload.i358 = phi i32 [ 0, %bb.aa ], [ %i.fe, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !4 ; 7 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.bl, label %bb.bf

bb.at:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit288
  store ptr %i.dw, ptr %0, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.eb, align 4
  br label %bb.et

bb.au:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit288
  %i.ec = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.ed = add i64 %i.ec, -1043498
  %or.cond.i331 = icmp ult i64 %i.ed, -2086995
  br i1 %or.cond.i331, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ee = tail call noundef i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !308
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 8
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ei = shl nsw i64 %i.ec, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.aw, %bb.av
  %.sroa.3.0.insert.insert.i.i332 = phi i64 [ %i.ei, %bb.aw ], [ %i.eh, %bb.av ] ; 5 uses
  %i.ej = trunc i64 %.sroa.3.0.insert.insert.i.i332 to i1
  br i1 %i.ej, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i332, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i = trunc nuw i64 %.sroa.622.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0.copyload.i = load i64, ptr %i.u, align 8 ; 3 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 61 ; 2 uses
  %i.ek = icmp slt i64 %.sroa.3.0.insert.insert.i.i332, 0
  %i.el = sub i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.ek, i32 %i.el, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.em = icmp eq i64 %.sroa.622.0.extract.shift.i, 0 ; 2 uses
  %i.en = and i16 %.sroa.511.0.copyload.i, -129
  %masksel.i334 = select i1 %i.em, i16 0, i16 128
  %.sroa.018.0.i335 = or disjoint i16 %i.en, %masksel.i334 ; 2 uses
  %i.eo = ashr i64 %.sroa.3.0.insert.insert.i.i332, 32 ; 2 uses
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eq = icmp ne i64 %i.eo, 0                    ; 2 uses
  br i1 %i.eq, label %.thread.i.i344, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.er = icmp eq i16 %.sroa.713.sroa.0.0.copyload.i, 0
  %i.es = icmp eq i32 %.sroa.9.0.copyload33.i379622, 0
  %or.cond.i.i336 = select i1 %i.er, i1 %i.es, i1 false
  %or.cond5.i.i336 = and i1 %i.em, %or.cond.i.i336
  %i.et = icmp eq i64 %.sroa.58.0.copyload.i, 0
  %or.cond11.i.i338 = select i1 %or.cond5.i.i336, i1 %i.et, i1 false
  br i1 %or.cond11.i.i338, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546, label %.thread.i.i344

.thread.i.i344:                                   ; preds = %bb.az, %bb.ay
  %.sroa.027.0.in.i.i345 = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i, 0
  %spec.select.i.i346 = zext i1 %i.eq to i8
  %spec.select653.a = select i1 %.sroa.027.0.in.i.i345, i8 %spec.select.i.i346, i8 %.sroa.714.sroa.4.0.copyload.i
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546

bb.ba:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i332, 8
  %.sroa.420.0.extract.trunc.i = trunc i64 %.sroa.420.0.extract.shift.i to i8
  %i.eu = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i), !noalias !308 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.eu, ptr %i.a, align 8
  %i.ev = invoke noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB2_5ErrorNtB6_9IntoError10into_error(i16 1804)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit352 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ex = icmp eq ptr %i.eu, null
  br i1 %i.ex, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !309
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bd, label %common.resume

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %common.resume unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_.exit352: ; preds = %bb.ba
  %i.fb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.eu, ptr noundef %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.fb, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.fc, align 4
  br label %bb.et

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_weeksxEB7_.exit.thread546: ; preds = %.thread.i.i344, %bb.az, %bb.ax
  %.sroa.0.0.i.i349548 = phi i8 [ %spec.select653.a, %.thread.i.i344 ], [ -1, %bb.ax ], [ 0, %bb.az ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.21, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store i32 %.sroa.9.0.copyload33.i379622, ptr %i.s, align 8
  store i32 %.sroa.016.0.i, ptr %i.t, align 4
  store i64 %.sroa.58.0.copyload.i, ptr %i.u, align 8
  store i16 %.sroa.018.0.i335, ptr %i.q, align 8
  store i16 %.sroa.713.sroa.0.0.copyload.i, ptr %i.r, align 2
  store i8 %.sroa.0.0.i.i349548, ptr %i.p, align 4
  %i.fd = lshr i64 %.sroa.58.0.copyload.i, 32
  %i.fe = trunc nuw i64 %i.fd to i32
  br label %bb.as

bb.bf:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fg = load i8, ptr %i.ff, align 8, !range !12, !alias.scope !310, !noundef !4
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.fj = load i8, ptr %i.fi, align 1, !range !13, !alias.scope !310, !noundef !4 ; 2 uses
  %i.fk = icmp slt i64 %i.dz, 0
  br i1 %i.fk, label %bb.bi, label %bb.bj, !prof !6

bb.bh:                                            ; preds = %bb.bf
  %i.fl = icmp slt i64 %i.dz, 0
  br i1 %i.fl, label %bb.bi, label %bb.bk, !prof !6

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.01.0.i280 = phi i8 [ %i.fj, %bb.bg ], [ 0, %bb.bh ]
  %i.fm = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 6, i64 noundef %i.dz, i8 noundef %.sroa.01.0.i280) #23, !noalias !310
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit282

bb.bj:                                            ; preds = %bb.bg
  %i.fn = icmp eq i8 %i.fj, -1
  %i.fo = sub nsw i64 0, %i.dz
  %spec.select.i281 = select i1 %i.fn, i64 %i.fo, i64 %i.dz
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.sroa.018.0.i277 = phi i64 [ %i.dz, %bb.bh ], [ %spec.select.i281, %bb.bj ]
  %i.fp = inttoptr i64 %.sroa.018.0.i277 to ptr
  %i.fq = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.fp, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit282

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit282: ; preds = %bb.bi, %bb.bk
  %.merged.i278 = phi { i64, ptr } [ %i.fm, %bb.bi ], [ %i.fq, %bb.bk ] ; 2 uses
  %i.fr = extractvalue { i64, ptr } %.merged.i278, 0
  %i.fs = extractvalue { i64, ptr } %.merged.i278, 1 ; 2 uses
  %i.ft = trunc nuw i64 %i.fr to i1
  br i1 %i.ft, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.as, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_daysxEB7_.exit.thread563
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !4 ; 7 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.ca, label %bb.bu

bb.bm:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit282
  store ptr %i.fs, ptr %0, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.fx, align 4
  br label %bb.et

bb.bn:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit282
  %i.fy = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fz = add i64 %i.fy, -7304485
  %or.cond.i353 = icmp ult i64 %i.fz, -14608969
  br i1 %or.cond.i353, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ga = tail call noundef i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !311
  %i.gb = zext nneg i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 8
  %i.gd = or disjoint i64 %i.gc, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ge = shl nsw i64 %i.fy, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.bp, %bb.bo
  %.sroa.3.0.insert.insert.i.i354 = phi i64 [ %i.ge, %bb.bp ], [ %i.gd, %bb.bo ] ; 5 uses
  %i.gf = trunc i64 %.sroa.3.0.insert.insert.i.i354 to i1
  br i1 %i.gf, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.622.0.extract.shift.i355 = lshr i64 %.sroa.3.0.insert.insert.i.i354, 32 ; 2 uses
  %.sroa.622.0.extract.trunc.i356 = trunc nuw i64 %.sroa.622.0.extract.shift.i355 to i32 ; 2 uses
  %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i365 = getelementptr inbounds nuw i8, ptr %i.d, i64 61 ; 2 uses
  %i.gg = icmp slt i64 %.sroa.3.0.insert.insert.i.i354, 0
  %i.gh = sub i32 0, %.sroa.622.0.extract.trunc.i356
  %.sroa.016.0.i366 = select i1 %i.gg, i32 %i.gh, i32 %.sroa.622.0.extract.trunc.i356
  %i.gi = icmp eq i64 %.sroa.622.0.extract.shift.i355, 0 ; 2 uses
  %i.gj = and i16 %.sroa.511.0.copyload.i360, -65
  %masksel.i367 = select i1 %i.gi, i16 0, i16 64
  %.sroa.018.0.i368 = or disjoint i16 %i.gj, %masksel.i367
  %i.gk = ashr i64 %.sroa.3.0.insert.insert.i.i354, 32 ; 2 uses
  %i.gl = icmp slt i64 %i.gk, 0
  br i1 %i.gl, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_daysxEB7_.exit.thread563, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gm = icmp ne i64 %i.gk, 0                    ; 2 uses
  br i1 %i.gm, label %.thread.i.i389, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gn = icmp eq i16 %.sroa.713.sroa.0.0.copyload.i, 0
  %i.go = icmp eq i32 %.sroa.9.0.copyload33.i379622, 0
  %or.cond.i.i380 = select i1 %i.gn, i1 %i.go, i1 false
  %i.gp = icmp eq i32 %.sroa.10.0.copyload35.i, 0
  %or.cond5.i.i381 = select i1 %or.cond.i.i380, i1 %i.gp, i1 false
  %or.cond8.i.i381 = and i1 %i.gi, %or.cond5.i.i381
  %i.gq = icmp eq i32 %.sroa.58.0.copyload.i358, 0
  %or.cond11.i.i383 = select i1 %or.cond8.i.i381, i1 %i.gq, i1 false
  br i1 %or.cond11.i.i383, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_daysxEB7_.exit.thread563, label %.thread.i.i389

.thread.i.i389:                                   ; preds = %bb.bs, %bb.br
  %.sroa.027.0.in.i.i390 = icmp eq i8 %.sroa.714.sroa.4.0.copyload.i364, 0
  %spec.select.i.i391 = zext i1 %i.gm to i8
  %spec.select654 = select i1 %.sroa.027.0.in.i.i390, i8 %spec.select.i.i391, i8 %.sroa.714.sroa.4.0.copyload.i364
  br label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_daysxEB7_.exit.thread563

bb.bt:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.420.0.extract.shift.i398 = lshr i64 %.sroa.3.0.insert.insert.i.i354, 8
  %.sroa.420.0.extract.trunc.i399 = trunc i64 %.sroa.420.0.extract.shift.i398 to i8
  %i.gr = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.420.0.extract.trunc.i399), !noalias !311
  %i.gs = tail call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_(i16 1548, ptr noundef %i.gr) #29
  store ptr %i.gs, ptr %0, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.gt, align 4
  br label %bb.et

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span8try_daysxEB7_.exit.thread563: ; preds = %.thread.i.i389, %bb.bs, %bb.bq
  %.sroa.0.0.i.i394565 = phi i8 [ %spec.select654, %.thread.i.i389 ], [ -1, %bb.bq ], [ 0, %bb.bs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.22447, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i365, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.714.sroa.5.0..sroa.714.0..sroa_idx.sroa_idx.i365, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.22447, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store i32 %.sroa.9.0.copyload33.i379622, ptr %i.s, align 8
  store i32 %.sroa.10.0.copyload35.i, ptr %i.t, align 4
  store i32 %.sroa.016.0.i366, ptr %i.u, align 8
  store i32 %.sroa.58.0.copyload.i358, ptr %i.v, align 4
  store i16 %.sroa.018.0.i368, ptr %i.q, align 8
  store i16 %.sroa.713.sroa.0.0.copyload.i, ptr %i.r, align 2
  store i8 %.sroa.0.0.i.i394565, ptr %i.p, align 4
  br label %bb.bl

bb.bu:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gv = load i8, ptr %i.gu, align 8, !range !12, !alias.scope !312, !noundef !4
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.gy = load i8, ptr %i.gx, align 1, !range !13, !alias.scope !312, !noundef !4 ; 2 uses
  %i.gz = icmp slt i64 %i.fv, 0
  br i1 %i.gz, label %bb.bx, label %bb.by, !prof !6

bb.bw:                                            ; preds = %bb.bu
  %i.ha = icmp slt i64 %i.fv, 0
  br i1 %i.ha, label %bb.bx, label %bb.bz, !prof !6

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.01.0.i274 = phi i8 [ %i.gy, %bb.bv ], [ 0, %bb.bw ]
  %i.hb = tail call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 5, i64 noundef %i.fv, i8 noundef %.sroa.01.0.i274) #23, !noalias !312
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit276

bb.by:                                            ; preds = %bb.bv
  %i.hc = icmp eq i8 %i.gy, -1
  %i.hd = sub nsw i64 0, %i.fv
  %spec.select.i275 = select i1 %i.hc, i64 %i.hd, i64 %i.fv
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sroa.018.0.i271 = phi i64 [ %i.fv, %bb.bw ], [ %spec.select.i275, %bb.by ]
  %i.he = inttoptr i64 %.sroa.018.0.i271 to ptr
  %i.hf = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.he, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit276

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit276: ; preds = %bb.bx, %bb.bz
  %.merged.i272 = phi { i64, ptr } [ %i.hb, %bb.bx ], [ %i.hf, %bb.bz ] ; 2 uses
  %i.hg = extractvalue { i64, ptr } %.merged.i272, 0
  %i.hh = extractvalue { i64, ptr } %.merged.i272, 1 ; 2 uses
  %i.hi = trunc nuw i64 %i.hg to i1
  br i1 %i.hi, label %bb.cb, label %bb.cc

bb.ca:                                            ; preds = %bb.bl, %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !4 ; 7 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.cl, label %bb.cf

bb.cb:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit276
  store ptr %i.hh, ptr %0, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.hm, align 4
  br label %bb.et

bb.cc:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit276
  %i.hn = ptrtoint ptr %i.hh to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.d, i64 noundef %i.hn) #29
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 4, !range !313, !noalias !314, !noundef !4 ; 2 uses
  %i.hq = icmp eq i8 %i.hp, -2
  br i1 %i.hq, label %bb.cd, label %.thread, !prof !6

bb.cd:                                            ; preds = %bb.cc
  %i.hr = load ptr, ptr %i.j, align 8, !noalias !314, !noundef !4
  call fastcc void @_RNvNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB6_13DurationUnits15to_span_general13set_time_unit19fractional_fallback(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.j, ptr noundef %i.hr, i8 noundef 5, i64 noundef %i.hn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d) #23
  %.pr = load i8, ptr %i.ho, align 4, !noalias !314 ; 2 uses
  %i.hs = icmp eq i8 %.pr, -2
  br i1 %i.hs, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  %i.ht = load ptr, ptr %i.j, align 8, !noalias !314, !noundef !4
  %i.hu = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_(i16 1292, ptr noundef %i.ht) #29, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.hu, ptr %0, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.hv, align 4
  br label %bb.et

.thread:                                          ; preds = %bb.cc, %bb.cd
  %i.hw = phi i8 [ %.pr, %bb.cd ], [ %i.hp, %bb.cc ]
  %.sroa.0478.0.copyload = load ptr, ptr %i.j, align 8, !noalias !314
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.w, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.4.0..sroa_idx, i64 52, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 61
  %.sroa.879.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.d, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.879.0..sroa_idx80, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %.sroa.0478.0.copyload, ptr %i.d, align 8
  store i8 %i.hw, ptr %i.p, align 4
  br label %bb.ca

bb.cf:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hy = load i8, ptr %i.hx, align 8, !range !12, !alias.scope !316, !noundef !4
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ib = load i8, ptr %i.ia, align 1, !range !13, !alias.scope !316, !noundef !4 ; 2 uses
  %i.ic = icmp slt i64 %i.hk, 0
  br i1 %i.ic, label %bb.ci, label %bb.cj, !prof !6

bb.ch:                                            ; preds = %bb.cf
  %i.id = icmp slt i64 %i.hk, 0
  br i1 %i.id, label %bb.ci, label %bb.ck, !prof !6

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.01.0.i268 = phi i8 [ %i.ib, %bb.cg ], [ 0, %bb.ch ]
  %i.ie = call fastcc { i64, ptr } @_RNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits14get_unit_value7general(i8 noundef 4, i64 noundef %i.hk, i8 noundef %.sroa.01.0.i268) #23, !noalias !316
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit270

bb.cj:                                            ; preds = %bb.cg
  %i.if = icmp eq i8 %i.ib, -1
  %i.ig = sub nsw i64 0, %i.hk
  %spec.select.i269 = select i1 %i.if, i64 %i.ig, i64 %i.hk
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %.sroa.018.0.i265 = phi i64 [ %i.hk, %bb.ch ], [ %spec.select.i269, %bb.cj ]
  %i.ih = inttoptr i64 %.sroa.018.0.i265 to ptr
  %i.ii = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ih, 1
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit270

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit270: ; preds = %bb.ci, %bb.ck
  %.merged.i266 = phi { i64, ptr } [ %i.ie, %bb.ci ], [ %i.ii, %bb.ck ] ; 2 uses
  %i.ij = extractvalue { i64, ptr } %.merged.i266, 0
  %i.ik = extractvalue { i64, ptr } %.merged.i266, 1 ; 2 uses
  %i.il = trunc nuw i64 %i.ij to i1
  br i1 %i.il, label %bb.cm, label %bb.cn

bb.cl:                                            ; preds = %bb.ca, %.thread570
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.in = load i64, ptr %i.im, align 8, !noundef !4 ; 7 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.cw, label %bb.cq

bb.cm:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit270
  store ptr %i.ik, ptr %0, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.ip, align 4
  br label %bb.et

bb.cn:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits14get_unit_value.exit270
  %i.iq = ptrtoint ptr %i.ik to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB4_13DurationUnits15to_span_generals_0B8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, i64 %i.iq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.d) #29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 4, !range !313, !noalias !317, !noundef !4 ; 2 uses
  %i.it = icmp eq i8 %i.is, -2
  br i1 %i.it, label %bb.co, label %.thread570, !prof !6

bb.co:                                            ; preds = %bb.cn
  %i.iu = load ptr, ptr %i.e, align 8, !noalias !317, !noundef !4
  call fastcc void @_RNvNvNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB6_13DurationUnits15to_span_general13set_time_unit19fractional_fallback(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noundef %i.iu, i8 noundef 4, i64 noundef %i.iq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d) #23
  %.pr569 = load i8, ptr %i.ir, align 4, !noalias !317 ; 2 uses
  %i.iv = icmp eq i8 %.pr569, -2
  br i1 %i.iv, label %bb.cp, label %.thread570

bb.cp:                                            ; preds = %bb.co
  %i.iw = load ptr, ptr %i.e, align 8, !noalias !317, !noundef !4
  %i.ix = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_4span4SpanNtB8_5ErrorEINtB8_12ErrorContextB1b_B1s_E7contextNtNtNtB8_3fmt4util5ErrorE0Ba_(i16 1036, ptr noundef %i.iw) #29, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ix, ptr %0, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.iy, align 4
  br label %bb.et
end_hunk_1
begin_hunk_2_@_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util19fractional_duration:bb.a
  %i.f = sdiv i32 %2, 1000
  %.sext = sext i32 %i.f to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = sdiv i32 %2, 1000000
  %.sext6 = sext i32 %i.g to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %.sext6, %bb.f ], [ %.sext, %bb.e ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = sdiv i64 %.sroa.0.0, 1000000000
  %i.i = srem i64 %.sroa.0.0, 1000000000
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %storemerge = phi i64 [ 0, %bb.g ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util23fractional_time_to_span(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19480 = alloca [3 x i8], align 1         ; 6 uses
  %.sroa.19459 = alloca [3 x i8], align 1         ; 6 uses
  %.sroa.19438 = alloca [3 x i8], align 1         ; 6 uses
  %.sroa.19417 = alloca [3 x i8], align 1         ; 6 uses
  %.sroa.19 = alloca [3 x i8], align 1            ; 6 uses
  %.sroa.22 = alloca [3 x i8], align 1            ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt4util27fractional_time_to_duration(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, i8 noundef %1, i64 noundef %2, i32 noundef %3) #23
  %i.h = load i64, ptr %i.g, align 8, !range !9, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 -2, ptr %i.l, align 4
  br label %bb.en

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.j, align 8, !noundef !4 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i32, ptr %i.n, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.p = icmp samesign ugt i8 %1, 4
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %1, 4
  br i1 %i.q, label %.thread, label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.m, 0
  %i.s = icmp eq i32 %i.o, 0                      ; 3 uses
  %or.cond6 = and i1 %i.r, %i.s
  br i1 %or.cond6, label %.thread523, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sdiv i64 %i.m, 3600                      ; 4 uses
  %i.u = srem i64 %i.m, 3600                      ; 4 uses
  %i.v = icmp sgt i64 %i.m, 631107421199
  br i1 %i.v, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i64 %i.m, -631107421199
  br i1 %i.w, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.x = mul nsw i64 %i.t, 3600
  %i.y = add i64 %i.x, 631107417600
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 0        ; 4 uses
  %i.ab = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.ab, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  br i1 %i.s, label %.thread491, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i32 %i.o, 999999999
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp slt i32 %i.o, -999999999
  br i1 %i.ad, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ae = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 1) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.p, !prof !6

bb.m:                                             ; preds = %bb.k
  %i.ag = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 -1) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit, label %bb.n, !prof !6

bb.n:                                             ; preds = %bb.m
  %i.ai = extractvalue { i64, i1 } %i.ag, 0
  %i.aj = add nsw i32 %i.o, 1000000000
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n, %bb.k
  %.sroa.016.1.i = phi i64 [ %i.am, %bb.p ], [ %i.ai, %bb.n ], [ %i.aa, %bb.k ] ; 7 uses
  %.sroa.02.1.i = phi i32 [ %i.an, %bb.p ], [ %i.aj, %bb.n ], [ %i.o, %bb.k ] ; 6 uses
  %i.ak = icmp eq i64 %.sroa.016.1.i, 0
  %i.al = icmp eq i32 %.sroa.02.1.i, 0
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i, label %.thread491, label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.am = extractvalue { i64, i1 } %i.ae, 0
  %i.an = add nsw i32 %i.o, -1000000000
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i, i64 0)
  %i.ap = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i, i32 0)
  %.not.i = icmp eq i64 %i.ao, %i.ap
  br i1 %.not.i, label %.thread491, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp slt i64 %.sroa.016.1.i, 0
  br i1 %i.aq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i64 %.sroa.016.1.i, -1
  %i.as = add nsw i32 %.sroa.02.1.i, 1000000000
  br label %.thread491

bb.t:                                             ; preds = %bb.r
  %i.at = add nsw i64 %.sroa.016.1.i, 1
  %i.au = add nsw i32 %.sroa.02.1.i, -1000000000
  br label %.thread491

_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit: ; preds = %bb.m, %bb.l, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
  unreachable

.thread491:                                       ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.i, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ag
  %.sroa.045.0.ph = phi i64 [ -175307616, %bb.i ], [ -175307616, %bb.o ], [ -175307616, %bb.q ], [ -175307616, %bb.s ], [ -175307616, %bb.t ], [ 175307616, %bb.ap ], [ 175307616, %bb.ao ], [ 175307616, %bb.am ], [ 175307616, %bb.ak ], [ 175307616, %bb.ag ]
  %.sroa.074.1.ph = phi i64 [ %i.aa, %bb.i ], [ %.sroa.016.1.i, %bb.o ], [ %.sroa.016.1.i, %bb.q ], [ %i.ar, %bb.s ], [ %i.at, %bb.t ], [ %i.cs, %bb.ap ], [ %i.cq, %bb.ao ], [ %.sroa.016.1.i145, %bb.am ], [ %.sroa.016.1.i145, %bb.ak ], [ %i.ce, %bb.ag ]
  %.sroa.38.1.ph = phi i32 [ 0, %bb.i ], [ %.sroa.02.1.i, %bb.o ], [ %.sroa.02.1.i, %bb.q ], [ %i.as, %bb.s ], [ %i.au, %bb.t ], [ %i.ct, %bb.ap ], [ %i.cr, %bb.ao ], [ %.sroa.02.1.i146, %bb.am ], [ %.sroa.02.1.i146, %bb.ak ], [ 0, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  br label %bb.w

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.av = add nsw i64 %i.t, -175307617
  %or.cond.i144 = icmp ult i64 %i.av, -350615233
  br i1 %or.cond.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = tail call noundef i8 @_RNvXsY_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() #23, !noalias !480
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

bb.w:                                             ; preds = %.thread491, %bb.u
  %.sroa.38.1500 = phi i32 [ %.sroa.38.1.ph, %.thread491 ], [ %i.o, %bb.u ]
  %.sroa.074.1498 = phi i64 [ %.sroa.074.1.ph, %.thread491 ], [ %i.u, %bb.u ]
  %.sroa.045.0496 = phi i64 [ %.sroa.045.0.ph, %.thread491 ], [ %i.t, %bb.u ]
  %i.ba = shl nsw i64 %.sroa.045.0496, 32
  br label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.38.1499 = phi i32 [ %.sroa.38.1500, %bb.w ], [ %i.o, %bb.v ]
  %.sroa.074.1497 = phi i64 [ %.sroa.074.1498, %bb.w ], [ %i.u, %bb.v ]
  %.sroa.3.0.insert.insert.i.i = phi i64 [ %i.ba, %bb.w ], [ %i.az, %bb.v ] ; 5 uses
  %i.bb = trunc i64 %.sroa.3.0.insert.insert.i.i to i1
  br i1 %i.bb, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread, label %bb.x

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.417.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 8
  %.sroa.417.0.extract.trunc.i = trunc i64 %.sroa.417.0.extract.shift.i to i8
  %i.bc = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef %.sroa.417.0.extract.trunc.i), !noalias !480
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %bb.aa

bb.x:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.619.0.extract.shift.i = lshr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %.sroa.619.0.extract.trunc.i = trunc nuw i64 %.sroa.619.0.extract.shift.i to i32 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.58.0.copyload.i = load i16, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !479
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 58 ; 2 uses
  %.sroa.711.sroa.0.0.copyload.i = load i16, ptr %.sroa.711.0..sroa_idx.i, align 2, !alias.scope !479 ; 2 uses
  %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %.sroa.711.sroa.4.0.copyload.i = load i8, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !479 ; 3 uses
  %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 61 ; 3 uses
  %i.be = icmp slt i64 %.sroa.3.0.insert.insert.i.i, 0
  %i.bf = sub i32 0, %.sroa.619.0.extract.trunc.i
  %.sroa.013.0.i = select i1 %i.be, i32 %i.bf, i32 %.sroa.619.0.extract.trunc.i
  %i.bg = icmp eq i64 %.sroa.619.0.extract.shift.i, 0 ; 2 uses
  %i.bh = and i16 %.sroa.58.0.copyload.i, -33
  %masksel.i = select i1 %i.bg, i16 0, i16 32
  %.sroa.015.0.i = or disjoint i16 %i.bh, %masksel.i
  %.sroa.0.0.copyload20.i = load i64, ptr %4, align 8, !alias.scope !479 ; 3 uses
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.5.0.copyload22.i = load i64, ptr %.sroa.5.0..sroa_idx21.i, align 8, !alias.scope !479 ; 2 uses
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.6.0.copyload24.i = load i64, ptr %.sroa.6.0..sroa_idx23.i, align 8, !alias.scope !479 ; 2 uses
  %.sroa.7.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.7.0.copyload26.i = load i64, ptr %.sroa.7.0..sroa_idx25.i, align 8, !alias.scope !479 ; 2 uses
  %.sroa.8.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.8.0.copyload28.i = load i64, ptr %.sroa.8.0..sroa_idx27.i, align 8, !alias.scope !479 ; 2 uses
  %.sroa.9.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.9.0.copyload30.i = load i32, ptr %.sroa.9.0..sroa_idx29.i, align 8, !alias.scope !479 ; 2 uses
  %.sroa.10.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.10.0.copyload32.i = load i32, ptr %.sroa.10.0..sroa_idx31.i, align 4, !alias.scope !479 ; 2 uses
  %.sroa.11.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.11.0.copyload34.i = load i32, ptr %.sroa.11.0..sroa_idx33.i, align 8, !alias.scope !479 ; 2 uses
  %i.bi = ashr i64 %.sroa.3.0.insert.insert.i.i, 32 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = icmp ne i64 %i.bi, 0                    ; 2 uses
  br i1 %i.bk, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = icmp eq i16 %.sroa.711.sroa.0.0.copyload.i, 0
  %i.bm = icmp eq i32 %.sroa.9.0.copyload30.i, 0
  %or.cond.i.i = select i1 %i.bl, i1 %i.bm, i1 false
  %i.bn = icmp eq i32 %.sroa.10.0.copyload32.i, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %.sroa.11.0.copyload34.i, 0
  %or.cond8.i.i = select i1 %or.cond5.i.i, i1 %i.bo, i1 false
  %or.cond11.i.i = and i1 %i.bg, %or.cond8.i.i
  %i.bp = icmp eq i64 %.sroa.0.0.copyload20.i, 0
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.bp, i1 false
  %i.bq = icmp eq i64 %.sroa.5.0.copyload22.i, 0
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.bq, i1 false
  %i.br = icmp eq i64 %.sroa.6.0.copyload24.i, 0
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.br, i1 false
  %i.bs = icmp eq i64 %.sroa.7.0.copyload26.i, 0
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.bs, i1 false
  %i.bt = icmp eq i64 %.sroa.8.0.copyload28.i, 0
  %or.cond4.i.i = select i1 %or.cond22.i.i, i1 %i.bt, i1 false
  br i1 %or.cond4.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.z, %bb.y
  %.sroa.027.0.in.i.i = icmp eq i8 %.sroa.711.sroa.4.0.copyload.i, 0
  %spec.select.i.i = zext i1 %i.bk to i8
  br i1 %.sroa.027.0.in.i.i, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514, label %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514: ; preds = %bb.x, %bb.z, %.thread.i.i
  %.sroa.0.0.i.i.ph = phi i8 [ -1, %bb.x ], [ 0, %bb.z ], [ %spec.select.i.i, %.thread.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !480
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit

_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit: ; preds = %.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i, i64 3, i1 false), !alias.scope !480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.bu = icmp eq i8 %.sroa.711.sroa.4.0.copyload.i, -2
  br i1 %i.bu, label %bb.aa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, !prof !483

bb.aa:                                            ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit
  %.sroa.0386.0513 = phi i64 [ %i.bd, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread ], [ %.sroa.0.0.copyload20.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !484
  %i.bv = inttoptr i64 %.sroa.0386.0513 to ptr
  store ptr %i.bv, ptr %i.f, align 8, !noalias !484
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 32, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
          to label %bb.ae unwind label %bb.ab, !noalias !485

bb.ab:                                            ; preds = %bb.aa
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.bx = load ptr, ptr %i.f, align 8, !alias.scope !488, !noalias !484, !noundef !4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = atomicrmw add ptr %i.bx, i64 -1 release, align 8, !noalias !489
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23
          to label %common.resume unwind label %bb.af, !noalias !485

bb.ae:                                            ; preds = %bb.aa
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !485
  unreachable

common.resume:                                    ; preds = %bb.ei, %bb.ej, %bb.ek, %bb.dx, %bb.dy, %bb.dz, %bb.dg, %bb.dh, %bb.di, %bb.cq, %bb.cr, %bb.cs, %bb.bk, %bb.bl, %bb.bm, %bb.ab, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.lh, %bb.dx ], [ %i.bw, %bb.ab ], [ %i.er, %bb.bk ], [ %i.hd, %bb.cq ], [ %i.jd, %bb.dg ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.ac ], [ %i.er, %bb.bm ], [ %i.er, %bb.bl ], [ %i.hd, %bb.cs ], [ %i.hd, %bb.cr ], [ %i.jd, %bb.di ], [ %i.jd, %bb.dh ], [ %i.lh, %bb.dz ], [ %i.lh, %bb.dy ], [ %i.ml, %bb.ek ], [ %i.ml, %bb.ej ], [ %i.ml, %bb.ei ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit: ; preds = %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit
  %.sroa.0.0.i.i516 = phi i8 [ %.sroa.0.0.i.i.ph, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit.thread514 ], [ %.sroa.711.sroa.4.0.copyload.i, %_RINvMs_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span9try_hoursxEB7_.exit ]
  store i64 %.sroa.0.0.copyload20.i, ptr %4, align 8, !alias.scope !485
  store i64 %.sroa.5.0.copyload22.i, ptr %.sroa.5.0..sroa_idx21.i, align 8, !alias.scope !485
  store i64 %.sroa.6.0.copyload24.i, ptr %.sroa.6.0..sroa_idx23.i, align 8, !alias.scope !485
  store i64 %.sroa.7.0.copyload26.i, ptr %.sroa.7.0..sroa_idx25.i, align 8, !alias.scope !485
  store i64 %.sroa.8.0.copyload28.i, ptr %.sroa.8.0..sroa_idx27.i, align 8, !alias.scope !485
  store i32 %.sroa.9.0.copyload30.i, ptr %.sroa.9.0..sroa_idx29.i, align 8, !alias.scope !485
  store i32 %.sroa.10.0.copyload32.i, ptr %.sroa.10.0..sroa_idx31.i, align 4, !alias.scope !485
  store i32 %.sroa.11.0.copyload34.i, ptr %.sroa.11.0..sroa_idx33.i, align 8, !alias.scope !485
  %.sroa.13393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %.sroa.013.0.i, ptr %.sroa.13393.0..sroa_idx, align 4, !alias.scope !485
  store i16 %.sroa.015.0.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !485
  store i16 %.sroa.711.sroa.0.0.copyload.i, ptr %.sroa.711.0..sroa_idx.i, align 2, !alias.scope !485
  store i8 %.sroa.0.0.i.i516, ptr %.sroa.711.sroa.4.0..sroa.711.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.711.sroa.5.0..sroa.711.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19, i64 3, i1 false), !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  br label %.thread

bb.ag:                                            ; preds = %bb.f
  %i.cc = mul nuw nsw i64 %i.t, 3600
  %i.cd = add nuw nsw i64 %i.u, -631107417600
  %i.ce = add nsw i64 %i.cd, %i.cc                ; 4 uses
  br i1 %i.s, label %.thread491, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = icmp sgt i32 %i.o, 999999999
  br i1 %i.cf, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = icmp slt i32 %i.o, -999999999
  br i1 %i.cg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ch = add nsw i64 %i.ce, -1
  %i.ci = add nsw i32 %i.o, 1000000000
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.sroa.016.1.i145 = phi i64 [ %i.cl, %bb.al ], [ %i.ch, %bb.aj ], [ %i.ce, %bb.ai ] ; 7 uses
  %.sroa.02.1.i146 = phi i32 [ %i.cm, %bb.al ], [ %i.ci, %bb.aj ], [ %i.o, %bb.ai ] ; 6 uses
  %i.cj = icmp eq i64 %.sroa.016.1.i145, 0
  %i.ck = icmp eq i32 %.sroa.02.1.i146, 0
  %or.cond.i147 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i147, label %.thread491, label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.cl = add nsw i64 %i.ce, 1
  %i.cm = add nsw i32 %i.o, -1000000000
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.cn = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.016.1.i145, i64 0)
  %i.co = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.02.1.i146, i32 0)
  %.not.i148 = icmp eq i64 %i.cn, %i.co
  br i1 %.not.i148, label %.thread491, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = icmp slt i64 %.sroa.016.1.i145, 0
  br i1 %i.cp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cq = add nsw i64 %.sroa.016.1.i145, -1
  %i.cr = add nsw i32 %.sroa.02.1.i146, 1000000000
  br label %.thread491

bb.ap:                                            ; preds = %bb.an
  %i.cs = add nsw i64 %.sroa.016.1.i145, 1
  %i.ct = add nsw i32 %.sroa.02.1.i146, -1000000000
  br label %.thread491

bb.aq:                                            ; preds = %bb.d
  %i.cu = icmp samesign ugt i8 %1, 2
  br i1 %i.cu, label %.thread523, label %bb.bz

.thread:                                          ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit, %bb.d
  %.sroa.38.0484 = phi i32 [ %i.o, %bb.d ], [ %.sroa.38.1499, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit ] ; 12 uses
  %.sroa.074.0483 = phi i64 [ %i.m, %bb.d ], [ %.sroa.074.1497, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit ] ; 5 uses
  %i.cv = icmp eq i64 %.sroa.074.0483, 0
  %i.cw = icmp eq i32 %.sroa.38.0484, 0           ; 3 uses
  %or.cond9 = and i1 %i.cw, %i.cv
  br i1 %or.cond9, label %.thread523, label %bb.ar

bb.ar:                                            ; preds = %.thread
  %i.cx = sdiv i64 %.sroa.074.0483, 60            ; 4 uses
  %i.cy = srem i64 %.sroa.074.0483, 60            ; 3 uses
  %i.cz = icmp sgt i64 %.sroa.074.0483, 631107417659
  br i1 %i.cz, label %bb.bp, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = icmp slt i64 %.sroa.074.0483, -631107417659
  br i1 %i.da, label %bb.at, label %bb.bg

bb.at:                                            ; preds = %bb.as
  %i.db = mul nsw i64 %i.cx, 60
  %i.dc = add i64 %i.db, 631107417600
  %i.dd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cy, i64 %i.dc) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 0       ; 4 uses
  %i.df = extractvalue { i64, i1 } %i.dd, 1
  br i1 %i.df, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit160, label %bb.au, !prof !6

bb.au:                                            ; preds = %bb.at
  br i1 %i.cw, label %.thread534, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = icmp sgt i32 %.sroa.38.0484, 999999999
  br i1 %i.dg, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = icmp slt i32 %.sroa.38.0484, -999999999
  br i1 %i.dh, label %bb.ay, label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.di = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.de, i64 1) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit160, label %bb.bb, !prof !6

bb.ay:                                            ; preds = %bb.aw
  %i.dk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.de, i64 -1) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  br i1 %i.dl, label %_RNvMNtCsa9sSWSfjDbm_4jiff15signed_durationNtB2_14SignedDuration11checked_add.exit160, label %bb.az, !prof !6

bb.az:                                            ; preds = %bb.ay
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  %i.dn = add nsw i32 %.sroa.38.0484, 1000000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az, %bb.aw
  %.sroa.016.1.i153 = phi i64 [ %i.dq, %bb.bb ], [ %i.dm, %bb.az ], [ %i.de, %bb.aw ] ; 7 uses
  %.sroa.02.1.i154 = phi i32 [ %i.dr, %bb.bb ], [ %i.dn, %bb.az ], [ %.sroa.38.0484, %bb.aw ] ; 6 uses
  %i.do = icmp eq i64 %.sroa.016.1.i153, 0
end_hunk_2
