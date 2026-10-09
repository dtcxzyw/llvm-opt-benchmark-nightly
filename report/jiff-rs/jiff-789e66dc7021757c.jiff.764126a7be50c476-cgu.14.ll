Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.14?download=true
inline.NumInlined: 340
inline.NumDeleted: 162
begin_hunk_0
@37 = private unnamed_addr constant [4 x i8] c"\00\00\00\DF", align 4
@38 = private unnamed_addr constant [4 x i8] c"\00\00\00_", align 4
@39 = private unnamed_addr constant [75 x i8] c"Cparameter 'floating point seconds' is not in the required range of \C0\03..=\C0\00", align 1
@40 = private unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\E0\C3", align 8
@41 = private unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\E0C", align 8
@42 = private unnamed_addr constant [69 x i8] c"negative signed durations cannot be converted to an unsigned duration", align 1
@43 = private unnamed_addr constant [87 x i8] c"\19cannot convert non-fixed \C0: time zone to offset without a timestamp or civil datetime\00", align 1
@44 = private unnamed_addr constant [91 x i8] c"parsed hour component of time zone offset, but found colon after hours which is not allowed", align 1
@45 = private unnamed_addr constant [43 x i8] c"expected UTC offset, but found end of input", align 1
@46 = private unnamed_addr constant [58 x i8] c"expected two digit hour after sign, but found end of input", align 1
@47 = private unnamed_addr constant [61 x i8] c"expected two digit minute after hours, but found end of input", align 1
@48 = private unnamed_addr constant [51 x i8] c"expected UTC numeric offset, but found end of input", align 1
@49 = private unnamed_addr constant [63 x i8] c"expected two digit second after minutes, but found end of input", align 1
@50 = private unnamed_addr constant [43 x i8] c"failed to parse hours in UTC numeric offset", align 1
@51 = private unnamed_addr constant [45 x i8] c"failed to parse minutes in UTC numeric offset", align 1
@52 = private unnamed_addr constant [45 x i8] c"failed to parse seconds in UTC numeric offset", align 1
@53 = private unnamed_addr constant [56 x i8] c"failed to parse fractional seconds in UTC numeric offset", align 1
@54 = private unnamed_addr constant [42 x i8] c"failed to parse sign in UTC numeric offset", align 1
@55 = private unnamed_addr constant [55 x i8] c"expected `+` or `-` sign at start of UTC numeric offset", align 1
@56 = private unnamed_addr constant [87 x i8] c"parsed hour component of time zone offset, but could not find required minute component", align 1
@57 = private unnamed_addr constant [99 x i8] c"parsed hour and minute components of time zone offset, but could not find required second component", align 1
@58 = private unnamed_addr constant [86 x i8] c"parsed hour component of time zone offset, but could not find required colon separator", align 1
@59 = private unnamed_addr constant [52 x i8] c"failed to parse hours (requires a two digit integer)", align 1
@60 = private unnamed_addr constant [54 x i8] c"failed to parse minutes (requires a two digit integer)", align 1
@61 = private unnamed_addr constant [54 x i8] c"failed to parse seconds (requires a two digit integer)", align 1
@62 = private unnamed_addr constant [107 x i8] c"due to precision loss from fractional seconds, time zone offset is rounded to a value that is out of bounds", align 1
@63 = private unnamed_addr constant [59 x i8] c"failed to parse separator after hours in UTC numeric offset", align 1
@64 = private unnamed_addr constant [61 x i8] c"failed to parse separator after minutes in UTC numeric offset", align 1
@65 = private unnamed_addr constant [110 x i8] c"subminute precision for UTC numeric offset is not enabled in this context (must provide only integral minutes)", align 1
@66 = private unnamed_addr constant [121 x i8] c"subsecond precision for UTC numeric offset is not enabled in this context (must provide only integral minutes or seconds)", align 1
@67 = private unnamed_addr constant [99 x i8] c"\07found `\C0X` where a numeric UTC offset was expected (this context does not permit the Zulu offset)\00", align 1
@68 = private unnamed_addr constant [55 x i8] c"`TZ` environment variable set, but failed to read value", align 1
@69 = private unnamed_addr constant [126 x i8] c"failed to read `TZ` environment variable value as a TZif file after attempting (and failing) a tzdb lookup for that same value", align 1
@70 = private unnamed_addr constant [105 x i8] c"failed to parse `TZ` environment variable as either a POSIX time zone transition string or as valid UTF-8", align 1
@71 = private unnamed_addr constant [31 x i8] c"failed to find system time zone", align 1
@72 = private unnamed_addr constant [49 x i8] c"found invalid TZif data in unnamed time zone file", align 1
@73 = private unnamed_addr constant [52 x i8] c"failed to read TZif data from unnamed time zone file", align 1
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b7CenturyENtB6_5Debug3fmtB1s_ }>, align 8
@75 = private unnamed_addr constant [7 x i8] c"Century", align 1
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b18CivilDayNanosecondENtB6_5Debug3fmtB1s_ }>, align 8
@77 = private unnamed_addr constant [18 x i8] c"CivilDayNanosecond", align 1
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondENtB6_5Debug3fmtB1s_ }>, align 8
@79 = private unnamed_addr constant [14 x i8] c"CivilDaySecond", align 1
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b3DayENtB6_5Debug3fmtB1s_ }>, align 8
@81 = private unnamed_addr constant [3 x i8] c"Day", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b9DayOfYearENtB6_5Debug3fmtB1s_ }>, align 8
@83 = private unnamed_addr constant [9 x i8] c"DayOfYear", align 1
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b4HourENtB6_5Debug3fmtB1s_ }>, align 8
@85 = private unnamed_addr constant [4 x i8] c"Hour", align 1
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b6Hour12ENtB6_5Debug3fmtB1s_ }>, align 8
@87 = private unnamed_addr constant [6 x i8] c"Hour12", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b7ISOWeekENtB6_5Debug3fmtB1s_ }>, align 8
@89 = private unnamed_addr constant [7 x i8] c"ISOWeek", align 1
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b7ISOYearENtB6_5Debug3fmtB1s_ }>, align 8
@91 = private unnamed_addr constant [7 x i8] c"ISOYear", align 1
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b9IncrementENtB6_5Debug3fmtB1s_ }>, align 8
@93 = private unnamed_addr constant [9 x i8] c"Increment", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32ENtB6_5Debug3fmtB1s_ }>, align 8
@95 = private unnamed_addr constant [11 x i8] c"Increment32", align 1
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b10LeapSecondENtB6_5Debug3fmtB1s_ }>, align 8
@97 = private unnamed_addr constant [10 x i8] c"LeapSecond", align 1
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11MicrosecondENtB6_5Debug3fmtB1s_ }>, align 8
@99 = private unnamed_addr constant [11 x i8] c"Microsecond", align 1
@100 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11MillisecondENtB6_5Debug3fmtB1s_ }>, align 8
@101 = private unnamed_addr constant [11 x i8] c"Millisecond", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b6MinuteENtB6_5Debug3fmtB1s_ }>, align 8
@103 = private unnamed_addr constant [6 x i8] c"Minute", align 1
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b5MonthENtB6_5Debug3fmtB1s_ }>, align 8
@105 = private unnamed_addr constant [5 x i8] c"Month", align 1
@106 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b10NanosecondENtB6_5Debug3fmtB1s_ }>, align 8
@107 = private unnamed_addr constant [10 x i8] c"Nanosecond", align 1
@108 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b10NthWeekdayENtB6_5Debug3fmtB1s_ }>, align 8
@109 = private unnamed_addr constant [10 x i8] c"NthWeekday", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11OffsetHoursENtB6_5Debug3fmtB1s_ }>, align 8
@111 = private unnamed_addr constant [11 x i8] c"OffsetHours", align 1
@112 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b13OffsetMinutesENtB6_5Debug3fmtB1s_ }>, align 8
@113 = private unnamed_addr constant [13 x i8] c"OffsetMinutes", align 1
@114 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b13OffsetSecondsENtB6_5Debug3fmtB1s_ }>, align 8
@115 = private unnamed_addr constant [13 x i8] c"OffsetSeconds", align 1
@116 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b18OffsetTotalSecondsENtB6_5Debug3fmtB1s_ }>, align 8
@117 = private unnamed_addr constant [18 x i8] c"OffsetTotalSeconds", align 1
@118 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b6SecondENtB6_5Debug3fmtB1s_ }>, align 8
@119 = private unnamed_addr constant [6 x i8] c"Second", align 1
@120 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b21SignedDurationSecondsENtB6_5Debug3fmtB1s_ }>, align 8
@121 = private unnamed_addr constant [21 x i8] c"SignedDurationSeconds", align 1
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanYearsENtB6_5Debug3fmtB1s_ }>, align 8
@123 = private unnamed_addr constant [9 x i8] c"SpanYears", align 1
@124 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b10SpanMonthsENtB6_5Debug3fmtB1s_ }>, align 8
@125 = private unnamed_addr constant [10 x i8] c"SpanMonths", align 1
@126 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanWeeksENtB6_5Debug3fmtB1s_ }>, align 8
@127 = private unnamed_addr constant [9 x i8] c"SpanWeeks", align 1
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysENtB6_5Debug3fmtB1s_ }>, align 8
@129 = private unnamed_addr constant [8 x i8] c"SpanDays", align 1
@130 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b9SpanHoursENtB6_5Debug3fmtB1s_ }>, align 8
@131 = private unnamed_addr constant [9 x i8] c"SpanHours", align 1
@132 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanMinutesENtB6_5Debug3fmtB1s_ }>, align 8
@133 = private unnamed_addr constant [11 x i8] c"SpanMinutes", align 1
@134 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b11SpanSecondsENtB6_5Debug3fmtB1s_ }>, align 8
@135 = private unnamed_addr constant [11 x i8] c"SpanSeconds", align 1
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMillisecondsENtB6_5Debug3fmtB1s_ }>, align 8
@137 = private unnamed_addr constant [16 x i8] c"SpanMilliseconds", align 1
@138 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SpanMicrosecondsENtB6_5Debug3fmtB1s_ }>, align 8
@139 = private unnamed_addr constant [16 x i8] c"SpanMicroseconds", align 1
@140 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b12SpanMultipleENtB6_5Debug3fmtB1s_ }>, align 8
@141 = private unnamed_addr constant [12 x i8] c"SpanMultiple", align 1
@142 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b15SpanNanosecondsENtB6_5Debug3fmtB1s_ }>, align 8
@143 = private unnamed_addr constant [15 x i8] c"SpanNanoseconds", align 1
@144 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16SubsecNanosecondENtB6_5Debug3fmtB1s_ }>, align 8
@145 = private unnamed_addr constant [16 x i8] c"SubsecNanosecond", align 1
@146 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b22SignedSubsecNanosecondENtB6_5Debug3fmtB1s_ }>, align 8
@147 = private unnamed_addr constant [22 x i8] c"SignedSubsecNanosecond", align 1
@148 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysENtB6_5Debug3fmtB1s_ }>, align 8
@149 = private unnamed_addr constant [13 x i8] c"UnixEpochDays", align 1
@150 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b21UnixEpochMillisecondsENtB6_5Debug3fmtB1s_ }>, align 8
@151 = private unnamed_addr constant [21 x i8] c"UnixEpochMilliseconds", align 1
@152 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b21UnixEpochMicrosecondsENtB6_5Debug3fmtB1s_ }>, align 8
@153 = private unnamed_addr constant [21 x i8] c"UnixEpochMicroseconds", align 1
@154 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16UnixEpochSecondsENtB6_5Debug3fmtB1s_ }>, align 8
@155 = private unnamed_addr constant [16 x i8] c"UnixEpochSeconds", align 1
@156 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b7WeekNumENtB6_5Debug3fmtB1s_ }>, align 8
@157 = private unnamed_addr constant [7 x i8] c"WeekNum", align 1
@158 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b17WeekdayMondayZeroENtB6_5Debug3fmtB1s_ }>, align 8
@159 = private unnamed_addr constant [17 x i8] c"WeekdayMondayZero", align 1
@160 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16WeekdayMondayOneENtB6_5Debug3fmtB1s_ }>, align 8
@161 = private unnamed_addr constant [16 x i8] c"WeekdayMondayOne", align 1
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b17WeekdaySundayZeroENtB6_5Debug3fmtB1s_ }>, align 8
@163 = private unnamed_addr constant [17 x i8] c"WeekdaySundayZero", align 1
@164 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b16WeekdaySundayOneENtB6_5Debug3fmtB1s_ }>, align 8
@165 = private unnamed_addr constant [16 x i8] c"WeekdaySundayOne", align 1
@166 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearENtB6_5Debug3fmtB1s_ }>, align 8
@167 = private unnamed_addr constant [4 x i8] c"Year", align 1
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b6YearCEENtB6_5Debug3fmtB1s_ }>, align 8
@169 = private unnamed_addr constant [6 x i8] c"YearCE", align 1
@170 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b7YearBCEENtB6_5Debug3fmtB1s_ }>, align 8
@171 = private unnamed_addr constant [7 x i8] c"YearBCE", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b12YearTwoDigitENtB6_5Debug3fmtB1s_ }>, align 8
@173 = private unnamed_addr constant [12 x i8] c"YearTwoDigit", align 1
@174 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b19ZonedDayNanosecondsENtB6_5Debug3fmtB1s_ }>, align 8
@175 = private unnamed_addr constant [19 x i8] c"ZonedDayNanoseconds", align 1
@176 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCsb09rMIQFAXO_9jiff_core6bounds14RawBoundsErrorNtNtNtCsa9sSWSfjDbm_4jiff4util1b15ZonedDaySecondsENtB6_5Debug3fmtB1s_ }>, align 8
@177 = private unnamed_addr constant [15 x i8] c"ZonedDaySeconds", align 1
@178 = private unnamed_addr constant [32 x i8] c"SignedDurationFloatOutOfRangeF32", align 1
@179 = private unnamed_addr constant [32 x i8] c"SignedDurationFloatOutOfRangeF64", align 1
@180 = private unnamed_addr constant [24 x i8] c"SignedToUnsignedDuration", align 1
@181 = private unnamed_addr constant [97 x i8] c"an empty string is not a valid duration in either the ISO 8601 format or Jiff's \22friendly\22 format", align 1
@182 = private unnamed_addr constant [120 x i8] c"\1Afound nothing after sign `\C0Z`, which is not a valid duration in either the ISO 8601 format or Jiff's \22friendly\22 format\00", align 1
@183 = private unnamed_addr constant [79 x i8] c"\0Eparsed value '\C0\16', but unparsed input \C0% remains (expected no unparsed input)\00", align 1
@184 = private unnamed_addr constant [45 x i8] c"an error occurred when formatting an argument", align 1
@185 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@186 = private unnamed_addr constant [15 x i8] c"ConvertNonFixed", align 1
@187 = private unnamed_addr constant [4 x i8] c"kind", align 1
@188 = private unnamed_addr constant [15 x i8] c"ColonAfterHours", align 1
@189 = private unnamed_addr constant [10 x i8] c"EndOfInput", align 1
@190 = private unnamed_addr constant [14 x i8] c"EndOfInputHour", align 1
@191 = private unnamed_addr constant [16 x i8] c"EndOfInputMinute", align 1
@192 = private unnamed_addr constant [17 x i8] c"EndOfInputNumeric", align 1
@193 = private unnamed_addr constant [16 x i8] c"EndOfInputSecond", align 1
@194 = private unnamed_addr constant [12 x i8] c"InvalidHours", align 1
@195 = private unnamed_addr constant [14 x i8] c"InvalidMinutes", align 1
@196 = private unnamed_addr constant [14 x i8] c"InvalidSeconds", align 1
@197 = private unnamed_addr constant [24 x i8] c"InvalidSecondsFractional", align 1
@198 = private unnamed_addr constant [11 x i8] c"InvalidSign", align 1
@199 = private unnamed_addr constant [22 x i8] c"InvalidSignPlusOrMinus", align 1
@200 = private unnamed_addr constant [22 x i8] c"MissingMinuteAfterHour", align 1
@201 = private unnamed_addr constant [24 x i8] c"MissingSecondAfterMinute", align 1
@202 = private unnamed_addr constant [17 x i8] c"NoColonAfterHours", align 1
@203 = private unnamed_addr constant [10 x i8] c"ParseHours", align 1
@204 = private unnamed_addr constant [12 x i8] c"ParseMinutes", align 1
@205 = private unnamed_addr constant [12 x i8] c"ParseSeconds", align 1
@206 = private unnamed_addr constant [13 x i8] c"PrecisionLoss", align 1
@207 = private unnamed_addr constant [19 x i8] c"SeparatorAfterHours", align 1
@208 = private unnamed_addr constant [21 x i8] c"SeparatorAfterMinutes", align 1
@209 = private unnamed_addr constant [28 x i8] c"SubminutePrecisionNotEnabled", align 1
@210 = private unnamed_addr constant [28 x i8] c"SubsecondPrecisionNotEnabled", align 1
@211 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@212 = private unnamed_addr constant [28 x i8] c"UnexpectedLetterOffsetNoZulu", align 1
@213 = private unnamed_addr constant [11 x i8] c"FailedEnvTz", align 1
@214 = private unnamed_addr constant [17 x i8] c"FailedEnvTzAsTzif", align 1
@215 = private unnamed_addr constant [20 x i8] c"FailedPosixTzAndUtf8", align 1
@216 = private unnamed_addr constant [20 x i8] c"FailedSystemTimeZone", align 1
@217 = private unnamed_addr constant [24 x i8] c"FailedUnnamedTzifInvalid", align 1
@218 = private unnamed_addr constant [21 x i8] c"FailedUnnamedTzifRead", align 1
@219 = private unnamed_addr constant [19 x i8] c"HybridDurationEmpty", align 1
@220 = private unnamed_addr constant [20 x i8] c"HybridDurationPrefix", align 1
@221 = private unnamed_addr constant [4 x i8] c"sign", align 1
@222 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@223 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxShENtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff }>, align 8
@224 = private unnamed_addr constant [8 x i8] c"IntoFull", align 1
@225 = private unnamed_addr constant [5 x i8] c"value", align 1
@226 = private unnamed_addr constant [8 x i8] c"unparsed", align 1
@227 = private unnamed_addr constant [18 x i8] c"StdFmtWriteAdapter", align 1
@_RNvNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly20DEFAULT_SPAN_PRINTER = external global { ptr, i8, i8, i8, i8, { i8, [1 x i8] }, { i8, [1 x i8] }, i8, i8, [6 x i8] }
@228 = private unnamed_addr constant [1 x i8] c"s", align 1
@229 = private unnamed_addr constant [2 x i8] c"ns", align 1
@230 = private unnamed_addr constant [2 x i8] c"s ", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsa9sSWSfjDbm_4jiff }>, align 8
@232 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@233 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/alloc/src/string.rs\00", align 1
@234 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"K\00\00\00\00\00\00\00\96\0B\00\00\0E\00\00\00" }>, align 8
@235 = private unnamed_addr constant [5 x i8] c"Error", align 1
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff4util1b18SpecialBoundsErrorNtB6_5Debug3fmtBC_ = private unnamed_addr constant [3 x i8] c"  \18", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff4util1b18SpecialBoundsErrorNtB6_5Debug3fmtBC_.29 = private unnamed_addr constant [3 x ptr] [ptr @178, ptr @179, ptr @180], align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabled5ErrorNtB6_5Debug3fmtBG_ = private unnamed_addr constant [6 x i8] c"\0B\11\14\14\18\15", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabled5ErrorNtB6_5Debug3fmtBG_.30 = private unnamed_addr constant [6 x ptr] [ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218], align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #23
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !32, !noundef !4 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtB6_4sync3ArceEE3lenCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !35, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !36
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %i.b
  br i1 %i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %i.b
  br i1 %i.k, label %._crit_edge13.i.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !39, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !40
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %i.b
  br i1 %i.q, label %._crit_edge13.i.i, label %.lr.ph12.i.i

