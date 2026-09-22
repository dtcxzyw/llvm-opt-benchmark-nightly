Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.12?download=true
inline.NumInlined: 170
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
@25 = private unnamed_addr constant [11 x i8] c"Etc/Unknown", align 1
@26 = private unnamed_addr constant [31 x i8] c"RFC3339 separator must be ASCII", align 1
@27 = private unnamed_addr constant [40 x i8] c"crates/jiff/src/fmt/temporal/printer.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"'\00\00\00\00\00\00\00\9E\00\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant [34 x i8] c"assertion failed: n <= 999_999_999", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00\0D\02\00\00\09\00\00\00" }>, align 8
@31 = private unnamed_addr constant [39 x i8] c"fraction exceeds available buffer space", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00)\02\00\00\0E\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00*\02\00\00\0E\00\00\00" }>, align 8
@34 = private unnamed_addr constant [33 x i8] c"assertion failed: byte.is_ascii()", align 1
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00\EE\00\00\00\09\00\00\00" }>, align 8
@36 = private unnamed_addr constant [43 x i8] c"insufficient buffer space to write one byte", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00\F1\00\00\00\0E\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00\D3\00\00\00\0E\00\00\00" }>, align 8
@39 = private unnamed_addr constant [42 x i8] c"string data exceeds available buffer space", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\1D\00\00\00\00\00\00\00\D2\00\00\00\0E\00\00\00" }>, align 8
@41 = private unnamed_addr constant [30 x i8] c"overflow when adding durations", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"H\00\00\00\00\00\00\00\E9\04\00\00\1F\00\00\00" }>, align 8
@43 = private unnamed_addr constant [12 x i8] c"valid offset", align 1
@44 = private unnamed_addr constant [29 x i8] c"crates/jiff/src/tz/offset.rs\00", align 1
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"\1C\00\00\00\00\00\00\00\18\04\00\00\0D\00\00\00" }>, align 8
@46 = private unnamed_addr constant [50 x i8] c"failed to add span to datetime from zoned datetime", align 1
@47 = private unnamed_addr constant [44 x i8] c"failed to add days to date in zoned datetime", align 1
@48 = private unnamed_addr constant [51 x i8] c"failed to add span to timestamp from zoned datetime", align 1
@49 = private unnamed_addr constant [45 x i8] c"failed to convert civil datetime to timestamp", align 1
@50 = private unnamed_addr constant [58 x i8] c"failed to convert intermediate datetime to zoned timestamp", align 1
@51 = private unnamed_addr constant [59 x i8] c"failed to add 1 day to zoned datetime to find length of day", align 1
@52 = private unnamed_addr constant [61 x i8] c"failed to compute span in nanoseconds between zoned datetimes", align 1
@53 = private unnamed_addr constant [46 x i8] c"failed to find start of day for zoned datetime", align 1
@54 = private unnamed_addr constant [4 x i8] c"year", align 1
@55 = private unnamed_addr constant [5 x i8] c"month", align 1
@56 = private unnamed_addr constant [4 x i8] c"week", align 1
@57 = private unnamed_addr constant [3 x i8] c"day", align 1
@58 = private unnamed_addr constant [4 x i8] c"hour", align 1
@59 = private unnamed_addr constant [6 x i8] c"minute", align 1
@60 = private unnamed_addr constant [6 x i8] c"second", align 1
@61 = private unnamed_addr constant [11 x i8] c"millisecond", align 1
@62 = private unnamed_addr constant [11 x i8] c"microsecond", align 1
@63 = private unnamed_addr constant [10 x i8] c"nanosecond", align 1
@64 = private unnamed_addr constant [154 x i8] c"1computing the span between zoned datetimes, with \C0e units, requires that the time zones are equivalent, but the zoned datetimes have distinct time zones\00", align 1
@65 = private unnamed_addr constant [46 x i8] c"parsed time is ambiguous with a month-day date", align 1
@66 = private unnamed_addr constant [47 x i8] c"parsed time is ambiguous with a year-month date", align 1
@67 = private unnamed_addr constant [136 x i8] c"cannot parse civil date/time from string with a Zulu offset, parse as a `jiff::Timestamp` first and convert to a civil date/time instead", align 1
@68 = private unnamed_addr constant [61 x i8] c":failed to convert civil datetime to timestamp with offset \C0\00", align 1
@69 = private unnamed_addr constant [40 x i8] c"an empty string is not a valid time zone", align 1
@70 = private unnamed_addr constant [93 x i8] c"Pexpected to find date unit designator suffix (`Y`, `M`, `W` or `D`), but found `\C0\09` instead\00", align 1
@71 = private unnamed_addr constant [91 x i8] c"expected to find date unit designator suffix (`Y`, `M`, `W` or `D`), but found end of input", align 1
@72 = private unnamed_addr constant [77 x i8] c"@expected to find duration beginning with `P` or `p`, but found `\C0\09` instead\00", align 1
@73 = private unnamed_addr constant [75 x i8] c"expected to find duration beginning with `P` or `p`, but found end of input", align 1
@74 = private unnamed_addr constant [85 x i8] c"expected four digit year (or leading sign for six digit year), but found end of input", align 1
@75 = private unnamed_addr constant [84 x i8] c"expected no separator since none was found after the year, but found a `-` separator", align 1
@76 = private unnamed_addr constant [50 x i8] c"expected one digit weekday, but found end of input", align 1
@77 = private unnamed_addr constant [40 x i8] c"#expected `-` separator, but found `\C0\01`\00", align 1
@78 = private unnamed_addr constant [46 x i8] c"expected `-` separator, but found end of input", align 1
@79 = private unnamed_addr constant [75 x i8] c"expected six digit year (because of a leading sign), but found end of input", align 1
@80 = private unnamed_addr constant [130 x i8] c"parsing ISO 8601 duration in this context requires that the duration contain a time component and no components of days or greater", align 1
@81 = private unnamed_addr constant [88 x i8] c"Kexpected to find time unit designator suffix (`H`, `M` or `S`), but found `\C0\09` instead\00", align 1
@82 = private unnamed_addr constant [86 x i8] c"expected to find time unit designator suffix (`H`, `M` or `S`), but found end of input", align 1
@83 = private unnamed_addr constant [100 x i8] c"found a time designator (`T` or `t`) in an ISO 8601 duration string, but did not find any time units", align 1
@84 = private unnamed_addr constant [46 x i8] c"expected two digit day, but found end of input", align 1
@85 = private unnamed_addr constant [47 x i8] c"expected two digit hour, but found end of input", align 1
@86 = private unnamed_addr constant [49 x i8] c"expected two digit minute, but found end of input", align 1
@87 = private unnamed_addr constant [48 x i8] c"expected two digit month, but found end of input", align 1
@88 = private unnamed_addr constant [49 x i8] c"expected two digit second, but found end of input", align 1
@89 = private unnamed_addr constant [54 x i8] c"expected two digit week number, but found end of input", align 1
@90 = private unnamed_addr constant [45 x i8] c" expected `W` or `w`, but found `\C0\09` instead\00", align 1
@91 = private unnamed_addr constant [43 x i8] c"expected `W` or `w`, but found end of input", align 1
@92 = private unnamed_addr constant [42 x i8] c"failed to parse fractional seconds in time", align 1
@93 = private unnamed_addr constant [79 x i8] c"offset successfully parsed, but failed to convert to numeric `jiff::tz::Offset`", align 1
@94 = private unnamed_addr constant [37 x i8] c"failed to parse separator after month", align 1
@95 = private unnamed_addr constant [43 x i8] c"failed to parse separator after week number", align 1
@96 = private unnamed_addr constant [36 x i8] c"failed to parse separator after year", align 1
@97 = private unnamed_addr constant [69 x i8] c"parsed apparent IANA time zone identifier, but the tzdb lookup failed", align 1
@98 = private unnamed_addr constant [42 x i8] c"failed to parse week number prefix in date", align 1
@99 = private unnamed_addr constant [24 x i8] c"parsed date is not valid", align 1
@100 = private unnamed_addr constant [29 x i8] c"parsed month-day is not valid", align 1
@101 = private unnamed_addr constant [68 x i8] c"found plausible IANA time zone identifier, but it is not valid UTF-8", align 1
@102 = private unnamed_addr constant [29 x i8] c"parsed week date is not valid", align 1
@103 = private unnamed_addr constant [30 x i8] c"parsed year-month is not valid", align 1
@104 = private unnamed_addr constant [84 x i8] c"year zero must be written without a sign or a positive sign, but not a negative sign", align 1
@105 = private unnamed_addr constant [74 x i8] c"failed to find offset component, which is required for parsing a timestamp", align 1
@106 = private unnamed_addr constant [57 x i8] c"successfully parsed date, but no time component was found", align 1
@107 = private unnamed_addr constant [72 x i8] c"failed to find time component, which is required for parsing a timestamp", align 1
@108 = private unnamed_addr constant [102 x i8] c"failed to find time zone annotation in square brackets, which is required for parsing a zoned datetime", align 1
@109 = private unnamed_addr constant [40 x i8] c"failed to parse two digit integer as day", align 1
@110 = private unnamed_addr constant [41 x i8] c"failed to parse two digit integer as hour", align 1
@111 = private unnamed_addr constant [43 x i8] c"failed to parse two digit integer as minute", align 1
@112 = private unnamed_addr constant [42 x i8] c"failed to parse two digit integer as month", align 1
@113 = private unnamed_addr constant [43 x i8] c"failed to parse two digit integer as second", align 1
@114 = private unnamed_addr constant [48 x i8] c"failed to parse two digit integer as week number", align 1
@115 = private unnamed_addr constant [44 x i8] c"failed to parse one digit integer as weekday", align 1
@116 = private unnamed_addr constant [42 x i8] c"failed to parse four digit integer as year", align 1
@117 = private unnamed_addr constant [41 x i8] c"failed to parse six digit integer as year", align 1
@118 = private unnamed_addr constant [269 x i8] c"time zones without IANA identifiers that aren't either fixed offsets or a POSIX time zone can't be serialized (this typically occurs when this is a system time zone derived from `/etc/localtime` on Unix systems that isn't symlinked to an entry in `/usr/share/zoneinfo`)", align 1
@119 = private unnamed_addr constant [11 x i8] c"AddDateTime", align 1
@120 = private unnamed_addr constant [7 x i8] c"AddDays", align 1
@121 = private unnamed_addr constant [12 x i8] c"AddTimestamp", align 1
@122 = private unnamed_addr constant [26 x i8] c"ConvertDateTimeToTimestamp", align 1
@123 = private unnamed_addr constant [27 x i8] c"ConvertIntermediateDatetime", align 1
@124 = private unnamed_addr constant [17 x i8] c"FailedLengthOfDay", align 1
@125 = private unnamed_addr constant [21 x i8] c"FailedSpanNanoseconds", align 1
@126 = private unnamed_addr constant [16 x i8] c"FailedStartOfDay", align 1
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff4span4UnitNtB6_5Debug3fmtBA_ }>, align 8
@128 = private unnamed_addr constant [21 x i8] c"MismatchTimeZoneUntil", align 1
@129 = private unnamed_addr constant [7 x i8] c"largest", align 1
@130 = private unnamed_addr constant [21 x i8] c"AmbiguousTimeMonthDay", align 1
@131 = private unnamed_addr constant [22 x i8] c"AmbiguousTimeYearMonth", align 1
@132 = private unnamed_addr constant [17 x i8] c"CivilDateTimeZulu", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_5Debug3fmtBC_ }>, align 8
@134 = private unnamed_addr constant [6 x i8] c"offset", align 1
@135 = private unnamed_addr constant [13 x i8] c"EmptyTimeZone", align 1
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@137 = private unnamed_addr constant [31 x i8] c"ExpectedDateDesignatorFoundByte", align 1
@138 = private unnamed_addr constant [4 x i8] c"byte", align 1
@139 = private unnamed_addr constant [37 x i8] c"ExpectedDateDesignatorFoundEndOfInput", align 1
@140 = private unnamed_addr constant [35 x i8] c"ExpectedDurationDesignatorFoundByte", align 1
@141 = private unnamed_addr constant [41 x i8] c"ExpectedDurationDesignatorFoundEndOfInput", align 1
@142 = private unnamed_addr constant [21 x i8] c"ExpectedFourDigitYear", align 1
@143 = private unnamed_addr constant [19 x i8] c"ExpectedNoSeparator", align 1
@144 = private unnamed_addr constant [23 x i8] c"ExpectedOneDigitWeekday", align 1
@145 = private unnamed_addr constant [26 x i8] c"ExpectedSeparatorFoundByte", align 1
@146 = private unnamed_addr constant [32 x i8] c"ExpectedSeparatorFoundEndOfInput", align 1
@147 = private unnamed_addr constant [20 x i8] c"ExpectedSixDigitYear", align 1
@148 = private unnamed_addr constant [22 x i8] c"ExpectedTimeDesignator", align 1
@149 = private unnamed_addr constant [31 x i8] c"ExpectedTimeDesignatorFoundByte", align 1
@150 = private unnamed_addr constant [37 x i8] c"ExpectedTimeDesignatorFoundEndOfInput", align 1
@151 = private unnamed_addr constant [17 x i8] c"ExpectedTimeUnits", align 1
@152 = private unnamed_addr constant [19 x i8] c"ExpectedTwoDigitDay", align 1
@153 = private unnamed_addr constant [20 x i8] c"ExpectedTwoDigitHour", align 1
@154 = private unnamed_addr constant [22 x i8] c"ExpectedTwoDigitMinute", align 1
@155 = private unnamed_addr constant [21 x i8] c"ExpectedTwoDigitMonth", align 1
@156 = private unnamed_addr constant [22 x i8] c"ExpectedTwoDigitSecond", align 1
@157 = private unnamed_addr constant [26 x i8] c"ExpectedTwoDigitWeekNumber", align 1
@158 = private unnamed_addr constant [27 x i8] c"ExpectedWeekPrefixFoundByte", align 1
@159 = private unnamed_addr constant [33 x i8] c"ExpectedWeekPrefixFoundEndOfInput", align 1
@160 = private unnamed_addr constant [28 x i8] c"FailedFractionalSecondInTime", align 1
@161 = private unnamed_addr constant [19 x i8] c"FailedOffsetNumeric", align 1
@162 = private unnamed_addr constant [25 x i8] c"FailedSeparatorAfterMonth", align 1
@163 = private unnamed_addr constant [30 x i8] c"FailedSeparatorAfterWeekNumber", align 1
@164 = private unnamed_addr constant [24 x i8] c"FailedSeparatorAfterYear", align 1
@165 = private unnamed_addr constant [16 x i8] c"FailedTzdbLookup", align 1
@166 = private unnamed_addr constant [28 x i8] c"FailedWeekNumberPrefixInDate", align 1
@167 = private unnamed_addr constant [11 x i8] c"InvalidDate", align 1
@168 = private unnamed_addr constant [15 x i8] c"InvalidMonthDay", align 1
@169 = private unnamed_addr constant [19 x i8] c"InvalidTimeZoneUtf8", align 1
@170 = private unnamed_addr constant [15 x i8] c"InvalidWeekDate", align 1
@171 = private unnamed_addr constant [16 x i8] c"InvalidYearMonth", align 1
@172 = private unnamed_addr constant [15 x i8] c"InvalidYearZero", align 1
@173 = private unnamed_addr constant [24 x i8] c"MissingOffsetInTimestamp", align 1
@174 = private unnamed_addr constant [17 x i8] c"MissingTimeInDate", align 1
@175 = private unnamed_addr constant [22 x i8] c"MissingTimeInTimestamp", align 1
@176 = private unnamed_addr constant [25 x i8] c"MissingTimeZoneAnnotation", align 1
@177 = private unnamed_addr constant [16 x i8] c"ParseDayTwoDigit", align 1
@178 = private unnamed_addr constant [17 x i8] c"ParseHourTwoDigit", align 1
@179 = private unnamed_addr constant [19 x i8] c"ParseMinuteTwoDigit", align 1
@180 = private unnamed_addr constant [18 x i8] c"ParseMonthTwoDigit", align 1
@181 = private unnamed_addr constant [19 x i8] c"ParseSecondTwoDigit", align 1
@182 = private unnamed_addr constant [23 x i8] c"ParseWeekNumberTwoDigit", align 1
@183 = private unnamed_addr constant [20 x i8] c"ParseWeekdayOneDigit", align 1
@184 = private unnamed_addr constant [18 x i8] c"ParseYearFourDigit", align 1
@185 = private unnamed_addr constant [17 x i8] c"ParseYearSixDigit", align 1
@186 = private unnamed_addr constant [20 x i8] c"PrintTimeZoneFailure", align 1
@187 = private unnamed_addr constant [7 x i8] c"expired", align 1
@switch.table._RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt = private unnamed_addr constant [10 x ptr] [ptr @63, ptr @62, ptr @61, ptr @60, ptr @59, ptr @58, ptr @57, ptr @56, ptr @55, ptr @54], align 8
@switch.table._RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.47 = private unnamed_addr constant [10 x i8] c"\0A\0B\0B\06\06\04\03\04\05\04", align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !29, !noundef !6
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !32, !noundef !6 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !33
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #14
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter11print_zoneds_0Ba_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !56, !noalias !58
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !56, !noalias !58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61
  store i32 %.sroa.4.0.copyload.i, ptr %i.b, align 4, !noalias !61
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_buf(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61
  %i.d = load i8, ptr %.0.val, align 1, !range !7, !alias.scope !63, !noalias !64, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !63, !noalias !64, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !66
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !67, !noalias !62, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !alias.scope !67, !noalias !62, !noundef !6 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !66
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i: ; preds = %bb.c
  %i.m = add nsw i8 %i.f, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = trunc nuw i8 %i.d to i1
  %i.p = and i1 %i.n, %i.o
  %.sroa.01.0.i.i = select i1 %i.p, i8 32, i8 0
  %.sroa.0.0.i.i = or i8 %.sroa.01.0.i.i, %i.f
  %i.q = load ptr, ptr %0, align 8, !alias.scope !67, !noalias !62, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  store i8 %.sroa.0.0.i.i, ptr %i.r, align 1, !noalias !66
  %i.s = add i16 %i.k, 1
  store i16 %i.s, ptr %i.j, align 8, !alias.scope !67, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !61
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %.val.i.i = load i8, ptr %i.t, align 1, !alias.scope !63, !noalias !64
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %.val6.i.i = load i8, ptr %i.u, align 1, !alias.scope !63, !noalias !64
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf(i8 %.val.i.i, i8 %.val6.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !56, !noalias !58, !noundef !6 ; 10 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, 7                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.x, label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !56, !noalias !58, !noundef !6 ; 2 uses
  tail call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_buf(i32 %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.ac = load i64, ptr %i.h, align 8, !alias.scope !71, !noalias !68, !noundef !6 ; 3 uses
  %i.ad = load i16, ptr %i.j, align 8, !alias.scope !71, !noalias !68, !noundef !6 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %.not.i3.i.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i3.i.i, label %bb.f, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !72
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i: ; preds = %bb.e
  %i.af = load ptr, ptr %0, align 8, !alias.scope !71, !noalias !68, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 91, ptr %i.ag, align 1, !noalias !72
  %i.ah = add i16 %i.ad, 1                        ; 3 uses
  store i16 %i.ah, ptr %i.j, align 8, !alias.scope !71, !noalias !68
  switch i64 %i.y, label %bb.g [
    i64 1, label %bb.s
    i64 2, label %bb.u
    i64 3, label %bb.h
    i64 0, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.k, %bb.j
  unreachable

bb.g:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  %i.ai = trunc i64 %i.x to i32
  %i.aj = ashr i32 %i.ai, 4
  %i.ak = add nsw i32 %i.aj, 93599
  %or.cond.i.i.i.i = icmp ult i32 %i.ak, 187199
  br i1 %or.cond.i.i.i.i, label %bb.u, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !73
  unreachable

bb.j:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noalias !73, !noundef !6
  switch i8 %i.am, label %default.unreachable [
    i8 -1, label %bb.u
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.k:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  %i.an = getelementptr i8, ptr %i.w, i64 -4      ; 3 uses
  %i.ao = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.an), !noalias !73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %1 = sub nsw i64 0, %i.ao
  %2 = getelementptr inbounds i8, ptr %i.an, i64 %1 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.aq = load i8, ptr %i.ap, align 8, !range !11, !noalias !73, !noundef !6
  switch i8 %i.aq, label %default.unreachable [
    i8 -1, label %bb.u
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
  ]

bb.l:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  %i.ar = getelementptr i8, ptr %i.w, i64 -5      ; 2 uses
  %i.as = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ar), !noalias !73 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 233
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 263
  %i.av = load i8, ptr %i.au, align 1, !noalias !73, !noundef !6
  %i.aw = zext i8 %i.av to i64
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.ba = load i64, ptr %i.az, align 8, !noalias !73, !noundef !6
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.be = load i64, ptr %i.bd, align 8, !noalias !73, !noundef !6
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 249
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !73, !noundef !6
  %i.bi = zext i8 %i.bh to i64
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !73, !noundef !6
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !73, !noundef !6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  %.sroa.9.0.i.ph.i.i = phi i64 [ %i.bm, %bb.q ], [ %i.bi, %bb.p ], [ %i.ba, %bb.n ], [ %i.aw, %bb.m ], [ %i.be, %bb.o ], [ 3, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i ], [ %i.bq, %bb.r ] ; 4 uses
  %.sroa.0.0.i.ph.i.i = phi ptr [ %i.bk, %bb.q ], [ %i.bf, %bb.p ], [ %i.ay, %bb.n ], [ %i.at, %bb.m ], [ %i.bc, %bb.o ], [ @15, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i ], [ %i.bo, %bb.r ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.br = zext i16 %i.ah to i64                   ; 2 uses
  %i.bs = sub nuw i64 %i.ac, %i.br
  %.not.i5.i.i = icmp ugt i64 %.sroa.9.0.i.ph.i.i, %i.bs
  br i1 %.not.i5.i.i, label %bb.t, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i.i, !prof !12

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15, !noalias !75
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i.i: ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.br
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.bt, i64 noundef %.sroa.9.0.i.ph.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.ph.i.i, i64 noundef %.sroa.9.0.i.ph.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !76
  %i.bu = trunc i64 %.sroa.9.0.i.ph.i.i to i16
  %i.bv = add i16 %i.ah, %i.bu                    ; 2 uses
  store i16 %i.bv, ptr %i.j, align 8, !alias.scope !77, !noalias !78
  br label %bb.v

bb.u:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit4.i.i
  tail call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_buf(i32 %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !68
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !79, !noalias !68
  %.pre8.i.i = load i16, ptr %i.j, align 8, !alias.scope !79, !noalias !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i.i
  %i.bw = phi i16 [ %.pre8.i.i, %bb.u ], [ %i.bv, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i.i ] ; 2 uses
  %i.bx = phi i64 [ %.pre.i.i, %bb.u ], [ %i.ac, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.by = zext i16 %i.bw to i64                   ; 2 uses
  %.not.i.i5.i = icmp eq i64 %i.bx, %i.by
  br i1 %.not.i.i5.i, label %bb.w, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf.exit.i, !prof !9

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !81
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf.exit.i: ; preds = %bb.v
  %i.bz = load ptr, ptr %0, align 8, !alias.scope !79, !noalias !68, !nonnull !6, !noundef !6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 93, ptr %i.ca, align 1, !noalias !81
  %i.cb = add i16 %i.bw, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf.exit

bb.x:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.cc = load i64, ptr %i.h, align 8, !alias.scope !83, !noalias !84, !noundef !6
  %i.cd = load i16, ptr %i.j, align 8, !alias.scope !83, !noalias !84, !noundef !6 ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 2 uses
  %i.cf = sub nuw i64 %i.cc, %i.ce
  %.not.i.i = icmp ult i64 %i.cf, 14
  br i1 %.not.i.i, label %bb.y, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !12

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15, !noalias !85
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.x
  %i.cg = load ptr, ptr %0, align 8, !alias.scope !83, !noalias !84, !nonnull !6, !noundef !6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.ch, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !86
  %i.ci = add i16 %i.cd, 14
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf.exit: ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf.exit.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i
  %storemerge.i = phi i16 [ %i.cb, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf.exit.i ], [ %i.ci, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ]
  store i16 %storemerge.i, ptr %i.j, align 8, !alias.scope !57, !noalias !68
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %.val = load i64, ptr %.8.val, align 8, !noundef !6
  %i.c = getelementptr i8, ptr %.8.val, i64 8
  %.val1 = load i32, ptr %i.c, align 8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call fastcc void @_RNvMNtNtCsb09rMIQFAXO_9jiff_core2tz6offsetNtB2_6Offset11to_datetime(ptr noalias nofree noundef align 4 captures(none) dereferenceable(12) %i.b, i32 noundef 0, i64 noundef %.val, i32 noundef %.val1) #16, !noalias !103
  %.sroa.05.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_buf(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !101
  %i.e = load i8, ptr %.0.val, align 1, !range !7, !alias.scope !106, !noalias !107, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !106, !noalias !107, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !109
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !110, !noalias !106, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load i16, ptr %i.k, align 8, !alias.scope !110, !noalias !106, !noundef !6 ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.j, %i.m
  br i1 %.not.i.i.i, label %bb.d, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !109
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i: ; preds = %bb.c
  %i.n = add nsw i8 %i.g, -65
  %i.o = icmp ult i8 %i.n, 26
  %i.p = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.q = and i1 %i.o, %i.p
  %.sroa.01.0.i.i = select i1 %i.q, i8 32, i8 0
  %.sroa.0.0.i.i = or i8 %.sroa.01.0.i.i, %i.g
  %i.r = load ptr, ptr %0, align 8, !alias.scope !110, !noalias !106, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  store i8 %.sroa.0.0.i.i, ptr %i.s, align 1, !noalias !109
  %i.t = add i16 %i.l, 1
  store i16 %i.t, ptr %i.k, align 8, !alias.scope !110, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !111
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %.val.i.i = load i8, ptr %i.u, align 1, !alias.scope !106, !noalias !107
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %.val6.i.i = load i8, ptr %i.v, align 1, !alias.scope !106, !noalias !107
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf(i8 %.val.i.i, i8 %.val6.i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  br i1 %i.p, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.w = load i64, ptr %i.i, align 8, !alias.scope !114, !noalias !101, !noundef !6
  %i.x = load i16, ptr %i.k, align 8, !alias.scope !114, !noalias !101, !noundef !6 ; 2 uses
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %.not.i.i8.i = icmp eq i64 %i.w, %i.y
  br i1 %.not.i.i8.i, label %bb.e, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf.exit, !prof !9

bb.e:                                             ; preds = %.split2.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !115
  unreachable

.split.i.i:                                       ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.z = load i64, ptr %i.i, align 8, !alias.scope !117, !noalias !101, !noundef !6
  %i.aa = load i16, ptr %i.k, align 8, !alias.scope !117, !noalias !101, !noundef !6 ; 2 uses
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %.not.i3.i.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i3.i.i, label %bb.f, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf.exit, !prof !9

bb.f:                                             ; preds = %.split.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !118
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf.exit: ; preds = %.split2.i.i, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.y, %.split2.i.i ], [ %i.ab, %.split.i.i ]
  %.sink.i.i = phi i8 [ 90, %.split2.i.i ], [ 122, %.split.i.i ]
  %.sink2.i.i = phi i16 [ %i.x, %.split2.i.i ], [ %i.aa, %.split.i.i ]
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !119, !noalias !101, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink5.i.i
  store i8 %.sink.i.i, ptr %i.ad, align 1, !noalias !120
  %i.ae = add i16 %.sink2.i.i, 1
  store i16 %i.ae, ptr %i.k, align 8, !alias.scope !119, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter19print_iso_week_date0Ba_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %.val = load i8, ptr %.0.val, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.a = load i16, ptr %.8.val, align 2, !alias.scope !141, !noalias !142, !noundef !6 ; 3 uses
  %i.b = icmp slt i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !144, !noalias !145, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !144, !noalias !145, !noundef !6 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = sub nuw i64 %i.d, %i.g
  %.not.i17.i = icmp ult i64 %i.h, 3
  br i1 %.not.i17.i, label %bb.c, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15, !noalias !146
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.j, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !147
  %i.k = add i16 %i.f, 3
  store i16 %i.k, ptr %i.e, align 8, !alias.scope !144, !noalias !145
  %i.l = sub i16 0, %i.a
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, %bb.a
  %.sroa.01.0.i = phi i16 [ %i.l, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.m = icmp ult i16 %.sroa.01.0.i, 10000
  br i1 %i.m, label %bb.f, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #15, !noalias !149
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !150, !noalias !141, !noundef !6 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !150, !noalias !141, !noundef !6 ; 7 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = sub nuw i64 %i.o, %i.r
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit.i, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15, !noalias !149
  unreachable

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit.i: ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !alias.scope !150, !noalias !141, !nonnull !6, !noundef !6 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r ; 4 uses
  %i.w = urem i16 %.sroa.01.0.i, 100
  %i.x = shl nuw nsw i16 %i.w, 1
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr @5, i64 %i.y ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !149, !noundef !6
  store i8 %i.ab, ptr %i.z, align 1, !noalias !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !149, !noundef !6
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !149
  %i.af = udiv i16 %.sroa.01.0.i, 100
  %i.ag = shl nuw nsw i16 %i.af, 1
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @5, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !149, !noundef !6
  store i8 %i.aj, ptr %i.v, align 1, !noalias !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1, !noalias !149, !noundef !6
  store i8 %i.am, ptr %i.ak, align 1, !noalias !149
  %i.an = add i16 %i.q, 4                         ; 2 uses
  store i16 %i.an, ptr %i.p, align 8, !alias.scope !150, !noalias !141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %.not.i15.i = icmp eq i64 %i.o, %i.ao
  br i1 %.not.i15.i, label %bb.h, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit16.i, !prof !9

bb.h:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !152
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit16.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ao
  store i8 45, ptr %i.ap, align 1, !noalias !152
  %i.aq = add i16 %i.q, 5                         ; 2 uses
  store i16 %i.aq, ptr %i.p, align 8, !alias.scope !153, !noalias !141
  %i.ar = trunc nuw i8 %.val to i1
  %i.as = zext i16 %i.aq to i64                   ; 2 uses
  %.not.i9.i = icmp eq i64 %i.o, %i.as            ; 2 uses
  br i1 %i.ar, label %.split.i, label %.split6.i

.split6.i:                                        ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit16.i
  br i1 %.not.i9.i, label %bb.i, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !9

bb.i:                                             ; preds = %.split6.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !154
  unreachable

.split.i:                                         ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit16.i
  br i1 %.not.i9.i, label %bb.j, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !9

bb.j:                                             ; preds = %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !155
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i: ; preds = %.split.i, %.split6.i
  %.sink.i = phi i8 [ 87, %.split6.i ], [ 119, %.split.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.as
  store i8 %.sink.i, ptr %i.at, align 1, !noalias !156
  %storemerge.i = add i16 %i.q, 6                 ; 2 uses
  store i16 %storemerge.i, ptr %i.p, align 8, !alias.scope !142, !noalias !141
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val, i64 2
  %i.av = load i8, ptr %i.au, align 2, !alias.scope !141, !noalias !142, !noundef !6
  %.sroa.02.0.i = tail call i8 @llvm.abs.i8(i8 %i.av, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.aw = icmp ult i8 %.sroa.02.0.i, 100
  br i1 %i.aw, label %bb.l, label %bb.k, !prof !8

bb.k:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !158
  unreachable

bb.l:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  %i.ax = zext i16 %storemerge.i to i64           ; 2 uses
  %i.ay = sub nuw i64 %i.o, %i.ax
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !158
  unreachable

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit.i: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ax ; 2 uses
  %i.bb = shl nuw i8 %.sroa.02.0.i, 1
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @5, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !noalias !158, !noundef !6
  store i8 %i.be, ptr %i.ba, align 1, !noalias !158
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !158, !noundef !6
  store i8 %i.bh, ptr %i.bf, align 1, !noalias !158
  %i.bi = add i16 %i.q, 8                         ; 2 uses
  store i16 %i.bi, ptr %i.p, align 8, !alias.scope !159, !noalias !141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.bj = zext i16 %i.bi to i64                   ; 2 uses
  %.not.i13.i = icmp eq i64 %i.o, %i.bj
  br i1 %.not.i13.i, label %bb.n, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14.i, !prof !9

bb.n:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !161
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bj
  store i8 45, ptr %i.bk, align 1, !noalias !161
  %i.bl = add i16 %i.q, 9                         ; 2 uses
  store i16 %i.bl, ptr %i.p, align 8, !alias.scope !162, !noalias !141
  %i.bm = getelementptr inbounds nuw i8, ptr %.8.val, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !range !13, !alias.scope !141, !noalias !142, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.bo = zext i16 %i.bl to i64                   ; 2 uses
  %.not.i11.i = icmp eq i64 %i.o, %i.bo
  br i1 %.not.i11.i, label %bb.o, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter23print_iso_week_date_buf.exit, !prof !9

bb.o:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !164
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter23print_iso_week_date_buf.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14.i
  %i.bp = or disjoint i8 %i.bn, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bo
  store i8 %i.bp, ptr %i.bq, align 1, !noalias !164
  %i.br = add i16 %i.q, 10
  store i16 %i.br, ptr %i.p, align 8, !alias.scope !165, !noalias !141
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter27print_timestamp_with_offset0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !align !15, !noundef !6
  %i.h = load i32, ptr %i.g, align 4, !noundef !6 ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !noundef !6
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter10print_date:bb.a
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %2) #16, !noalias !197, !inline_history !189 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 13), !noalias !197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !199, !noalias !200, !noundef !6 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i), !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !203, !noalias !204, !nonnull !6, !noundef !6
  %i.l = load i64, ptr %i.f, align 8, !range !16, !alias.scope !203, !noalias !204, !noundef !6
  %i.m = sub nsw i64 %i.l, %i.h
  %..i3 = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.m, i64 65535)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store ptr %i.n, ptr %i.a, align 8, !alias.scope !202, !noalias !205
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %..i3, ptr %i.o, align 8, !alias.scope !202, !noalias !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.p, align 8, !alias.scope !202, !noalias !205
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_buf(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.q = load i16, ptr %i.p, align 8, !noalias !201, !noundef !6
  %i.r = zext i16 %i.q to i64
  %i.s = add nuw i64 %i.h, %i.r
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !199, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !206
  store ptr %i.c, ptr %i.b, align 8, !noalias !206
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 13, ptr %i.t, align 8, !noalias !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.u, align 8, !noalias !206
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_buf(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.v = load ptr, ptr %i.b, align 8, !noalias !206, !nonnull !6, !noundef !6
  %i.w = load i16, ptr %i.u, align 8, !noalias !206, !noundef !6
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !6, !alias.scope !197, !noalias !198, !nonnull !6
  %i.aa = call { i64, ptr } %i.z(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x) #16, !noalias !197, !inline_history !189 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %i.ad = trunc nuw i64 %i.ab to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !206
  %..i = select i1 %i.ad, ptr %i.ac, ptr undef
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit, %bb.b
  %.sroa.5.0.i = phi ptr [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %..i, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %i.ab, %bb.b ]
  %i.ae = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.af = insertvalue { i64, ptr } %i.ae, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.af
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter10print_time(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [18 x i8], align 1                ; 3 uses
  %i.d = load i32, ptr %1, align 4, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !alias.scope !223, !noalias !224, !nonnull !6
  %i.i = tail call noundef align 8 ptr %i.h(ptr noundef nonnull %2) #16, !noalias !223, !inline_history !211 ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.a
  %i.j = icmp ne i32 %i.d, 0
  %i.k = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  %.sroa.0.0 = select i1 %or.cond, i64 18, i64 8
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef range(i64 8, 19) %.sroa.0.0), !noalias !223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !225, !noalias !226, !noundef !6 ; 4 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n), !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !229, !noalias !230, !nonnull !6, !noundef !6
  %i.q = load i64, ptr %i.i, align 8, !range !16, !alias.scope !229, !noalias !230, !noundef !6
  %i.r = sub nsw i64 %i.q, %i.m
  %..i8 = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.r, i64 65535)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store ptr %i.s, ptr %i.a, align 8, !alias.scope !228, !noalias !231
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %..i8, ptr %i.t, align 8, !alias.scope !228, !noalias !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.u, align 8, !alias.scope !228, !noalias !231
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val1.i = load i8, ptr %i.v, align 1, !noalias !232
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf(i8 %i.f, i8 %.val1.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.w = load i16, ptr %i.u, align 8, !noalias !227, !noundef !6
  %i.x = zext i16 %i.w to i64
  %i.y = add nuw i64 %i.m, %i.x
  store i64 %i.y, ptr %i.l, align 8, !alias.scope !225, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj12_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter10print_time0EBa_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !233
  store ptr %i.c, ptr %i.b, align 8, !noalias !233
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 18, ptr %i.z, align 8, !noalias !233
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.aa, align 8, !noalias !233
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val1.i10 = load i8, ptr %i.ab, align 1, !noalias !234
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf(i8 %i.f, i8 %.val1.i10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.ac = load ptr, ptr %i.b, align 8, !noalias !233, !nonnull !6, !noundef !6
  %i.ad = load i16, ptr %i.aa, align 8, !noalias !233, !noundef !6
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !6, !alias.scope !223, !noalias !224, !nonnull !6
  %i.ah = call { i64, ptr } %i.ag(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae) #16, !noalias !223, !inline_history !211 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  %i.ak = trunc nuw i64 %i.ai to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  %..i = select i1 %i.ak, ptr %i.aj, ptr undef
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj12_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter10print_time0EBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj12_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter10print_time0EBa_.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit, %bb.b
  %.sroa.5.0.i = phi ptr [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %..i, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %i.ai, %bb.b ]
  %i.al = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.am = insertvalue { i64, ptr } %i.al, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.am
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter11print_zoned(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 22 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 1                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.g, align 8, !noundef !6 ; 16 uses
  %i.h = ptrtoint ptr %.val to i64                ; 3 uses
  %i.i = and i64 %i.h, 7                          ; 3 uses
  switch i64 %i.i, label %bb.b [
    i64 1, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread
    i64 2, label %bb.n
    i64 3, label %bb.c
    i64 0, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.ab, %bb.aa, %bb.f, %bb.e
  unreachable

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.h to i32
  %i.k = ashr i32 %i.j, 4
  %i.l = add nsw i32 %i.k, 93599
  %or.cond.i.i = icmp ult i32 %i.l, 187199
  br i1 %or.cond.i.i, label %bb.n, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.n = load i8, ptr %i.m, align 8, !range !11, !noundef !6
  switch i8 %i.n, label %default.unreachable [
    i8 -1, label %bb.n
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %.val, i64 -4      ; 3 uses
  %i.p = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %4 = sub nsw i64 0, %i.p
  %5 = getelementptr inbounds i8, ptr %i.o, i64 %4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !6
  switch i8 %i.r, label %default.unreachable [
    i8 -1, label %bb.n
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %.val, i64 -5      ; 2 uses
  %i.t = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.s) ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 263
  %i.v = load i8, ptr %i.u, align 1, !noundef !6
  %i.w = zext i8 %i.v to i64
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

bb.k:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 279
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !6
  %i.ad = zext i8 %i.ac to i64
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

bb.l:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.af = load i64, ptr %i.ae, align 8, !noundef !6
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

bb.m:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread

_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread: ; preds = %bb.m, %bb.a, %bb.j, %bb.h, %bb.i, %bb.k, %bb.l
  %.sroa.9.0.i.ph = phi i64 [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.y, %bb.i ], [ %i.w, %bb.h ], [ %i.aa, %bb.j ], [ 3, %bb.a ], [ %i.ah, %bb.m ]
  %i.ai = add i64 %.sroa.9.0.i.ph, 27
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.a, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread
  %i.aj = phi i64 [ %i.ai, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9iana_name.exit.thread ], [ 38, %bb.a ], [ 38, %bb.g ], [ 38, %bb.f ], [ 38, %bb.e ], [ 38, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !noundef !6
  %i.an = icmp slt i16 %i.am, 0
  %i.ao = add i64 %i.aj, 3
  %.sroa.01.0 = select i1 %i.an, i64 %i.ao, i64 %i.aj ; 2 uses
  %i.ap = load i32, ptr %i.ak, align 8, !noundef !6
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !7
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.at
  %i.au = add i64 %.sroa.01.0, 10
  %.sroa.01.1 = select i1 %or.cond, i64 %i.au, i64 %.sroa.01.0 ; 2 uses
  %i.av = icmp ult i64 %.sroa.01.1, 73
  br i1 %i.av, label %bb.as, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 72, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 0, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8, !alias.scope !281, !noalias !282
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %2, ptr %i.ay, align 8, !alias.scope !281, !noalias !282
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store ptr %3, ptr %i.az, align 8, !alias.scope !281, !noalias !282
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !alias.scope !283, !noalias !285
  %.sroa.5.0.copyload.i = load i32, ptr %i.al, align 8, !alias.scope !283, !noalias !285
  %i.ba = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_wtr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %0, i64 %.sroa.0.0.copyload.i, i32 %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !283 ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.ba, 0
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.bd = icmp eq i64 %i.i, 2
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !283, !noalias !285, !noundef !6 ; 2 uses
  %i.bg = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !286 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.bj = load ptr, ptr %i.d, align 8, !alias.scope !288, !noalias !289, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !290, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load i16, ptr %i.bm, align 8, !noalias !290, !noundef !6 ; 2 uses
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bl, %i.bo
  %i.bq = icmp ult i64 %i.bp, 14
  br i1 %i.bq, label %bb.r, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread40.i, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.br = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #14, !noalias !289 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.s

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread40.i: ; preds = %bb.s, %bb.q
  %.pre-phi.i = phi i64 [ %i.cf, %bb.s ], [ %i.bo, %bb.q ]
  %i.bu = phi i16 [ %i.ce, %bb.s ], [ %i.bn, %bb.q ]
  %i.bv = phi ptr [ %i.ca, %bb.s ], [ %i.bj, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bv, align 8, !alias.scope !291, !noalias !292, !nonnull !6, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.pre-phi.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.by, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !293
  %i.bz = add i16 %i.bu, 14
  store i16 %i.bz, ptr %i.bw, align 8, !alias.scope !291, !noalias !294
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.d, align 8, !alias.scope !288, !noalias !289, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !289, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load i16, ptr %i.cd, align 8, !noalias !289, !noundef !6 ; 2 uses
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cc, %i.cf
  %i.ch = icmp ult i64 %i.cg, 14
  br i1 %i.ch, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread40.i

bb.t:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.ci = load ptr, ptr %i.d, align 8, !alias.scope !297, !noalias !286, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !298, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = load i16, ptr %i.cl, align 8, !noalias !298, !noundef !6 ; 2 uses
  %i.cn = zext i16 %i.cm to i64                   ; 2 uses
  %i.co = icmp eq i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.u, label %.thread.i.i, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.cp = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #14, !noalias !286 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !297, !noalias !286 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre16.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !299, !noalias !286
  %.phi.trans.insert17.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre18.i.i = load i16, ptr %.phi.trans.insert17.i.i, align 8, !alias.scope !299, !noalias !286 ; 2 uses
  %.pre25.i.i = zext i16 %.pre18.i.i to i64       ; 2 uses
  %i.cs = icmp eq i64 %.pre16.i.i, %.pre25.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  br i1 %i.cs, label %bb.w, label %.thread.i.i, !prof !17

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !300
  unreachable

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.ct = phi ptr [ %.pre.i.i, %bb.v ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cu = phi i16 [ %.pre18.i.i, %bb.v ], [ %i.cm, %bb.t ]
  %.pre-phi37.i.i = phi i64 [ %.pre25.i.i, %bb.v ], [ %i.cn, %bb.t ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.ct, align 8, !alias.scope !299, !noalias !286, !nonnull !6, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.pre-phi37.i.i
  store i8 91, ptr %i.cx, align 1, !noalias !300
  %i.cy = add i16 %i.cu, 1
  store i16 %i.cy, ptr %i.cv, align 8, !alias.scope !299, !noalias !286
  switch i64 %i.i, label %bb.x [
    i64 1, label %bb.aj
    i64 2, label %bb.am
    i64 3, label %bb.y
    i64 0, label %bb.aa
    i64 4, label %bb.ab
    i64 5, label %bb.ac
  ]

bb.x:                                             ; preds = %.thread.i.i
  unreachable

bb.y:                                             ; preds = %.thread.i.i
  %i.cz = trunc i64 %i.h to i32
  %i.da = ashr i32 %i.cz, 4
  %i.db = add nsw i32 %i.da, 93599
  %or.cond.i.i.i.i = icmp ult i32 %i.db, 187199
  br i1 %or.cond.i.i.i.i, label %bb.am, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !286
  unreachable

bb.aa:                                            ; preds = %.thread.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.dd = load i8, ptr %i.dc, align 8, !range !11, !noalias !301, !noundef !6
  switch i8 %i.dd, label %default.unreachable [
    i8 -1, label %bb.am
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
  ]

bb.ab:                                            ; preds = %.thread.i.i
  %i.de = getelementptr i8, ptr %.val, i64 -4     ; 3 uses
  %i.df = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.de), !noalias !286
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %6 = sub nsw i64 0, %i.df
  %7 = getelementptr inbounds i8, ptr %i.de, i64 %6 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 248
  %i.dh = load i8, ptr %i.dg, align 8, !range !11, !noalias !301, !noundef !6
  switch i8 %i.dh, label %default.unreachable [
    i8 -1, label %bb.am
    i8 0, label %bb.ag
    i8 1, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.ac:                                            ; preds = %.thread.i.i
  %i.di = getelementptr i8, ptr %.val, i64 -5     ; 2 uses
  %i.dj = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.di), !noalias !286 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  br label %bb.am

bb.ad:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 233
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 263
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !301, !noundef !6
  %i.dn = zext i8 %i.dm to i64
  br label %bb.aj

bb.ae:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !301, !nonnull !6, !noundef !6
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !301, !noundef !6
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 240
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !301, !nonnull !6, !noundef !6
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.dv = load i64, ptr %i.du, align 8, !noalias !301, !noundef !6
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 249
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 279
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !301, !noundef !6
  %i.dz = zext i8 %i.dy to i64
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !301, !nonnull !6, !noundef !6
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !301, !noundef !6
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !301, !nonnull !6, !noundef !6
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !301, !noundef !6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.thread.i.i
  %.sroa.9.0.i.ph.i.i = phi i64 [ %i.ed, %bb.ah ], [ %i.dz, %bb.ag ], [ %i.dr, %bb.ae ], [ %i.dn, %bb.ad ], [ %i.dv, %bb.af ], [ 3, %.thread.i.i ], [ %i.eh, %bb.ai ] ; 6 uses
  %.sroa.0.0.i32.ph.i.i = phi ptr [ %i.eb, %bb.ah ], [ %i.dw, %bb.ag ], [ %i.dp, %bb.ae ], [ %i.dk, %bb.ad ], [ %i.dt, %bb.af ], [ @15, %.thread.i.i ], [ %i.ef, %bb.ai ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ei = load ptr, ptr %i.d, align 8, !alias.scope !303, !noalias !304, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !305, !noundef !6
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load i16, ptr %i.el, align 8, !noalias !305, !noundef !6 ; 2 uses
  %i.en = zext i16 %i.em to i64                   ; 2 uses
  %i.eo = sub i64 %i.ek, %i.en
  %i.ep = icmp ugt i64 %.sroa.9.0.i.ph.i.i, %i.eo
  br i1 %i.ep, label %bb.ak, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread13.i.i, !prof !9

bb.ak:                                            ; preds = %bb.aj
  %i.eq = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #14, !noalias !304 ; 2 uses
  %i.er = extractvalue { i64, ptr } %i.eq, 0
  %i.es = trunc nuw i64 %i.er to i1
  br i1 %i.es, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i.i, label %bb.al

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread13.i.i: ; preds = %bb.al, %bb.aj
  %.pre-phi28.i.i = phi i64 [ %i.fh, %bb.al ], [ %i.en, %bb.aj ]
  %i.et = phi i16 [ %i.fg, %bb.al ], [ %i.em, %bb.aj ]
  %i.eu = phi ptr [ %i.fc, %bb.al ], [ %i.ei, %bb.aj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.eu, align 8, !alias.scope !306, !noalias !307, !nonnull !6, !noundef !6
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.pre-phi28.i.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.ex, i64 noundef %.sroa.9.0.i.ph.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i32.ph.i.i, i64 noundef %.sroa.9.0.i.ph.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !308
  %i.ey = trunc i64 %.sroa.9.0.i.ph.i.i to i16
  %i.ez = add i16 %i.et, %i.ey
  store i16 %i.ez, ptr %i.ev, align 8, !alias.scope !306, !noalias !309
  br label %bb.an

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i.i: ; preds = %bb.ak
  %i.fa = extractvalue { i64, ptr } %i.eq, 1
  %i.fb = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.fa, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.fc = load ptr, ptr %i.d, align 8, !alias.scope !303, !noalias !304, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !304, !noundef !6
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fg = load i16, ptr %i.ff, align 8, !noalias !304, !noundef !6 ; 2 uses
  %i.fh = zext i16 %i.fg to i64                   ; 2 uses
  %i.fi = sub i64 %i.fe, %i.fh
  %i.fj = icmp ugt i64 %.sroa.9.0.i.ph.i.i, %i.fi
  br i1 %i.fj, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i.i, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread13.i.i

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i.i: ; preds = %bb.al
  %i.fk = load ptr, ptr %i.ay, align 8, !alias.scope !303, !noalias !304, !nonnull !6, !noundef !6
  %i.fl = load ptr, ptr %i.az, align 8, !alias.scope !303, !noalias !304, !nonnull !6, !align !14, !noundef !6
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !invariant.load !6, !noalias !304, !nonnull !6
  %i.fo = call { i64, ptr } %i.fn(ptr noundef nonnull %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i32.ph.i.i, i64 noundef %.sroa.9.0.i.ph.i.i) #16, !noalias !286, !inline_history !261 ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fo, 0
  %i.fq = trunc nuw i64 %i.fp to i1
  br i1 %i.fq, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %.thread.i.i
  %i.fr = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !286 ; 2 uses
  %i.fs = extractvalue { i64, ptr } %i.fr, 0
  %i.ft = trunc nuw i64 %i.fs to i1
  br i1 %i.ft, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread13.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.fu = load ptr, ptr %i.d, align 8, !alias.scope !311, !noalias !286, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !312, !noundef !6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load i16, ptr %i.fx, align 8, !noalias !312, !noundef !6 ; 2 uses
  %i.fz = zext i16 %i.fy to i64                   ; 2 uses
  %i.ga = icmp eq i64 %i.fw, %i.fz
  br i1 %i.ga, label %bb.ao, label %bb.ar, !prof !9

bb.ao:                                            ; preds = %bb.an
  %i.gb = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #14, !noalias !286 ; 2 uses
  %i.gc = extractvalue { i64, ptr } %i.gb, 0
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.pre20.i.i = load ptr, ptr %i.d, align 8, !alias.scope !311, !noalias !286 ; 3 uses
  %.phi.trans.insert21.i.i = getelementptr inbounds nuw i8, ptr %.pre20.i.i, i64 8
  %.pre22.i.i = load i64, ptr %.phi.trans.insert21.i.i, align 8, !alias.scope !313, !noalias !286
  %.phi.trans.insert23.i.i = getelementptr inbounds nuw i8, ptr %.pre20.i.i, i64 16
  %.pre24.i.i = load i16, ptr %.phi.trans.insert23.i.i, align 8, !alias.scope !313, !noalias !286 ; 2 uses
  %.pre26.i.i = zext i16 %.pre24.i.i to i64       ; 2 uses
  %i.ge = icmp eq i64 %.pre22.i.i, %.pre26.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  br i1 %i.ge, label %bb.aq, label %bb.ar, !prof !17

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !314
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.an
  %i.gf = phi ptr [ %.pre20.i.i, %bb.ap ], [ %i.fu, %bb.an ] ; 2 uses
  %i.gg = phi i16 [ %.pre24.i.i, %bb.ap ], [ %i.fy, %bb.an ]
  %.pre-phi2741.i.i = phi i64 [ %.pre26.i.i, %bb.ap ], [ %i.fz, %bb.an ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gi = load ptr, ptr %i.gf, align 8, !alias.scope !313, !noalias !286, !nonnull !6, !noundef !6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.pre-phi2741.i.i
  store i8 93, ptr %i.gj, align 1, !noalias !314
  %i.gk = add i16 %i.gg, 1
  store i16 %i.gk, ptr %i.gh, align 8, !alias.scope !313, !noalias !286
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i.i, %bb.am, %bb.ao, %bb.u, %bb.p, %bb.r, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.pn37 = phi { i64, ptr } [ %i.ba, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.gb, %bb.ao ], [ %i.cp, %bb.u ], [ %i.br, %bb.r ], [ %i.bg, %bb.p ], [ %i.fo, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i.i ], [ %i.fr, %bb.am ], [ %i.fb, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i.i ]
  %.sroa.6.0.i.ph = extractvalue { i64, ptr } %.pn37, 1
  %i.gl = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.6.0.i.ph, 1
  br label %bb.au

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit: ; preds = %bb.s
  %i.gm = load ptr, ptr %i.ay, align 8, !alias.scope !288, !noalias !289, !nonnull !6, !noundef !6
  %i.gn = load ptr, ptr %i.az, align 8, !alias.scope !288, !noalias !289, !nonnull !6, !align !14, !noundef !6
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !invariant.load !6, !noalias !289, !nonnull !6
  %i.gq = call { i64, ptr } %i.gp(ptr noundef nonnull %i.gm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14) #16, !noalias !286, !inline_history !266 ; 2 uses
  %i.gr = extractvalue { i64, ptr } %i.gq, 0
  %i.gs = trunc nuw i64 %i.gr to i1
  br i1 %i.gs, label %bb.au, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34

bb.as:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !6, !alias.scope !315, !noalias !316, !nonnull !6
  %i.gv = tail call noundef align 8 ptr %i.gu(ptr noundef nonnull %2) #16, !noalias !315, !inline_history !271 ; 5 uses
  %.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.i, label %bb.at, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.as
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gv, i64 noundef range(i64 0, 73) %.sroa.01.1), !noalias !315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !317, !noalias !318, !noundef !6 ; 4 uses
  %i.gy = icmp sgt i64 %i.gx, -1
  tail call void @llvm.assume(i1 %i.gy), !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf:bb.a

bb.m:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.bj = zext i16 %i.be to i64                   ; 2 uses
  %.not.i12 = icmp eq i64 %i.f, %i.bj
  br i1 %.not.i12, label %bb.n, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !535
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  store i8 46, ptr %i.bk, align 1, !noalias !535
  %i.bl = add i16 %i.h, 9                         ; 3 uses
  store i16 %i.bl, ptr %i.g, align 8, !alias.scope !535
  %.sroa.03.0 = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 false) ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.bm = icmp ult i32 %.sroa.03.0, 1000000000
  br i1 %i.bm, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #15, !noalias !536
  unreachable

bb.p:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !536
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = urem i32 %.sroa.03.0, 10                ; 2 uses
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = or disjoint i8 %i.bp, 48
  store i8 %i.bq, ptr %i.bn, align 1, !noalias !536
  %i.br = insertelement <4 x i32> poison, i32 %.sroa.03.0, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bt = udiv <4 x i32> %i.bs, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = urem <4 x i32> %i.bt, splat (i32 10)    ; 5 uses
  %i.bw = trunc nuw nsw <4 x i32> %i.bv to <4 x i8>
  %i.bx = or disjoint <4 x i8> %i.bw, splat (i8 48)
  store <4 x i8> %i.bx, ptr %i.bu, align 1, !noalias !536
  %i.by = udiv i32 %.sroa.03.0, 100000
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.lhs.trunc = trunc nuw i32 %i.by to i16
  %i.ca = urem i16 %.lhs.trunc, 10                ; 2 uses
  %i.cb = trunc nuw nsw i16 %i.ca to i8
  %i.cc = or disjoint i8 %i.cb, 48
  store i8 %i.cc, ptr %i.bz, align 1, !noalias !536
  %i.cd = udiv i32 %.sroa.03.0, 1000000
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.lhs.trunc18 = trunc nuw nsw i32 %i.cd to i16
  %i.cf = urem i16 %.lhs.trunc18, 10              ; 2 uses
  %i.cg = trunc nuw nsw i16 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 48
  store i8 %i.ch, ptr %i.ce, align 1, !noalias !536
  %i.ci = udiv i32 %.sroa.03.0, 10000000
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.lhs.trunc20 = trunc nuw i32 %i.ci to i8
  %i.ck = urem i8 %.lhs.trunc20, 10               ; 2 uses
  %i.cl = or disjoint i8 %i.ck, 48
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !536
  %i.cm = udiv i32 %.sroa.03.0, 100000000
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  %i.co = or disjoint i8 %i.cn, 48
  store i8 %i.co, ptr %i.a, align 1, !noalias !536
  br i1 %i.bg, label %bb.q, label %.split

bb.q:                                             ; preds = %bb.p
  %..i = tail call noundef range(i8 0, 10) i8 @llvm.umin.i8(i8 %.2.val, i8 9)
  br label %bb.z

.split:                                           ; preds = %bb.p
  %i.cp = icmp eq i32 %i.bo, 0
  br i1 %i.cp, label %bb.r, label %bb.z

bb.r:                                             ; preds = %.split
  %i.cq = extractelement <4 x i32> %i.bv, i64 3
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cs = extractelement <4 x i32> %i.bv, i64 2
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.cu = extractelement <4 x i32> %i.bv, i64 1
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cw = extractelement <4 x i32> %i.bv, i64 0
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp eq i16 %i.ca, 0
  br i1 %i.cy, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cz = icmp eq i16 %i.cf, 0
  br i1 %i.cz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.da = icmp eq i8 %i.ck, 0
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = icmp ugt i32 %.sroa.03.0, 99999999
  %spec.select = zext i1 %i.db to i8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.q
  %.sroa.06.1.i = phi i8 [ %..i, %bb.q ], [ 9, %.split ], [ 3, %bb.w ], [ 8, %bb.r ], [ %spec.select, %bb.y ], [ 7, %bb.s ], [ 4, %bb.v ], [ 6, %bb.t ], [ 2, %bb.x ], [ 5, %bb.u ] ; 2 uses
  %i.dc = zext nneg i8 %.sroa.06.1.i to i64       ; 3 uses
  %i.dd = zext i16 %i.bl to i64                   ; 2 uses
  %i.de = sub nuw i64 %i.f, %i.dd
  %.not20.i = icmp ult i64 %i.de, %i.dc
  br i1 %.not20.i, label %bb.aa, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15, !noalias !536
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit: ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.df, i64 noundef %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !536
  %i.dg = zext nneg i8 %.sroa.06.1.i to i16
  %i.dh = add i16 %i.bl, %i.dg
  store i16 %i.dh, ptr %i.g, align 8, !alias.scope !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !536
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_time_zone(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i16 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !588, !noalias !589
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.g, align 8, !alias.scope !588, !noalias !589
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %3, ptr %i.h, align 8, !alias.scope !588, !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !590, !noalias !592, !noundef !6 ; 12 uses
  %i.i = ptrtoint ptr %.val.i to i64              ; 3 uses
  %i.j = and i64 %i.i, 7                          ; 2 uses
  switch i64 %i.j, label %bb.a [
    i64 1, label %bb.l
    i64 2, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i
    i64 3, label %bb.b
    i64 0, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.e, %bb.d
  unreachable

bb.a:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  unreachable

bb.b:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.k = trunc i64 %i.i to i32
  %i.l = ashr i32 %i.k, 4                         ; 6 uses
  %i.m = add nsw i32 %i.l, 93599
  %or.cond.i.i.i = icmp ult i32 %i.m, 187199
  br i1 %or.cond.i.i.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !593
  unreachable

bb.d:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.o = load i8, ptr %i.n, align 8, !range !11, !noalias !593, !noundef !6
  switch i8 %i.o, label %default.unreachable [
    i8 -1, label %bb.q
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.p = getelementptr i8, ptr %.val.i, i64 -4    ; 4 uses
  %i.q = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.p), !noalias !593
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %4 = sub nsw i64 0, %i.q
  %5 = getelementptr inbounds i8, ptr %i.p, i64 %4 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.s = load i8, ptr %i.r, align 8, !range !11, !noalias !593, !noundef !6
  switch i8 %i.s, label %default.unreachable [
    i8 -1, label %bb.r
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 233
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 263
  %i.v = load i8, ptr %i.u, align 1, !noalias !593, !noundef !6
  %i.w = zext i8 %i.v to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !noalias !593, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.aa = load i64, ptr %i.z, align 8, !noalias !593, !noundef !6
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !593, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !593, !noundef !6
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 249
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 279
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !593, !noundef !6
  %i.ai = zext i8 %i.ah to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !593, !nonnull !6, !noundef !6
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.am = load i64, ptr %i.al, align 8, !noalias !593, !noundef !6
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !593, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !593, !noundef !6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.sroa.9.0.i.ph.i = phi i64 [ %i.am, %bb.j ], [ %i.ai, %bb.i ], [ %i.aa, %bb.g ], [ %i.w, %bb.f ], [ %i.ae, %bb.h ], [ 3, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.aq, %bb.k ] ; 6 uses
  %.sroa.0.0.i21.ph.i = phi ptr [ %i.ak, %bb.j ], [ %i.af, %bb.i ], [ %i.y, %bb.g ], [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ @15, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.ao, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !595, !noalias !596, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !597, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i16, ptr %i.au, align 8, !noalias !597, !noundef !6 ; 2 uses
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %i.ax = sub i64 %i.at, %i.aw
  %i.ay = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.ax
  br i1 %i.ay, label %bb.m, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.az = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14, !noalias !596 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %bb.o

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i: ; preds = %bb.o, %bb.l
  %.pre-phi.i = phi i64 [ %i.bp, %bb.o ], [ %i.aw, %bb.l ]
  %i.bc = phi i16 [ %i.bo, %bb.o ], [ %i.av, %bb.l ]
  %i.bd = phi ptr [ %i.bk, %bb.o ], [ %i.ar, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.bd, align 8, !alias.scope !598, !noalias !599, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre-phi.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !600
  %i.bh = trunc i64 %.sroa.9.0.i.ph.i to i16
  %i.bi = add i16 %i.bc, %i.bh
  store i16 %i.bi, ptr %i.be, align 8, !alias.scope !598, !noalias !601
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.n:                                             ; preds = %bb.m
  %i.bj = extractvalue { i64, ptr } %i.az, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.o:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.b, align 8, !alias.scope !595, !noalias !596, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !596, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load i16, ptr %i.bn, align 8, !noalias !596, !noundef !6 ; 2 uses
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = sub i64 %i.bm, %i.bp
  %i.br = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.bq
  br i1 %i.br, label %bb.p, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.g, align 8, !alias.scope !595, !noalias !596, !nonnull !6, !noundef !6
  %i.bt = load ptr, ptr %i.h, align 8, !alias.scope !595, !noalias !596, !nonnull !6, !align !14, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !6, !noalias !596, !nonnull !6
  %i.bw = call { i64, ptr } %i.bv(ptr noundef nonnull %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i) #16, !noalias !593, !inline_history !551 ; 2 uses
  %i.bx = extractvalue { i64, ptr } %i.bw, 0
  %i.by = extractvalue { i64, ptr } %i.bw, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i: ; preds = %bb.p, %bb.n, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i
  %.sroa.4.0.i16.i = phi ptr [ %i.bj, %bb.n ], [ %i.by, %bb.p ], [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %.sroa.0.0.i17.i = phi i64 [ 1, %bb.n ], [ %i.bx, %bb.p ], [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %i.bz = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i17.i, 0
  %i.ca = insertvalue { i64, ptr } %i.bz, ptr %.sroa.4.0.i16.i, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  br label %bb.t

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  %i.cb = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %i.p), !noalias !603 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.cc = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.cd = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.cc), !noalias !593 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ce = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %i.cc), !noalias !603 ; 0 uses
  br label %bb.t

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.d, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !606
  store i16 11, ptr %i.f, align 8, !alias.scope !605, !noalias !607
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cf = call { ptr, i64 } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone16kind_description(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !608 ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  %i.ci = call noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz8timezoneNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ch) #14, !noalias !608 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !604, !noalias !609
  store i32 1, ptr %i.a, align 8, !alias.scope !604, !noalias !609
  %i.ck = icmp eq ptr %i.ci, null
  br i1 %i.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !610
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #14, !noalias !611
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  switch i64 %i.j, label %bb.w [
    i64 1, label %bb.af
    i64 2, label %bb.af
    i64 3, label %bb.x
    i64 0, label %bb.af
    i64 4, label %bb.z
    i64 5, label %bb.ae
  ]

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  unreachable

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cn = trunc i64 %i.i to i32
  %i.co = ashr i32 %i.cn, 4
  %i.cp = add nsw i32 %i.co, 93599
  %or.cond.i.i25.i = icmp ult i32 %i.cp, 187199
  br i1 %or.cond.i.i25.i, label %bb.af, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !611
  unreachable

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cq = getelementptr i8, ptr %.val.i, i64 -4   ; 2 uses
  %i.cr = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.cq), !noalias !611 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %bb.af

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.l, ptr %i.cs, align 4, !alias.scope !604, !noalias !609
  store i32 0, ptr %i.a, align 8, !alias.scope !604, !noalias !609
  %i.ct = icmp slt i32 %i.l, 0
  %. = select i1 %i.ct, i8 45, i8 43
  store i8 %., ptr %i.d, align 1, !noalias !593
  %i.cu = sdiv i32 %i.l, 3600
  %i.cv = trunc nsw i32 %i.cu to i8
  %.sroa.030.0.i.i = call i8 @llvm.abs.i8(i8 %i.cv, i1 true)
  %i.cw = sdiv i32 %i.l, 60
  %.lhs.trunc.i = trunc nsw i32 %i.cw to i16
  %i.cx = srem i16 %.lhs.trunc.i, 60              ; 2 uses
  %i.cy = trunc nsw i16 %i.cx to i8               ; 2 uses
  %i.cz = icmp slt i16 %i.cx, 0
  %i.da = sub nsw i8 0, %i.cy
  %.sroa.031.0.i.i = select i1 %i.cz, i8 %i.da, i8 %i.cy ; 2 uses
  %i.db = srem i32 %i.l, 60                       ; 2 uses
  %i.dc = trunc nsw i32 %i.db to i8               ; 2 uses
  %i.dd = icmp slt i32 %i.db, 0
  %i.de = sub nsw i8 0, %i.dc
  %.sroa.032.0.i.i = select i1 %i.dd, i8 %i.de, i8 %i.dc ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.dg = shl nuw nsw i8 %.sroa.030.0.i.i, 1
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @5, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !noalias !612, !noundef !6
  store i8 %i.dj, ptr %i.df, align 1, !noalias !613
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !612, !noundef !6
  store i8 %i.dm, ptr %i.dk, align 1, !noalias !613
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 58, ptr %i.dn, align 1, !noalias !614
  store i16 4, ptr %i.f, align 8, !alias.scope !615, !noalias !593
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.do = icmp ult i8 %.sroa.031.0.i.i, 100
  br i1 %i.do, label %bb.aa, label %.invoke74.i, !prof !8

bb.aa:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dq = shl nuw nsw i8 %.sroa.031.0.i.i, 1
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @5, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !617, !noundef !6
  store i8 %i.dt, ptr %i.dp, align 1, !noalias !618
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !617, !noundef !6
  store i8 %i.dw, ptr %i.du, align 1, !noalias !618
  store i16 6, ptr %i.f, align 8, !alias.scope !616, !noalias !593
  %.not.i.i = icmp eq i8 %.sroa.032.0.i.i, 0
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i: ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 58, ptr %i.dx, align 1, !noalias !619
  store i16 7, ptr %i.f, align 8, !alias.scope !620, !noalias !593
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.dy = icmp ult i8 %.sroa.032.0.i.i, 100
  br i1 %i.dy, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i, label %.invoke74.i, !prof !8

.invoke74.i:                                      ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont75.i unwind label %bb.ab, !noalias !593

.cont75.i:                                        ; preds = %.invoke74.i
  unreachable

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.ea = shl nuw nsw i8 %.sroa.032.0.i.i, 1
  %i.eb = zext nneg i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @5, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !622, !noundef !6
  store i8 %i.ed, ptr %i.dz, align 1, !noalias !623
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !622, !noundef !6
  store i8 %i.eg, ptr %i.ee, align 1, !noalias !623
  store i16 9, ptr %i.f, align 8, !alias.scope !621, !noalias !593
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i

bb.ab:                                            ; preds = %.invoke74.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #17
          to label %bb.ad unwind label %bb.ac, !noalias !593

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i: ; preds = %bb.aa, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !593
  unreachable

bb.ad:                                            ; preds = %bb.ab
  resume { ptr, i32 } %i.eh

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.ej = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.ek = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ej), !noalias !611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %6 = sub nsw i64 0, %i.ek
  %7 = getelementptr inbounds i8, ptr %i.ej, i64 %6
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.em = call { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone(ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @24)
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.af:                                            ; preds = %bb.z, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.en = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 53) #14, !noalias !611
  %i.eo = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.en, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, %bb.ae, %bb.af
  %.merged.i = phi { i64, ptr } [ %i.ca, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i ], [ { i64 0, ptr undef }, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i ], [ %i.em, %bb.ae ], [ %i.eo, %bb.af ], [ { i64 0, ptr undef }, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i ] ; 2 uses
  %i.ep = extractvalue { i64, ptr } %.merged.i, 0
  %i.eq = trunc nuw i64 %i.ep to i1
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.er = extractvalue { i64, ptr } %.merged.i, 1
  br label %bb.ak

bb.ah:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %.sroa.5.0.copyload = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.es = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !624, !nonnull !6, !noundef !6
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.eu = load i16, ptr %i.et, align 8, !noalias !624, !noundef !6
  %i.ev = zext i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !invariant.load !6, !noalias !624, !nonnull !6
  %i.ey = call { i64, ptr } %i.ex(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.ev) #16, !noalias !624, !inline_history !0 ; 2 uses
  %i.ez = extractvalue { i64, ptr } %i.ey, 0
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fb = extractvalue { i64, ptr } %i.ey, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.aj:                                            ; preds = %bb.ah
  store i16 0, ptr %i.et, align 8, !noalias !624
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.3.0.i = phi ptr [ %i.fb, %bb.ai ], [ undef, %bb.aj ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.ai ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, %bb.ag
  %.pn = phi ptr [ %i.er, %bb.ag ], [ %.sroa.3.0.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.ag ], [ %.sroa.0.0.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %i.fc = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fd = insertvalue { i64, ptr } %i.fc, ptr %.pn, 1
  ret { i64, ptr } %i.fd
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_timestamp(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [33 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !6, !alias.scope !637, !noalias !638, !nonnull !6
  %i.j = tail call noundef align 8 ptr %i.i(ptr noundef nonnull %2) #16, !noalias !637, !inline_history !629 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.a
  %i.k = icmp ne i32 %i.e, 0
  %i.l = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  %.sroa.0.0 = select i1 %or.cond, i64 33, i64 23
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 23, 34) %.sroa.0.0), !noalias !637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !639, !noalias !640, !noundef !6 ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !643, !noalias !644, !nonnull !6, !noundef !6
  %i.r = load i64, ptr %i.j, align 8, !range !16, !alias.scope !643, !noalias !644, !noundef !6
  %i.s = sub nsw i64 %i.r, %i.n
  %..i8 = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.s, i64 65535)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !642, !noalias !645
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %..i8, ptr %i.u, align 8, !alias.scope !642, !noalias !645
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.v, align 8, !alias.scope !642, !noalias !645
  call fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nonnull %0, ptr nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
  %i.w = load i16, ptr %i.v, align 8, !noalias !641, !noundef !6
  %i.x = zext i16 %i.w to i64
  %i.y = add nuw i64 %i.n, %i.x
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !639, !noalias !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !646
  store ptr %i.c, ptr %i.b, align 8, !noalias !646
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 33, ptr %i.z, align 8, !noalias !646
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.aa, align 8, !noalias !646
  call fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nonnull %0, ptr nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
  %i.ab = load ptr, ptr %i.b, align 8, !noalias !646, !nonnull !6, !noundef !6
  %i.ac = load i16, ptr %i.aa, align 8, !noalias !646, !noundef !6
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !6, !alias.scope !637, !noalias !638, !nonnull !6
  %i.ag = call { i64, ptr } %i.af(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad) #16, !noalias !637, !inline_history !629 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = trunc nuw i64 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !646
  %..i = select i1 %i.aj, ptr %i.ai, ptr undef
  br label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit, %bb.b
  %.sroa.5.0.i = phi ptr [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %..i, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %i.ah, %bb.b ]
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_wtr(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(4) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.8.val, ptr %i.b, align 4
  %i.c = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_wtr(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i8, ptr %0, align 1, !range !7, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !noundef !6  ; 3 uses
  %i.k = add i8 %i.j, -65
  %i.l = icmp ult i8 %i.k, 26
  %i.m = and i1 %i.l, %i.h
  %.sroa.016.0 = select i1 %i.m, i8 32, i8 0
  %.sroa.010.0 = or i8 %i.j, %.sroa.016.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !690, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !690, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i16, ptr %i.q, align 8, !noalias !690, !noundef !6
  %i.s = zext i16 %i.r to i64
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !alias.scope !690
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.y = icmp sgt i8 %i.j, -1
  br i1 %i.y, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !691
  unreachable

end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter10print_span:bb.a
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit79.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit37.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1196
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit79.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit37.i
  %i.br = zext nneg i8 %.sroa.0.0.i93.i to i16
  %i.bs = add nuw nsw i16 %.sroa.9.0, %i.br       ; 2 uses
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  store i8 %i.bp, ptr %i.bu, align 1, !noalias !1196
  %i.bv = add nuw nsw i16 %i.bs, 1
  br label %bb.h

bb.n:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit77.i, %bb.h
  %.sroa.9.2 = phi i16 [ %.sroa.9.1, %bb.h ], [ %i.dh, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit77.i ] ; 3 uses
  %i.bw = and i16 %i.k, 64
  %.not15.i = icmp eq i16 %i.bw, 0
  br i1 %.not15.i, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !1186, !noalias !1188, !noundef !6 ; 8 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ult i32 %i.by, 100
  br i1 %i.ca, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp ult i32 %i.by, 1000
  br i1 %i.cb, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp ult i32 %i.by, 10000
  br i1 %i.cc, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit106.i

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit106.i: ; preds = %bb.r
  %i.cd = icmp ugt i32 %i.by, 99999               ; 2 uses
  %i.ce = udiv i32 %i.by, 100000
  %.sroa.05.1.i104.i = select i1 %i.cd, i32 5, i32 0
  %.sroa.0.1.i105.i = select i1 %i.cd, i32 %i.ce, i32 %i.by ; 4 uses
  %i.cf = add nuw nsw i32 %.sroa.0.1.i105.i, 393206
  %i.cg = add nuw nsw i32 %.sroa.0.1.i105.i, 524188
  %i.ch = and i32 %i.cf, %i.cg
  %i.ci = add nuw nsw i32 %.sroa.0.1.i105.i, 916504
  %i.cj = add nuw nsw i32 %.sroa.0.1.i105.i, 514288
  %i.ck = and i32 %i.ci, %i.cj
  %i.cl = xor i32 %i.ch, %i.ck
  %i.cm = lshr i32 %i.cl, 17
  %i.cn = add nuw nsw i32 %i.cm, %.sroa.05.1.i104.i ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, 20
  tail call void @llvm.assume(i1 %i.co), !noalias !1197
  %i.cp = trunc nuw nsw i32 %i.cn to i8
  %i.cq = add nuw nsw i8 %i.cp, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i: ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit106.i, %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i95.i = phi i8 [ %i.cq, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit106.i ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ] ; 2 uses
  %i.cr = zext nneg i8 %.sroa.0.0.i95.i to i64
  %i.cs = zext nneg i16 %.sroa.9.1 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cs
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i, %.preheader18.i
  %.sroa.0.0.i3027.i = phi i32 [ %i.cz, %.preheader18.i ], [ %i.by, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i ] ; 2 uses
  %.sroa.03.0.i2926.i = phi i64 [ %i.cu, %.preheader18.i ], [ %i.cr, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit96.i ]
  %i.cu = add nsw i64 %.sroa.03.0.i2926.i, -1     ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  %i.cw = urem i32 %.sroa.0.0.i3027.i, 10
  %i.cx = trunc nuw nsw i32 %i.cw to i8
  %i.cy = or disjoint i8 %i.cx, 48
  store i8 %i.cy, ptr %i.cv, align 1, !noalias !1198
  %i.cz = udiv i32 %.sroa.0.0.i3027.i, 10
  %.not8.i31.i = icmp eq i64 %i.cu, 0
  br i1 %.not8.i31.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit32.i, label %.preheader18.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit32.i: ; preds = %.preheader18.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 7
  %i.db = load i8, ptr %i.da, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.dc = icmp sgt i8 %i.db, -1
  br i1 %i.dc, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit77.i, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit32.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1199
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit77.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit32.i
  %i.dd = zext nneg i8 %.sroa.0.0.i95.i to i16
  %i.de = add nuw nsw i16 %.sroa.9.1, %i.dd       ; 2 uses
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  store i8 %i.db, ptr %i.dg, align 1, !noalias !1199
  %i.dh = add nuw nsw i16 %i.de, 1
  br label %bb.n

bb.t:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit75.i, %bb.n
  %.sroa.9.3 = phi i16 [ %.sroa.9.2, %bb.n ], [ %i.eu, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit75.i ] ; 6 uses
  %i.di = and i16 %i.k, 63
  %i.dj = icmp eq i16 %i.di, 0
  br i1 %i.dj, label %bb.z, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit73.i

bb.u:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 8 uses
  %i.dm = icmp ult i32 %i.dl, 10
  br i1 %i.dm, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = icmp ult i32 %i.dl, 100
  br i1 %i.dn, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = icmp ult i32 %i.dl, 1000
  br i1 %i.do, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = icmp ult i32 %i.dl, 10000
  br i1 %i.dp, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit110.i

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit110.i: ; preds = %bb.x
  %i.dq = icmp ugt i32 %i.dl, 99999               ; 2 uses
  %i.dr = udiv i32 %i.dl, 100000
  %.sroa.05.1.i108.i = select i1 %i.dq, i32 5, i32 0
  %.sroa.0.1.i109.i = select i1 %i.dq, i32 %i.dr, i32 %i.dl ; 4 uses
  %i.ds = add nuw nsw i32 %.sroa.0.1.i109.i, 393206
  %i.dt = add nuw nsw i32 %.sroa.0.1.i109.i, 524188
  %i.du = and i32 %i.ds, %i.dt
  %i.dv = add nuw nsw i32 %.sroa.0.1.i109.i, 916504
  %i.dw = add nuw nsw i32 %.sroa.0.1.i109.i, 514288
  %i.dx = and i32 %i.dv, %i.dw
  %i.dy = xor i32 %i.du, %i.dx
  %i.dz = lshr i32 %i.dy, 17
  %i.ea = add nuw nsw i32 %i.dz, %.sroa.05.1.i108.i ; 2 uses
  %i.eb = icmp samesign ult i32 %i.ea, 20
  tail call void @llvm.assume(i1 %i.eb), !noalias !1200
  %i.ec = trunc nuw nsw i32 %i.ea to i8
  %i.ed = add nuw nsw i8 %i.ec, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i: ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit110.i, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.0.0.i97.i = phi i8 [ %i.ed, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit110.i ], [ 1, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ], [ 4, %bb.x ] ; 2 uses
  %i.ee = zext nneg i8 %.sroa.0.0.i97.i to i64
  %i.ef = zext nneg i16 %.sroa.9.2 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i, %.preheader17.i
  %.sroa.0.0.i2529.i = phi i32 [ %i.em, %.preheader17.i ], [ %i.dl, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i ] ; 2 uses
  %.sroa.03.0.i2428.i = phi i64 [ %i.eh, %.preheader17.i ], [ %i.ee, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit98.i ]
  %i.eh = add nsw i64 %.sroa.03.0.i2428.i, -1     ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  %i.ej = urem i32 %.sroa.0.0.i2529.i, 10
  %i.ek = trunc nuw nsw i32 %i.ej to i8
  %i.el = or disjoint i8 %i.ek, 48
  store i8 %i.el, ptr %i.ei, align 1, !noalias !1201
  %i.em = udiv i32 %.sroa.0.0.i2529.i, 10
  %.not8.i26.i = icmp eq i64 %i.eh, 0
  br i1 %.not8.i26.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit27.i, label %.preheader17.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit27.i: ; preds = %.preheader17.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 6
  %i.eo = load i8, ptr %i.en, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.ep = icmp sgt i8 %i.eo, -1
  br i1 %i.ep, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit75.i, label %bb.y, !prof !8

bb.y:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit27.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1202
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit75.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit27.i
  %i.eq = zext nneg i8 %.sroa.0.0.i97.i to i16
  %i.er = add nuw nsw i16 %.sroa.9.2, %i.eq       ; 2 uses
  %i.es = zext nneg i16 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.es
  store i8 %i.eo, ptr %i.et, align 1, !noalias !1202
  %i.eu = add nuw nsw i16 %i.er, 1
  br label %bb.t

bb.z:                                             ; preds = %bb.t
  %i.ev = and i16 %i.k, 960
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit71.i, label %_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit73.i: ; preds = %bb.t
  %i.ex = zext nneg i16 %.sroa.9.3 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ex
  store i8 84, ptr %i.ey, align 1, !noalias !1203
  %i.ez = add nuw nsw i16 %.sroa.9.3, 1           ; 3 uses
  %i.fa = and i16 %i.k, 32
  %.not16.i = icmp eq i16 %i.fa, 0
  br i1 %.not16.i, label %bb.ab, label %bb.ac

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit71.i: ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fb = zext nneg i16 %.sroa.9.3 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fb
  store i8 84, ptr %i.fc, align 1, !noalias !1204
  %i.fd = zext nneg i16 %.sroa.9.3 to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store i8 48, ptr %i.ff, align 1, !noalias !1205
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit67.i, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit71.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1206
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit67.i: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit71.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i8 %i.fh, ptr %i.fj, align 1, !noalias !1206
  %i.fk = add nuw nsw i16 %.sroa.9.3, 3
  br label %_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

bb.ab:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit65.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit73.i
  %.sroa.9.4 = phi i16 [ %i.ez, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit73.i ], [ %i.gn, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit65.i ] ; 3 uses
  %i.fl = and i16 %i.k, 16
  %.not17.i = icmp eq i16 %i.fl, 0
  br i1 %.not17.i, label %bb.ai, label %bb.aj

bb.ac:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit73.i
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !alias.scope !1186, !noalias !1188, !noundef !6 ; 6 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = icmp ult i32 %i.fn, 10
  br i1 %i.fp, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = icmp ult i32 %i.fn, 100
  br i1 %i.fq, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fr = icmp ult i32 %i.fn, 1000
  br i1 %i.fr, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = icmp ult i32 %i.fn, 10000
  br i1 %i.fs, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ft = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %i.fo) #16, !noalias !1207 ; 2 uses
  %i.fu = icmp samesign ult i32 %i.ft, 20
  tail call void @llvm.assume(i1 %i.fu), !noalias !1207
  %i.fv = trunc nuw nsw i32 %i.ft to i8
  %i.fw = add nuw nsw i8 %i.fv, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.0.i99.i = phi i8 [ %i.fw, %bb.ag ], [ 1, %bb.ac ], [ 2, %bb.ad ], [ 3, %bb.ae ], [ 4, %bb.af ] ; 2 uses
  %i.fx = zext nneg i8 %.sroa.0.0.i99.i to i64
  %i.fy = zext nneg i16 %i.ez to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fy
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i, %.preheader16.i
  %.sroa.0.0.i31.i = phi i32 [ %i.gf, %.preheader16.i ], [ %i.fn, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i ] ; 2 uses
  %.sroa.03.0.i30.i = phi i64 [ %i.ga, %.preheader16.i ], [ %i.fx, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit100.i ]
  %i.ga = add nsw i64 %.sroa.03.0.i30.i, -1       ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  %i.gc = urem i32 %.sroa.0.0.i31.i, 10
  %i.gd = trunc nuw nsw i32 %i.gc to i8
  %i.ge = or disjoint i8 %i.gd, 48
  store i8 %i.ge, ptr %i.gb, align 1, !noalias !1208
  %i.gf = udiv i32 %.sroa.0.0.i31.i, 10
  %.not8.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not8.i.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i, label %.preheader16.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i: ; preds = %.preheader16.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.gi = icmp sgt i8 %i.gh, -1
  br i1 %i.gi, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit65.i, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1209
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit65.i: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intmEBa_.exit.i
  %i.gj = zext nneg i8 %.sroa.0.0.i99.i to i16
  %i.gk = add nuw nsw i16 %i.ez, %i.gj            ; 2 uses
  %i.gl = zext nneg i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gl
  store i8 %i.gh, ptr %i.gm, align 1, !noalias !1209
  %i.gn = add nuw nsw i16 %i.gk, 1
  br label %bb.ab

bb.ai:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit63.i, %bb.ab
  %.sroa.9.5 = phi i16 [ %.sroa.9.4, %bb.ab ], [ %i.hq, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit63.i ] ; 5 uses
  %i.go = and i16 %i.k, 7
  %.not18.i = icmp eq i16 %i.go, 0                ; 2 uses
  %i.gp = and i16 %i.k, 8
  %.not19.i = icmp eq i16 %i.gp, 0
  br i1 %.not19.i, label %bb.as, label %bb.at

bb.aj:                                            ; preds = %bb.ab
  %i.gq = load i64, ptr %1, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 6 uses
  %i.gr = icmp ult i64 %i.gq, 10
  br i1 %i.gr, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gs = icmp ult i64 %i.gq, 100
  br i1 %i.gs, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gt = icmp ult i64 %i.gq, 1000
  br i1 %i.gt, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gu = icmp ult i64 %i.gq, 10000
  br i1 %i.gu, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %i.gq) #16, !noalias !1210 ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gv, 20
  tail call void @llvm.assume(i1 %i.gw), !noalias !1210
  %i.gx = trunc nuw nsw i32 %i.gv to i8
  %i.gy = add nuw nsw i8 %i.gx, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i86.i = phi i8 [ %i.gy, %bb.an ], [ 1, %bb.aj ], [ 2, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ] ; 2 uses
  %i.gz = zext nneg i8 %.sroa.0.0.i86.i to i64    ; 2 uses
  %i.ha = zext nneg i16 %.sroa.9.4 to i64         ; 2 uses
  %i.hb = sub nuw nsw i64 78, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ha
  %.not.i51.i = icmp samesign ult i64 %i.hb, %i.gz
  br i1 %.not.i51.i, label %bb.ao, label %.preheader15.i, !prof !12

bb.ao:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1211
  unreachable

.preheader15.i:                                   ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i, %.preheader15.i
  %.sroa.0.0.i5333.i = phi i64 [ %i.hi, %.preheader15.i ], [ %i.gq, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i ] ; 2 uses
  %.sroa.03.0.i5232.i = phi i64 [ %i.hd, %.preheader15.i ], [ %i.gz, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit.i ]
  %i.hd = add nsw i64 %.sroa.03.0.i5232.i, -1     ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  %i.hf = urem i64 %.sroa.0.0.i5333.i, 10
  %i.hg = trunc nuw nsw i64 %i.hf to i8
  %i.hh = or disjoint i8 %i.hg, 48
  store i8 %i.hh, ptr %i.he, align 1, !noalias !1211
  %i.hi = udiv i64 %.sroa.0.0.i5333.i, 10
  %.not8.i54.i = icmp eq i64 %i.hd, 0
  br i1 %.not8.i54.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit55.i, label %.preheader15.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit55.i: ; preds = %.preheader15.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.hj = zext nneg i8 %.sroa.0.0.i86.i to i16
  %i.hk = add nuw nsw i16 %.sroa.9.4, %i.hj       ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.hm = load i8, ptr %i.hl, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.hn = icmp sgt i8 %i.hm, -1
  br i1 %i.hn, label %bb.aq, label %bb.ap, !prof !8

bb.ap:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit55.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1212
  unreachable

bb.aq:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit55.i
  %.not.i62.i = icmp eq i16 %i.hk, 78
  br i1 %.not.i62.i, label %bb.ar, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit63.i, !prof !9

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1212
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit63.i: ; preds = %bb.aq
  %i.ho = zext nneg i16 %i.hk to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ho
  store i8 %i.hm, ptr %i.hp, align 1, !noalias !1212
  %i.hq = add nuw nsw i16 %i.hk, 1
  br label %bb.ai

bb.as:                                            ; preds = %bb.ai
  br i1 %.not18.i, label %_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit, label %bb.au

bb.at:                                            ; preds = %bb.ai
  br i1 %.not18.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 2 uses
  %i.hv = udiv i64 %i.hu, 1000
  %i.hw = urem i64 %i.hu, 1000
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = mul nuw nsw i32 %i.hx, 1000000
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 2 uses
  %i.ib = udiv i64 %i.ia, 1000000000
  %i.ic = urem i64 %i.ia, 1000000000
  %i.id = trunc nuw nsw i64 %i.ic to i32
  %i.ie = add i64 %i.hv, %i.hs                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.hs
  br i1 %i.if, label %bb.bi, label %bb.be, !prof !9

bb.av:                                            ; preds = %bb.at
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 6 uses
  %i.ii = icmp ult i64 %i.ih, 10
  br i1 %i.ii, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ij = icmp ult i64 %i.ih, 100
  br i1 %i.ij, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ik = icmp ult i64 %i.ih, 1000
  br i1 %i.ik, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = icmp ult i64 %i.ih, 10000
  br i1 %i.il, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.im = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %i.ih) #16, !noalias !1213 ; 2 uses
  %i.in = icmp samesign ult i32 %i.im, 20
  tail call void @llvm.assume(i1 %i.in), !noalias !1213
  %i.io = trunc nuw nsw i32 %i.im to i8
  %i.ip = add nuw nsw i8 %i.io, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i87.i = phi i8 [ %i.ip, %bb.az ], [ 1, %bb.av ], [ 2, %bb.aw ], [ 3, %bb.ax ], [ 4, %bb.ay ] ; 2 uses
  %i.iq = zext nneg i8 %.sroa.0.0.i87.i to i64    ; 2 uses
  %i.ir = zext nneg i16 %.sroa.9.5 to i64         ; 2 uses
  %i.is = sub nuw nsw i64 78, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ir
  %.not.i46.i = icmp samesign ult i64 %i.is, %i.iq
  br i1 %.not.i46.i, label %bb.ba, label %.preheader14.i, !prof !12

bb.ba:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1214
  unreachable

.preheader14.i:                                   ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i, %.preheader14.i
  %.sroa.0.0.i4835.i = phi i64 [ %i.iz, %.preheader14.i ], [ %i.ih, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i ] ; 2 uses
  %.sroa.03.0.i4734.i = phi i64 [ %i.iu, %.preheader14.i ], [ %i.iq, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit88.i ]
  %i.iu = add nsw i64 %.sroa.03.0.i4734.i, -1     ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iu
  %i.iw = urem i64 %.sroa.0.0.i4835.i, 10
  %i.ix = trunc nuw nsw i64 %i.iw to i8
  %i.iy = or disjoint i8 %i.ix, 48
  store i8 %i.iy, ptr %i.iv, align 1, !noalias !1214
  %i.iz = udiv i64 %.sroa.0.0.i4835.i, 10
  %.not8.i49.i = icmp eq i64 %i.iu, 0
  br i1 %.not8.i49.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit50.i, label %.preheader14.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit50.i: ; preds = %.preheader14.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ja = zext nneg i8 %.sroa.0.0.i87.i to i16
  %i.jb = add nuw nsw i16 %.sroa.9.5, %i.ja       ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.je = icmp sgt i8 %i.jd, -1
  br i1 %i.je, label %bb.bc, label %bb.bb, !prof !8

bb.bb:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit50.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1215
  unreachable

bb.bc:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit50.i
  %.not.i60.i = icmp eq i16 %i.jb, 78
  br i1 %.not.i60.i, label %bb.bd, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit61.i, !prof !9

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1215
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit61.i: ; preds = %bb.bc
  %i.jf = zext nneg i16 %i.jb to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jf
  store i8 %i.jd, ptr %i.jg, align 1, !noalias !1215
  %i.jh = add nuw nsw i16 %i.jb, 1
  br label %_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

bb.be:                                            ; preds = %bb.au
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !1186, !noalias !1188, !noundef !6 ; 2 uses
  %i.jk = udiv i64 %i.jj, 1000000
  %i.jl = urem i64 %i.jj, 1000000
  %i.jm = add i64 %i.jk, %i.ie                    ; 4 uses
  %i.jn = icmp ult i64 %i.jm, %i.ie
  br i1 %i.jn, label %bb.bn, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.jo = trunc nuw nsw i64 %i.jl to i32
  %i.jp = mul nuw nsw i32 %i.jo, 1000
  %i.jq = add nuw nsw i32 %i.jp, %i.hy            ; 3 uses
  %i.jr = icmp samesign ugt i32 %i.jq, 999999999
  br i1 %i.jr, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.js = icmp eq i64 %i.jm, -1
  br i1 %i.js, label %bb.bn, label %bb.bh, !prof !9

bb.bh:                                            ; preds = %bb.bg
  %i.jt = add nuw i64 %i.jm, 1
  %i.ju = add nsw i32 %i.jq, -1000000000
  br label %bb.bj

bb.bi:                                            ; preds = %bb.au
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #15, !noalias !1192
  unreachable

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.4.0.i112.i = phi i32 [ %i.ju, %bb.bh ], [ %i.jq, %bb.bf ]
  %.sroa.0.0.i113.i = phi i64 [ %i.jt, %bb.bh ], [ %i.jm, %bb.bf ] ; 2 uses
  %i.jv = add i64 %.sroa.0.0.i113.i, %i.ib        ; 4 uses
  %i.jw = icmp ult i64 %i.jv, %.sroa.0.0.i113.i
  br i1 %i.jw, label %bb.bv, label %bb.bk, !prof !9

bb.bk:                                            ; preds = %bb.bj
  %i.jx = add nuw nsw i32 %.sroa.4.0.i112.i, %i.id ; 3 uses
  %i.jy = icmp samesign ugt i32 %i.jx, 999999999
  br i1 %i.jy, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.jz = icmp eq i64 %i.jv, -1
  br i1 %i.jz, label %bb.bv, label %bb.bm, !prof !9

bb.bm:                                            ; preds = %bb.bl
  %i.ka = add nuw i64 %i.jv, 1
  %i.kb = add nsw i32 %i.jx, -1000000000
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bg, %bb.be
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #15, !noalias !1192
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.4.0.i115.i = phi i32 [ %i.kb, %bb.bm ], [ %i.jx, %bb.bk ] ; 8 uses
  %.sroa.0.0.i116.i = phi i64 [ %i.ka, %bb.bm ], [ %i.jv, %bb.bk ] ; 8 uses
  %i.kc = icmp ult i64 %.sroa.0.0.i116.i, 10
  br i1 %i.kc, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kd = icmp ult i64 %.sroa.0.0.i116.i, 100
  br i1 %i.kd, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ke = icmp ult i64 %.sroa.0.0.i116.i, 1000
  br i1 %i.ke, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kf = icmp ult i64 %.sroa.0.0.i116.i, 10000
  br i1 %i.kf, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kg = icmp ugt i64 %.sroa.0.0.i116.i, 9999999999 ; 2 uses
  %i.kh = udiv i64 %.sroa.0.0.i116.i, 10000000000
  %.sroa.05.0.i.i = select i1 %i.kg, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i118.i = select i1 %i.kg, i64 %i.kh, i64 %.sroa.0.0.i116.i ; 3 uses
  %i.ki = icmp samesign ugt i64 %.sroa.0.0.i118.i, 99999
  br i1 %i.ki, label %bb.bt, label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit121.i

bb.bt:                                            ; preds = %bb.bs
  %i.kj = udiv i64 %.sroa.0.0.i118.i, 100000
  %i.kk = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit121.i

_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit121.i: ; preds = %bb.bt, %bb.bs
  %.sroa.05.1.i119.i = phi i32 [ %i.kk, %bb.bt ], [ %.sroa.05.0.i.i, %bb.bs ]
  %.sroa.0.1.i120.i = phi i64 [ %i.kj, %bb.bt ], [ %.sroa.0.0.i118.i, %bb.bs ]
  %i.kl = trunc nuw nsw i64 %.sroa.0.1.i120.i to i32 ; 4 uses
  %i.km = add nuw nsw i32 %i.kl, 393206
  %i.kn = add nuw nsw i32 %i.kl, 524188
  %i.ko = and i32 %i.km, %i.kn
  %i.kp = add nuw nsw i32 %i.kl, 916504
  %i.kq = add nuw nsw i32 %i.kl, 514288
  %i.kr = and i32 %i.kp, %i.kq
  %i.ks = xor i32 %i.ko, %i.kr
  %i.kt = lshr i32 %i.ks, 17
  %i.ku = add nuw nsw i32 %i.kt, %.sroa.05.1.i119.i ; 2 uses
  %i.kv = icmp samesign ult i32 %i.ku, 20
  tail call void @llvm.assume(i1 %i.kv), !noalias !1216
  %i.kw = trunc nuw nsw i32 %i.ku to i8
  %i.kx = add nuw nsw i8 %i.kw, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i: ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit121.i, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.sroa.0.0.i89.i = phi i8 [ %i.kx, %_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl.exit121.i ], [ 1, %bb.bo ], [ 2, %bb.bp ], [ 3, %bb.bq ], [ 4, %bb.br ] ; 2 uses
  %i.ky = zext nneg i8 %.sroa.0.0.i89.i to i64    ; 2 uses
  %i.kz = zext nneg i16 %.sroa.9.5 to i64         ; 2 uses
  %i.la = sub nuw nsw i64 78, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kz
  %.not.i42.i = icmp samesign ult i64 %i.la, %i.ky
  br i1 %.not.i42.i, label %bb.bu, label %.preheader.i, !prof !12

bb.bu:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1217
  unreachable

.preheader.i:                                     ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i, %.preheader.i
  %.sroa.0.0.i4437.i = phi i64 [ %i.lh, %.preheader.i ], [ %.sroa.0.0.i116.i, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i ] ; 2 uses
  %.sroa.03.0.i4336.i = phi i64 [ %i.lc, %.preheader.i ], [ %i.ky, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit90.i ]
  %i.lc = add nsw i64 %.sroa.03.0.i4336.i, -1     ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lc
  %i.le = urem i64 %.sroa.0.0.i4437.i, 10
  %i.lf = trunc nuw nsw i64 %i.le to i8
  %i.lg = or disjoint i8 %i.lf, 48
  store i8 %i.lg, ptr %i.ld, align 1, !noalias !1217
  %i.lh = udiv i64 %.sroa.0.0.i4437.i, 10
  %.not8.i45.i = icmp eq i64 %i.lc, 0
  br i1 %.not8.i45.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit.i, label %.preheader.i

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit.i: ; preds = %.preheader.i
  %i.li = zext nneg i8 %.sroa.0.0.i89.i to i16
  %i.lj = add nuw nsw i16 %.sroa.9.5, %i.li       ; 4 uses
  %i.lk = icmp eq i32 %.sroa.4.0.i115.i, 0
  br i1 %i.lk, label %bb.bw, label %bb.ca

bb.bv:                                            ; preds = %bb.bl, %bb.bj
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #15, !noalias !1192
  unreachable

bb.bw:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit.i
  %i.ll = phi i16 [ %i.np, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit.i ], [ %i.lj, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.ln = load i8, ptr %i.lm, align 1, !noalias !1192, !noundef !6 ; 2 uses
  %i.lo = icmp sgt i8 %i.ln, -1
  br i1 %i.lo, label %bb.by, label %bb.bx, !prof !8

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1218
  unreachable

bb.by:                                            ; preds = %bb.bw
  %.not.i58.i = icmp eq i16 %i.ll, 78
  br i1 %.not.i58.i, label %bb.bz, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit59.i, !prof !9

bb.bz:                                            ; preds = %bb.by
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1218
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit59.i: ; preds = %bb.by
  %i.lp = zext nneg i16 %i.ll to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lp
  store i8 %i.ln, ptr %i.lq, align 1, !noalias !1218
  %i.lr = add nuw nsw i16 %i.ll, 1
  br label %_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter15print_span_impl.exit

bb.ca:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit.i
  %.not.i57.i = icmp eq i16 %i.lj, 78
  br i1 %.not.i57.i, label %bb.cb, label %.split.i, !prof !9

bb.cb:                                            ; preds = %bb.ca
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1219
  unreachable

.split.i:                                         ; preds = %bb.ca
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter21print_signed_duration:bb.a
  %.sroa.03.0 = call i32 @llvm.abs.i32(i32 %.sroa.04.0, i1 false) ; 4 uses
  %i.l = icmp ult i32 %.sroa.03.0, 1000000000
  br i1 %i.l, label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = udiv i32 %.sroa.03.0, 1000000000
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nuw i64 %.sroa.02.0, %i.n
  %i.p = urem i32 %.sroa.03.0, 1000000000
  br label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit

_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i32 [ %i.p, %bb.d ], [ %.sroa.03.0, %bb.c ]
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.02.0, %bb.c ]
  %.val = load ptr, ptr %0, align 8
  call fastcc void @_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr %.val, i64 %.sroa.0.0.i, i32 %.sroa.3.0.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.r = load i16, ptr %i.d, align 8, !noundef !6
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !6, !nonnull !6
  %i.v = call { i64, ptr } %i.u(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter23print_unsigned_duration(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [35 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 35, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.d, align 8
  %.val = load ptr, ptr %0, align 8
  %.val1 = load i64, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i32, ptr %i.e, align 8
  call fastcc void @_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr %.val, i64 %.val1, i32 %.val2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.g = load i16, ptr %i.d, align 8, !noundef !6
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  %i.k = call { i64, ptr } %i.j(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB5_11SpanPrinter28print_unsigned_duration_impl(ptr nofree readonly captures(none) %.0.val, i64 %.0.val1, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1247, !noundef !6 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !1247, !noundef !6 ; 3 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %.not.i30 = icmp eq i64 %i.c, %i.f
  br i1 %.not.i30, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1247
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31: ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1247, !nonnull !6, !noundef !6 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 80, ptr %i.h, align 1, !noalias !1247
  %i.i = add i16 %i.e, 1                          ; 2 uses
  store i16 %i.i, ptr %i.d, align 8, !alias.scope !1247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %.not.i28 = icmp eq i64 %i.c, %i.j
  br i1 %.not.i28, label %bb.c, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29, !prof !9

bb.c:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1248
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit31
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  store i8 84, ptr %i.k, align 1, !noalias !1248
  %i.l = add i16 %i.e, 2                          ; 5 uses
  store i16 %i.l, ptr %i.d, align 8, !alias.scope !1248
  %i.m = icmp ugt i64 %.0.val1, 59
  br i1 %i.m, label %bb.e, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit: ; preds = %bb.p, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29
  %i.n = phi i16 [ %i.bj, %bb.p ], [ %i.l, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29 ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.zext4, %bb.p ], [ %.0.val1, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.o = icmp samesign ult i64 %.sroa.0.0, 10
  %spec.select50 = select i1 %i.o, i8 1, i8 2     ; 2 uses
  %i.p = zext nneg i8 %spec.select50 to i64       ; 2 uses
  %i.q = zext i16 %i.n to i64                     ; 2 uses
  %i.r = sub nuw i64 %i.c, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %.not.i15 = icmp ult i64 %i.r, %i.p
  br i1 %.not.i15, label %bb.d, label %.preheader, !prof !12

bb.d:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1249
  unreachable

.preheader:                                       ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit, %.preheader
  %.sroa.0.0.i1714 = phi i64 [ %i.y, %.preheader ], [ %.sroa.0.0, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ] ; 2 uses
  %.sroa.03.0.i1613 = phi i64 [ %i.t, %.preheader ], [ %i.p, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit ]
  %i.t = add nsw i64 %.sroa.03.0.i1613, -1        ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = urem i64 %.sroa.0.0.i1714, 10
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = or disjoint i8 %i.w, 48
  store i8 %i.x, ptr %i.u, align 1, !noalias !1249
  %i.y = udiv i64 %.sroa.0.0.i1714, 10
  %.not8.i18 = icmp eq i64 %i.t, 0
  br i1 %.not8.i18, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19, label %.preheader

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19: ; preds = %.preheader
  %i.z = zext nneg i8 %spec.select50 to i16
  %i.aa = add i16 %i.n, %i.z                      ; 4 uses
  store i16 %i.aa, ptr %i.d, align 8, !alias.scope !1249
  %i.ab = icmp eq i32 %.8.val, 0
  br i1 %i.ab, label %bb.v, label %bb.z

bb.e:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit29
  %i.ac = urem i64 %.0.val1, 3600                 ; 3 uses
  %i.ad = udiv i64 %.0.val1, 3600                 ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.ac to i16    ; 2 uses
  %i.ae = udiv i16 %.lhs.trunc, 60
  %.zext = trunc nuw nsw i16 %i.ae to i8
  %i.af = urem i16 %.lhs.trunc, 60                ; 2 uses
  %.zext4 = zext nneg i16 %i.af to i64
  %i.ag = icmp ult i64 %.0.val1, 3600
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27, %bb.e
  %i.ah = phi i16 [ %i.bi, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27 ], [ %i.l, %bb.e ] ; 3 uses
  %i.ai = icmp samesign ult i64 %i.ac, 60
  br i1 %i.ai, label %bb.p, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.aj = icmp ult i64 %.0.val1, 36000
  br i1 %i.aj, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %.0.val1, 360000
  br i1 %i.ak, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp ult i64 %.0.val1, 3600000
  br i1 %i.al, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ult i64 %.0.val1, 36000000
  br i1 %i.am, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call fastcc noundef i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef %i.ad) #16, !noalias !1250 ; 2 uses
  %i.ao = icmp samesign ult i32 %i.an, 20
  tail call void @llvm.assume(i1 %i.ao), !noalias !1250
  %i.ap = trunc nuw nsw i32 %i.an to i8
  %i.aq = add nuw nsw i8 %i.ap, 1
  br label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i33 = phi i8 [ %i.aq, %bb.k ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ] ; 2 uses
  %i.ar = zext nneg i8 %.sroa.0.0.i33 to i64      ; 2 uses
  %i.as = zext i16 %i.l to i64                    ; 2 uses
  %i.at = sub nuw i64 %i.c, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.as
  %.not.i10 = icmp ult i64 %i.at, %i.ar
  br i1 %.not.i10, label %bb.l, label %.preheader7, !prof !12

bb.l:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1250
  unreachable

.preheader7:                                      ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34, %.preheader7
  %.sroa.0.0.i1210 = phi i64 [ %i.ba, %.preheader7 ], [ %i.ad, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34 ] ; 2 uses
  %.sroa.03.0.i119 = phi i64 [ %i.av, %.preheader7 ], [ %i.ar, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit34 ]
  %i.av = add nsw i64 %.sroa.03.0.i119, -1        ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = urem i64 %.sroa.0.0.i1210, 10
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = or disjoint i8 %i.ay, 48
  store i8 %i.az, ptr %i.aw, align 1, !noalias !1250
  %i.ba = udiv i64 %.sroa.0.0.i1210, 10
  %.not8.i13 = icmp eq i64 %i.av, 0
  br i1 %.not8.i13, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14, label %.preheader7

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14: ; preds = %.preheader7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bb = zext nneg i8 %.sroa.0.0.i33 to i16
  %i.bc = add i16 %i.l, %i.bb                     ; 3 uses
  store i16 %i.bc, ptr %i.d, align 8, !alias.scope !1250
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1251
  unreachable

bb.n:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit14
  %i.bg = zext i16 %i.bc to i64                   ; 2 uses
  %.not.i26 = icmp eq i64 %i.c, %i.bg
  br i1 %.not.i26, label %bb.o, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1251
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit27: ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !noalias !1251
  %i.bi = add i16 %i.bc, 1                        ; 2 uses
  store i16 %i.bi, ptr %i.d, align 8, !alias.scope !1251
  br label %bb.f

bb.p:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25, %bb.f
  %i.bj = phi i16 [ %i.cd, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25 ], [ %i.ah, %bb.f ]
  %i.bk = icmp eq i16 %i.af, 0
  %i.bl = icmp eq i32 %.8.val, 0
  %or.cond = and i1 %i.bl, %i.bk
  br i1 %or.cond, label %bb.u, label %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit

_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36: ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.bm = icmp samesign ult i64 %i.ac, 600
  %spec.select = select i1 %i.bm, i8 1, i8 2      ; 2 uses
  %i.bn = zext nneg i8 %spec.select to i64        ; 2 uses
  %i.bo = zext i16 %i.ah to i64                   ; 2 uses
  %i.bp = sub nuw i64 %i.c, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bo
  %.not.i = icmp ult i64 %i.bp, %i.bn
  br i1 %.not.i, label %bb.q, label %.preheader6, !prof !12

bb.q:                                             ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !1252
  unreachable

.preheader6:                                      ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36, %.preheader6
  %.sroa.0.0.i12 = phi i8 [ %i.bv, %.preheader6 ], [ %.zext, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36 ] ; 2 uses
  %.sroa.03.0.i11 = phi i64 [ %i.br, %.preheader6 ], [ %i.bn, %_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer6digits.exit36 ]
  %i.br = add nsw i64 %.sroa.03.0.i11, -1         ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = urem i8 %.sroa.0.0.i12, 10
  %i.bu = or disjoint i8 %i.bt, 48
  store i8 %i.bu, ptr %i.bs, align 1, !noalias !1252
  %i.bv = udiv i8 %.sroa.0.0.i12, 10
  %.not8.i = icmp eq i64 %i.br, 0
  br i1 %.not8.i, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit, label %.preheader6

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit: ; preds = %.preheader6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bw = zext nneg i8 %spec.select to i16
  %i.bx = add i16 %i.ah, %i.bw                    ; 3 uses
  store i16 %i.bx, ptr %i.d, align 8, !alias.scope !1252
  %i.by = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1253
  unreachable

bb.s:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit
  %i.cb = zext i16 %i.bx to i64                   ; 2 uses
  %.not.i24 = icmp eq i64 %i.c, %i.cb
  br i1 %.not.i24, label %bb.t, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25, !prof !9

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1253
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit25: ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1, !noalias !1253
  %i.cd = add i16 %i.bx, 1                        ; 2 uses
  store i16 %i.cd, ptr %i.d, align 8, !alias.scope !1253
  br label %bb.p

bb.u:                                             ; preds = %bb.p, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23
  ret void

bb.v:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19
  %i.ce = phi i16 [ %i.ej, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit ], [ %i.aa, %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #15, !noalias !1254
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ci = zext i16 %i.ce to i64                   ; 2 uses
  %.not.i22 = icmp eq i64 %i.c, %i.ci
  br i1 %.not.i22, label %bb.y, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23, !prof !9

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1254
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit23: ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ci
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !1254
  %i.ck = add i16 %i.ce, 1
  store i16 %i.ck, ptr %i.d, align 8, !alias.scope !1254
  br label %bb.u

bb.z:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_intyEBa_.exit19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.cl = zext i16 %i.aa to i64                   ; 2 uses
  %.not.i21 = icmp eq i64 %i.c, %i.cl
  br i1 %.not.i21, label %bb.aa, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !1255
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cl
  store i8 46, ptr %i.cm, align 1, !noalias !1255
  %i.cn = add i16 %i.aa, 1                        ; 3 uses
  store i16 %i.cn, ptr %i.d, align 8, !alias.scope !1255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1256
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = urem i32 %.8.val, 10                    ; 2 uses
  %i.cq = trunc nuw nsw i32 %i.cp to i8
  %i.cr = or disjoint i8 %i.cq, 48
  store i8 %i.cr, ptr %i.co, align 1, !noalias !1256
  %i.cs = insertelement <4 x i32> poison, i32 %.8.val, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cu = udiv <4 x i32> %i.ct, <i32 10000, i32 1000, i32 100, i32 10>
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cw = urem <4 x i32> %i.cu, splat (i32 10)    ; 5 uses
  %i.cx = trunc nuw nsw <4 x i32> %i.cw to <4 x i8>
  %i.cy = or disjoint <4 x i8> %i.cx, splat (i8 48)
  store <4 x i8> %i.cy, ptr %i.cv, align 1, !noalias !1256
  %i.cz = udiv i32 %.8.val, 100000
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.lhs.trunc42 = trunc nuw i32 %i.cz to i16
  %i.db = urem i16 %.lhs.trunc42, 10              ; 2 uses
  %i.dc = trunc nuw nsw i16 %i.db to i8
  %i.dd = or disjoint i8 %i.dc, 48
  store i8 %i.dd, ptr %i.da, align 1, !noalias !1256
  %i.de = udiv i32 %.8.val, 1000000
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.lhs.trunc44 = trunc nuw nsw i32 %i.de to i16
  %i.dg = urem i16 %.lhs.trunc44, 10              ; 2 uses
  %i.dh = trunc nuw nsw i16 %i.dg to i8
  %i.di = or disjoint i8 %i.dh, 48
  store i8 %i.di, ptr %i.df, align 1, !noalias !1256
  %i.dj = udiv i32 %.8.val, 10000000
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.lhs.trunc46 = trunc nuw nsw i32 %i.dj to i16
  %i.dl = urem i16 %.lhs.trunc46, 10              ; 2 uses
  %i.dm = trunc nuw nsw i16 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48
  store i8 %i.dn, ptr %i.dk, align 1, !noalias !1256
  %i.do = udiv i32 %.8.val, 100000000
  %.lhs.trunc48 = trunc nuw nsw i32 %i.do to i8
  %i.dp = urem i8 %.lhs.trunc48, 10               ; 2 uses
  %i.dq = or disjoint i8 %i.dp, 48
  store i8 %i.dq, ptr %i.a, align 1, !noalias !1256
  %i.dr = icmp eq i32 %i.cp, 0
  br i1 %i.dr, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.ds = extractelement <4 x i32> %i.cw, i64 3
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.du = extractelement <4 x i32> %i.cw, i64 2
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dw = extractelement <4 x i32> %i.cw, i64 1
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dy = extractelement <4 x i32> %i.cw, i64 0
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp eq i16 %i.db, 0
  br i1 %i.ea, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.eb = icmp eq i16 %i.dg, 0
  br i1 %i.eb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ec = icmp eq i16 %i.dl, 0
  br i1 %i.ec, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ed = icmp ne i8 %i.dp, 0
  %spec.select51 = zext i1 %i.ed to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %.sroa.06.0.i.lcssa = phi i8 [ 3, %bb.ag ], [ 9, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit ], [ 8, %bb.ab ], [ %spec.select51, %bb.ai ], [ 7, %bb.ac ], [ 4, %bb.af ], [ 6, %bb.ad ], [ 2, %bb.ah ], [ 5, %bb.ae ] ; 2 uses
  %i.ee = zext nneg i8 %.sroa.06.0.i.lcssa to i64 ; 3 uses
  %i.ef = zext i16 %i.cn to i64                   ; 2 uses
  %i.eg = sub nuw i64 %i.c, %i.ef
  %.not20.i = icmp ult i64 %i.eg, %i.ee
  br i1 %.not20.i, label %bb.ak, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, !prof !9

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15, !noalias !1256
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit: ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ef
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.eh, i64 noundef %i.ee, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !1256
  %i.ei = zext nneg i8 %.sroa.06.0.i.lcssa to i16
  %i.ej = add i16 %i.cn, %i.ei                    ; 2 uses
  store i16 %i.ej, ptr %i.d, align 8, !alias.scope !1256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1256
  br label %bb.v
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 23) i32 @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp9int_log108u64_impl(i64 noundef range(i64 10000, 0) %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %0, 9999999999              ; 2 uses
  %i.b = udiv i64 %0, 10000000000
  %.sroa.05.0 = select i1 %i.a, i32 10, i32 0     ; 2 uses
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %0   ; 3 uses
  %i.c = icmp samesign ugt i64 %.sroa.0.0, 99999
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 %.sroa.0.0, 100000
  %i.e = or disjoint i32 %.sroa.05.0, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.1 = phi i32 [ %i.e, %bb.b ], [ %.sroa.05.0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %i.d, %bb.b ], [ %.sroa.0.0, %bb.a ]
  %i.f = trunc nuw nsw i64 %.sroa.0.1 to i32      ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 393206
  %i.h = add nuw nsw i32 %i.f, 524188
  %i.i = and i32 %i.g, %i.h
  %i.j = add nuw nsw i32 %i.f, 916504
  %i.k = add nuw nsw i32 %i.f, 514288
end_hunk_4