._crit_edge13.i.i:                                ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit8.i.i, %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArceEECsa9sSWSfjDbm_4jiff.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !47, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !48
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArceEENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENvYB2X_INtNtB1r_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B46_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not14 = icmp eq ptr %.promoted, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit
  %.sroa.4.015 = phi ptr [ %2, %.lr.ph ], [ %i.aa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit ] ; 4 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !55
  store ptr %1, ptr %i.b, align 8, !noalias !55
  store ptr %.sroa.4.015, ptr %i.f, align 8, !noalias !55
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !56, !noalias !57, !nonnull !4, !noundef !4
  %i.l = load i64, ptr %i.h, align 8, !alias.scope !56, !noalias !57, !noundef !4
  %i.m = invoke { ptr, i64 } @_RNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l)
          to label %bb.d unwind label %bb.c, !noalias !58 ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %.body.i unwind label %bb.h, !noalias !57

bb.d:                                             ; preds = %bb.b
  %i.o = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = invoke noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offseteECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %bb.e unwind label %bb.c, !noalias !58

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i unwind label %bb.f, !noalias !57

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.g, !noalias !57

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !57
  unreachable
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArceEENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENvYB2X_INtNtB1r_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B46_ECsa9sSWSfjDbm_4jiff:bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit unwind label %bb.i, !noalias !55

bb.i:                                             ; preds = %_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.i, %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.s, %bb.f ], [ %i.n, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26
          to label %bb.j unwind label %bb.k, !noalias !55

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !55
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit: ; preds = %_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i
  %i.x = sub nsw i64 0, %i.r
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  store ptr %i.y, ptr %.sroa.4.015, align 8, !noalias !55
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 8
  store i64 %i.p, ptr %i.z, align 8, !noalias !55
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit ]
  %i.ab = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ac = insertvalue { ptr, ptr } %i.ab, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENCINvMs0_B2Z_NtB2Z_16TimeZoneNameIter9from_iterBX_BI_E0NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B4w_EB33_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.b
  br i1 %.not11, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.012 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.012, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment10for_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = add nsw i8 %1, -3
  %or.cond = icmp ult i8 %i.b, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.010.1.insert.ext = zext nneg i8 %1 to i24
  %.sroa.010.1.insert.shift = shl nuw nsw i24 %.sroa.010.1.insert.ext, 8
  %.sroa.010.1.insert.insert = or disjoint i24 %.sroa.010.1.insert.shift, 10
  %i.c = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.010.1.insert.insert) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %2, -1000000001
  %or.cond18 = icmp ult i64 %i.e, -1000000000
  br i1 %or.cond18, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit, %bb.b
  %.sink = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 10) ; 4 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 1)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !67
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.m = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.f, ptr noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.d

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.c
  %.sroa.615.0.extract.trunc = trunc nuw nsw i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.p, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment12for_datetime(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call fastcc void @_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment10for_limits(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 7)
  %i.b = load i32, ptr %0, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !76
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.b
  %i.l = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.e, ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.d, align 8
  store i32 1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment13for_timestamp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = icmp samesign ult i8 %1, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.1.insert.ext.i = zext nneg i8 %1 to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.c = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !87
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @32, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !range !6, !noalias !87, !noundef !4 ; 2 uses
  %i.g = add i64 %2, -1000000001
  %or.cond.i = icmp ult i64 %i.g, -1000000000
  br i1 %or.cond.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c
  %.sroa.619.0.extract.trunc.i = trunc nuw nsw i64 %2 to i32
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %3
    i8 2, label %10
    i8 3, label %4
    i8 4, label %5
    i8 5, label %6
    i8 6, label %7
    i8 7, label %7
    i8 8, label %7
    i8 9, label %8
    i8 10, label %8
    i8 11, label %9
  ]

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.c
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !87
  br label %bb.e

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

3:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

4:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

5:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

6:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

7:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

8:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

9:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %9 ], [ 60, %8 ], [ 1000, %7 ], [ 86400, %4 ], [ 1440, %5 ], [ 24, %6 ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %.not.i = icmp samesign ugt i64 %2, %.sroa.08.0.i
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %.thread.i, %10
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.f to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %1 to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.shift.i, %.sroa.020.2.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.i = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !87
  br label %bb.e

.thread.i:                                        ; preds = %10, %3, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.07.i = phi i64 [ %.sroa.08.0.i, %10 ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %3 ]
  %i.j = urem i64 %.sroa.08.07.i, %2
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit, label %bb.d

_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit: ; preds = %.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc.i, ptr %i.l, align 4, !alias.scope !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.m, align 8, !alias.scope !87
  br label %bb.j

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.d, %bb.b
  %.sink = phi ptr [ %i.h, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ], [ %i.i, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8, !alias.scope !87
  store i32 1, ptr %0, align 8, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink, ptr %i.a, align 8
  %i.o = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 5)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq ptr %.sink, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sink, i64 1 release, align 8, !noalias !88
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %i.p

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sink, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  %storemerge = phi i32 [ 0, %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 9) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4, !range !7, !noundef !4
  %i.d = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0
  %i.f = extractvalue { i64, i32 } %i.d, 1
  %i.g = sext i32 %i.a to i64                     ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.e, i64 %i.g) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = sdiv i64 %i.i, 1000000000
  %i.n = srem i64 %i.i, 1000000000
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nsw i64 %i.n to i32
  %i.r = extractvalue { i64, i1 } %i.o, 0
  tail call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %i.r, i32 noundef %i.q)
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment8for_span(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp samesign ult i8 %1, 6
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1000000001
  %or.cond = icmp ult i64 %i.d, -1000000000
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment10for_limits(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6)
  %i.e = load i32, ptr %0, align 8, !range !5, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.h

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 10) ; 4 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 3)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !105
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.n = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.g, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %.sink.split

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.b
  %.sroa.69.0.extract.trunc = trunc nuw nsw i64 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.69.0.extract.trunc, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.q, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  %.sink = phi i32 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ], [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ]
  store i32 %.sink, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void

bb.i:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8
  %i.t = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 3)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !106
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.i
  %i.z = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.s, ptr noundef %i.t)
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsa9sSWSfjDbm_4jiff:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph16
  %i.p = add i64 %.sroa.0.1.i15, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph16

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.n, %bb.b ]
  %i.s = icmp eq i64 %i.m, %i.g
  br i1 %i.s, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i15 = phi i64 [ %i.p, %bb.d ], [ %i.m, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i15
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #26
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph16
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 9) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = sext i64 %4 to i128
  %i.b = mul nsw i128 %i.a, 1000000000
  %i.c = sext i32 %5 to i128
  %i.d = add nsw i128 %i.b, %i.c                  ; 7 uses
  %i.e = icmp sgt i128 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !258

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = sext i64 %2 to i128
  %i.g = mul nsw i128 %i.f, 1000000000
  %i.h = sext i32 %3 to i128
  %i.i = add nsw i128 %i.g, %i.h                  ; 3 uses
  %i.j = sdiv i128 %i.i, %i.d                     ; 11 uses
  %i.k = mul i128 %i.j, %i.d
  %.decomposed = sub i128 %i.i, %i.k              ; 4 uses
  %i.l = icmp eq i128 %.decomposed, 0
  br i1 %i.l, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i128 %.decomposed, 0            ; 4 uses
  %..i = select i1 %i.m, i128 -1, i128 1          ; 6 uses
  %i.n = shl nsw i128 %.decomposed, 1
  %.sroa.027.0.i = tail call i128 @llvm.abs.i128(i128 %i.n, i1 true) ; 3 uses
  %i.o = icmp eq i128 %.sroa.027.0.i, %i.d        ; 3 uses
  %i.p = icmp samesign ugt i128 %.sroa.027.0.i, %i.d ; 4 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %not..i = xor i1 %i.m, true
  %i.q = zext i1 %not..i to i128
  %spec.select.i = add nsw i128 %i.j, %i.q
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.lobit.i = ashr i128 %.decomposed, 127
  %spec.select31.i = add nsw i128 %.lobit.i, %i.j
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = add nsw i128 %..i, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.04.0.i = phi i128 [ %spec.select44.i, %bb.m ], [ %spec.select33.i, %bb.l ], [ %spec.select.i, %bb.e ], [ %spec.select31.i, %bb.f ], [ %i.r, %bb.g ], [ %i.j, %bb.d ], [ %spec.select32.i, %bb.k ], [ %spec.select38.i, %bb.j ], [ %spec.select37.i, %bb.i ] ; 2 uses
  %i.s = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.04.0.i, i128 range(i128 1, 9223372036854775809147483648) %i.d) ; 2 uses
  %i.t = extractvalue { i128, i1 } %i.s, 0
  %i.u = extractvalue { i128, i1 } %i.s, 1
  br i1 %i.u, label %bb.n, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit, !prof !8

bb.i:                                             ; preds = %bb.d
  %i.v = xor i1 %i.m, true
  %or.cond.i = and i1 %i.o, %i.v
  %or.cond34.i = or i1 %i.p, %or.cond.i
  %i.w = select i1 %or.cond34.i, i128 %..i, i128 0
  %spec.select37.i = add nsw i128 %i.w, %i.j
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  %or.cond3.i = and i1 %i.m, %i.o
  %or.cond35.i = or i1 %i.p, %or.cond3.i
  %i.x = select i1 %or.cond35.i, i128 %..i, i128 0
  %spec.select38.i = add nsw i128 %i.x, %i.j
  br label %bb.h

bb.k:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i128 %.sroa.027.0.i, %i.d
  %i.y = select i1 %.not.i, i128 0, i128 %..i
  %spec.select32.i = add nsw i128 %i.y, %i.j
  br label %bb.h

bb.l:                                             ; preds = %bb.d
  %i.z = select i1 %i.p, i128 %..i, i128 0
  %spec.select33.i = add nsw i128 %i.z, %i.j
  br label %bb.h

bb.m:                                             ; preds = %bb.d
  %.not39.i = trunc i128 %i.j to i1
  %or.cond41.not.i = and i1 %i.o, %.not39.i
  %or.cond43.i = or i1 %i.p, %or.cond41.not.i
  %i.aa = select i1 %or.cond43.i, i128 %..i, i128 0
  %spec.select44.i = add nsw i128 %i.aa, %i.j
  br label %bb.h

bb.n:                                             ; preds = %bb.h
  %i.ab = icmp sgt i128 %.sroa.04.0.i, -1
  %.36.i = select i1 %i.ab, i128 170141183460469231731687303715884105727, i128 -170141183460469231731687303715884105728
  br label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit: ; preds = %bb.c, %bb.h, %bb.n
  %.sroa.0.0.i = phi i128 [ %i.t, %bb.h ], [ %i.i, %bb.c ], [ %.36.i, %bb.n ] ; 2 uses
  %i.ac = add i128 %.sroa.0.0.i, 9223372036854775808999999999
  %or.cond = icmp ult i128 %i.ac, 18446744073709551616999999999
  br i1 %or.cond, label %bb.p, label %bb.o, !prof !9

bb.o:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit
  %i.ad = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 23)
  br label %bb.q

bb.p:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode13round_by_i128.exit
  %.sroa.0.0.i.frozen = freeze i128 %.sroa.0.0.i  ; 2 uses
  %i.ae = sdiv i128 %.sroa.0.0.i.frozen, 1000000000 ; 2 uses
  %i.af = trunc nsw i128 %i.ae to i64
  %i.ag = mul i128 %i.ae, 1000000000
  %.decomposed3 = sub i128 %.sroa.0.0.i.frozen, %i.ag
  %i.ah = trunc nsw i128 %.decomposed3 to i32
  %i.ai = inttoptr i64 %i.af to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ah, ptr %i.aj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi ptr [ %i.ai, %bb.p ], [ %i.ad, %bb.o ]
  %storemerge = phi i64 [ 0, %bb.p ], [ 1, %bb.o ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsC_NtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB5_13DateTimeRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !7, !noundef !4 ; 6 uses
  %i.j = icmp eq i8 %i.i, 0
  %i.k = load i64, ptr %1, align 8                ; 6 uses
  %i.l = icmp eq i64 %i.k, 1
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.m = icmp samesign ult i8 %i.i, 7
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.014.1.insert.ext.i = zext nneg i8 %i.i to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.n = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !313
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %3 = zext nneg i8 %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr @31, i64 %3
  %i.p = load i8, ptr %i.o, align 1, !range !6, !alias.scope !312, !noalias !314, !noundef !4 ; 2 uses
  %i.q = add i64 %i.k, -1000000001
  %or.cond.i30 = icmp ult i64 %i.q, -1000000000
  br i1 %or.cond.i30, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.d
  switch i8 %i.p, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %4
    i8 2, label %11
    i8 3, label %5
    i8 4, label %6
    i8 5, label %7
    i8 6, label %8
    i8 7, label %8
    i8 8, label %8
    i8 9, label %9
    i8 10, label %9
    i8 11, label %10
  ]

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !313
  br label %bb.f

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

4:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

5:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

6:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

7:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

8:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

9:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

10:                                               ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %10 ], [ 60, %9 ], [ 1000, %8 ], [ 86400, %5 ], [ 1440, %6 ], [ 24, %7 ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %12 = icmp samesign ult i64 %i.k, %.sroa.08.0.i
  br i1 %12, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %.thread.i, %11
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.p to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %i.i to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.2.insert.shift.i, %.sroa.020.1.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.s = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !313
  br label %bb.f

.thread.i:                                        ; preds = %11, %4, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.028.i = phi i64 [ %.sroa.08.0.i, %11 ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %4 ]
  %13 = urem i64 %.sroa.08.028.i, %i.k
  %i.t = icmp eq i64 %13, 0
  br i1 %i.t, label %bb.n, label %bb.e

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.e, %bb.c
  %.sroa.9.1.ph = phi ptr [ %i.n, %bb.c ], [ %i.s, %bb.e ], [ %i.r, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !315
  store ptr %.sroa.9.1.ph, ptr %i.c, align 8, !noalias !315
  %i.u = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %bb.m unwind label %bb.g, !noalias !315

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.w = icmp eq ptr %.sroa.9.1.ph, null
  br i1 %i.w, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw sub ptr %.sroa.9.1.ph, i64 1 release, align 8, !noalias !316
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %common.resume unwind label %bb.j, !noalias !315

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !315
  unreachable

common.resume:                                    ; preds = %bb.aj, %bb.ak, %bb.al, %bb.ad, %bb.ae, %bb.af, %bb.z, %bb.x, %bb.y, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.di, %bb.ad ], [ %i.v, %bb.g ], [ %i.co, %bb.z ], [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.co, %bb.y ], [ %i.co, %bb.x ], [ %i.di, %bb.af ], [ %i.di, %bb.ae ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ], [ %i.dr, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit, %bb.q, %bb.an, %bb.k
  %.sink = phi i32 [ 1, %bb.m ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit ], [ 1, %bb.q ], [ 0, %bb.an ], [ 0, %bb.k ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.f
  %i.ab = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.9.1.ph, ptr noundef %i.u), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !315
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  br label %bb.l

bb.n:                                             ; preds = %.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ai = load i8, ptr %i.ah, align 2, !noundef !4
  %i.aj = load i32, ptr %2, align 4, !noundef !4
  %i.ak = sext i8 %i.ae to i64
  %i.al = mul nsw i64 %i.ak, 3600000000000
  %i.am = sext i8 %i.ag to i64
  %i.an = mul nsw i64 %i.am, 60000000000
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = sext i8 %i.ai to i64
  %i.aq = mul nsw i64 %i.ap, 1000000000
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = add nsw i64 %i.ar, %i.as                ; 2 uses
  %i.au = sdiv i64 %i.at, 1000000000
  %i.av = srem i64 %i.at, 1000000000
  %i.aw = trunc nsw i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i16, ptr %i.ax, align 4, !noundef !4 ; 2 uses
  %.sroa.02.0 = tail call i64 @llvm.scmp.i64.i16(i16 %i.ay, i16 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !range !12, !noundef !4
  %i.bb = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.i), !noalias !317 ; 2 uses
  %i.bc = extractvalue { i64, i32 } %i.bb, 0
  %i.bd = extractvalue { i64, i32 } %i.bb, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.k, %i.be                 ; 2 uses
  %i.bg = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bc, i64 %i.k) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  %i.bj = sdiv i64 %i.bf, 1000000000
  %i.bk = srem i64 %i.bf, 1000000000
  %i.bl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bi, i64 %i.bj) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %bb.p, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !317
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.o
  %i.bn = trunc nsw i64 %i.bk to i32
  %i.bo = extractvalue { i64, i1 } %i.bl, 0
  call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i8 noundef range(i8 0, 9) %i.ba, i64 noundef %i.au, i32 noundef %i.aw, i64 noundef %i.bo, i32 noundef %i.bn), !noalias !318
  %i.bp = load i64, ptr %i.g, align 8, !range !13, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bs = load ptr, ptr %i.br, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8
  br label %bb.l

bb.r:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bu = load i64, ptr %i.br, align 8, !noundef !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bx = sdiv i64 %i.bu, 86400
  %i.by = srem i64 %i.bu, 86400                   ; 3 uses
  %i.bz = mul nsw i64 %i.bx, %.sroa.02.0
  %.not.i.i = icmp slt i64 %i.by, 0
  br i1 %.not.i.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.r
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %bb.u, label %bb.t

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread: ; preds = %bb.r
  %i.cb = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 2), !noalias !319
  br label %bb.w

bb.s:                                             ; preds = %bb.u
  %i.cc = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #24, !noalias !319
  br label %bb.w

bb.t:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.689.0.extract.trunc.i = trunc nuw nsw i64 %i.by to i32 ; 2 uses
  %i.cd = udiv i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.ce = urem i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.629.0.i = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ %i.cd, %bb.t ], [ %i.cn, %bb.v ]
  %or.cond1.i = icmp ult i32 %i.bw, 1000000000
  br i1 %or.cond1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.s, !prof !9

bb.v:                                             ; preds = %bb.t
  %.lhs.trunc = trunc nuw nsw i32 %i.ce to i16    ; 2 uses
  %i.cg = udiv i16 %.lhs.trunc, 60
  %i.ch = urem i16 %.lhs.trunc, 60
  %i.ci = zext nneg i16 %i.ch to i32
  %i.cj = shl nuw nsw i16 %i.cg, 8
  %i.ck = zext nneg i16 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ci, 16
  %i.cm = or disjoint i32 %i.cl, %i.ck
  %i.cn = or i32 %i.cm, %i.cd
  br label %bb.u

bb.w:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, %bb.s
  %.sroa.739.0.ph = phi ptr [ %i.cc, %bb.s ], [ %i.cb, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !320
  store ptr %.sroa.739.0.ph, ptr %i.d, align 8, !noalias !320
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.aa unwind label %bb.x, !noalias !321

bb.x:                                             ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323), !noalias !321
  %i.cp = load ptr, ptr %i.d, align 8, !alias.scope !324, !noalias !321, !noundef !4 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !325
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire, !noalias !321
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %common.resume unwind label %bb.ab

bb.aa:                                            ; preds = %bb.w
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !321
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cw = sext i8 %i.cv to i64
  %i.cx = add nsw i64 %i.bz, -1
  %i.cy = add nsw i64 %i.cx, %i.cw                ; 4 uses
  %i.cz = add nsw i64 %i.cy, -7304485
  %or.cond.i28 = icmp ult i64 %i.cz, -14608969
  br i1 %or.cond.i28, label %bb.ac, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.db = load i8, ptr %i.da, align 2, !noundef !4
  %.sroa.423.0.insert.ext = zext i8 %i.db to i32
  %.sroa.423.0.insert.shift = shl nuw nsw i32 %.sroa.423.0.insert.ext, 16
  %.sroa.022.0.insert.ext = zext i16 %i.ay to i32
  %.sroa.423.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.insert, 16777216
  %.sroa.622.0.extract.trunc.i = trunc nsw i64 %i.cy to i32 ; 2 uses
  %i.dc = icmp slt i64 %i.cy, 0
  %i.dd = sub nsw i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.dc, i32 %i.dd, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.de = icmp eq i32 %.sroa.016.0.i, 0
  %masksel.i = select i1 %i.de, i16 0, i16 64
  %.sroa.0.0.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.cy, i64 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i32 %.sroa.016.0.i, ptr %.sroa.1072.0..sroa_idx, align 8
  %.sroa.1173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 0, ptr %.sroa.1173.0..sroa_idx, align 4
  %.sroa.1274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i16 %masksel.i, ptr %.sroa.1274.0..sroa_idx, align 8
  %.sroa.1375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i16 0, ptr %.sroa.1375.0..sroa_idx, align 2
  %.sroa.1476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i8 %.sroa.0.0.i.i, ptr %.sroa.1476.0..sroa_idx, align 4
  call fastcc void @_RNvMso_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.e, i32 noundef %.sroa.022.0.insert.insert) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.df = load i16, ptr %i.f, align 8, !range !10, !noundef !4
  %i.dg = trunc nuw i16 %i.df to i1
  br i1 %i.dg, label %bb.ai, label %bb.an

bb.ac:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.dh = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 27), !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !327
  store ptr %i.dh, ptr %i.b, align 8, !noalias !327
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %bb.ag unwind label %bb.ad, !noalias !328

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.dj = load ptr, ptr %i.b, align 8, !alias.scope !331, !noalias !327, !noundef !4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !332
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.af, label %common.resume

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.ah, !noalias !328

bb.ag:                                            ; preds = %bb.ac
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !328
  unreachable

bb.ai:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dp, ptr %i.a, align 8
  %i.dq = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ds = icmp eq ptr %i.dp, null
  br i1 %i.ds, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !333
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit: ; preds = %bb.ai
  %i.dw = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.dp, ptr noundef %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dx, align 8
  br label %bb.l

bb.an:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.025.0.copyload = load i32, ptr %i.dy, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bw, ptr %i.dz, align 4
  %.sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx37, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.025.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsD_NtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB5_9TimeRound5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %1, align 8, !noundef !4   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.g = icmp samesign ult i8 %i.e, 6
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.1.insert.ext.i = zext nneg i8 %i.e to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !364
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %3 = zext nneg i8 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr @33, i64 %3
  %i.j = load i8, ptr %i.i, align 1, !range !6, !alias.scope !363, !noalias !365, !noundef !4 ; 2 uses
  %i.k = add i64 %i.f, -1000000001
  %or.cond.i18 = icmp ult i64 %i.k, -1000000000
  br i1 %or.cond.i18, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c
  switch i8 %i.j, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %4
    i8 2, label %11
    i8 3, label %5
    i8 4, label %6
    i8 5, label %7
    i8 6, label %8
    i8 7, label %8
    i8 8, label %8
    i8 9, label %9
    i8 10, label %9
    i8 11, label %10
  ]

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.c
  %i.l = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !364
  br label %bb.e

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

4:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

5:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

6:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

7:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

8:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

9:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

10:                                               ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %10 ], [ 60, %9 ], [ 1000, %8 ], [ 86400, %5 ], [ 1440, %6 ], [ 24, %7 ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %12 = icmp samesign ult i64 %i.f, %.sroa.08.0.i
  br i1 %12, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %.thread.i, %11
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.j to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %i.e to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.2.insert.shift.i, %.sroa.020.1.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.m = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !364
  br label %bb.e

.thread.i:                                        ; preds = %11, %4, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.028.i = phi i64 [ %.sroa.08.0.i, %11 ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %4 ]
  %13 = urem i64 %.sroa.08.028.i, %i.f
  %i.n = icmp eq i64 %13, 0
  br i1 %i.n, label %bb.k, label %bb.d

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.d, %bb.b
  %.sroa.9.1.ph = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.d ], [ %i.l, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  store ptr %.sroa.9.1.ph, ptr %i.a, align 8, !noalias !366
  %i.o = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 4)
          to label %bb.j unwind label %bb.f, !noalias !366

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = icmp eq ptr %.sroa.9.1.ph, null
  br i1 %i.q, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.9.1.ph, i64 1 release, align 8, !noalias !367
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.i, !noalias !366

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !366
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.w, %bb.x, %bb.f, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.cb, %bb.x ], [ %i.cb, %bb.w ], [ %i.cb, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.e
  %i.u = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.9.1.ph, ptr noundef %i.o), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8
  br label %bb.ab

bb.k:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.x = load i8, ptr %i.w, align 1, !range !12, !noundef !4
  %i.y = shl i64 %2, 24
  %i.z = ashr i64 %i.y, 56
  %i.aa = mul nsw i64 %i.z, 3600000000000
  %i.ab = shl i64 %2, 16
  %i.ac = ashr i64 %i.ab, 56
  %i.ad = mul nsw i64 %i.ac, 60000000000
  %i.ae = shl i64 %2, 8
  %i.af = ashr i64 %i.ae, 56
  %i.ag = mul nsw i64 %i.af, 1000000000
  %i.ah = shl i64 %2, 32
  %i.ai = ashr exact i64 %i.ah, 32
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = add nsw i64 %i.aj, %i.aa
  %i.al = add nsw i64 %i.ak, %i.ag                ; 2 uses
  %i.am = sdiv i64 %i.al, 1000000000
  %i.an = srem i64 %i.al, 1000000000
  %i.ao = trunc nsw i64 %i.an to i32
  %i.ap = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.e), !noalias !368 ; 2 uses
  %i.aq = extractvalue { i64, i32 } %i.ap, 0
  %i.ar = extractvalue { i64, i32 } %i.ap, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.f, %i.as                 ; 2 uses
  %i.au = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.aq, i64 %i.f) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %bb.m, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = sdiv i64 %i.at, 1000000000
  %i.ay = srem i64 %i.at, 1000000000
  %i.az = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 %i.ax) ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %bb.m, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !368
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.l
  %i.bb = trunc nsw i64 %i.ay to i32
  %i.bc = extractvalue { i64, i1 } %i.az, 0
  call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i8 noundef range(i8 0, 9) %i.x, i64 noundef %i.am, i32 noundef %i.ao, i64 noundef %i.bc, i32 noundef %i.bb), !noalias !369
  %i.bd = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  br label %bb.ab

bb.o:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bi = load i64, ptr %i.bf, align 8, !noundef !4 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bl = icmp eq i64 %i.bi, 86400
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %i.bm, align 4
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %or.cond = icmp ugt i64 %i.bi, 86399
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.q
  %i.bn = icmp eq i64 %i.bi, 0
  br i1 %i.bn, label %bb.t, label %bb.s

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread: ; preds = %bb.q
  %i.bo = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 2), !noalias !370
  br label %bb.v

bb.r:                                             ; preds = %bb.t
  %i.bp = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #24, !noalias !370
  br label %bb.v

bb.s:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.689.0.extract.trunc.i = trunc nuw nsw i64 %i.bi to i32 ; 2 uses
  %i.bq = udiv i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.br = urem i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.629.0.i = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ %i.bq, %bb.s ], [ %i.ca, %bb.u ]
  %or.cond1.i = icmp ult i32 %i.bk, 1000000000
  br i1 %or.cond1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.r, !prof !9

bb.u:                                             ; preds = %bb.s
  %.lhs.trunc = trunc nuw nsw i32 %i.br to i16    ; 2 uses
  %i.bt = udiv i16 %.lhs.trunc, 60
  %i.bu = urem i16 %.lhs.trunc, 60
  %i.bv = zext nneg i16 %i.bu to i32
  %i.bw = shl nuw nsw i16 %i.bt, 8
  %i.bx = zext nneg i16 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bv, 16
  %i.bz = or disjoint i32 %i.by, %i.bx
  %i.ca = or disjoint i32 %i.bz, %i.bq
  br label %bb.t

bb.v:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, %bb.r
  %.sroa.727.0.ph = phi ptr [ %i.bp, %bb.r ], [ %i.bo, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !371
  store ptr %.sroa.727.0.ph, ptr %i.b, align 8, !noalias !371
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
          to label %bb.z unwind label %bb.w, !noalias !372

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374), !noalias !372
  %i.cc = load ptr, ptr %i.b, align 8, !alias.scope !375, !noalias !372, !noundef !4 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !376
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.y, label %common.resume

bb.y:                                             ; preds = %bb.x
  fence acquire, !noalias !372
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.aa

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !372
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bk, ptr %i.ch, align 4
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx25, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.j, %bb.p, %bb.n, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %.sink = phi i32 [ 1, %bb.j ], [ 0, %bb.p ], [ 1, %bb.n ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit ]
  store i32 %.sink, ptr %0, align 8
  ret void
}
end_hunk_2
